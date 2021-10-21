CREATE DATABASE IF NOT EXISTS `foi_workshop`  DEFAULT CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS foi_workshop.city(
                                   id INT NOT NULL AUTO_INCREMENT,
                                   name VARCHAR(255),
                                   zip_code INT NOT NULL,
                                   PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.address(
                                      id INT NOT NULL AUTO_INCREMENT,
                                      street VARCHAR(255),
                                      city_id INT NOT NULL,
                                      PRIMARY KEY (id),
                                      FOREIGN KEY (city_id) REFERENCES city (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.category(
                                       id INT NOT NULL AUTO_INCREMENT,
                                       name VARCHAR(255),
                                       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.position (
                                        id INT NOT NULL AUTO_INCREMENT,
                                        name VARCHAR(255),
                                        PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.employer (
                                        id INT NOT NULL AUTO_INCREMENT,
                                        name VARCHAR(255),
                                        address_id INT NOT NULL,
                                        PRIMARY KEY (id),
                                        FOREIGN KEY (address_id) references address (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.employer_category(
                                                id INT NOT NULL AUTO_INCREMENT,
                                                employer_id INT,
                                                category_id INT,
                                                PRIMARY KEY (id, employer_id, category_id),
                                                FOREIGN KEY (employer_id) references employer (id),
                                                FOREIGN KEY (category_id) references category (id)
);

CREATE TABLE IF NOT EXISTS foi_workshop.employer_position(
                                                id INT NOT NULL AUTO_INCREMENT,
                                                employer_id INT,
                                                position_id INT,
                                                PRIMARY KEY (id, employer_id, position_id),
                                                FOREIGN KEY (employer_id) references employer (id),
                                                FOREIGN KEY (position_id) references position (id)
);

INSERT INTO foi_workshop.city VALUES
(1, 'Varaždin', 42000),
(2, 'Zagreb', 10000),
(3, 'Virovitica', 33000);

INSERT INTO foi_workshop.address VALUES
(1, 'Poduzetnička zona II', 3),
(2, 'Strojarska cesta 22', 2),
(3, 'Heinzelova ul. 33', 2),
(4, 'Kapucinski trg 5', 1);

INSERT INTO foi_workshop.category VALUES
(1, 'MOBILE'),
(2, 'WEB'),
(3, 'CMS'),
(4, 'ECOMMERCE'),
(5, 'PIM'),
(6, 'MDM'),
(7, 'CDP'),
(8, 'DAM');

INSERT INTO foi_workshop.position VALUES
(1, 'junior backend developer'),
(2, 'junior frontend developer'),
(3, 'mid backend developer'),
(4, 'mid frontend developer'),
(5, 'senior backend developer'),
(6, 'senior frontend developer'),
(7, 'junior project manager'),
(8, 'mid UI/UX designer'),
(9, 'junior android developer'),
(10, 'mid IOS developer'),
(11, 'senior android developer'),
(12, 'mid project manager'),
(13, 'mid sistem administrator'),
(14, 'mid QA');

INSERT INTO foi_workshop.employer VALUES
(1, 'Employer1', 1),
(2, 'Employer2', 2),
(3, 'Employer3', 3),
(4, 'Employer4', 1),
(5, 'Employer5', 3);

INSERT INTO foi_workshop.employer_category VALUES
(1, 1, 4),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 3, 1),
(7, 4, 1),
(8, 4, 2),
(9, 4, 3),
(10, 4, 4),
(11, 5, 1),
(12, 5, 4);

INSERT INTO foi_workshop.employer_position VALUES
(1, 1, 4),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 3, 1),
(7, 4, 1),
(8, 4, 2),
(9, 4, 3),
(10, 4, 4),
(11, 5, 1),
(12, 5, 4),
(1, 1, 14),
(2, 1, 12),
(3, 1, 13),
(4, 2, 11),
(5, 2, 7),
(6, 3, 8),
(7, 4, 9),
(8, 4, 6),
(9, 4, 5),
(10, 4, 10),
(11, 5, 10),
(12, 5, 5),
(1, 1, 8),
(2, 1, 7),
(3, 1, 6),
(4, 2, 3),
(5, 2, 1),
(6, 3, 2),
(7, 4, 4),
(8, 4, 9),
(9, 4, 11),
(10, 4, 13),
(11, 5, 14),
(12, 5, 7),
(1, 1, 6),
(2, 1, 5),
(3, 1, 10),
(4, 2, 6),
(5, 2, 2),
(6, 3, 10),
(7, 4, 14),
(8, 4, 14),
(9, 4, 2),
(10, 4, 1),
(11, 5, 3),
(12, 5, 9);