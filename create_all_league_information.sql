-- Documented, mark for inclusion.
CREATE TABLE all_league_information
(
    league_key              VARCHAR(20),
    league_id               INT,
    league_name             VARCHAR(100),
    league_logo_url         VARCHAR(200),
    number_of_teams         INT,
    league_update_timestamp TIMESTAMP,
    start_date              DATE,
    end_week                DATE,
    season                  INT
)