CREATE TABLE transaction_player (
    transaction_key     TEXT NOT NULL,
    player_key          VARCHAR(20) NOT NULL,
    player_id           INTEGER NOT NULL,
    transaction_type    TEXT,
    transaction_source  TEXT,
    destination_team    TEXT,
    destination_team_id TEXT,
    PRIMARY KEY (transaction_key, player_key)
)