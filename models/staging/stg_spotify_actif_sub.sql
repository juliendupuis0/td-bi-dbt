{{ config(materialized='view') }}

SELECT
    user_id,
    country,
    age,
    subscription_type,
    avg_listening_hours_per_week
FROM {{ ref('stg_spotify') }}
WHERE subscription_status = 'Active'