{{ config(materialized='table') }}

SELECT DISTINCT
    VILLE AS ID_VILLE,
    VILLE,
    REGION,
    PAYS,
    ZONE_GEOGRAPHIQUE
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_ACHATS') }}