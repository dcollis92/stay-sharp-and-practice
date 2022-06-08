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
-- Sorting multiple columns
-- ORDER BY can also be used to sort on multiple columns. It will sort by the first column specified, then sort by the next, then the next, and so on. For example,

SELECT birthdate, name
FROM people
ORDER BY birthdate, name;
-- sorts on birth dates first (oldest to newest) and then sorts on the names in alphabetical order. The order of columns is important!

-- Try using ORDER BY to sort multiple columns! Remember, to specify multiple columns you separate the column names with a comma.

-- Get the birth date and name of people in the people table, in order of when they were born and alphabetically by name.

SELECT birthdate, NAME
from people
ORDER BY birthdate, NAME;

-- Get the release year, duration, and title of films ordered by their release year and duration.

SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration;

-- Get certifications, release years, and titles of films ordered by certification (alphabetically) and release year.

SELECT certification, release_year, title
FROM films 
ORDER BY certification, release_year;

-- Get the names and birthdates of people ordered by name and birth date.

SELECT name, birthdate
FROM people
ORDER BY NAME, birthdate;

----------------------------------------
-- GROUP BY
-- Now you know how to sort results! Often you'll need to aggregate results. For example, you might want to count the number of male and female employees in your company. Here, what you want is to group all the males together and count them, and group all the females together and count them. In SQL, GROUP BY allows you to group a result by one or more columns, like so:

SELECT sex, count(*)
FROM employees
GROUP BY sex;
-- This might give, for example:

sex	count
male	15
female	19

-- Commonly, GROUP BY is used with aggregate functions like COUNT() or MAX(). Note that GROUP BY always goes after the FROM clause!

----------------------------------------
-- GROUP BY practice
-- As you've just seen, combining aggregate functions with GROUP BY can yield some powerful results!

-- A word of warning: SQL will return an error if you try to SELECT a field that is not in your GROUP BY clause without using it to calculate some kind of value about the entire group.

-- Note that you can combine GROUP BY with ORDER BY to group your results, calculate something about them, and then order your results. For example,

SELECT sex, count(*)
FROM employees
GROUP BY sex
ORDER BY count DESC;
might return something like

sex	count
female	19
male	15

-- because there are more females at our company than males. Note also that ORDER BY always goes after GROUP BY. Let's try some exercises!

-- Get the release year and count of films released in each year.

SELECT release_year, COUNT(*)
FROM films
GROUP BY release_year;

-- Get the release year and average duration of all films, grouped by release year.

SELECT release_year, AVG(duration)
FROM films
GROUP BY release_year;

-- Get the release year and largest budget for all films, grouped by release year.

SELECT release_year, Max(budget)
FROM films
GROUP BY release_year;

-- Get the IMDB score and count of film reviews grouped by IMDB score in the reviews table.

SELECT imdb_score, COUNT(*)
FROM reviews
GROUP BY imdb_score;

----------------------------------------
----------------------------------------
