CREATE TABLE transaction_info
(
    game_id             INT,
    league_id           INT,
    transaction_key     TEXT PRIMARY KEY,
    transaction_id      INT,
    transaction_type    TEXT,
    transaction_status  TEXT,
    transaction_time    TIMESTAMP
)