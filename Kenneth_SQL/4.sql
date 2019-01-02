SELECT DISTINCT b.name AS "Band Name"
FROM bands b
INNER JOIN albums AS a 
ON b.id = a.band_id;