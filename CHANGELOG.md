# Changelog

Tous les changements notables de ce projet généalogique sont documentés ici.

Le format suit l'esprit de [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/) et le
versionnage suit [Semantic Versioning](https://semver.org/).

## [Unreleased]

### À faire
- Exécuter progressivement la phase Alfred Clarke T148–T165.
- Mettre à jour le GEDCOM principal uniquement lorsque les preuves justifient une modification.

## [0.4.0] — 2026-08-09

### Ajouté
- Création d'une structure de projet inspirée des bonnes pratiques d'un dépôt open source,
  adaptée à un projet de généalogie GEDCOM.
- Ajout de `README.md`, `LICENSE`, `NOTICE.md`, `CONTRIBUTING.md`,
  `CODE_OF_CONDUCT.md`, `PRIVACY.md`, `.gitignore`, `.gitattributes` et `VERSION`.
- Ajout de la documentation `RESEARCH_METHOD.md`, `GEDCOM_CONVENTIONS.md`,
  `SOURCE_POLICY.md` et `TASK_WORKFLOW.md`.
- Ajout d'un snapshot GEDCOM contenant **les 118 tâches du GEDCOM actuel**.
- Ajout de **18 nouvelles tâches Alfred Clarke (T148–T165)**.
- Ajout d'un GEDCOM d'import séparé contenant uniquement les 18 nouvelles tâches.
- Mise à jour de `ROADMAP.md` pour refléter **les 136 tâches** du snapshot.

### Conservé
- Les statuts, priorités, descriptions et notes des 118 tâches du GEDCOM actuel sont conservés.
- Le snapshot contient 89 tâches existantes `NEW` et 29 `COMPLETED`.
- Les nouvelles tâches T148–T165 sont `NEW`.

### Sécurité contre les doublons
- Le snapshot complet est destiné au versionnage et à l'audit.
- Le fichier `gedcom/alfred_clarke_new_tasks_v0.4.0.ged` est fourni pour l'import des nouvelles tâches
  sans réimporter les 118 tâches déjà présentes.

## [0.2.0] — 2026-08-09

### Recherche
- Exécution d'une première phase de 17 recherches Alfred Clarke.
- Production d'un GEDCOM différentiel, d'un rapport, d'une liste de sources et d'archives de consultation.

## [0.1.0] — 2026-08-09

### Ajouté
- Première série de 17 tâches Alfred Clarke.
- Première convention `GEDCOM + ROADMAP.md + CHANGELOG.md`.
