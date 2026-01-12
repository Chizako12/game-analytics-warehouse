SELECT
    user_id,
    created_at AS user_created_at,
    LOWER(country) AS country,
    LOWER(platform) AS platform
FROM raw_users;
