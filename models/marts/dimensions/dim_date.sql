SELECT
    d::date AS date,
    EXTRACT(year FROM d) AS year,
    EXTRACT(month FROM d) AS month,
    EXTRACT(day FROM d) AS day,
    TO_CHAR(d, 'YYYY-MM') AS year_month,
    EXTRACT(week FROM d) AS week,
    CASE
        WHEN EXTRACT(isodow FROM d) IN (6, 7) THEN TRUE
        ELSE FALSE
    END AS is_weekend
FROM generate_series(
    DATE '2023-01-01',
    DATE '2026-12-31',
    INTERVAL '1 day'
) AS d;
