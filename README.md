# Projet généalogique - Recherche et documentation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Format](https://img.shields.io/badge/format-GEDCOM%205.5.1-informational)
![Version](https://img.shields.io/badge/version-0.5.4-informational)

Ce dépôt organise la recherche généalogique versionnée autour du GEDCOM principal, avec une phase
dédiée à **Alfred Clarke**. Il s'inspire de la structure d'un projet open source comme GNU Astrolist,
mais le livrable principal est de la **donnée généalogique GEDCOM**, pas du logiciel.

## État de la version 0.5.4

La version **0.5.4** élargit explicitement la feuille de route à **l'ensemble de l'arbre généalogique**, et non à la seule branche Alfred Clarke. Elle n'ajoute ni individu, ni famille, ni fait généalogique : elle ajoute uniquement des tâches de recherche.

État des tâches :

- GEDCOM courant fourni : **136 tâches** déjà présentes, jusqu'à **T200** avec des plages non contiguës.
- Nouvelles recherches générales : **T201-T218**, soit **18 tâches NEW**.
- Snapshot de projet : **154 tâches** = **90 NEW** + **64 COMPLETED**.
- Les tâches de nettoyage/fusion de doublons déjà existantes sont conservées, mais les nouvelles tâches T201-T218 n'en ajoutent aucune.
- La nouvelle nomenclature s'applique aux tâches créées à partir de cette version : `Numéro - Nom, Prénom (ou sujet général) - Descriptif`. Le numéro est volontairement répété dans `DESC` afin qu'il apparaisse directement dans la liste de tâches de RootsMagic.

## GEDCOM à importer

`gedcom/research_tasks_import_v0.5.4.ged` contient **uniquement T201-T218** avec statut `NEW`. Il contient **0 INDI, 0 FAM, 0 SOUR**. C'est le fichier prévu pour l'import dans la base RootsMagic actuelle.

`gedcom/tasks_snapshot_v0.5.4.ged` contient les **154 tâches** du projet et sert au versionnage, au ROADMAP et à l'audit. **Ne pas l'importer** dans la base RootsMagic actuelle, car il reprend aussi les tâches déjà présentes.

Les anciens GEDCOM de phase Alfred sont conservés comme historique du projet et ne doivent pas être réimportés si leurs tâches sont déjà présentes.

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
genealogie-alfred-clarke-v0.5.4/
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
│   ├── research_tasks_import_v0.5.4.ged
│   ├── tasks_snapshot_v0.5.4.ged
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
