DELETE FROM albums 
WHERE id = (
    SELECT id FROM albums 
    WHERE name = 'First album' 
    AND release_year = 2019 
    AND band_id = (SELECT id FROM bands WHERE name = 'Rock Band' ORDER BY id DESC LIMIT 1)
    ORDER BY id DESC LIMIT 1
    );

DELETE FROM bands 
WHERE id = (SELECT id FROM bands WHERE name = 'Rock Band' ORDER BY id DESC LIMIT 1);