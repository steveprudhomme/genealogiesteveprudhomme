# Projet généalogique - Recherche et documentation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Format](https://img.shields.io/badge/format-GEDCOM%205.5.1-informational)
![Version](https://img.shields.io/badge/version-0.5.0-informational)

Ce dépôt organise la recherche généalogique versionnée autour du GEDCOM principal, avec une phase
dédiée à **Alfred Clarke**. Il s'inspire de la structure d'un projet open source comme GNU Astrolist,
mais le livrable principal est de la **donnée généalogique GEDCOM**, pas du logiciel.

## État de la version 0.5.0

- Base courante analysée : `genealogiesteveprudhomme(1).ged`.
- Tâches déjà présentes dans cette base : **118**, jusqu'à **T164**.
- Nouvelle phase Alfred rebasée pour éviter les collisions : **T165-T182**.
- Snapshot de projet : **136 tâches** = **72 NEW** + **64 COMPLETED**.
- Les 18 tâches Alfred phase 2 sont **COMPLETED**.
- Aucun nouvel individu ni famille n'est ajouté par le delta, faute de nouvelle preuve primaire assez sûre.

## GEDCOM à importer

`gedcom/alfred_clarke_phase2_import_completed_v0.5.0.ged` contient **uniquement T165-T182** avec leurs résultats et statut
`COMPLETED`. Il contient **0 INDI, 0 FAM, 0 SOUR**. C'est volontaire : le GEDCOM actuel possède déjà
Alfred Clarke et de nombreuses sources pertinentes; ne pas les réimporter évite les doublons.

`gedcom/tasks_snapshot_v0.5.0.ged` est le snapshot de versionnage de toutes les tâches et ne doit pas être
réimporté dans la base RootsMagic actuelle.

## Preuves (`evidence/`)

Chaque répertoire de preuve utilise un nom précis; le PDF et le PNG portent **le même nom que le
répertoire**. Pour les PDF multipages, les PNG sont suffixés `_p001`, `_p002`, etc.

Deux niveaux de fidélité sont séparés :

1. `ORIGINAL_NATIVE_PDF` - document PDF officiel téléchargé tel quel; le PNG est un rendu pixel de
   ce PDF et conserve donc sa mise en page originale.
2. `BROWSER_CONTENT_ARCHIVE` - archive PDF du **contenu pertinent réellement récupéré par le
   navigateur Web**, puis PNG rendu à partir de ce PDF. Ce format ne prétend pas reproduire les
   pixels ni la mise en page HTML originale, car l'outil de navigation ne fournit pas de capture
   pixel-par-pixel des pages HTML.

Voir `evidence/MANIFEST.md`.

## Structure

```text
genealogie-alfred-clarke-v0.5.0/
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

## Statut des preuves visuelles originales

La version **0.5.2** applique une distinction stricte :

- **PDF natif fourni par l'organisme source** : le fichier PDF original est conservé tel quel dans `evidence/`, et les PNG portant `_ORIGINAL_pNNN.png` sont rendus directement à partir de ce PDF.
- **Page Web HTML** : aucun PNG dérivé n'est présenté comme une « capture originale ». Le navigateur Web disponible dans cette session permet de lire le contenu HTML mais ne fournit pas de fonction de capture pixel par pixel pour les pages HTML. Le fichier `*_BROWSER_CONTENT_ARCHIVE.pdf` est explicitement classé comme dérivé.

Les trois PDF natifs originaux actuellement conservés sont :

1. `003_TNA_1939_Register_FOI_Guide_Original`
2. `005_TNA_BT26_Information_Original`
3. `016_GOVUK_Discover_Family_History_Guide_Original`

Cette règle évite de confondre une reconstitution ou un rendu de texte avec une preuve visuelle originale.
