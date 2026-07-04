CREATE TABLE IF NOT EXISTS all_team_information (
                                                        league_key                TEXT        NOT NULL,
                                                        team_key                  TEXT        NOT NULL,
                                                        team_id                   INTEGER     NOT NULL,
                                                        team_name                 TEXT        NOT NULL,
                                                        team_logo                 TEXT        NOT NULL,
                                                        previous_season_team_rank INTEGER,
                                                        number_of_moves           INTEGER,
                                                        number_of_trades          INTEGER,
                                                        draft_position            INTEGER,
                                                        draft_grade               TEXT,
                                                        draft_recap_url           TEXT,
                                                        manager_nicknames         TEXT,
                                                        manager_felo_score        INTEGER,
                                                        CONSTRAINT pk_all_team_information PRIMARY KEY (team_key)
)