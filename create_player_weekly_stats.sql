CREATE TABLE player_weekly_stats (
    player_id INT NOT NULL,
    player_game_id INT NOT NULL,
    player_stats_week INT NOT NULL,
    stat_id INT NOT NULL,
    stat_value NUMERIC(6,2)
)