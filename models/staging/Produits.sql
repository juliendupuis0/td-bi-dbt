{{ config(materialized='table') }}

SELECT
    ID_PRODUIT,
    CATEGORIE,
    SOUS_CATEGORIE,
    NOM_DU_PRODUIT
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_ACHATS') }}