-- Complete the code to return the output 

SELECT name 
FROM companies 
WHERE name LIKE 'S%'

-- name:
-- Shopify
-- Software
-- Statix
-- Samsung

----------------------------------------
-- Which keyword is used to sort results in dscending order?

DESC

----------------------------------------
-- What does 
SELECT COUNT(YEAR) FROM states;
-- return?

-- A: The number of non-missing values in the YEAR column. 

----------------------------------------
-- Which keyword is used to group a result by one or more columns?

GROUP BY

----------------------------------------
-- How would you get the number of movies released after the year 2000?

SELECT COUNT(*)
FROM films
WHERE release_year > 2000;

----------------------------------------
-- Select the code to return the output

release_year
1916
1920
1925
1927
1929

----

SELECT release_year	
FROM films	
LIMIT 5;

----------------------------------------
