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