SELECT
    event_id,
    user_id,
    game_id,
    LOWER(event_type) AS event_type,
    event_time AS event_timestamp,
    session_id
FROM raw_events;
