-- Feature flags: set to true to run the corresponding CREATE TABLE section
\set create_all_league_information true

\if :create_all_league_information
CREATE TABLE IF NOT EXISTS all_league_information
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
);
\endif