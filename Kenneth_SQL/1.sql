CREATE TABLE songs (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    ablum_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY(ablum_id) REFERENCES albums(id)
);