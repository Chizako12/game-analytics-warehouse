SELECT
    game_id,
    activity_date,
    COUNT(DISTINCT user_id) AS daily_active_users,
    SUM(total_events) AS total_events
FROM {{ ref('int_daily_user_activity') }}
GROUP BY
    game_id,
    activity_date
