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
-- CASE statements comparing column values
-- Barcelona is considered one of the strongest teams in Spain's soccer league.

-- In this exercise, you will be creating a list of matches in the 2011/2012 season where Barcelona was the home team. You will do this using a CASE statement that compares the values of two columns to create a new group -- wins, losses, and ties.

-- In 3 steps, you will build a query that identifies a match's winner, identifies the identity of the opponent, and finally filters for Barcelona as the home team. Completing a query in this order will allow you to watch your results take shape with each new piece of information.

-- The matches_spain table currently contains Barcelona's matches from the 2011/2012 season, and has two key columns, hometeam_id and awayteam_id, that can be joined with the teams_spain table. However, you can only join teams_spain to one column at a time.

-- Select the date of the match and create a CASE statement to identify matches as home wins, home losses, or ties.

SELECT 
	-- Select the date of the match
	date,
	-- Identify home wins, losses, or ties
	CASE WHEN home_goal > away_goal THEN 'Home win!'
        WHEN home_goal < away_goal THEN 'Home loss :(' 
        ELSE 'Tie' END AS outcome
FROM matches_spain;

-- Left join the teams_spain table team_api_id column to the matches_spain table awayteam_id. This allows us to retrieve the away team's identity.
-- Select team_long_name from teams_spain as opponent and complete the CASE statement from Step 1.

SELECT 
	m.date,
	--Select the team long name column and call it 'opponent'
	t.team_long_name AS opponent, 
	-- Complete the CASE statement with an alias
	CASE WHEN m.home_goal > m.away_goal THEN 'Home win!'
        WHEN m.home_goal < m.away_goal THEN 'Home loss :('
        ELSE 'Tie' END AS outcome
FROM matches_spain AS m
-- Left join teams_spain onto matches_spain
LEFT JOIN teams_spain AS t
ON m.awayteam_id = t.team_api_id;

-- Complete the same CASE statement as the previous steps.
-- Filter for matches where the home team is FC Barcelona (id = 8634).

SELECT 
	m.date,
	t.team_long_name AS opponent,
    -- Complete the CASE statement with an alias
	CASE WHEN m.home_goal > m.away_goal THEN 'Barcelona win!'
        WHEN m.home_goal < m.away_goal THEN 'Barcelona loss :('
        ELSE 'Tie' END AS outcome
FROM matches_spain AS m
LEFT JOIN teams_spain AS t 
ON m.awayteam_id = t.team_api_id
-- Filter for Barcelona as the home team
WHERE m.hometeam_id = 8634; 

----------------------------------------
-- CASE statements comparing two column values part 2
-- Similar to the previous exercise, you will construct a query to determine the outcome of Barcelona's matches where they played as the away team. You will learn how to combine these two queries in chapters 2 and 3.

-- Did their performance differ from the matches where they were the home team?

-- Complete the CASE statement to identify Barcelona's away team games (id = 8634) as wins, losses, or ties.
-- Left join the teams_spain table team_api_id column on the matches_spain table hometeam_id column. This retrieves the identity of the home team opponent.
-- Filter the query to only include matches where Barcelona was the away team.

-- Select matches where Barcelona was the away team
SELECT  
	m.date,
	t.team_long_name AS opponent,
	CASE WHEN m.home_goal < m.away_goal THEN 'Barcelona win!'
        WHEN m.home_goal > m.away_goal THEN 'Barcelona loss :('
        ELSE 'Tie' END AS outcome
FROM matches_spain AS m
-- Join teams_spain to matches_spain
LEFT JOIN teams_spain AS t 
ON m.hometeam_id = t.team_api_id
WHERE m.awayteam_id = 8634; 

----------------------------------------
-- 1. In CASE things get more complex
-- Now that you understand the basics of CASE statements, let's set up some more complex logical tests.

-- 2. Reviewing CASE WHEN
-- Previously, we covered CASE statements with one logical test in a WHEN statement, returning outcomes based on whether that test is TRUE or FALSE. This example tests whether home or away goals were higher, and identifies them as wins for the team that had a higher score. Everything ELSE is categorized as a tie. The resulting table has one column identifying matches as one of 3 possible outcomes.

-- 3. CASE WHEN ... AND then some
SELECT date, hometeam_id, awayteam_id,
	CASE WHEN hometeam_id = 8455 AND home_goal > away_goal
						THEN 'Chelsea home win!'
			 WHEN awayteam_id = 8455 AND home_goal < away_goal
			 			THEN 'Chelsea away win!'
			 ELSE 'Loss or tie :(' END AS outcomes
FROM match
WHERE hometeam_id = 8455 OR awayteam_id = 8455;

-- If you want to test multiple logical conditions in a CASE statement, you can use AND inside your WHEN clause. For example, let's see if each match was played, and won, by the team Chelsea. Let's see the CASE statement in this query. Each WHEN clause contains two logical tests -- the first tests if a hometeam_id identifies Chelsea, AND then it tests if the home team scored higher than the away team. If both conditions are TRUE, the new column output returns the phrase "Chelsea home win!". The opposite set of conditions are included in a second when statement -- if the awayteam_id belongs to Chelsea, AND scored higher, then the output returns "Chelsea away win!". All other matches are categorized as a loss or tie. Here's the resulting table.

-- 4. What ELSE is being excluded?
-- When testing logical conditions, it's important to carefully consider which rows of your data are part of your ELSE clause, and if they're categorized correctly. Here's the same CASE statement from the previous slide, but the WHERE filter has been removed. Without this filter, your ELSE clause will categorize ALL matches played by anyone, who don't meet these first two conditions, as "Loss or tie :(". Here are the results of this query. A quick look at it shows that the first few matches are all categorized as "Loss or tie", but neither the hometeam_id or awayteam_id belong to Chelsea.

-- 5. Correctly categorize your data with CASE
-- The easiest way to correct for this is to ensure you add specific filters in the WHERE clause that exclude all teams where Chelsea did not play. Here, we specify this by using an OR statement in WHERE, which retrieves only results where the id 8455 is present in the hometeam_id or awayteam_id columns. The resulting table from earlier, with the team IDs in bold here, clearly specifies whether Chelsea was home or away team.

-- 6. What's NULL?
SELECT date,
CASE WHEN date > '2015-01-01' THEN 'More Recently'
		 WHEN date < '2012-01-01' THEN 'Older'
		 END AS date_category
FROM match;
SELECT date,
CASE WHEN date > '2015-01-01' THEN 'More Recently'
		 WHEN date < '2012-01-01' THEN 'Older'
		 ELSE NULL END AS date_category
FROM match;

-- It's also important to consider what your ELSE clause is doing. These two queries here are identical, except for the ELSE NULL statement specified in the second. They both return identical results -- a table with quite a few null results. But what if you want to exclude them?

-- 7. What are your NULL values doing?
-- Let's say we're only interested in viewing the results of games where Chelsea won, and we don't care if they lose or tie. Just like in the previous example, simply removing the ELSE clause will still retrieve those results -- and a lot of NULL values.

-- 8. Where to place your CASE?
-- To correct for this, you can treat the entire CASE statement as a column to filter by in your WHERE clause, just like any other column. In order to filter a query by a CASE statement,

-- 9. Where to place your CASE?
SELECT date, hometeam_id, awayteam_id,
	CASE WHEN hometeam_id = 8455 AND home_goal > away_goal
						THEN 'Chelsea home win!'
			 WHEN awayteam_id = 8455 AND home_goal < away_goal
			 			THEN 'Chelsea away win!' END AS outcomes
FROM match
WHERE	CASE WHEN hometeam_id = 8455 AND home_goal > away_goal
						THEN 'Chelsea home win!'
			 WHEN awayteam_id = 8455 AND home_goal < away_goal
			 			THEN 'Chelsea away win!' END IS NOT NULL;

-- you include the entire CASE statement, except its alias, in WHERE. You then specify what you want to include, or exclude. For this query, I want to keep all rows where this CASE statement IS NOT NULL. My resulting table now only includes Chelsea's home and away wins -- and I don't need to filter by their team ID anymore!

-- 10. Let's practice!
-- Okay! Let's practice some more complex CASE statements.

----------------------------------------


----------------------------------------

----------------------------------------

----------------------------------------
