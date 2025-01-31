CREATE TABLE stat_information (
    stat_id INT PRIMARY KEY,
    stat_enabled INT NOT NULL,
    stat_name VARCHAR(50) NOT NULL ,
    stat_display_name VARCHAR(30) NOT NULL,
    stat_group VARCHAR(20) NOT NULL,
    stat_abbreviation VARCHAR(20) NOT NULL,
    stat_sort_order INT NOT NULL,
    stat_position_type VARCHAR(5) NOT NULL 
)