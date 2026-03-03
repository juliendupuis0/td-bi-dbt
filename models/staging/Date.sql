{{ config(materialized='table') }}

SELECT DISTINCT
    DATE_DE_COMMANDE AS DATE
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_ACHATS') }}