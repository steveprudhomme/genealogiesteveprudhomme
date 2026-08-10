# Politique des sources

Chaque fait important doit idéalement être relié à une source identifiable.

## Citation minimale

Conserver autant que possible :

- organisme ou auteur;
- titre de la collection;
- type de document;
- nom de la personne;
- date et lieu;
- cote / numéro de dossier / microfilm / page / image;
- URL stable lorsqu'elle existe;
- date de consultation;
- copie locale autorisée lorsque pertinent.

## Images et documents

Une capture d'index n'est pas équivalente à l'image du document original. Lorsque l'original
est disponible, le télécharger ou le conserver comme preuve de premier rang.

## Sources publiques collaboratives

Geneanet, FamilySearch Tree et autres arbres collaboratifs sont d'excellents outils de piste,
mais leurs assertions doivent être confirmées par les documents auxquels elles renvoient.

## Recherches négatives

Documenter la collection, les variantes de nom, la période et les lieux recherchés. Une absence
de résultat peut devenir importante pour éliminer un candidat, mais ne prouve pas à elle seule
qu'un événement n'a pas eu lieu.

## Conservation des preuves Web - version 0.5.3

Deux classes sont utilisées :

- `ORIGINAL_NATIVE_PDF` : conserver le PDF officiel **sans modification**. Calculer son SHA-256 et,
  lorsque des PNG sont utiles, les rendre directement depuis le PDF original.
- `WEB_PRINT_PDF` : lorsque la source est une page HTML, imprimer la page directement en PDF avec le
  moteur Chromium d'Edge ou de Chrome afin de conserver la mise en page imprimable du site.

Règles :

- Ne jamais présenter un `WEB_PRINT_PDF` comme un document original émis par l'organisme.
- Ne jamais remplacer silencieusement un PDF natif officiel par une impression navigateur.
- Conserver l'URL et la date de consultation dans `*_URL.txt`.
- Conserver l'état de génération et l'empreinte SHA-256 dans `WEB_PRINT_STATUS.txt`.
- Vérifier visuellement le PDF après impression : titre, contenu attendu, absence de page d'erreur,
  de consentement, de connexion ou de protection antirobot.
- Les pages secondaires ou collaboratives, notamment Geneanet, gardent leur statut secondaire même
  lorsqu'une impression PDF existe.
- Les anciens `BROWSER_CONTENT_ARCHIVE` ne constituent plus le format de preuve Web cible à partir de 0.5.3.


## Notes de recherche dérivées

Les fichiers `RESEARCH_EXTRACT.md` du dossier `evidence/` sont des résumés de travail générés pendant la recherche. Ils servent à conserver localement le résultat observé et ses limites, mais **ne remplacent jamais** :

- un PDF natif original;
- une image de registre;
- une impression `WEB_PRINT_PDF` vérifiée visuellement;
- une citation bibliographique complète.

La mention `SEARCH_INDEX_SNIPPET_ONLY` indique qu'une page n'a pas pu être récupérée correctement et que seule une brève information indexée a été utilisée comme piste secondaire. Aucune conclusion certaine ne doit reposer seule sur ce type d'extrait.
