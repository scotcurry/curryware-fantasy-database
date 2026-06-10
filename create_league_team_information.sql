CREATE TABLE league_team_information
(
    team_key                VARCHAR(30)     NOT NULL,
    team_id                 INTEGER         NOT NULL,
    league_key              VARCHAR(30)     NOT NULL,
    league_id               INTEGER         NOT NULL,
    league_update_timestamp BIGINT,
    team_logo_url           TEXT,
    draft_position          INTEGER,
    draft_grade             VARCHAR(10),
    draft_recap_url         TEXT,
    manager_id              INTEGER,
    manager_nickname        VARCHAR(50),
    CONSTRAINT pk_league_team_information PRIMARY KEY (team_key)
)
