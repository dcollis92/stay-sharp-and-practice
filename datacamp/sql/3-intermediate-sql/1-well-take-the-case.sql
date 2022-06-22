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
-- Basic CASE statements
-- What is your favorite team?

-- The European Soccer Database contains data about 12,800 matches from 11 countries played between 2011-2015! Throughout this course, you will be shown filtered versions of the tables in this database in order to better explore their contents.

-- In this exercise, you will identify matches played between FC Schalke 04 and FC Bayern Munich. There are 2 teams identified in each match in the hometeam_id and awayteam_id columns, available to you in the filtered matches_germany table. ID can join to the team_api_id column in the teams_germany table, but you cannot perform a join on both at the same time.

-- However, you can perform this operation using a CASE statement once you've identified the team_api_id associated with each team!

-- Select the team's long name and API id from the teams_germany table.
-- Filter the query for FC Schalke 04 and FC Bayern Munich using IN, giving you the team_api_IDs needed for the next step.

SELECT
	-- Select the team long name and team API id
	team_long_name, 
	team_api_id
FROM teams_germany
-- Only include FC Schalke 04 and FC Bayern Munich
WHERE team_long_name IN ('FC Schalke 04', 'FC Bayern Munich');

-- Create a CASE statement that identifies whether a match in Germany included FC Bayern Munich, FC Schalke 04, or neither as the home team.
-- Group the query by the CASE statement alias, home_team.

-- Identify the home team as Bayern Munich, Schalke 04, or neither
SELECT 
	CASE WHEN hometeam_id = 10189 THEN 'FC Schalke 04'
        WHEN hometeam_id = 9823 THEN 'FC Bayern Munich'
         ELSE 'Other' END AS home_team,
	COUNT(id) AS total_matches
FROM matches_germany
-- Group by the CASE statement alias
GROUP BY home_team;

----------------------------------------
