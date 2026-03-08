CREATE TABLE league_info (
    game_key        INT REFERENCES game_info(game_key),
    league_id       INT,
    league_key      VARCHAR(20)     PRIMARY KEY,
    league_name     VARCHAR(80),
    league_url      VARCHAR(255),
    start_date      DATE,
    end_date        DATE
)