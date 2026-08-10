[CmdletBinding()]
param(
    [string]$BrowserPath,
    [int]$VirtualTimeBudgetMs = 15000,
    [int]$TimeoutSeconds = 90,
    [switch]$KeepOldBrowserArchives
)

$ErrorActionPreference = 'Stop'

function Find-Browser {
    param([string]$ExplicitPath)

    if ($ExplicitPath) {
        if (Test-Path -LiteralPath $ExplicitPath) { return (Resolve-Path -LiteralPath $ExplicitPath).Path }
        throw "Navigateur introuvable : $ExplicitPath"
    }

    $candidates = @(
        "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
        "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
        "$env:LOCALAPPDATA\Microsoft\Edge\Application\msedge.exe",
        "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
        "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
        "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe"
    ) | Where-Object { $_ -and (Test-Path -LiteralPath $_) }

    if ($candidates.Count -eq 0) {
        throw "Microsoft Edge ou Google Chrome n'a pas été trouvé. Utilisez -BrowserPath pour indiquer son chemin."
    }

    return (Resolve-Path -LiteralPath $candidates[0]).Path
}

function Read-UrlFromEvidenceFile {
    param([string]$Path)

    $line = Get-Content -LiteralPath $Path | Where-Object { $_ -match '^URL:\s*(.+)$' } | Select-Object -First 1
    if (-not $line) { return $null }
    return (($line -replace '^URL:\s*', '').Trim())
}

function Write-StatusFile {
    param(
        [string]$Path,
        [string]$State,
        [string]$Url,
        [string]$PdfPath,
        [string]$Browser,
        [string]$Hash = '',
        [string]$Note = ''
    )

    $lines = @(
        "State: $State",
        "Method: BROWSER_PRINT_TO_PDF",
        "URL: $Url",
        "PDF: $PdfPath",
        "Browser: $Browser",
        "Generated: $((Get-Date).ToString('yyyy-MM-ddTHH:mm:ssK'))"
    )
    if ($Hash) { $lines += "SHA256: $Hash" }
    if ($Note) { $lines += "Note: $Note" }
    Set-Content -LiteralPath $Path -Value $lines -Encoding UTF8
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = (Resolve-Path (Join-Path $scriptDir '..')).Path
$evidenceRoot = Join-Path $repoRoot 'evidence'
$browser = Find-Browser -ExplicitPath $BrowserPath

Write-Host "Navigateur : $browser"
Write-Host "Dossier evidence : $evidenceRoot"

$urlFiles = Get-ChildItem -LiteralPath $evidenceRoot -Recurse -File -Filter '*_URL.txt' |
    Where-Object {
        (Get-Content -LiteralPath $_.FullName -Raw) -match 'Type:\s*(BROWSER_CONTENT_ARCHIVE|BROWSER_CONTENT_ARCHIVE_SECONDARY|WEB_PRINT_PDF|WEB_PRINT_PDF_SECONDARY)'
    } |
    Sort-Object FullName

if ($urlFiles.Count -eq 0) {
    throw "Aucune preuve Web à imprimer n'a été trouvée."
}

$success = 0
$failed = 0

foreach ($urlFile in $urlFiles) {
    $dir = $urlFile.Directory.FullName
    $base = Split-Path -Leaf $dir
    $url = Read-UrlFromEvidenceFile -Path $urlFile.FullName
    if (-not $url) {
        Write-Warning "URL absente : $($urlFile.FullName)"
        $failed++
        continue
    }

    $pdf = Join-Path $dir ("{0}_WEB_PRINT.pdf" -f $base)
    $status = Join-Path $dir 'WEB_PRINT_STATUS.txt'
    $profile = Join-Path ([System.IO.Path]::GetTempPath()) ("genealogie-webprint-{0}-{1}" -f $base, [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $profile -Force | Out-Null

    Write-Host ""
    Write-Host "[$base]"
    Write-Host "  URL : $url"
    Write-Host "  PDF : $pdf"

    if (Test-Path -LiteralPath $pdf) { Remove-Item -LiteralPath $pdf -Force }
    Write-StatusFile -Path $status -State 'GENERATING' -Url $url -PdfPath $pdf -Browser $browser

    $arguments = @(
        '--headless',
        '--disable-gpu',
        '--disable-dev-shm-usage',
        '--no-first-run',
        '--no-default-browser-check',
        '--disable-extensions',
        '--no-pdf-header-footer',
        "--virtual-time-budget=$VirtualTimeBudgetMs",
        "--user-data-dir=`"$profile`"",
        "--print-to-pdf=`"$pdf`"",
        $url
    )

    try {
        $process = Start-Process -FilePath $browser -ArgumentList $arguments -PassThru -WindowStyle Hidden
        if (-not $process.WaitForExit($TimeoutSeconds * 1000)) {
            try { $process.Kill($true) } catch { }
            throw "Délai dépassé (${TimeoutSeconds}s)."
        }

        if (-not (Test-Path -LiteralPath $pdf)) {
            throw "Le navigateur n'a pas créé le PDF. Code de sortie : $($process.ExitCode)"
        }

        $size = (Get-Item -LiteralPath $pdf).Length
        if ($size -lt 5000) {
            throw "PDF anormalement petit ($size octets). Vérifiez une éventuelle page d'erreur ou de blocage."
        }

        $hash = (Get-FileHash -LiteralPath $pdf -Algorithm SHA256).Hash.ToLowerInvariant()
        Write-StatusFile -Path $status -State 'COMPLETE' -Url $url -PdfPath $pdf -Browser $browser -Hash $hash -Note 'PDF imprimé directement par le moteur Chromium du navigateur afin de conserver la mise en page imprimable du site.'

        if (-not $KeepOldBrowserArchives) {
            Get-ChildItem -LiteralPath $dir -File -Filter '*_BROWSER_CONTENT_ARCHIVE.pdf' -ErrorAction SilentlyContinue | Remove-Item -Force
            foreach ($oldStatusName in @('WEB_SCREENSHOT_STATUS.txt', 'LEGACY_BROWSER_ARCHIVE_STATUS.txt')) {
                $oldStatus = Join-Path $dir $oldStatusName
                if (Test-Path -LiteralPath $oldStatus) { Remove-Item -LiteralPath $oldStatus -Force }
            }
        }

        Write-Host "  OK - $([math]::Round($size / 1KB, 1)) KiB - SHA256 $hash"
        $success++
    }
    catch {
        Write-Warning "  ÉCHEC : $($_.Exception.Message)"
        if (Test-Path -LiteralPath $pdf) { Remove-Item -LiteralPath $pdf -Force -ErrorAction SilentlyContinue }
        Write-StatusFile -Path $status -State 'FAILED' -Url $url -PdfPath $pdf -Browser $browser -Note $_.Exception.Message
        $failed++
    }
    finally {
        Remove-Item -LiteralPath $profile -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ""
Write-Host "Terminé : $success réussi(s), $failed échec(s), total $($urlFiles.Count)."
if ($failed -gt 0) {
    Write-Host "Inspectez les WEB_PRINT_STATUS.txt. Certaines pages peuvent exiger une interaction, un consentement ou bloquer le mode headless."
    exit 2
}
exit 0
