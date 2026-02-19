CREATE TABLE public.fact_goty_public_performance (
    game_id INT REFERENCES public.dim_games(game_id),
    year INT,
    revenue_estimate_low_usd BIGINT,
    revenue_estimate_high_usd BIGINT,
    copies_sold_millions NUMERIC(5,2),
    player_activity_note TEXT,
    PRIMARY KEY (game_id, year)
);

INSERT INTO public.fact_goty_public_performance
(
    game_id,
    year,
    revenue_estimate_low_usd,
    revenue_estimate_high_usd,
    copies_sold_millions,
    player_activity_note
)
VALUES
(
    1,
    2023,
    780000000,
    1500000000,
    20.00,
    'Tens of thousands concurrent on Steam; console activity not publicly disclosed'
),
(
    2,
    2024,
    NULL,
    NULL,
    2.30,
    'PlayStation-only title; global active player counts not publicly tracked'
),
(
    3,
    2025,
    180000000,
    NULL,
    5.00,
    'Peak concurrent ~100k–145k on Steam; console and Game Pass players not fully disclosed'
);

UPDATE public.fact_goty_public_performance
SET 
    revenue_estimate_low_usd = 75000000,
    revenue_estimate_high_usd = 150000000
WHERE game_id = 2;
