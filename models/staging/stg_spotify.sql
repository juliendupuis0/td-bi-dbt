{{ config(materialized='view') }}

SELECT
    user_id,
    country,
    age,
    subscription_type,
    subscription_status,
    favorite_genre,
    avg_listening_hours_per_week,
    playlists_created
FROM {{ source('MINIPROJET', 'SPOTIFYTABLE') }}