CREATE TABLE latest_transaction_id (
                                         game_id INTEGER,
                                         league_id INTEGER,
                                         league_transaction_id VARCHAR(255),
                                         league_latest_transaction INTEGER,
                                         last_transaction_date INTEGER,
                                         PRIMARY KEY (game_id, league_id)
);