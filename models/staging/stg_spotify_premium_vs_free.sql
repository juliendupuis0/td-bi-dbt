{{ config(materialized='view') }}

SELECT
    subscription_type,
    COUNT(user_id) AS total_users,
    ROUND(AVG(avg_listening_hours_per_week), 2) AS avg_hours_per_week,
    MAX(avg_listening_hours_per_week) AS max_hours_per_week
FROM {{ ref('stg_spotify_actif_sub') }}
GROUP BY 1
ORDER BY avg_hours_per_week DESC