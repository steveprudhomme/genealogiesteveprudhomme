# Rapport de recherche T201 - Synnett, John / Boucher, Marie Amanda

**Date de la passe :** 10 Aug 2026  
**Version du projet :** 0.5.5  
**Conclusion générale :** `PROBABLE` pour la filiation d'Amanda; `RECHERCHE INCOMPLÈTE` pour les actes originaux.

## Objectif

Obtenir et transcrire l'acte original du mariage de John/Johnny Synnett et Marie Amanda Boucher, donné au 21 Jul 1887 à Rivière-la-Madeleine, identifier les parents, résidences, professions et témoins, puis retrouver les baptêmes autour de 1866.

## Contrôle anti-doublon avant intégration

Le GEDCOM courant fourni contient plusieurs fiches John Synnett/Synett et Marie Amanda Boucher qui se recoupent. En revanche, aucune fiche exacte `Georges /Boucher/`, `George /Boucher/`, `Odile /Fournier/` ou `Audile /Fournier/` n'y a été trouvée.

Conséquence : **aucune nouvelle fiche John ou Amanda n'est créée**, aucune fusion n'est effectuée et aucun lien parent-enfant vers Amanda n'est ajouté automatiquement.

## Résultats

### 1. Mariage John/Johnny Synnett - Amanda Boucher

Plusieurs sources secondaires indépendantes concordent sur un mariage en **1887 à Sainte-Madeleine-de-la-Rivière-Madeleine** : MesAieux l'indexe comme acte d'état civil; NosOrigines donne plus précisément **21 Jul 1887**; la publication *Lignées Lavoie à St-Anaclet* confirme que John dit Johnny Synnett a épousé Amanda Boucher en 1887 à Rivière-Madeleine.

**Évaluation :** `PROBABLE` pour la date exacte du 21 Jul 1887; très forte concordance pour le couple, l'année et la paroisse. L'image de l'acte original n'a toutefois pas été obtenue.

### 2. Parents de John/Johnny Synnett

NosOrigines identifie **François-Xavier Synnott** et **Marie Gagnon** comme parents de Johnny. Ces personnes et cette filiation sont déjà représentées dans le GEDCOM courant pour l'une des fiches John; aucune nouvelle fiche ni nouvelle relation n'est nécessaire dans le delta.

### 3. Parents probables d'Amanda Boucher

Trois sources secondaires convergent :

- NosOrigines nomme **Georges Boucher** et **Odile Fournier** comme père et mère d'Amanda;
- l'arbre Geneanet de Marcel Fournier présente Amanda Boucher (1866-) comme fille de Georges et Odile Fournier, mariée à Johnny Synnott en 1887;
- l'histoire locale *Les Boucher* présente Amanda parmi les premiers enfants de Georges et Odile.

MesAieux indexe par ailleurs le **mariage de Georges Boucher et Odile Fournier en 1865 à Sainte-Anne-des-Monts**.

**Évaluation :** `PROBABLE`. La convergence justifie l'ajout prudent de Georges Boucher et Odile Fournier comme nouveau couple de recherche, mais **pas encore le lien structurel vers une fiche Amanda**, tant que l'acte original et le bon doublon Amanda ne sont pas résolus.

### 4. Baptêmes et dates de naissance

Les images originales des baptêmes de John et d'Amanda n'ont pas été obtenues. Les sources secondaires ne sont pas parfaitement concordantes sur les dates, notamment pour John. La date d'Amanda du **24 May 1866** apparaît dans le GEDCOM courant et est aussi évoquée par NosOrigines comme provenant de l'index consolidé des décès du Québec, mais elle n'est pas convertie en nouvelle preuve primaire par cette passe.

**Décision :** aucune date de naissance existante n'est modifiée dans le delta v0.5.5.

### 5. Résidences, professions et témoins

Sans l'image de l'acte de mariage de 1887, ces éléments ne peuvent pas être transcrits de manière fiable. Ils restent à faire sous T219.

## Intégration GEDCOM retenue

Le fichier `gedcom/t201_research_import_v0.5.5.ged` ajoute seulement :

- Georges Boucher;
- Odile Fournier;
- leur famille de couple avec mariage indexé en 1865 à Sainte-Anne-des-Monts;
- quatre sources directement utiles à ces nouveaux enregistrements;
- T219, tâche de confirmation primaire.

Il n'ajoute **ni John/Johnny Synnett ni Amanda Boucher** et ne relie pas Amanda au nouveau couple.

## Statut de T201

T201 est marquée `COMPLETED` dans le snapshot de projet car la passe prévue a été réellement effectuée et documentée. Elle reste **partielle** sur la preuve primaire. T219 reprend explicitement la recherche des images originales.
