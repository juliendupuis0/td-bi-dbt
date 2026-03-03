{{ config(materialized='table') }}

SELECT
    ID_COMMANDE,
    RETOURNE
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_RETOURS') }}