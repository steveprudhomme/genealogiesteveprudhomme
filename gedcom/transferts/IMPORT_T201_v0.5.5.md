# Import RootsMagic - T201 - v0.5.5

## Fichier à importer

`gedcom/t201_research_import_v0.5.5.ged`

## Contenu du delta

- **2 INDI** : Georges Boucher, Odile Fournier;
- **1 FAM** : couple Georges Boucher / Odile Fournier, mariage indexé en 1865 à Sainte-Anne-des-Monts;
- **4 SOUR** : sources directement citées par les nouveaux enregistrements;
- **1 TASK** : T219, suivi primaire de T201;
- **0 John/Johnny Synnett**, **0 Amanda Boucher**.

## Pourquoi Amanda n'est pas reliée automatiquement

Le GEDCOM courant fourni comporte plusieurs fiches John Synnett/Synett et Marie Amanda Boucher qui semblent se recouper. L'acte original du mariage de 1887 et le baptême d'Amanda n'ayant pas encore été obtenus, le delta ajoute le couple parental **sans créer de lien enfant** vers une fiche Amanda. Cela évite de fixer la bonne filiation sur le mauvais doublon.

## Avant import

Le contrôle effectué sur `genealogiesteveprudhomme(4).ged` n'a trouvé aucune fiche exacte Georges/George Boucher ni Odile/Audile Fournier correspondant au nouveau couple. Si tu as ajouté ces personnes manuellement dans RootsMagic depuis cet export, **ne réimporte pas le delta tel quel** : compare d'abord les fiches pour éviter un doublon.

## Après import

1. Vérifier que Georges Boucher et Odile Fournier ont été créés une seule fois et forment un couple.
2. Vérifier que T219 apparaît avec son numéro dans le titre.
3. Dans ta liste de tâches RootsMagic existante, **cocher manuellement T201 comme terminée**. T201 n'est pas réimportée dans le delta, car cela créerait une deuxième tâche au lieu de mettre à jour celle qui existe déjà.
4. Ne relier Amanda au couple Georges/Odile qu'après T219 et après avoir déterminé quelle fiche Amanda est canonique.

## Snapshot à ne pas importer

`gedcom/tasks_snapshot_v0.5.5.ged` est destiné au versionnage et au ROADMAP. Il contient les **155 tâches** du projet et ne doit pas être importé dans la base RootsMagic actuelle.
