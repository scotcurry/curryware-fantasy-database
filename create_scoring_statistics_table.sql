CREATE TABLE  scoring_by_total (
    player_key          VARCHAR(20),
    player_id           INT,
    statistic_week      INT,
    week_total          INT,
    PRIMARY KEY (player_id, statistic_week)
)