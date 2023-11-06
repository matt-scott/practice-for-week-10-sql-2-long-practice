-- Update the name of Garfield's toy from "Cheetos" to "Pooky".

-- Confirm that the change to the toy entry has been successfully updated in the database.

UPDATE toys
SET name = 'Pooky'
WHERE toys.name IN (
    SELECT toys.name FROM toys
    JOIN cats ON (toys.cat_id = cats.id)
    WHERE cats.name = 'Garfield' AND toys.name = 'Cheetos'
);