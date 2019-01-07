SELECT a.name AS Name, 
        a.release_year AS "Release Year",
        SUM(s.length) AS Duration
FROM albums AS a 
INNER JOIN songs AS s 
ON a.id = s.album_id
GROUP BY a.id 
ORDER BY Duration DESC
LIMIT 1;