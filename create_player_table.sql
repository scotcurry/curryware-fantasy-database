CREATE TABLE player_info (
    player_id INT PRIMARY KEY ,
    player_season_key VARCHAR(20),
    player_name VARCHAR(50),
    player_url VARCHAR(256),
    player_team VARCHAR(10),
    player_bye_week INT,
    player_uniform_number INT,
    player_position VARCHAR(10),
    player_headshot VARCHAR(256)
)