# Evidence / Preuves

Chaque sous-répertoire de `evidence/` représente une source documentaire consultée durant les recherches.

## PDF natif officiel

Pour `ORIGINAL_NATIVE_PDF` :

- PDF principal : `<nom_du_repertoire>.pdf`
- URL de provenance : `<nom_du_repertoire>_URL.txt`
- contrôle : `ORIGINAL_FILE_STATUS.txt`
- rendus : `<nom_du_repertoire>_ORIGINAL_p001.png`, `_p002.png`, etc.

Le PDF natif est conservé tel quel. Les PNG sont rendus directement depuis ce fichier original.

## Page Web HTML

Pour `WEB_PRINT_PDF` :

- URL de provenance : `<nom_du_repertoire>_URL.txt`
- PDF imprimé par navigateur : `<nom_du_repertoire>_WEB_PRINT.pdf`
- contrôle : `WEB_PRINT_STATUS.txt`

Le PDF Web doit être produit par la fonction d'impression PDF du moteur Chromium afin de conserver la
mise en page imprimable du site. Il ne doit pas être remplacé par un résumé ou une reconstitution de texte.

Le script Windows `scripts/print_web_evidence.ps1` automatise cette opération avec Microsoft Edge ou
Google Chrome. Une vérification visuelle manuelle reste obligatoire après génération.

Les anciens fichiers `*_BROWSER_CONTENT_ARCHIVE.pdf` de la v0.5.2 sont des artefacts dérivés historiques;
le script les supprime une fois le nouveau `WEB_PRINT_PDF` créé avec succès.
