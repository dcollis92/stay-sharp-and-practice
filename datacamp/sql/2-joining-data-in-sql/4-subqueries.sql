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
----------------------------------------