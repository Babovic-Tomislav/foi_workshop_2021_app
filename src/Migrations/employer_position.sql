CREATE TABLE IF NOT EXISTS employer_position(
id INT NOT NULL AUTO_INCREMENT,
employer_id INT,
position_id INT,
PRIMARY KEY (id, employer_id, position_id),
FOREIGN KEY (employer_id) references employer (id),
FOREIGN KEY (position_id) references position (id)
)