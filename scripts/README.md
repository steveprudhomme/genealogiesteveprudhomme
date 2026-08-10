# Scripts de conservation des preuves Web

## `print_web_evidence.ps1`

Ce script Windows imprime les pages Web du dossier `evidence/` directement en PDF avec le moteur
Chromium de **Microsoft Edge** ou **Google Chrome**. L'objectif est de conserver la mise en page
imprimable du site plutôt que de fabriquer un résumé ou une reconstitution documentaire.

### Exécution recommandée

Depuis la racine du projet, dans PowerShell :

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\print_web_evidence.ps1
```

Pour imposer Chrome ou Edge :

```powershell
.\scripts\print_web_evidence.ps1 -BrowserPath "C:\Program Files\Microsoft\Edge\Application\msedge.exe"
```

Le script :

1. lit les URL des fichiers `*_URL.txt`;
2. ignore les `ORIGINAL_NATIVE_PDF`;
3. imprime chaque page Web dans `<nom_du_repertoire>_WEB_PRINT.pdf`;
4. calcule l'empreinte SHA-256;
5. écrit `WEB_PRINT_STATUS.txt`;
6. supprime l'ancien `*_BROWSER_CONTENT_ARCHIVE.pdf` ainsi que son ancien fichier de statut après une impression réussie.

### Vérification manuelle obligatoire

Une impression réussie techniquement ne garantit pas que le site n'a pas affiché une page de consentement,
un défi antirobot, une page de connexion ou un contenu incomplet. Ouvrir chaque PDF et vérifier au minimum :

- le titre et l'organisme;
- l'URL ou le contenu attendu;
- l'absence de page d'erreur;
- la lisibilité et la mise en page;
- les pages dynamiques, particulièrement Geneanet et FreeBMD.

Les trois PDF natifs officiels du projet ne sont jamais réimprimés : ils restent conservés tels que fournis
par leur organisme source.
