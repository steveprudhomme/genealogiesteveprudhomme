# Projet généalogique - Recherche et documentation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Format](https://img.shields.io/badge/format-GEDCOM%205.5.1-informational)
![Version](https://img.shields.io/badge/version-0.5.3-informational)

Ce dépôt organise la recherche généalogique versionnée autour du GEDCOM principal, avec une phase
dédiée à **Alfred Clarke**. Il s'inspire de la structure d'un projet open source comme GNU Astrolist,
mais le livrable principal est de la **donnée généalogique GEDCOM**, pas du logiciel.

## État de la version 0.5.3

La version **0.5.3 ne modifie pas les conclusions généalogiques ni les tâches GEDCOM**. Elle reprend
l'état de recherche établi en 0.5.0 et corrige la méthode de conservation des pages Web dans `evidence/`.

État généalogique conservé :

- Base analysée lors de la phase 2 : `genealogiesteveprudhomme(1).ged`.
- Tâches déjà présentes dans cette base : **118**, jusqu'à **T164**.
- Phase Alfred rebasée pour éviter les collisions : **T165-T182**.
- Snapshot de projet : **136 tâches** = **72 NEW** + **64 COMPLETED**.
- Les 18 tâches Alfred phase 2 sont **COMPLETED**.
- Aucun nouvel individu ni famille n'est ajouté par le delta, faute de nouvelle preuve primaire assez sûre.

## GEDCOM à importer

`gedcom/alfred_clarke_phase2_import_completed_v0.5.0.ged` contient **uniquement T165-T182** avec leurs
résultats et statut `COMPLETED`. Il contient **0 INDI, 0 FAM, 0 SOUR**. C'est volontaire : le GEDCOM
actuel possède déjà Alfred Clarke et de nombreuses sources pertinentes; ne pas les réimporter évite les
doublons.

`gedcom/tasks_snapshot_v0.5.0.ged` est le snapshot de versionnage de toutes les tâches et ne doit pas être
réimporté dans la base RootsMagic actuelle.

Les noms `v0.5.0` de ces deux fichiers sont conservés parce que leur contenu généalogique n'a pas changé
dans les versions 0.5.1 à 0.5.3.

## Preuves (`evidence/`)

La version 0.5.3 distingue deux méthodes de conservation :

1. `ORIGINAL_NATIVE_PDF` - document PDF officiel téléchargé tel quel. Il n'est jamais réimprimé ni
   reconstruit. Ses PNG `_ORIGINAL_pNNN.png` sont des rendus directs du PDF original.
2. `WEB_PRINT_PDF` - page HTML imprimée directement en PDF par Microsoft Edge ou Google Chrome, via
   le moteur Chromium. Le fichier attendu est `<nom_du_repertoire>_WEB_PRINT.pdf`. Cette méthode
   conserve la **mise en page imprimable du site** beaucoup plus fidèlement qu'un résumé documentaire.

Les anciens `*_BROWSER_CONTENT_ARCHIVE.pdf` de la v0.5.2 sont des archives dérivées historiques. Le script
`./scripts/print_web_evidence.ps1` les remplace automatiquement après une impression Web réussie.

> Important : la création d'un véritable `WEB_PRINT_PDF` nécessite que le navigateur exécutant le script
> ait accès au site en direct. Le statut de chaque page est indiqué dans `WEB_PRINT_STATUS.txt`.

Voir `evidence/MANIFEST.md` et `scripts/README.md`.

## Générer les PDF Web par impression navigateur

Sous Windows, depuis la racine du projet :

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\print_web_evidence.ps1
```

Le script détecte Edge ou Chrome, imprime les 16 pages HTML, calcule une empreinte SHA-256 et écrit
`WEB_PRINT_STATUS.txt` dans chaque dossier. Les trois PDF natifs officiels sont ignorés et restent intacts.

Après l'exécution, ouvrir chaque PDF pour vérifier qu'aucune page de consentement, de connexion ou de
protection antirobot n'a remplacé le contenu attendu.

## Structure

```text
genealogie-alfred-clarke-v0.5.3/
├── README.md
├── LICENSE
├── NOTICE.md
├── CHANGELOG.md
├── ROADMAP.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── PRIVACY.md
├── VERSION
├── .gitignore
├── .gitattributes
├── gedcom/
│   ├── alfred_clarke_phase2_import_completed_v0.5.0.ged
│   └── tasks_snapshot_v0.5.0.ged
├── docs/
├── scripts/
│   ├── README.md
│   └── print_web_evidence.ps1
├── sources/
│   └── SOURCES_PHASE2.md
├── evidence/
│   ├── MANIFEST.md
│   └── 001_... / 019_...
└── reports/
    ├── ALFRED_CLARKE_PHASE2_RESEARCH_REPORT.md
    └── ALFRED_CLARKE_PHASE2_SEARCH_LOG.md
```

## Méthode

Les conclusions sont classées `SOLIDE`, `PROBABLE`, `HYPOTHÈSE`, `CONTRADICTION`,
`TRADITION FAMILIALE` ou `RECHERCHE NÉGATIVE`. Une tâche peut être `COMPLETED` même si elle est
négative ou bloquée, dès lors que le passage prévu est documenté.

## Licence

La structure, les fichiers GEDCOM de tâches et la documentation créés pour ce projet sont sous
**GNU GPL v3.0**. Les documents d'archives et sources tierces conservent leurs droits propres.

## Statut des preuves visuelles

Les trois PDF natifs originaux actuellement conservés sont :

1. `003_TNA_1939_Register_FOI_Guide_Original`
2. `005_TNA_BT26_Information_Original`
3. `016_GOVUK_Discover_Family_History_Guide_Original`

Pour les 16 sources HTML, le format cible de la v0.5.3 est désormais `WEB_PRINT_PDF`. Une impression Web
est une **copie visuelle de consultation**, pas un document original de l'organisme. La provenance reste
assurée par le fichier `*_URL.txt` et le contrôle d'intégrité par `WEB_PRINT_STATUS.txt`.
