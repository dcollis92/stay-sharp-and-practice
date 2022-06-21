----------------------------------------
-- 1. Welcome to Intermediate SQL!
-- Hello, and welcome to Intermediate SQL. My name is Mona Khalil. I am a Curriculum Lead with DataCamp, and I will be your instructor for this course. SQL is a powerful tool for working with relational databases. With an intermediate knowledge of SQL, you will gain the ability to access and create robust data sets from multiple tables in a relational database to answer your data science questions.

-- 2. Topics covered:
-- In this course, you will specifically learn how to shape, transform, and manipulate data using the CASE statement, simple subqueries, correlated subqueries, and window functions.

-- 3. Prerequisites
-- Before taking this course, you should be comfortable working with introductory SQL topics, such as selecting data from a database using arithmetic functions, GROUP BY statements, and WHERE clauses to filter data. In short, the query on top should look pretty familiar to you. You should also be familiar with joining data with a LEFT JOIN, RIGHT JOIN, INNER JOIN and OUTER join. In this course, we will use and build upon these topics to interact with our database. Alright, let's get started!

-- 4. Selecting from the European Soccer Database
-- For this course, we will be using the European Soccer Database -- a relational database that contains data about over 25,000 matches, 300 teams, and 10,000 players in Europe between 2008 and 2016. The data is contained within 4 tables -- country, league, team, and match. Selecting from tables in this database is pretty simple. The query you see here gives you the number of matches played in each of the 11 leagues listed in the "League" table.

-- 5. Selecting from the European Soccer Database
-- Let's say we want to compare the number of home team wins, away team wins, and ties in the 2013/2014 season. The "Match" table has two relevant columns -- home_goal, and away_goal.

-- 6. Selecting from the European Soccer Database
-- We can potentially add filters to the WHERE clause selecting wins, loses, and ties as separate queries, but that's not very efficient if you want to compare these separate outcomes in a single data set.

-- 7. CASE statements
-- This is where the CASE statement comes in. Case statements are SQL's version of an "IF this THEN that" statement. Case statements have three parts -- a WHEN clause, a THEN clause, and an ELSE clause. The first part -- the WHEN clause -- tests a given condition, say, x = 1. If this condition is TRUE, it returns the item you specify after your THEN clause. You can create multiple conditions by listing WHEN and THEN statements within the same CASE statement. The CASE statement is then ended with an ELSE clause that returns a specified value if all of your when statements are not true. When you have completed your statement, be sure to include the term END and give it an alias. The completed CASE statement will evaluate to one column in your SQL query.

-- 8. CASE WHEN
-- In this example, we use a CASE statement to create a new variable that identifies matches as home team wins, away team wins, or ties. A new column is created with the appropriate text for each match given the outcome.

-- 9. Let's practice!
-- In the next lesson, we will practice more ways of structuring CASE statements using arithmetic functions such as COUNT, SUM, and AVERAGE. For now, you will practice creating CASE statements to build categories for your data.

----------------------------------------
