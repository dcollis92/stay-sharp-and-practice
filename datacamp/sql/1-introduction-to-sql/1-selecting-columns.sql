----------------------------------------
-- Onboarding | Errors
-- If you submit the code to the right, you'll see that you get two types of errors.

-- SQL errors are shown below the editor. These are errors returned by the SQL engine. You should see:

-- syntax error at or near "'DataCamp <3 SQL'" LINE 2: 'DataCamp <3 SQL' ^

-- DataCamp errors are shown in the Instructions box. These will let you know in plain English where you went wrong in your code! You should see:

-- You need to add SELECT at the start of line 2!
-- Instructions
-- 100 XP
-- Submit the code to the right, check out the errors, then fix them!

-- Try running me!
SELECT 'DataCamp <3 SQL'
AS result;

-- result
-- DataCamp <3 SQL

-- Onboarding | Multi-step Exercises
-- The following multi-step exercise allows you to practice a new concept through repetition. Check it out!

-- Submit the query in the editor! Don't worry, you'll learn how it works soon.

SELECT 'SQL'
AS result;

-- result
-- SQL

-- Now change 'SQL' to 'SQL is' and click Submit!

SELECT 'SQL is'
AS result;

-- result
-- SQL is

-- Finally, change 'SQL is' to 'SQL is cool' and click Submit!

SELECT 'SQL is cool'
AS result;

result
-- SQL is cool

----------------------------------------
-- SELECTing single columns
-- While SQL can be used to create and modify databases, the focus of this course will be querying databases. A query is a request for data from a database table (or combination of tables). Querying is an essential skill for a data scientist, since the data you need for your analyses will often live in databases.

-- In SQL, you can select data from a table using a SELECT statement. For example, the following query selects the name column from the people table:

-- SELECT name
-- FROM people;
-- In this query, SELECT and FROM are called keywords. In SQL, keywords are not case-sensitive, which means you can write the same query as:

-- select name
-- from people;
-- That said, it's good practice to make SQL keywords uppercase to distinguish them from other parts of your query, like column and table names.

-- It's also good practice (but not necessary for the exercises in this course) to include a semicolon at the end of your query. This tells SQL where the end of your query is!

-- Remember, you can see the results of executing your query in the query tab!

-- Instructions 1/3
-- 35 XP
-- Select the title column from the films table.

SELECT title FROM films;

-- Select the release_year column from the films table.

SELECT release_year FROM films;

-- Select the name of each person in the people table.

SELECT name FROM people;

----------------------------------------
-- SELECTing multiple columns
-- Well done! Now you know how to select single columns.

-- In the real world, you will often want to select multiple columns. Luckily, SQL makes this really easy. To select multiple columns from a table, simply separate the column names with commas!

-- For example, this query selects two columns, name and birthdate, from the people table:

-- SELECT name, birthdate
-- FROM people;
-- Sometimes, you may want to select all columns from a table. Typing out every column name would be a pain, so there's a handy shortcut:

-- SELECT *
-- FROM people;
-- If you only want to return a certain number of results, you can use the LIMIT keyword to limit the number of rows returned:

-- SELECT *
-- FROM people
-- LIMIT 10;
-- Before getting started with the instructions below, check out the column names in the films table!

-- Instructions 1/4
-- 25 XP
-- Get the title of every film from the films table.

SELECT title from films;

-- Get the title and release year for every film.

SELECT title, release_year
FROM films;

-- Get the title, release year and country for every film.

SELECT title, release_year, country
FROM films;

-- Get all columns from the films table.

SELECT *
FROM films;

----------------------------------------
-- SELECT DISTINCT
-- Often your results will include many duplicate values. If you want to select all the unique values from a column, you can use the DISTINCT keyword.

-- This might be useful if, for example, you're interested in knowing which languages are represented in the films table:

-- SELECT DISTINCT language
-- FROM films;
-- Remember, you can check out the data in the tables by clicking on the table name!

-- Instructions 1/3
-- 35 XP
-- Get all the unique countries represented in the films table.

SELECT DISTINCT country 
FROM films;

-- Get all the different film certifications from the films table.

SELECT DISTINCT certification
FROM films;

-- Get the different types of film roles from the roles table.

SELECT DISTINCT role
FROM roles;

----------------------------------------
-- Learning to COUNT
-- What if you want to count the number of employees in your employees table? The COUNT() function lets you do this by returning the number of rows in one or more columns.

-- For example, this code gives the number of rows in the people table:

-- SELECT COUNT(*)
-- FROM people;

----------------------------------------
-- Practice with COUNT
-- As you've seen, COUNT(*) tells you how many rows are in a table. However, if you want to count the number of non-missing values in a particular column, you can call COUNT() on just that column.

-- For example, to count the number of birth dates present in the people table:

-- SELECT COUNT(birthdate)
-- FROM people;
-- It's also common to combine COUNT() with DISTINCT to count the number of distinct values in a column.

-- For example, this query counts the number of distinct birth dates contained in the people table:

-- SELECT COUNT(DISTINCT birthdate)
-- FROM people;
-- Let's get some practice with COUNT()!

-- Count the number of rows in the people table.

-- SELECT COUNT(*)
-- FROM people;

-- Count the number of (non-missing) birth dates in the people table.

SELECT COUNT(birthdate)
FROM people;

-- Count the number of unique birth dates in the people table.

SELECT COUNT(DISTINCT birthdate)
FROM people;

-- Count the number of unique languages in the films table.

SELECT COUNT(DISTINCT LANGUAGE)
FROM films;

-- Count the number of unique countries in the films table.

SELECT COUNT(DISTINCT country)
FROM films;