# Workflow des tâches généalogiques

## Principe

Les tâches RootsMagic sont versionnées dans des GEDCOM dédiés et reflétées à l'identique dans `ROADMAP.md`.

## Nomenclature

À compter de la v0.5.4, toute nouvelle tâche utilise :

`Txxx - Nom, Prénom (ou sujet) - Descriptif`

Le numéro est répété dans `DESC` pour qu'il soit visible directement dans la liste de tâches RootsMagic.

## État v0.5.5

- Base de référence fournie : `genealogiesteveprudhomme(4).ged`.
- Snapshot : `gedcom/tasks_snapshot_v0.5.5.ged`.
- Total : **155 tâches**.
- Statuts : **90 NEW**, **65 COMPLETED**.
- T201 : `COMPLETED` dans le snapshot après la passe documentée v0.5.5.
- T219 : `NEW`, priorité 1; récupération des images primaires du mariage/baptêmes et résolution du bon doublon Amanda.

## Import différentiel

Toujours préférer un GEDCOM contenant **uniquement les ajouts nécessaires**. Pour v0.5.5 :

`gedcom/t201_research_import_v0.5.5.ged`

Ce fichier ajoute 2 personnes nouvelles, 1 famille, 4 sources et T219. Il ne réimporte ni les personnes John/Amanda déjà présentes, ni T201 déjà présente dans RootsMagic.

### Mise à jour d'une tâche existante

Un import GEDCOM n'est pas utilisé comme mécanisme de mise à jour d'une tâche RootsMagic existante lorsque cela risque de créer un doublon. Ainsi, après import v0.5.5, l'utilisateur coche manuellement **T201** comme terminée dans sa base; le snapshot et le ROADMAP portent déjà ce statut.

## Snapshot

`tasks_snapshot_v0.5.5.ged` contient toutes les tâches du projet. Il sert au versionnage, au ROADMAP et à l'audit. **Ne pas l'importer** dans la base RootsMagic actuelle.

## Statuts

- `NEW` : recherche à faire.
- `COMPLETED` : la passe définie a été exécutée et documentée, même si son résultat est négatif, partiel ou bloqué.

Une recherche primaire non résolue peut donner lieu à une nouvelle tâche de suivi plus précise, plutôt que de garder indéfiniment la tâche initiale ouverte.

## Priorités

- `1` : forte valeur généalogique / blocage immédiat.
- `2` : prolongation importante d'une branche.
- `3` : audit ou approfondissement de fond.

## Doublons

Le nettoyage/fusion des doublons demeure séparé et sous la responsabilité de l'utilisateur. Les deltas de recherche doivent éviter d'aggraver les doublons; lorsqu'une fiche canonique n'est pas encore déterminée, préférer une note et un suivi plutôt qu'un lien structurel prématuré.
