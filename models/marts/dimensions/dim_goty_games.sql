SELECT
    game_id,
    game_name,
    goty_year
FROM (
    VALUES
        ('goty_2023', 'Baldur’s Gate 3', 2023),
        ('goty_2024', 'Astro Bot', 2024),
        ('goty_2025', 'Clair Obscur: Expedition 33', 2025)
) AS games(game_id, game_name, goty_year);
