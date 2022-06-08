----------------------------------------
-- ORDER BY
-- Congratulations on making it this far! You now know how to select and filter your results.

-- In this chapter you'll learn how to sort and group your results to gain further insight. Let's go!

-- In SQL, the ORDER BY keyword is used to sort results in ascending or descending order according to the values of one or more columns.

-- By default ORDER BY will sort in ascending order. If you want to sort the results in descending order, you can use the DESC keyword. For example,

-- SELECT title
-- FROM films
-- ORDER BY release_year DESC;
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
----------------------------------------
----------------------------------------