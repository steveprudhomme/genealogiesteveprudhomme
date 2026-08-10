# Dossier `evidence/`

Ce dossier conserve les preuves et traces de recherche locales.

## Classes de preuve

- `ORIGINAL_NATIVE_PDF` : PDF tel qu'il est servi par l'organisme ou le site éditeur. Il est conservé sans réimpression. Les PNG `_ORIGINAL_pNNN.png` sont des rendus directs du PDF.
- `WEB_PRINT_PDF` : page HTML à imprimer en PDF avec Edge/Chrome afin de conserver sa mise en page imprimable.
- `WEB_PRINT_PDF_SECONDARY` : même mécanisme d'impression, mais pour une source secondaire/collaborative.

## Fichiers dérivés de recherche

`RESEARCH_EXTRACT.md` est **une note de travail créée pendant la recherche**. Elle résume ce qui a été observé dans le résultat Web et sert d'index local. Elle n'est jamais considérée comme une capture, un fac-similé ou un document original.

Lorsqu'un extrait est marqué `SEARCH_INDEX_SNIPPET_ONLY`, seule l'information visible dans le résultat indexé du moteur de recherche a été exploitable pendant la passe. Une telle note est une piste secondaire particulièrement faible et doit être remplacée par la page complète ou un document original lorsque possible.

## Intégrité

- Les PDF natifs utilisent `ORIGINAL_FILE_STATUS.txt` et une empreinte SHA-256.
- Les pages Web utilisent `WEB_PRINT_STATUS.txt`; le script local inscrit le SHA-256 après une impression réussie.
- Les anciens `*_BROWSER_CONTENT_ARCHIVE.pdf` des versions antérieures sont des repli historiques et non le format cible.

## Impression Web

Depuis Windows :

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\print_web_evidence.ps1
```

Toujours ouvrir le PDF produit pour vérifier qu'il ne s'agit pas d'une page de connexion, de consentement, d'erreur ou d'un défi antirobot.

Voir `MANIFEST.md` pour l'inventaire détaillé.
