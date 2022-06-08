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