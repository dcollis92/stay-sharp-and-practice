----------------------------------------
-- ORDER BY
-- Congratulations on making it this far! You now know how to select and filter your results.

-- In this chapter you'll learn how to sort and group your results to gain further insight. Let's go!

-- In SQL, the ORDER BY keyword is used to sort results in ascending or descending order according to the values of one or more columns.

-- By default ORDER BY will sort in ascending order. If you want to sort the results in descending order, you can use the DESC keyword. For example,

SELECT title
FROM films
ORDER BY release_year DESC;

-- gives you the titles of films sorted by release year, from newest to oldest.

----------------------------------------
-- Sorting single columns
-- Now that you understand how ORDER BY works, give these exercises a go!

-- Get the names of people from the people table, sorted alphabetically.

SELECT NAME
FROM people
ORDER BY NAME;

-- Get the names of people, sorted by birth date.

SELECT NAME
FROM people
ORDER BY birthdate;

-- Get the birth date and name for every person, in order of when they were born.

SELECT birthdate, NAME
FROM people
ORDER BY birthdate;

----------------------------------------
-- Sorting single columns (2)
-- Let's get some more practice with ORDER BY!

-- Get the title of films released in 2000 or 2012, in the order they were released.

SELECT title 
FROM films
WHERE release_year IN (2000, 2012)
ORDER BY release_year;

-- Get all details for all films except those released in 2015 and order them by duration.

SELECT *
FROM films
WHERE release_year <> 2015
ORDER BY duration;

-- Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.

SELECT title, gross
FROM films
where title LIKE 'M%'
ORDER BY title;

----------------------------------------
-- Sorting single columns (DESC)
-- To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:

SELECT name
FROM people
ORDER BY name DESC;

-- Now practice using ORDER BY with DESC to sort single columns in descending order!

-- Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.

SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC;

-- Get the title for every film, in reverse order.

SELECT title 
FROM films
ORDER BY title DESC;

-- Get the title and duration for every film, in order of longest duration to shortest.

SELECT title, duration
FROM films
ORDER BY duration DESC;

----------------------------------------

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
