-- Find the first owner that has a last name containing the lowercase letter "r"

-- You must do this in one query. If you have trouble doing it in one query, try
-- doing it in multiple and then refactor to just one query.

SELECT last_name FROM owners
    WHERE last_name LIKE '%r%'
    ORDER BY last_name ASC
    LIMIT 1;