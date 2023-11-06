-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George
-- Beatty, or just Melynda Abshire

-- You must do this in one query. If you have trouble doing it in one query, try doing it in
-- multiple and then refactor to just onequery.

SELECT cats.name, owners.first_name, owners.last_name FROM cat_owners
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (cat_owners.owner_id = owners.id)
    WHERE owners.first_name = 'George' OR owners.first_name = 'Melynda'
    GROUP BY cats.name;