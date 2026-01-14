SELECT
    user_id,
    SUM(amount) AS lifetime_revenue,
    COUNT(DISTINCT transaction_id) AS total_transactions
FROM {{ ref('stg_transactions') }}
GROUP BY user_id;
