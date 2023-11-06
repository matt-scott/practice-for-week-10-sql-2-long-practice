-- Find the first and last names of the owner whose cats are born after the year 2015

-- You must do this in one query. If you have trouble doing it in one query, try doing it
-- in multiple and then refactor to just one query.

SELECT owners.first_name, owners.last_name, cats.name, cats.birth_year FROM cat_owners
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (cat_owners.owner_id = owners.id)
    WHERE cats.birth_year > 2015;