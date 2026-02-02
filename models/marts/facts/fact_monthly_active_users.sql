SELECT
    game_id,
    DATE_TRUNC('month', activity_date) AS activity_month,
    COUNT(DISTINCT user_id) AS monthly_active_users
FROM {{ ref('int_daily_user_activity') }}
GROUP BY
    game_id,
    DATE_TRUNC('month', activity_date)
