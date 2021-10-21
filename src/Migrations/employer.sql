CREATE TABLE IF NOT EXISTS employer (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    address_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) references address (id)
)