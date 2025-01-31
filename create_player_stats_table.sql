CREATE TABLE player_stats (
    player_key INT NOT NULL ,
    game_key INT NOT NULL ,
    week_key INT NOT NULL ,
    stat_id INT NOT NULL ,
    stat_value DECIMAL (5, 2) NOT NULL 
)