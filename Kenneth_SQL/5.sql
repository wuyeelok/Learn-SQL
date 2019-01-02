SELECT b.name AS "Band Name"
FROM bands AS b
LEFT JOIN albums AS a
ON b.id = a.band_id
GROUP BY b.id 
HAVING count(a.id) = 0;