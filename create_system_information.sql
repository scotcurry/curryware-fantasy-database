CREATE TABLE system_information
(
    system_id         int UNIQUE NOT NULL,
    system_value_name VARCHAR(50),
    system_value      VARCHAR(200)
)