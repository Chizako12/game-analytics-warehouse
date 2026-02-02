SELECT
    game_id,
    transaction_date,
    SUM(revenue_usd) AS total_revenue_usd,
    COUNT(DISTINCT user_id) AS paying_users,
    SUM(transaction_count) AS total_transactions
FROM {{ ref('int_daily_transactions') }}
GROUP BY
    game_id,
    transaction_date
