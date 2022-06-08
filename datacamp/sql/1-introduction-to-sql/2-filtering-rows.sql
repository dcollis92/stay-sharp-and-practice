----------------------------------------
-- Filtering results
-- Congrats on finishing the first chapter! You now know how to select columns and perform basic counts. This chapter will focus on filtering your results.

-- In SQL, the WHERE keyword allows you to filter based on both text and numeric values in a table. There are a few different comparison operators you can use:

-- = equal
-- <> not equal
-- < less than
-- > greater than
-- <= less than or equal to
-- >= greater than or equal to
-- For example, you can filter text records such as title. The following code returns all films with the title 'Metropolis':

-- SELECT title
-- FROM films
-- WHERE title = 'Metropolis';
-- Notice that the WHERE clause always comes after the FROM statement!

-- Note that in this course we will use <> and not != for the not equal operator, as per the SQL standard.

----------------------------------------
-- Simple filtering of numeric values
-- As you learned in the previous exercise, the WHERE clause can also be used to filter numeric records, such as years or ages.

-- For example, the following query selects all details for films with a budget over ten thousand dollars:

-- SELECT *
-- FROM films
-- WHERE budget > 10000;
-- Now it's your turn to use the WHERE clause to filter numeric values!

-- Get all details for all films released in 2016.

SELECT *
FROM films
WHERE release_year = 2016

-- Get the number of films released before 2000.

SELECT COUNT(*)
FROM films
WHERE release_year < 2000;

-- Get the title and release year of films released after 2000.

SELECT title, release_year
FROM films
WHERE release_year > 2000;

----------------------------------------
-- Simple filtering of text
-- Remember, the WHERE clause can also be used to filter text results, such as names or countries.

-- For example, this query gets the titles of all films which were filmed in China:

-- SELECT title
-- FROM films
-- WHERE country = 'China';
-- Now it's your turn to practice using WHERE with text values!

-- Important: in PostgreSQL (the version of SQL we're using), you must use single quotes with WHERE.

-- Get all details for all French language films.

SELECT *
FROM films
WHERE LANGUAGE = 'French'

-- Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!

SELECT NAME, birthdate 
FROM people
WHERE birthdate = '1974-11-11'

-- Get the number of Hindi language films.

SELECT COUNT(*)
FROM films
WHERE LANGUAGE = 'Hindi'

-- Get all details for all films with an R certification.

SELECT *
FROM films
WHERE certification = 'R'

----------------------------------------
-- WHERE AND
-- Often, you'll want to select data based on multiple conditions. You can build up your WHERE queries by combining multiple conditions with the AND keyword.

-- For example,

-- SELECT title
-- FROM films
-- WHERE release_year > 1994
-- AND release_year < 2000;
-- gives you the titles of films released between 1994 and 2000.

-- Note that you need to specify the column name separately for every AND condition, so the following would be invalid:

-- SELECT title
-- FROM films
-- WHERE release_year > 1994 AND < 2000;
-- You can add as many AND conditions as you need!

-- Get the title and release year for all Spanish language films released before 2000.

SELECT title, release_year
FROM films
WHERE LANGUAGE = 'Spanish'
AND release_year < 2000

-- Get all details for Spanish language films released after 2000.

SELECT *
FROM films
WHERE LANGUAGE = 'Spanish'
AND release_year > 2000

-- Get all details for Spanish language films released after 2000, but before 2010.

SELECT *
FROM films
WHERE LANGUAGE = 'Spanish'
and release_year > 2000
AND release_year < 2010

----------------------------------------
-- WHERE AND OR
-- What if you want to select rows based on multiple conditions where some but not all of the conditions need to be met? For this, SQL has the OR operator.

-- For example, the following returns all films released in either 1994 or 2000:

-- SELECT title
-- FROM films
-- WHERE release_year = 1994
-- OR release_year = 2000;
-- Note that you need to specify the column for every OR condition, so the following is invalid:

-- SELECT title
-- FROM films
-- WHERE release_year = 1994 OR 2000;
-- When combining AND and OR, be sure to enclose the individual clauses in parentheses, like so:

-- SELECT title
-- FROM films
-- WHERE (release_year = 1994 OR release_year = 1995)
-- AND (certification = 'PG' OR certification = 'R');
-- Otherwise, due to SQL's precedence rules, you may not get the results you're expecting!

-- Q: What does the OR operator do?

-- A: Display only rows that meet at least one of the specified conditions.

----------------------------------------
-- WHERE AND OR (2)
-- You now know how to select rows that meet some but not all conditions by combining AND and OR.

-- For example, the following query selects all films that were released in 1994 or 1995 which had a rating of PG or R.

-- SELECT title
-- FROM films
-- WHERE (release_year = 1994 OR release_year = 1995)
-- AND (certification = 'PG' OR certification = 'R');
-- Now you'll write a query to get the title and release year of films released in the 90s which were in French or Spanish and which took in more than $2M gross.

-- It looks like a lot, but you can build the query up one step at a time to get comfortable with the underlying concept in each step. Let's go!

-- Get the title and release year for films released in the 90s.

SELECT title, release_year
FROM films
WHERE release_year > 1989
AND release_year < 2000

-- Now, build on your query to filter the records to only include French or Spanish language films.

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (LANGUAGE = 'French' OR LANGUAGE = 'Spanish')

-- Finally, restrict the query to only return films that took in more than $2M gross.

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND gross > 2000000

----------------------------------------
-- BETWEEN
-- As you've learned, you can use the following query to get titles of all films released in and between 1994 and 2000:

-- SELECT title
-- FROM films
-- WHERE release_year >= 1994
-- AND release_year <= 2000;
-- Checking for ranges like this is very common, so in SQL the BETWEEN keyword provides a useful shorthand for filtering values within a specified range. This query is equivalent to the one above:

-- SELECT title
-- FROM films
-- WHERE release_year
-- BETWEEN 1994 AND 2000;
-- It's important to remember that BETWEEN is inclusive, meaning the beginning and end values are included in the results!

----------------------------------------
-- BETWEEN (2)
-- Similar to the WHERE clause, the BETWEEN clause can be used with multiple AND and OR operators, so you can build up your queries and make them even more powerful!

-- For example, suppose we have a table called kids. We can get the names of all kids between the ages of 2 and 12 from the United States:

-- SELECT name
-- FROM kids
-- WHERE age BETWEEN 2 AND 12
-- AND nationality = 'USA';
-- Take a go at using BETWEEN with AND on the films data to get the title and release year of all Spanish language films released between 1990 and 2000 (inclusive) with budgets over $100 million. We have broken the problem into smaller steps so that you can build the query as you go along!

-- Get the title and release year of all films released between 1990 and 2000 (inclusive).

SELECT title, release_year
FROM films
WHERE release_year 
BETWEEN 1990 and 2000

-- Now, build on your previous query to select only films that have budgets over $100 million.

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000;

-- Now restrict the query to only return Spanish language films.

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND LANGUAGE = 'Spanish';

-- Finally, modify to your previous query to include all Spanish language or French language films with the same criteria as before. Don't forget your parentheses!

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND (language = 'Spanish' or language = 'French');

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------


