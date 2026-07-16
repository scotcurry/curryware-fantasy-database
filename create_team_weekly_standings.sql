CREATE TABLE team_weekly_standings (
    team_key                    TEXT NOT NULL,
    week_key                    TEXT NOT NULL,
    rank                        INTEGER NOT NULL,
    points_for                  NUMERIC (10, 1),
    points_against              NUMERIC (10, 1),
    wins                        INTEGER,
    losses                      INTEGER,
    PRIMARY KEY (team_key, week_key)    
)