# Manifeste des preuves — v0.5.3

Ce manifeste distingue les PDF natifs officiels des impressions de pages Web.

- `ORIGINAL_NATIVE_PDF` : fichier officiel conservé tel quel.
- `WEB_PRINT_PDF` : impression PDF directe de la page HTML par Edge/Chrome (Chromium).
- Les `*_BROWSER_CONTENT_ARCHIVE.pdf` encore présents dans ce paquet sont des artefacts de repli de la v0.5.2; ils sont supprimés automatiquement après une impression Web réussie.
- `WEB_PRINT_STATUS.txt` indique si l’impression réelle a été générée et, après succès, son SHA-256.

## 001_TNA_Census_Records_1921

- **Titre :** The National Archives - Census records
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.nationalarchives.gov.uk/help-with-your-research/research-guides/census-records/`
- **PDF d’impression cible :** `001_TNA_Census_Records_1921_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `001_TNA_Census_Records_1921_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 002_TNA_1939_Register

- **Titre :** The National Archives - 1939 Register
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.nationalarchives.gov.uk/help-with-your-research/research-guides/1939-register/`
- **PDF d’impression cible :** `002_TNA_1939_Register_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `002_TNA_1939_Register_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 003_TNA_1939_Register_FOI_Guide_Original

- **Titre :** The National Archives - 1939 Register FOI guide
- **Type :** `ORIGINAL_NATIVE_PDF`
- **URL :** `https://cdn.nationalarchives.gov.uk/documents/1939-register-foi.pdf`
- **PDF original :** `003_TNA_1939_Register_FOI_Guide_Original.pdf`
- **Pages :** 3
- **Contrôle :** `ORIGINAL_FILE_STATUS.txt`
- **PNG rendus du PDF original :** 3 fichier(s)

## 004_TNA_Passenger_Lists_BT27

- **Titre :** The National Archives - Passengers / BT27
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.nationalarchives.gov.uk/help-with-your-research/research-guides/passengers/`
- **PDF d’impression cible :** `004_TNA_Passenger_Lists_BT27_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `004_TNA_Passenger_Lists_BT27_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 005_TNA_BT26_Information_Original

- **Titre :** The National Archives - BT26 information sheet
- **Type :** `ORIGINAL_NATIVE_PDF`
- **URL :** `https://cdn.nationalarchives.gov.uk/documents/bt_26.pdf`
- **PDF original :** `005_TNA_BT26_Information_Original.pdf`
- **Pages :** 1
- **Contrôle :** `ORIGINAL_FILE_STATUS.txt`
- **PNG rendus du PDF original :** 1 fichier(s)

## 006_LAC_Immigration_Records

- **Titre :** Library and Archives Canada - Immigration records
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/genealogy-family-history/immigration.html`
- **PDF d’impression cible :** `006_LAC_Immigration_Records_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `006_LAC_Immigration_Records_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 007_LAC_Form_30A_1919_1924

- **Titre :** Library and Archives Canada - Form 30A, Ocean arrivals 1919 to 1924
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/genealogy-family-history/immigration/form-30a-ocean-arrivals-1919-1924.html`
- **PDF d’impression cible :** `007_LAC_Form_30A_1919_1924_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `007_LAC_Form_30A_1919_1924_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 008_LAC_Manifest_Indexes_1906_1920

- **Titre :** Library and Archives Canada - Manifest indexes, 1906 to 1920
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/genealogy-family-history/immigration/manifest-indexes.html`
- **PDF d’impression cible :** `008_LAC_Manifest_Indexes_1906_1920_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `008_LAC_Manifest_Indexes_1906_1920_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 009_LAC_Passenger_Lists_1865_1935

- **Titre :** Library and Archives Canada - Passenger lists 1865 to 1935
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/genealogy-family-history/immigration/passenger-lists-1865-1935.html`
- **PDF d’impression cible :** `009_LAC_Passenger_Lists_1865_1935_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `009_LAC_Passenger_Lists_1865_1935_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 010_LAC_National_Registration_File_1940

- **Titre :** Library and Archives Canada - Preserving the National Registration File
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/military-history/second-world-war/national-registration-file.html`
- **PDF d’impression cible :** `010_LAC_National_Registration_File_1940_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `010_LAC_National_Registration_File_1940_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 011_BAnQ_Contrats_de_mariage

- **Titre :** BAnQ - Contrats de mariage
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www2.banq.qc.ca/archives/genealogie_histoire_familiale/ressources/bd/recherche.html?id=CONTRATS_DE_MARIAGE_2020`
- **PDF d’impression cible :** `011_BAnQ_Contrats_de_mariage_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `011_BAnQ_Contrats_de_mariage_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 012_BAnQ_Archives_notariales

- **Titre :** BAnQ - Archives notariales / base biographique des notaires
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www2.banq.qc.ca/archives/genealogie_histoire_familiale/ressources/bd/recherche.html?id=BIOGR_NOTAIRES_QC_2022`
- **PDF d’impression cible :** `012_BAnQ_Archives_notariales_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `012_BAnQ_Archives_notariales_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 013_Diocese_Valleyfield_Archives

- **Titre :** Diocèse de Valleyfield - Archives
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.diocesevalleyfield.org/fr/diocese/chancellerie/archives`
- **PDF d’impression cible :** `013_Diocese_Valleyfield_Archives_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `013_Diocese_Valleyfield_Archives_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 014_Originis_Sainte_Clotilde_de_Chateauguay

- **Titre :** Originis - Sainte-Clotilde-de-Châteauguay
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.originis.ca/paroisse_sainte_clotilde_de_chateauguay.html`
- **PDF d’impression cible :** `014_Originis_Sainte_Clotilde_de_Chateauguay_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `014_Originis_Sainte_Clotilde_de_Chateauguay_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 015_GOVUK_GRO_Family_History

- **Titre :** GOV.UK - Research your family history using the General Register Office
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.gov.uk/research-family-history`
- **PDF d’impression cible :** `015_GOVUK_GRO_Family_History_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `015_GOVUK_GRO_Family_History_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 016_GOVUK_Discover_Family_History_Guide_Original

- **Titre :** GOV.UK / GRO - Discover your family history guide
- **Type :** `ORIGINAL_NATIVE_PDF`
- **URL :** `https://assets.publishing.service.gov.uk/media/69987c2cb33a4db7ff889eea/Discover_your_family_history_Oct_25.pdf`
- **PDF original :** `016_GOVUK_Discover_Family_History_Guide_Original.pdf`
- **Pages :** 26
- **Contrôle :** `ORIGINAL_FILE_STATUS.txt`
- **PNG rendus du PDF original :** 26 fichier(s)

## 017_FreeBMD_Search

- **Titre :** FreeBMD - Search
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.freebmd.org.uk/search`
- **PDF d’impression cible :** `017_FreeBMD_Search_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `017_FreeBMD_Search_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 018_Geneanet_Alfred_Clarke_tardifhe

- **Titre :** Geneanet - Alfred Clarke, family tree of tardifhe
- **Type :** `WEB_PRINT_PDF_SECONDARY`
- **URL :** `https://en.geneanet.org/fonds/individus/?country%5B0%5D=CAN&go=1&nom=CLARKE&region%5B0%5D=QUE&zonegeo%5B0%5D=Qu%C3%A9bec%2C+Canada`
- **PDF d’impression cible :** `018_Geneanet_Alfred_Clarke_tardifhe_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `018_Geneanet_Alfred_Clarke_tardifhe_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.

## 019_LAC_Home_Children

- **Titre :** Library and Archives Canada - Home children and Board of guardians
- **Type :** `WEB_PRINT_PDF`
- **URL :** `https://www.canada.ca/en/library-archives/collection/research-help/genealogy-family-history/immigration/home-children.html`
- **PDF d’impression cible :** `019_LAC_Home_Children_WEB_PRINT.pdf`
- **État :** `PENDING_LOCAL_GENERATION`
- **Contrôle :** `WEB_PRINT_STATUS.txt`
- **Archive v0.5.2 conservée temporairement :** `019_LAC_Home_Children_BROWSER_CONTENT_ARCHIVE.pdf`
- **Génération :** `scripts/print_web_evidence.ps1`
- **Vérification :** ouvrir le PDF et confirmer que la page attendue, et non une page de consentement/connexion/antirobot, a été imprimée.
