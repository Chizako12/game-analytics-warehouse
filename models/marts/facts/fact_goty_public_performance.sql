-- fact_goty_public_performance.sql
-- Purpose: Publicly estimated performance metrics for GOTY titles
-- NOTE: Values are approximations based on public reports and are
-- intended for comparative analysis only.

SELECT
    'goty_2023' AS game_id,
    'Baldur’s Gate 3' AS game_name,
    2023 AS goty_year,
    DATE '2025-06-01' AS metric_month,
    1800000 AS estimated_monthly_active_players,
    20000000 AS estimated_total_owners,
    780000000 AS estimated_lifetime_revenue_usd

UNION ALL

SELECT
    'goty_2024',
    'Astro Bot',
    2024,
    DATE '2025-06-01',
    300000,          -- conservative estimate due to PSN opacity
    2300000,
    160000000

UNION ALL

SELECT
    'goty_2025',
    'Clair Obscur: Expedition 33',
    2025,
    DATE '2025-06-01',
    450000,
    5000000,
    250000000;
