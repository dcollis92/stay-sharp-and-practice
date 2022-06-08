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
----------------------------------------
----------------------------------------