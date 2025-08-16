CREATE TABLE league_scoring_value_information
(
    league_stat_key   BIGINT PRIMARY KEY,
    league_game_id    INT,
    league_id         INT,
    league_stat_id    INT,
    league_stat_value DECIMAL
)
