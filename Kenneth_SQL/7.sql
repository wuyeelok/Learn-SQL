--Update the Release Year of the Album with no Release Year

UPDATE albums AS t
SET t.release_year = 1986
WHERE t.id IN (
    SELECT a.id 
    FROM albums AS a 
    WHERE a.release_year IS NULL
);