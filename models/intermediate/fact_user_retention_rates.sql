-- fact_user_retention_rates.sql
-- Grain: one row per game per cohort date
-- Purpose: Expose retention rates for analytics & BI consumption

SELECT
    game_id,
    cohort_date,
    cohort_size,

    retained_day_1,
    retained_day_7,
    retained_day_30,

    CASE
        WHEN cohort_size > 0
        THEN retained_day_1 * 1.0 / cohort_size
        ELSE 0
    END AS retention_rate_day_1,

    CASE
        WHEN cohort_size > 0
        THEN retained_day_7 * 1.0 / cohort_size
        ELSE 0
    END AS retention_rate_day_7,

    CASE
        WHEN cohort_size > 0
        THEN retained_day_30 * 1.0 / cohort_size
        ELSE 0
    END AS retention_rate_day_30

FROM {{ ref('fact_user_retention') }}
