INSERT INTO bands (name) VALUES ('Rock Band');

INSERT INTO albums (name, release_year, band_id) 
VALUES 
('First album', 2019, (SELECT id FROM bands WHERE name = 'Rock Band' LIMIT 1));