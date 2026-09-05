CREATE TABLE team_weekly_standings (
    team_key                    TEXT NOT NULL,
    team_id                     INTEGER,
    week_key                    INTEGER NOT NULL,
    rank                        INTEGER NOT NULL,
    points_for                  NUMERIC (10, 1),
    points_against              NUMERIC (10, 1),
    wins                        INTEGER,
    losses                      INTEGER,
    ties                        INTEGER,
    number_of_moves             INTEGER,
    PRIMARY KEY (team_key, week_key)    
)