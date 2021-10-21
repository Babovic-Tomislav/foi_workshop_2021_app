CREATE TABLE IF NOT EXISTS address(
    id INT NOT NULL AUTO_INCREMENT,
    street VARCHAR(255),
    city_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (city_id) REFERENCES city (id)
)