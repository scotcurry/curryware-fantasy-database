CREATE TABLE user_info (
            user_name           VARCHAR(80),
            user_device_type    VARCHAR(80),
            user_device_id      VARCHAR(50) PRIMARY KEY,
            apns_token          VARCHAR(200)
)