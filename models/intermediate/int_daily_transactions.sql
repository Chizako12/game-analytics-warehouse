SELECT
    game_id,
    user_id,
    DATE(transaction_timestamp) AS transaction_date,
    COUNT(*) AS transaction_count,
    SUM(amount_usd) AS revenue_usd
FROM {{ ref('stg_transactions') }}
GROUP BY
    game_id,
    user_id,
    DATE(transaction_timestamp)
