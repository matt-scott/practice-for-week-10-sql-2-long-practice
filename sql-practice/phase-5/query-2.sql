-- Find the name and birth year of all the cats ordered by descending birth year

-- You must do this in one query. If you have trouble doing it in one query, try
-- doing it in multiple and then refactor to just one query.

SELECT name, birth_year FROM cats
    ORDER BY birth_year DESC;