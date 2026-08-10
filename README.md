# Projet généalogique — Recherche et documentation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Format](https://img.shields.io/badge/format-GEDCOM%205.5.1-informational)
![Version](https://img.shields.io/badge/version-0.4.0-informational)
![Type](https://img.shields.io/badge/projet-généalogie-success)

Ce dépôt structure un travail de **recherche généalogique documentée** autour du GEDCOM
principal, avec une attention particulière à la branche **Alfred Clarke**.

Le projet reprend plusieurs bonnes pratiques d'un dépôt open source classique — README,
CHANGELOG, ROADMAP, licence, règles de contribution, conventions de format et documentation —
mais il ne s'agit **pas d'un logiciel**. Le langage / format de données principal est **GEDCOM
5.5.1**.

## Objectifs

- conserver les tâches de recherche dans un format versionnable;
- synchroniser le `ROADMAP.md` avec les tâches GEDCOM;
- distinguer les faits établis, les probabilités, les hypothèses, les contradictions et les traditions familiales;
- conserver les références et la provenance des sources;
- éviter les doublons d'individus, de familles et de faits;
- protéger les renseignements concernant les personnes vivantes;
- documenter les recherches négatives aussi soigneusement que les résultats positifs.

## Arborescence

```text
genealogie-alfred-clarke-v0.4.0/
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
│   ├── tasks_snapshot_v0.4.0.ged
│   └── alfred_clarke_new_tasks_v0.4.0.ged
├── docs/
│   ├── RESEARCH_METHOD.md
│   ├── GEDCOM_CONVENTIONS.md
│   ├── SOURCE_POLICY.md
│   └── TASK_WORKFLOW.md
├── sources/
│   └── README.md
├── evidence/
│   └── README.md
└── reports/
    └── README.md
```

## Deux GEDCOM de tâches

### 1. `gedcom/tasks_snapshot_v0.4.0.ged`

Snapshot de projet comprenant **les 118 tâches déjà présentes dans le GEDCOM actuel** plus
**18 nouvelles tâches Alfred Clarke**, pour un total de **136 tâches**.

Ce fichier sert principalement au **versionnage, à l'audit et au ROADMAP**.

> **Important :** ne l'importez pas tel quel dans une base RootsMagic qui contient déjà les
> 118 tâches existantes, car RootsMagic pourrait créer des doublons de tâches.

### 2. `gedcom/alfred_clarke_new_tasks_v0.4.0.ged`

Contient uniquement les **18 nouvelles tâches T148–T165**. C'est le fichier à privilégier pour
ajouter la nouvelle phase de recherche à la base RootsMagic actuelle.

## État actuel des tâches

Le snapshot préserve exactement les statuts du GEDCOM actuel :

- 89 tâches existantes : `NEW`;
- 29 tâches existantes : `COMPLETED`;
- 18 nouvelles tâches Alfred Clarke : `NEW`.

Total : **136 tâches**, dont **107 NEW** et **29 COMPLETED**.

## Nouvelle phase Alfred Clarke — résumé

Les nouvelles recherches ciblent notamment :

- le recensement britannique de 1921;
- le `1939 Register`;
- les listes de passagers sortants britanniques `BT27`;
- les entrées Canada–États-Unis 1908–1935;
- les `Form 30A` et manifest indexes;
- les contrats de mariage et actes notariés québécois;
- les bans, dispenses et dossiers religieux du mariage de 1923;
- une matrice exhaustive des naissances Clark/Clarke 1892–1894 au GRO;
- le certificat de décès du candidat Hastings de 1972;
- les listes électorales et annuaires de Hastings;
- les actes de Marie-Louise Tremblay et des enfants;
- une analyse FAN des témoins, parrains, marraines et voisins;
- les listes électorales et rôles municipaux canadiens;
- la provenance exacte de la tradition « orphelin de Liverpool »;
- la réouverture éventuelle du National Registration File de 1940;
- une seconde passe ciblée dans les institutions de Liverpool;
- les archives scolaires et Poor Law;
- un argument de preuve final.

## Principes de preuve

Aucune relation de parenté ni date exacte ne doit être ajoutée simplement parce qu'elle apparaît
dans un arbre public. Une conclusion doit reposer sur plusieurs éléments cohérents et les
contradictions doivent être explicitement résolues.

Les catégories recommandées sont :

- `SOLIDE`
- `PROBABLE`
- `HYPOTHÈSE`
- `CONTRADICTION`
- `TRADITION FAMILIALE`
- `RECHERCHE NÉGATIVE`

Voir `docs/RESEARCH_METHOD.md`.

## Versionnage

Le projet utilise **Semantic Versioning** pour ses livrables documentaires :

- `PATCH` : corrections de texte, citations ou métadonnées sans changement de conclusion;
- `MINOR` : nouvelles tâches, nouvelles sources ou nouvelles conclusions documentées;
- `MAJOR` : changement important de structure, convention GEDCOM ou modèle de preuve.

Le `CHANGELOG.md` suit l'esprit de **Keep a Changelog**.

## Licence

Les fichiers créés pour ce projet sont distribués sous **GNU General Public License v3.0**.
Voir `LICENSE`.

Les documents d'archives, images, articles, certificats et autres sources tierces conservent
leurs propres droits et **ne sont pas automatiquement placés sous GPL**. Voir `NOTICE.md`.

## Confidentialité

Les données sur les personnes vivantes doivent être minimisées ou anonymisées avant publication.
Ne pas versionner publiquement des adresses privées, dossiers médicaux récents, données ADN brutes
ou documents soumis à des restrictions. Voir `PRIVACY.md`.

## Contribution

Les contributions documentaires sont bienvenues lorsqu'elles comportent une source vérifiable,
une distinction claire entre transcription et interprétation, et une explication des conflits.
Voir `CONTRIBUTING.md`.
