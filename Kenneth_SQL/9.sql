SET SQL_SAFE_UPDATES = 0;

DELETE FROM albums 
WHERE id = (
	SELECT d.id FROM
    (SELECT a.id FROM albums AS a
    WHERE a.name = 'First album' 
    AND a.release_year = 2019 
    AND a.band_id = (SELECT id FROM bands WHERE name = 'Rock Band' ORDER BY id DESC LIMIT 1)
    ORDER BY a.id DESC LIMIT 1) AS d
    );


DELETE FROM bands 
WHERE id = (
    SELECT b.id FROM 
        (
            SELECT id FROM bands WHERE name = 'Rock Band' ORDER BY id DESC LIMIT 1
        ) AS b);