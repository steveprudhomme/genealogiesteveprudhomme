# Conventions GEDCOM

## Format

Le format de travail est **GEDCOM 5.5.1** en UTF-8.

## Dates

Utiliser les mois GEDCOM en anglais et en majuscules :

- `15 MAR 1923`
- `ABT 1893`
- `BEF 1923`
- `AFT 1945`
- `BET 25 APR 1958 AND 26 APR 1958`
- `FROM 25 JUL 1942 TO 18 MAR 1944`

Ne pas transformer une estimation en date exacte sans source suffisante.

## Tâches

RootsMagic exporte les tâches sous la forme :

```gedcom
0 @T148@ _TASK
1 DESC Description
1 TYPE 0
1 NOTE Détails
1 STAT NEW
1 PRTY 1
```

Le `ROADMAP.md` doit contenir les mêmes tâches, dans le même ordre, avec description, note,
statut et priorité identiques sur le fond.

## Faits incertains

Une hypothèse ne doit pas être enregistrée comme un fait certain. Préférer une note de recherche,
une tâche ou un événement explicitement qualifié lorsque nécessaire.

## Doublons

Avant d'ajouter une personne, famille ou événement, vérifier les UID, conjoints, parents,
dates et lieux déjà présents.
