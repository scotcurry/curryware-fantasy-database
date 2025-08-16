CREATE TABLE league_scoring_information (
                                            league_stat_key             BIGINT PRIMARY KEY,
                                            league_stat_id              INT,
                                            league_stat_enabled         boolean,
                                            league_stat_name            VARCHAR(30),
                                            league_stat_display_name    VARCHAR(30),
                                            league_stat_group           VARCHAR(20),
                                            league_stat_abbreviation    VARCHAR(20),
                                            league_stat_sort_order      INT,
                                            league_stat_position_type   VARCHAR(20),
                                            league_stat_sort_position   INT
)
