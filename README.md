# Projet généalogique - Recherche et documentation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Format](https://img.shields.io/badge/format-GEDCOM%205.5.1-informational)
![Version](https://img.shields.io/badge/version-0.5.5-informational)

Ce dépôt organise la recherche généalogique versionnée autour du GEDCOM principal. Il couvre désormais l'ensemble de l'arbre; les phases Alfred Clarke sont conservées comme historique important du projet.

## État de la version 0.5.5

La version **0.5.5 exécute T201** : recherche du mariage de John/Johnny Synnett et Marie Amanda Boucher et de leurs filiations.

### Conclusion T201

- Le couple John/Johnny Synnett - Amanda Boucher et leur mariage en **1887 à Rivière-Madeleine** sont corroborés par plusieurs sources secondaires.
- La date **21 Jul 1887** est donnée par NosOrigines, mais l'image de l'acte original n'a pas été obtenue.
- Les parents de John, **François-Xavier Synnott et Marie Gagnon**, sont corroborés et déjà présents dans le GEDCOM courant.
- **Georges Boucher et Odile Fournier** sont identifiés comme **parents probables d'Amanda** par plusieurs sources secondaires convergentes; leur mariage est indexé en **1865 à Sainte-Anne-des-Monts**.
- Les baptêmes originaux et l'acte original de 1887 restent à obtenir sous **T219**.
- Aucun doublon John/Amanda n'est créé ou fusionné.

## GEDCOM à importer

`gedcom/t201_research_import_v0.5.5.ged` est le **delta prévu pour RootsMagic**. Il contient uniquement :

- 2 individus nouveaux : Georges Boucher et Odile Fournier;
- 1 famille de couple, avec mariage indexé en 1865;
- 4 sources citées par les nouveaux enregistrements;
- T219 (`NEW`, priorité 1).

Le lien enfant vers Amanda est volontairement omis jusqu'à confirmation primaire et résolution de la fiche Amanda canonique. Voir `gedcom/IMPORT_T201_v0.5.5.md`.

`gedcom/tasks_snapshot_v0.5.5.ged` contient **155 tâches** = **90 NEW** + **65 COMPLETED**. Il sert au versionnage et **ne doit pas être importé** dans la base RootsMagic actuelle.

## T201 dans RootsMagic

T201 existe déjà dans la base après l'import v0.5.4. Pour éviter de créer une seconde tâche, le delta v0.5.5 ne la réimporte pas. Après avoir vérifié l'import, **cocher T201 manuellement comme terminée** dans RootsMagic. Le snapshot et le ROADMAP la marquent déjà `COMPLETED`.

## Preuves (`evidence/`)

Le projet contient maintenant **27 répertoires numérotés de preuve** :

- **4 PDF natifs** conservés tels qu'ils sont servis par leur source, dont `020_StAnaclet_Lignees_Lavoie_Original` ajouté pour T201;
- **23 sources Web** ciblées pour impression `WEB_PRINT_PDF`, dont 7 nouvelles sources T201 (021-027).

La page 37 du PDF St-Anaclet est rendue directement en PNG et vérifiée visuellement. Les nouvelles pages HTML T201 sont accompagnées de `RESEARCH_EXTRACT.md`, clairement identifié comme note dérivée, et restent `PENDING_LOCAL_GENERATION` jusqu'à impression réelle par Edge/Chrome.

### Générer les PDF Web

Sous Windows, depuis la racine du projet :

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\print_web_evidence.ps1
```

Toujours vérifier visuellement chaque PDF produit.

## Structure principale

```text
genealogie-alfred-clarke-v0.5.5/
├── README.md
├── CHANGELOG.md
├── ROADMAP.md
├── VERSION
├── gedcom/
│   ├── t201_research_import_v0.5.5.ged
│   ├── IMPORT_T201_v0.5.5.md
│   ├── tasks_snapshot_v0.5.5.ged
│   └── [fichiers historiques]
├── docs/
├── scripts/
├── sources/
│   ├── SOURCES_PHASE2.md
│   └── SOURCES_T201.md
├── evidence/
│   ├── MANIFEST.md
│   └── 001_... / 027_...
└── reports/
    ├── T201_SYNNETT_BOUCHER_RESEARCH_REPORT.md
    ├── T201_SYNNETT_BOUCHER_SEARCH_LOG.md
    └── [rapports historiques]
```

## Méthode

Les conclusions sont classées `SOLIDE`, `PROBABLE`, `HYPOTHÈSE`, `CONTRADICTION`, `TRADITION FAMILIALE` ou `RECHERCHE NÉGATIVE`. Une tâche peut être `COMPLETED` lorsque la passe prévue a été réellement effectuée et documentée, même si une pièce primaire reste inaccessible; une tâche de suivi précise conserve alors le travail restant.

## Licence

La structure, les fichiers GEDCOM de tâches et la documentation créés pour ce projet sont sous **GNU GPL v3.0**. Les documents d'archives et sources tierces conservent leurs droits propres.
