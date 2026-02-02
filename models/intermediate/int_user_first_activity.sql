SELECT
    game_id,
    user_id,
    MIN(activity_date) AS first_activity_date
FROM {{ ref('int_daily_user_activity') }}
GROUP BY
    game_id,
    user_id
