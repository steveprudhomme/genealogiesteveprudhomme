# Flux de travail des tâches

## Source de vérité

Le GEDCOM courant fourni pour cette version, `genealogiesteveprudhomme(4).ged`, contient **136 tâches** déjà présentes, jusqu'à **T200** avec des plages d'identifiants non contiguës.

La version **0.5.4** ajoute **T201-T218**, soit 18 nouvelles tâches de recherche couvrant plusieurs branches de l'arbre. Le snapshot de projet contient donc **154 tâches** : **90 NEW** et **64 COMPLETED**.

## Convention de nommage

À compter de la v0.5.4, toute nouvelle tâche est présentée sous la forme :

`Numéro de tâche - Nom, Prénom de l'individu (ou sujet général) - Descriptif de la tâche`

Exemples :

- `T201 - Synnett, John / Boucher, Marie Amanda - Obtenir et transcrire l'acte original du mariage...`
- `T215 - Arbre complet - Cartographier les fins de branche...`

Dans le GEDCOM, le numéro est porté à la fois par l'identifiant `_TASK` (`@T201@`) **et répété au début du champ `DESC`** (`T201 - ...`). Cette redondance est volontaire : RootsMagic affiche le contenu de `DESC` dans sa liste de tâches, ce qui rend le numéro visible à l'écran. Les tâches héritées antérieures à la v0.5.4 conservent leur libellé historique dans ce paquet pour éviter une réimportation risquée de tâches déjà présentes.

## Import RootsMagic

Importer uniquement `gedcom/research_tasks_import_v0.5.4.ged` dans la base correspondant au GEDCOM courant.

Ce fichier contient **uniquement T201-T218**, avec statut `NEW`. Il contient **0 INDI, 0 FAM et 0 SOUR** afin de réduire le risque de doublons dans l'arbre.

Ne pas réimporter les anciens fichiers de phase Alfred si ces tâches sont déjà présentes dans RootsMagic.

## Snapshot

`gedcom/tasks_snapshot_v0.5.4.ged` est destiné à Git, au ROADMAP et à l'audit. Il contient les **154 tâches** du projet et **ne doit pas être importé** dans la base RootsMagic courante, puisqu'il reprend aussi toutes les tâches déjà présentes.

## Statuts

- `NEW` : recherche encore à effectuer.
- `COMPLETED` : passage de recherche effectué et documenté; le résultat peut être négatif ou bloqué.

## Priorités

- `1` : recherche à rendement élevé ou susceptible d'ouvrir rapidement une nouvelle génération.
- `2` : prolongement de branches et résolution de filiations plus anciennes.
- `3` : audit documentaire ou recherche structurante à l'échelle de l'arbre.

## Doublons

Les nouvelles tâches T201-T218 ne demandent aucune fusion de doublons. Les doublons existants demeurent à traiter séparément par l'utilisateur.

## Synchronisation

Toute modification d'une tâche dans le snapshot doit être reflétée dans `ROADMAP.md` : même ID, description, note, statut, priorité et ordre.
