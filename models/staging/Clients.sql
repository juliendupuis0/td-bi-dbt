{{ config(materialized='table') }}

SELECT
    ID_CLIENT,
    NOM_DU_CLIENT,
    SEGMENT
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_ACHATS') }}