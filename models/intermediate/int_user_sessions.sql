SELECT
    session_id,
    user_id,
    game_id,
    MIN(event_timestamp) AS session_start_time,
    MAX(event_timestamp) AS session_end_time,
    COUNT(*) AS total_events
FROM {{ ref('stg_events') }}
GROUP BY
    session_id,
    user_id,
    game_id;
