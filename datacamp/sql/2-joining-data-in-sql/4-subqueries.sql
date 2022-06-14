----------------------------------------
-- 1. Subqueries inside WHERE and SELECT clauses
-- You've made it all the way to the last chapter of this course. Congratulations and keep up the excellent work. This last chapter is focused on embedding queries inside of queries. These are called nested queries and also known as subqueries as you saw in Chapter 3. The most common type of subquery is one inside of a WHERE statement. Let's check out another one of these now with a little bit of setting up to do first, of course.

-- 2. Subquery inside WHERE clause set-up
-- You've seen many examples of using a subquery inside a WHERE clause already with the semi-join and anti-join examples and exercises you just completed. With the WHERE clause being the most common place for a subquery to be found, it's important that you see just one more example of doing so. With this being the final chapter, it's time to unveil the remaining fields in the states table. Note that the continent field is not shown to display all the fields here. The fert_rate field gives an estimate for the average number of babies born per woman in each country. The women_parli_perc field gives the percentage of women in the elected federal parliament for each country. Across these 13 countries, how would you determine the average fertility rate?

-- 3. Average fert_rate
-- We will use the average fertility rate as part of a subquery. Recall how this is done. The average babies born to women across these countries is 2-point-28 children.

-- 4. Asian countries below average `fert_rate`
-- Let's use the previous slide's query as a subquery to determine Asian countries that fall under this average. You'll see the code in a couple steps. First we select the country name and the fertility rate for Asian countries.

-- 5. Asian countries below average `fert_rate`
-- Next, we want to choose records where fert_rate is smaller than What comes next?

-- 6. Asian countries below average `fert_rate`
-- The subquery is to get the average fertility rate! And now we can check out our result to make sure it makes sense.

-- 7. Asian countries below average `fert_rate`
-- It appears so. These are the two Asian countries we were looking for with fertility rates below 2-point-28 babies per woman.

-- 8. Subqueries inside SELECT clauses - setup
-- The second most common type of a subquery is inside of a SELECT clause. The task here is to count the number of countries listed in the states table for each continent in the prime_ministers table. Let's again take the stepwise approach to setting up the problem. What does this code do? [PAUSE] It gives each of the five continents in the prime_ministers table. Let's keep building our answer in the next slide.

-- 9. Subquery inside SELECT clause - complete
-- Next is determining the counts of the number of countries in states for each of the continents in the last slide. Combining a COUNT clause with a WHERE statement matching the continent fields in the two tables gets us there. Let's check out the code and then discuss a bit further. The subquery involving states also can reference the prime_ministers table in the main query. Any time you do a subquery inside a SELECT statement like this, you need to give the subquery an alias like countries_num here. Please pause the video here and carefully review this code. The result of this query comes next. [PAUSE] It's kinda like magic that this works, huh?! If you haven't discovered it already, there are often many different ways to solve problems with SQL queries. You could use a carefully constructed JOIN to achieve this same result, for example.

-- 10. Let's practice!
-- Test out your subquery expertise with a few exercises. I'll see you back soon in the subqueries inside FROM clauses video!

----------------------------------------
-- Subquery inside where
-- You'll now try to figure out which countries had high average life expectancies (at the country level) in 2015.

-- Begin by calculating the average life expectancy across all countries for 2015.

-- Select average life_expectancy
SELECT AVG(life_expectancy)
  -- From populations
  FROM populations
-- Where year is 2015
WHERE year = 2015;

-- Recall that you can use SQL to do calculations for you. Suppose we wanted only records that were above 1.15 * 100 in terms of life expectancy for 2015:

SELECT *
  FROM populations
WHERE life_expectancy > 1.15 * 100
  AND year = 2015;

-- Select all fields from populations with records corresponding to larger than 1.15 times the average you calculated in the first task for 2015. In other words, change the 100 in the example above with a subquery.

-- Select fields
SELECT *
  -- From populations
  FROM populations
-- Where life_expectancy is greater than
WHERE life_expectancy > 
  -- 1.15 * subquery
  1.15 * (SELECT 
  AVG(life_expectancy)
  FROM populations
  WHERE year = 2015)
  AND year = 2015;

----------------------------------------
-- Subquery inside where (2)
-- Use your knowledge of subqueries in WHERE to get the urban area population for only capital cities.

-- Make use of the capital field in the countries table in your subquery.
-- Select the city name, country code, and urban area population fields.

-- Select fields
SELECT name, country_code, urbanarea_pop
  -- From cities
  FROM cities
-- Where city name in the field of capital cities
WHERE name IN
  -- Subquery
  (SELECT capital
   FROM countries)
ORDER BY urbanarea_pop DESC;

----------------------------------------
-- Subquery inside select
-- In this exercise, you'll see how some queries can be written using either a join or a subquery.

-- You have seen previously how to use GROUP BY with aggregate functions and an inner join to get summarized information from multiple tables.

-- The code given in the first query selects the top nine countries in terms of number of cities appearing in the cities table. Recall that this corresponds to the most populous cities in the world. Your task will be to convert the second query to get the same result as the provided code.

-- Submit the code to view the result of the provided query.

SELECT countries.name AS country, COUNT(*) AS cities_num
  FROM cities
    INNER JOIN countries
    ON countries.code = cities.country_code
GROUP BY country
ORDER BY cities_num DESC, country
LIMIT 9;

-- Convert the GROUP BY code to use a subquery inside of SELECT by filling in the blanks to get a result that matches the one given using the GROUP BY code in the first query.
-- Again, sort the result by cities_num descending and then by country ascending.

SELECT countries.name AS country,
  -- Subquery
  (SELECT COUNT(*)
   FROM cities
   WHERE countries.code = cities.country_code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;

----------------------------------------
-- 1. Subquery inside the FROM clause
-- The last basic type of a subquery exists inside of a FROM clause. A motivating example pertaining to the percentage of women in parliament will be used now to help you understand this style of subquery. Let's dig in!

-- 2. Build-up
-- First, let's determine the maximum percentage of women in parliament for each continent listed in states. Recall that this query will only work if you include continent as one of the fields in the SELECT clause since we are grouping based on that field. Let's check out the result. We see that Europe has the largest value and North America has the smallest value for the countries listed in the states table.

-- 3. Focusing on records in monarchs
-- What if you weren't interested in all continents, but specifically those in the monarchs table. You haven't seen this yet in the course but you can include multiple tables in a FROM clause by adding a comma between them. Let's investigate a way to get the continents only in monarchs using this new trick. We have at least part of our answer here, but how do we get rid of those duplicate entries? And what about the maximum column?

-- 4. Finishing off the subquery
-- To get Asia and Europe to appear only once, use the DISTINCT command in your SELECT statement. But now how do you get that maximum column to also come along with Asia and Europe? Instead of including states in the FROM clause, include the subquery instead and alias it with a name like subquery. There you have it! That's how to include a subquery as a temporary table in your FROM clause.

-- 5. Let's practice!
-- You are very close to the end of the course. Awesome work on making it this far! The last remaining exercises are designed to really test your understanding of the material. You may be a bit frustrated but stick with it and you'll take the knowledge gained in these problems with you as you continue to develop your SQL skills. See you in a bit for the course review video!

----------------------------------------
-- Subquery inside from
-- The last type of subquery you will work with is one inside of FROM.

-- You will use this to determine the number of languages spoken for each country, identified by the country's local name! (Note this may be different than the name field and is stored in the local_name field.)

-- Begin by determining for each country code how many languages are listed in the languages table using SELECT, FROM, and GROUP BY.
-- Alias the aggregated field as lang_num.

-- Select fields (with aliases)
SELECT code, COUNT(*) AS lang_num
  -- From languages
  FROM languages
-- Group by code
GROUP BY code;

-- Include the previous query (aliased as subquery) as a subquery in the FROM clause of a new query.
-- Select the local name of the country from countries.
-- Also, select lang_num from subquery.
-- Make sure to use WHERE appropriately to match code in countries and in subquery.
-- Sort by lang_num in descending order.

-- Select fields
SELECT local_name, subquery.lang_num
  -- From countries
  FROM countries, 
  	-- Subquery (alias as subquery)
  	(SELECT code, COUNT(*) AS lang_num
  	 FROM languages
  	 GROUP BY code) AS subquery
  -- Where codes match
  WHERE countries.code = subquery.code
-- Order by descending number of languages
ORDER BY subquery.lang_num DESC;

----------------------------------------
-- Advanced subquery
-- You can also nest multiple subqueries to answer even more specific questions.

-- In this exercise, for each of the six continents listed in 2015, you'll identify which country had the maximum inflation rate, and how high it was, using multiple subqueries. The table result of your final query should look something like the following, where anything between < > will be filled in with appropriate values:

+------------+---------------+-------------------+
| name       | continent     | inflation_rate    |
|------------+---------------+-------------------|
| <country1> | North America | <max_inflation1>  |
| <country2> | Africa        | <max_inflation2>  |
| <country3> | Oceania       | <max_inflation3>  |
| <country4> | Europe        | <max_inflation4>  |
| <country5> | South America | <max_inflation5>  |
| <country6> | Asia          | <max_inflation6>  |
+------------+---------------+-------------------+

-- Again, there are multiple ways to get to this solution using only joins, but the focus here is on showing you an introduction into advanced subqueries.

-- Create an INNER JOIN with countries on the left and economies on the right with USING, without aliasing your tables or columns.
-- Retrieve the country's name, continent, and inflation rate for 2015.

-- Select fields
SELECT name, continent, inflation_rate
  -- From countries
  FROM countries
  	-- Join to economies
  	INNER JOIN economies
    -- Match on code
    USING (code)
-- Where year is 2015
WHERE year = 2015;

-- Select the maximum inflation rate in 2015 AS max_inf grouped by continent using the previous step's query as a subquery in the FROM clause.

-- Thus, in your subquery you should:
-- Create an inner join with countries on the left and economies on the right with USING (without aliasing your tables or columns).
-- Retrieve the country name, continent, and inflation rate for 2015.
-- Alias the subquery as subquery.
-- This will result in the six maximum inflation rates in 2015 for the six continents as one field table. Make sure to not include continent in the outer SELECT statement.

-- Select the maximum inflation rate as max_inf
SELECT MAX(inflation_rate) AS max_inf
  -- Subquery using FROM (alias as subquery)
  FROM (
      SELECT name, continent, inflation_rate
      FROM countries
      INNER JOIN economies
      USING (code)
      WHERE year = 2015) AS subquery
-- Group by continent
GROUP BY continent;

-- Now it's time to append your second query to your first query using AND and IN to obtain the name of the country, its continent, and the maximum inflation rate for each continent in 2015.
-- For the sake of practice, change all joining conditions to use ON instead of USING.

-- Select fields
SELECT name, continent, inflation_rate
  -- From countries
  FROM countries
	-- Join to economies
	INNER JOIN economies
	-- Match on code
	ON countries.code = economies.code
  -- Where year is 2015
  WHERE year = 2015
    -- And inflation rate in subquery (alias as subquery)
    AND inflation_rate IN (
        SELECT MAX(inflation_rate) AS max_inf
        FROM (
             SELECT name, continent, inflation_rate
             FROM countries
             INNER JOIN economies
             ON countries.code = economies.code
             WHERE year = 2015) AS subquery
      -- Group by continent
        GROUP BY continent);

----------------------------------------
-- Subquery challenge
-- Let's test your understanding of the subqueries with a challenge problem! Use a subquery to get 2015 economic data for countries that do not have

-- gov_form of 'Constitutional Monarchy' or
-- 'Republic' in their gov_form.
-- Here, gov_form stands for the form of the government for each country. Review the different entries for gov_form in the countries table.

-- Select the country code, inflation rate, and unemployment rate.
-- Order by inflation rate ascending.
-- Do not use table aliasing in this exercise.

-- Select fields
SELECT code, inflation_rate, unemployment_rate
  -- From economies
  FROM economies
  -- Where year is 2015 and code is not in
  WHERE year = 2015 AND code NOT IN
  	-- Subquery
  	(SELECT code
  	 FROM countries
  	 WHERE (gov_form = 'Constitutional Monarchy' OR gov_form LIKE '%Republic%'))
-- Order by inflation rate
ORDER BY inflation_rate;

----------------------------------------
-- Subquery review

-- Q: Within which SQL clause are subqueries most frequently found?
-- A: WHERE

----------------------------------------
-- 1. Course Review
-- Only the challenge problems remain! Way to go! You're on your way to being a SQL query warrior using PostgreSQL! Before you tackle the three challenge problems, let's review the main topics covered throughout the course.

-- 2. Types of joins
-- In SQL, a join combines columns from one or more tables in a relational database via a lookup process. There are four different types of joins you learned about in this course. First, an INNER JOIN is also denoted as just JOIN in SQL. A special case of an INNER JOIN you explored is called a self-join. Second, there are three OUTER JOINs denoted as LEFT JOIN (or LEFT OUTER JOIN), RIGHT JOIN (or RIGHT OUTER JOIN), and FULL JOIN (or FULL OUTER JOIN). Third, you worked with CROSS JOINs to create all possible combinations between two tables. Lastly, you investigated semi-joins and anti-joins. Remember that words appearing in ALL capital letters correspond to the joins having simple SQL syntax. Self-joins, semi-joins, and anti-joins don't have built-in SQL syntax.

-- 3. INNER JOIN vs LEFT JOIN
-- An INNER JOIN keeps only the records in which the key field (or fields) is in both tables. A LEFT JOIN keeps all the records in fields specified in the left table and includes the matches in the right table based on the key field or fields. Key field values that don't match in the right table are included as missing data in the resulting table of a LEFT JOIN.

-- 4. RIGHT JOIN vs FULL JOIN
-- A RIGHT JOIN keeps all the records specified in the right table and includes the matches from the key field (or fields) in the left table. Those that don't match are included as missing values in the resulting table from the RIGHT JOIN query. A FULL JOIN is a combination of a LEFT JOIN and a RIGHT JOIN showing exactly which values appear in both tables and those that appear in only one or the other table.

-- 5. CROSS JOIN with code
-- A CROSS JOIN matches all records from fields specified in one table with all records from fields specified in another table. Remember that a CROSS JOIN does not have an ON or USING clause, but otherwise looks very similar to the code for an INNER JOIN, LEFT JOIN, RIGHT JOIN, or FULL JOIN.

-- 6. Set Theory Clauses
-- Recall that UNION includes every record in both tables but DOES NOT double count those that are in both tables whereas UNION ALL DOES replicate those that are in both tables. INTERSECT gives only those records found in both of the two tables. EXCEPT gives only those records in one table BUT NOT the other.

-- 7. Semi-joins and Anti-joins
-- When you'd like to filter your first table based on conditions set on a second table, you should use a semi-join to accomplish your task. If instead you'd like to filter your first table based on conditions NOT being met on a second table, you should use an anti-join. Anti-joins are particularly useful in diagnosing problems with other joins in terms of getting fewer or more records than you expected.

-- 8. Types of basic subqueries
-- The most common type of subquery is done inside of a WHERE clause. The next most frequent types of subqueries are inside SELECT clauses and inside FROM clauses. As you'll see in the challenge exercises, subqueries can also find their way into the ON statement of a join in ways similar to what you've seen inside WHERE clauses too.

-- 9. Own the challenge problems! You got this!
-- Well, you are only three exercises away from mastering the content in this course. You are a true SQL ninja. Now take down these last three problems using all the skills you've built up in this course!

----------------------------------------


----------------------------------------
----------------------------------------