# Changelog

Tous les changements notables du projet sont documentés ici.

## [Unreleased]

## [0.5.4] — 2026-08-10

### Tâches de recherche
- Ajout de **18 nouvelles tâches T201-T218** couvrant plusieurs branches de l'arbre généalogique.
- Répartition des nouvelles tâches en priorités 1 à 3 selon leur potentiel de débloquer rapidement des filiations ou de structurer les recherches futures.
- Aucune nouvelle tâche de fusion ou de dédoublonnage n'est ajoutée; ce travail demeure séparé.
- Adoption, pour les nouvelles tâches, de la nomenclature `Numéro - Nom, Prénom (ou sujet général) - Descriptif`; le numéro est répété dans le champ `DESC` afin qu'il soit visible directement dans la liste de tâches de RootsMagic.

### GEDCOM
- Ajout de `gedcom/research_tasks_import_v0.5.4.ged`, import différentiel contenant seulement T201-T218 et aucun INDI/FAM/SOUR.
- Ajout de `gedcom/tasks_snapshot_v0.5.4.ged`, snapshot complet de **154 tâches** : **90 NEW** et **64 COMPLETED**.
- Rebasage documentaire sur le GEDCOM courant fourni, où les 18 tâches Alfred de la phase 2 apparaissent désormais sous **T183-T200**.

### Documentation
- Reconstruction de `ROADMAP.md` à partir du snapshot v0.5.4 afin d'assurer une correspondance exacte des identifiants, descriptions, notes, statuts, priorités et ordre.
- Mise à jour de `README.md`, `docs/TASK_WORKFLOW.md` et `VERSION`.
- Élargissement explicite du projet de recherche à l'ensemble des branches de l'arbre, Alfred Clarke demeurant une branche parmi les autres.


## [0.5.3] — 2026-08-10

### Modifié
- Nouveau format cible `WEB_PRINT_PDF` pour les 16 sources HTML du dossier `evidence/`.
- Abandon de `BROWSER_CONTENT_ARCHIVE` comme format de preuve Web principal.
- Conservation des trois `ORIGINAL_NATIVE_PDF` officiels sans réimpression ni transformation.

### Ajouté
- Script `scripts/print_web_evidence.ps1` pour imprimer directement les pages Web en PDF avec Microsoft Edge ou Google Chrome.
- Fichier `WEB_PRINT_STATUS.txt` par source HTML avec état de génération, méthode et, après génération, empreinte SHA-256.
- Documentation `scripts/README.md` décrivant la génération et la vérification manuelle des impressions Web.

### Documentation
- Mise à jour de `README.md`, `evidence/README.md`, `evidence/MANIFEST.md`, `docs/SOURCE_POLICY.md` et `sources/SOURCES_PHASE2.md`.
- Clarification : la v0.5.3 modifie uniquement la conservation des preuves Web; elle ne change aucune conclusion généalogique ni le contenu des GEDCOM de la phase 2.

### Migration
- Les anciens `*_BROWSER_CONTENT_ARCHIVE.pdf` de la v0.5.2 sont conservés uniquement comme repli jusqu'à ce que l'impression navigateur réussisse. Le script les supprime automatiquement après création du `*_WEB_PRINT.pdf`.
- La génération réelle doit être effectuée dans un environnement où Edge ou Chrome peut accéder aux sites en direct; chaque PDF doit ensuite être vérifié visuellement.

## [0.5.2] — 2026-08-10

### Corrigé
- Suppression des PNG dérivés qui pouvaient être interprétés comme des captures pixel par pixel des pages Web HTML.
- Distinction explicite entre preuve originale et archive dérivée du contenu Web.
- Remplacement des PDF natifs par de nouvelles copies téléchargées directement depuis les URL officielles.

### Ajouté
- PNG `_ORIGINAL_pNNN.png` rendus directement depuis les PDF natifs originaux.
- `ORIGINAL_FILE_STATUS.txt` avec empreinte SHA-256 pour les PDF natifs.
- `WEB_SCREENSHOT_STATUS.txt` pour chaque source HTML lorsque la capture pixel du site n'est pas disponible.


## [0.5.1] — 2026-08-10

### Ajouté
- Ajout de rendus PNG **pixel par pixel** pour chaque preuve PDF du dossier `evidence/`.
- Normalisation du nommage des images de preuve au format `<nom_du_repertoire>_pNNN.png`.
- Intégration de ces PNG dans le paquet ZIP complet du projet.

### Documentation
- Mise à jour du `README.md` et du manifeste des preuves pour documenter la convention PNG/PDF.


### À faire
- Attendre une nouvelle preuve primaire ou un nouvel accès d'archives avant de modifier l'identité d'Alfred Clarke.
- Réévaluer le National Registration File de 1940 lorsque BAC rétablira l'accès.

## [0.5.0] - 2026-08-09

### Recherche
- Exécution des 18 tâches de la phase 2 Alfred Clarke.
- Tâches rebasées de T148-T165 à **T165-T182** afin d'éviter une collision avec le GEDCOM courant,
  qui contient déjà T148-T164 pour la phase précédente.
- Les 18 tâches sont marquées `COMPLETED` avec résultat positif, négatif, inconclusif ou bloqué.

### GEDCOM
- Création de `alfred_clarke_phase2_import_completed_v0.5.0.ged`, contenant uniquement T165-T182.
- Aucun `INDI`, `FAM` ou `SOUR` dans le delta d'importation : aucune nouvelle preuve primaire ne
  justifie une modification généalogique et cette stratégie réduit le risque de doublons.
- Création de `tasks_snapshot_v0.5.0.ged` avec **136 tâches** : 72 NEW et 64 COMPLETED.

### Preuves
- Ajout de 19 répertoires de preuve nommés précisément.
- Les PDF officiels natifs sont conservés tels quels et rendus en PNG avec la mise en page originale.
- Pour les pages HTML, ajout d'un PDF du contenu réellement récupéré par le navigateur Web et d'un
  PNG rendu à partir de ce PDF; ces archives sont explicitement distinguées des captures HTML pixel-par-pixel.
- Les noms de PDF/PNG correspondent au nom de leur répertoire.

### Conclusions
- Aucune corroboration primaire de la naissance 26 FEB 1893 à Hastings.
- Aucune corroboration primaire du décès NOV 1972 à Hastings.
- Aucun navire ni année d'immigration identifié.
- Aucun parent biologique ajouté.
- La tradition « orphelin de Liverpool » reste une tradition familiale.
- Le National Registration File de 1940 est officiellement inaccessible à BAC au 9 AUG 2026.

## [0.4.0] - 2026-08-09

### Ajouté
- Structure open-source adaptée à la généalogie.
- Nouvelle phase de 18 tâches Alfred Clarke.

### Corrigé par 0.5.0
- Les identifiants T148-T165 de la phase 0.4.0 entraient en collision avec les tâches de la base
  courante après import de la première phase. La version 0.5.0 les rebascule sur T165-T182.

## [0.2.0] - 2026-08-09
- Première phase de recherche Alfred Clarke exécutée.

## [0.1.0] - 2026-08-09
- Première série de tâches Alfred Clarke et convention GEDCOM/ROADMAP/CHANGELOG.
