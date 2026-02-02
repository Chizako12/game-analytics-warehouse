SELECT
    a.game_id,
    a.user_id,
    a.activity_date,
    f.first_activity_date,
    DATEDIFF(
        day,
        f.first_activity_date,
        a.activity_date
    ) AS days_since_first_activity
FROM {{ ref('int_daily_user_activity') }} a
JOIN {{ ref('int_user_first_activity') }} f
    ON a.game_id = f.game_id
   AND a.user_id = f.user_id
