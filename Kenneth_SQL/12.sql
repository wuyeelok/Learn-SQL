SELECT b.name AS "Band",
count(s.id) AS "Number of Songs"
FROM bands AS b
INNER JOIN album AS a 
ON b.id = a.band_id
INNER JOIN songs AS s 
ON a.id = s.album_id;
