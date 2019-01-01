CREATE TABLE songs (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    PRIMARY id,
    FOREIGN(ablum_id) REFERENCE (albums.id)
);