CREATE TABLE league_stat_description (
    league_stat_key_id              VARCHAR(30) PRIMARY KEY,
    game_id                         INT,
    league_id                       INT,
    stat_id                         INT,
    stat_enabled                    BOOLEAN,
    stat_name                       VARCHAR(60),
    stat_display_name               VARCHAR(60),
    stat_group_display_name         VARCHAR(60),
    stat_abbreviation               VARCHAR(10),
    stat_sort_order                 INT,
    stat_position_type              VARCHAR(10),
    stat_sort_position              INT
)