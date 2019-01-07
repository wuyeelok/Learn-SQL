--Update the Release Year of the Album with no Release Year

UPDATE albums
SET release_year TO 1986
WHERE id IN (
    SELECT a.id 
    FROM albums AS a 
    WHERE a.release_year IS NULL
);