-- Find the name of the cats who have an owner whose first name begins with an "H"

-- You must do this in one query. If you have trouble doing it in one query, try doing
-- it in multiple and then refactor to just one query.

SELECT cats.name, owners.first_name FROM cat_owners
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (cat_owners.owner_id = owners.id)
    WHERE owners.first_name LIKE 'H%';