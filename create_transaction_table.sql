CREATE TABLE transaction_info
(
    transaction_key  TEXT PRIMARY KEY,
    transaction_time TIMESTAMP,
    player_key       VARCHAR(20),
    player_status    VARCHAR(15),
    team_id          VARCHAR(50)
)