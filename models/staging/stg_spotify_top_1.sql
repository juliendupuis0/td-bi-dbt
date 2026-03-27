{{ config(materialized='table') }}

WITH ranked_users AS (
    SELECT
        user_id,
        country,
        age,
        subscription_type,
        avg_listening_hours_per_week,
        PERCENT_RANK() OVER (
            ORDER BY avg_listening_hours_per_week DESC
        ) AS engagement_percentile
    FROM {{ ref('stg_spotify_actif_sub') }}
)

SELECT
    user_id,
    country,
    age,
    subscription_type,
    avg_listening_hours_per_week
FROM ranked_users
WHERE engagement_percentile <= 0.01
ORDER BY avg_listening_hours_per_week DESC