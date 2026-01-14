SELECT
    user_id,
    game_id,
    DATE(event_timestamp) AS activity_date,
    COUNT(*) AS total_events
FROM {{ ref('stg_events') }}
GROUP BY
    user_id,
    game_id,
    DATE(event_timestamp);
