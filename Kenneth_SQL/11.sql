SELECT a.name AS "Album", 
a.release_year AS "Release Year", 
MAX(s.length) as "Duration"
FROM songs as s 
INNER JOIN albums AS a 
ON s.album_id = a.id
GROUP BY s.album_id;