-- Find All the Toys for Hermione's cats

-- Write a query to find all toys' names for all the cats with an owner with the first name
-- of "Hermione". You must do this in one query. If you have trouble doing it in one query,
-- try doing it in multiple and then refactor to just one query.

-- Try doing this with 3 JOINs. Then try doing it in just 2 JOINs.

-- Based on the seed data inserted into the database in Phase 2, what do you expect as the
-- output of the SQL query? Does your query results match what you expected?

SELECT toys.name, owners.first_name FROM cat_owners
    JOIN owners ON (cat_owners.owner_id = owners.id)
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN toys ON (toys.cat_id = cats.id)
    WHERE owners.first_name = 'Hermione';

SELECT toys.name, owners.first_name FROM cat_owners
    JOIN owners ON (cat_owners.owner_id = owners.id)
    JOIN cats ON (cat_owners.cat_id = cats.id)
    JOIN toys ON (toys.cat_id = cats.id)
    WHERE owners.first_name = 'Hermione';