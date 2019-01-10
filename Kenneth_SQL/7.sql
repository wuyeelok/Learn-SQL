SET SQL_SAFE_UPDATES = 0;

UPDATE albums AS t
SET t.release_year = 1986
WHERE t.id = (SELECT a.id FROM albums AS a WHERE a.release_year IS NULL);


SET SQL_SAFE_UPDATES = 1;