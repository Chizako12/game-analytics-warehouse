SELECT
    game_id,
    first_activity_date AS cohort_date,

    COUNT(DISTINCT user_id) AS cohort_size,

    COUNT(DISTINCT CASE WHEN days_since_first_activity = 1 THEN user_id END)
        AS retained_day_1,

    COUNT(DISTINCT CASE WHEN days_since_first_activity = 7 THEN user_id END)
        AS retained_day_7,

    COUNT(DISTINCT CASE WHEN days_since_first_activity = 30 THEN user_id END)
        AS retained_day_30

FROM {{ ref('int_user_retention_activity') }}
GROUP BY
    game_id,
    first_activity_date
