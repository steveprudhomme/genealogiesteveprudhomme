# Flux de travail des tâches

## Source de vérité

Le GEDCOM courant `genealogiesteveprudhomme(1).ged` contient 118 tâches jusqu'à T164.

La phase 2 Alfred Clarke utilise **T165-T182** pour éviter toute collision.

## Import RootsMagic

Importer uniquement `gedcom/alfred_clarke_phase2_import_completed_v0.5.0.ged` dans la base correspondant au GEDCOM courant.
Le fichier ne contient aucun individu, famille ou source maître : uniquement les 18 nouvelles tâches
avec leur documentation et le statut `COMPLETED`.

## Snapshot

`gedcom/tasks_snapshot_v0.5.0.ged` est destiné à Git, au ROADMAP et à l'audit. Ne pas l'importer dans la base
courante, car il contient aussi les 118 tâches déjà présentes.

## Statuts

- `NEW` : recherche encore à effectuer.
- `COMPLETED` : passage de recherche effectué et documenté; le résultat peut être négatif ou bloqué.

## Synchronisation

Toute modification d'une tâche dans le snapshot doit être reflétée dans `ROADMAP.md` : même ID,
description, note, statut, priorité et ordre.
