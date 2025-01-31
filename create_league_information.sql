CREATE TABLE league_information
(
    league_information_key  INT UNIQUE NOT NULL,
    league_key              VARCHAR(20),
    league_name             VARCHAR(50),
    draft_status            VARCHAR(20),
    number_of_teams         INT,
    league_update_timestamp TIMESTAMP,
    scoring_type            VARCHAR(20),
    renew_key               VARCHAR(20),
    allow_disable_list      BOOLEAN,
    current_week            INT,
    start_week              INT,
    end_week                INT,
    season                  INT
)