CREATE TABLE IF NOT EXISTS employer_category(
    id INT NOT NULL AUTO_INCREMENT,
    employer_id INT,
    category_id INT,
    PRIMARY KEY (id, employer_id, category_id),
    FOREIGN KEY (employer_id) references employer (id),
    FOREIGN KEY (category_id) references category (id)
)