SELECT
    game_id,
    DATE(transaction_timestamp) AS revenue_date,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS total_transactions,
    COUNT(DISTINCT user_id) AS paying_users
FROM {{ ref('stg_transactions') }}
GROUP BY
    game_id,
    DATE(transaction_timestamp);
