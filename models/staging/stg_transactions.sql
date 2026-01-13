SELECT
    transaction_id,
    user_id,
    game_id,
    amount,
    UPPER(currency) AS currency,
    transaction_time AS transaction_timestamp
FROM raw_transactions;
