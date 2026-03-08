-- This is based on this class 
CREATE TABLE league_stat_description
(
    league_stat_key_name    VARCHAR(25),
    game_id                 INT,
    league_id               INT,
    stat_id                 INT,
    stat_enabled            BOOLEAN,
    stat_name               VARCHAR(50),
    stat_display_name       VARCHAR(100),
    stat_group_name         VARCHAR(50),
    stat_group_display_name VARCHAR(20),
    stat_abbreviation       VARCHAR(10),
    stat_sort_order         INT,
    stat_position_type      VARCHAR(10),
    stat_sort_position      INT,
    PRIMARY KEY             (league_stat_key_name)
)
