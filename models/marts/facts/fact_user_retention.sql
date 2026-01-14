WITH first_activity AS (
    SELECT
        user_id,
        MIN(activity_date) AS first_active_date
    FROM {{ ref('int_daily_user_activity') }}
    GROUP BY user_id
),

user_activity AS (
    SELECT
        d.user_id,
        d.activity_date,
        f.first_active_date,
        DATE_DIFF(d.activity_date, f.first_active_date, DAY) AS days_since_first_active
    FROM {{ ref('int_daily_user_activity') }} d
    JOIN first_activity f
        ON d.user_id = f.user_id
)

SELECT
    first_active_date AS cohort_date,
    COUNT(DISTINCT user_id) AS cohort_size,
    COUNT(DISTINCT CASE WHEN days_since_first_active = 1 THEN user_id END) AS day_1_retained,
    COUNT(DISTINCT CASE WHEN days_since_first_active = 7 THEN user_id END) AS day_7_retained
FROM user_activity
GROUP BY first_active_date;
