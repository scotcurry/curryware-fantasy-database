CREATE TABLE team_roster_information (
    team_key                    TEXT NOT NULL,
    team_id                     INTEGER,
    manager_id                  INTEGER,
    player_key                  TEXT NOT NULL,
    player_id                   INTEGER,
    team_full_name              TEXT,
    bye_week                    INTEGER,
    primary_position            TEXT,
    has_player_notes            BOOLEAN,
    last_player_note_timestamp  INTEGER,
    PRIMARY KEY (team_key, player_key)
)