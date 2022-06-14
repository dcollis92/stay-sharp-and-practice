----------------------------------------
-- 1. State of the UNION
-- Welcome to Chapter 3! You've made it through some challenging material so far. Keep up the great work! Next are set theory clauses. In this video, we'll focus on the operations of UNION and UNION ALL. In addition to joining diagrams, in this chapter, you'll also see how Venn diagrams can be used to represent set operations. Let's begin with these Venn diagrams now.

-- 2. Set Theory Venn Diagrams
-- You can think of each circle as representing a table of data. The shading represents what is included in the result of the set operation from each table. Beginning in the top left, UNION includes every record in both tables but DOES NOT double count those that are in both tables. UNION ALL includes every record in both tables and DOES replicate those that are in both tables. This is why the center is shaded black. The two diagrams on the bottom represent only subsets of data being selected. INTERSECT results in only those records found in both of the two tables. EXCEPT results in only those records in one table BUT NOT the other. Let's investigate what UNION looks like as a joining diagram.

-- 3. UNION diagram
-- In this diagram, you have two tables with names left_one and right_one. The "one" here corresponds to each table only having one field. If you run a UNION on these two fields you get each record appearing in either table, but notice that the id values of 1 and 4 in right_one are not included again in the UNION since they were already found in the left_one table.

-- 4. UNION ALL diagram
-- By contrast (with the same two tables left_one and right_one), UNION ALL includes all duplicates in its result. So left_one and right_one both having four records yields eight records for the result of the UNION ALL. If it were the case that right_one had these same four values and also one more value of 1 for id, you'd see three entries for 1 in the resulting UNION ALL. Let's check out the SQL syntax using the leaders database for both UNION and UNION ALL, but first you'll see one more table in the leaders database.

-- 5. monarchs table
-- Check out the monarchs table in the leaders database that we will use in examples here. The table lists the country, continent, and the name of the monarch for that country. Do some of these names look familiar based on the other tables you've seen? They should! We'll come back to this.

-- 6. All prime ministers and monarchs
-- You can use UNION on the prime_ministers and monarchs table to show all of the different prime ministers and monarchs in these two tables. The country field is also included here for reference. Note that the prime_minister field has been aliased as leader. In fact, the resulting field from the UNION will have the name of leader. That's an important property of the set theory clauses you will see in this chapter. The fields included in the operation must be of the same data type since they come back as just a single field. You can't stack a number on top of a character field in other words.

-- 7. Resulting table from UNION
-- Our resulting table from the UNION gives all the leaders and their corresponding country. Does something stand out to you here? (PAUSE)

-- 8. UNION ALL with leaders
-- The countries of Brunei and Oman were listed only once in the UNION table. These countries have monarchs that also act as prime ministers. This can be seen in the UNION ALL results. You've seen

-- 9. Let's practice!
-- that UNION and UNION ALL clauses do not do the lookup step that JOINs do. They simply stack records on top of each other from one table to the next.

----------------------------------------
-- Union
-- You have two new tables, economies2010 and economies2015, available to you. The economies table is also included for reference.

-- Combine the two new tables into one table containing all of the fields in economies2010.
-- Sort this resulting single table by country code and then by year, both in ascending order.

-- Select fields from 2010 table
SELECT *
  -- From 2010 table
  FROM economies2010
	-- Set theory clause
	UNION
-- Select fields from 2015 table
SELECT *
  -- From 2015 table
  FROM economies2015
-- Order by code and year
ORDER BY code, year;

----------------------------------------
-- Union (2)
-- UNION can also be used to determine all occurrences of a field across multiple tables. Try out this exercise with no starter code.

-- Determine all (non-duplicated) country codes in either the cities or the currencies table. The result should be a table with only one field called country_code.
-- Sort by country_code in alphabetical order.

-- Select field
SELECT country_code
  -- From cities
  FROM cities
	-- Set theory clause
	UNION
-- Select field
SELECT code
  -- From currencies
  FROM currencies
-- Order by country_code
ORDER BY country_code;

----------------------------------------
-- Union all
-- As you saw, duplicates were removed from the previous two exercises by using UNION.

-- To include duplicates, you can use UNION ALL.
-- Determine all combinations (include duplicates) of country code and year that exist in either the economies or the populations tables. Order by code then year.
-- The result of the query should only have two columns/fields. Think about how many records this query should result in.
-- You'll use code very similar to this in your next exercise after the video. Make note of this code after completing it.

-- Select fields
SELECT code, year
  -- From economies
  FROM economies
	-- Set theory clause
	UNION ALL
-- Select fields
SELECT country_code, year
  -- From populations
  FROM populations
-- Order by code, year
ORDER BY code, year;

----------------------------------------
-- 1. INTERSECTional data science
-- You saw with UNION and UNION ALL via examples that they do not do quite the same thing as what a join does. They only bind fields on top of one another in the two tables. The set theory clause INTERSECT works in a similar fashion to UNION and UNION ALL, but remember from the Venn diagram that INTERSECT only includes those records in common to both tables and fields selected. Let's investigate the diagram for INTERSECT and the corresponding SQL code to achieve it.

-- 2. INTERSECT diagram and SQL code
-- The result of the INTERSECT on left_one and right_one is only the records in common to both left_one and right_one: 1 and 4. Let's next see how you could use INTERSECT to determine all countries having both a prime minister and a president.

-- 3. Prime minister and president countries
-- The code for each of these set operations has a similar layout. You first select which fields you'd like to include in your first table, and then you specify the name of the first table. Next you specify the set operation to perform. Lastly, you denote which fields in the second table you'd like to include and then the name of the second table. The result of the query is the four countries with both a prime minister and a president in the leaders database.

-- 4. INTERSECT on two fields
-- Next, let's think about what would happen if we tried to select two columns instead of one from our previous example. The code shown does just that. What will be the result of this query? Will this also give you the names of the countries that have both a prime minister and a president? Hmmm [PAUSE] The actual result is an empty table. Why is that? When INTERSECT looks at two columns it includes both columns in the search. So it didn't find any countries with prime ministers AND presidents having the same name. INTERSECT looks for RECORDS in common, not individual key fields like what a join does to match. This is an important distinction.

-- 5. Let's practice!
-- Let's get some practice!

----------------------------------------
-- Intersect
-- UNION ALL will extract all records from two tables, while INTERSECT will only return records that both tables have in common. In this exercise, you will create a similar query as before, however, this time you will look at the records in common for country code and year for the economies and populations tables.

-- Note the number of records from the result of this query compared to the similar UNION ALL query result of 814 records.

-- Use INTERSECT to determine the records in common for country code and year for the economies and populations tables.
-- Again, order by code and then by year, both in ascending order.

-- Select fields
SELECT code, year 
  -- From economies
  FROM economies
	-- Set theory clause
	INTERSECT
-- Select fields
SELECT country_code, year
  -- From populations
  FROM populations
-- Order by code and year
ORDER BY code, year;

----------------------------------------
-- Intersect (2)
-- As you think about major world cities and their corresponding country, you may ask which countries also have a city with the same name as their country name?

-- Use INTERSECT to answer this question with countries and cities!

-- Select fields
SELECT name 
  -- From countries
  FROM countries
	-- Set theory clause
	INTERSECT
-- Select fields
SELECT name 
  -- From cities
  FROM cities;

----------------------------------------
-- 1. EXCEPTional
-- Way to go! You've made it to the last of the four set theory clauses in this course. EXCEPT allows you to include only the records that are in one table, but not the other. Let's mix things up and look into the SQL code and result first and then dive into the diagram.

-- 2. Monarchs that aren't prime ministers
-- You saw earlier that there are some monarchs that also act as the prime minister for their country. One way to determine those monarchs in the monarchs table that do not also hold the title of prime minister is to use the EXCEPT clause. [CLICK] This SQL query selects the monarch field from monarchs and then looks for common entries with the prime_ministers field, while also keeping track of the country for each leader. [CLICK] You can see in the resulting query that only the two European monarchs are not also prime ministers in the leaders database.

-- 3. EXCEPT diagram
-- This diagram gives the structure of EXCEPT clauses. Only the records that appear in the left table BUT DO NOT appear in the right table are included.

-- 4. Let's practice!
-- After a couple exercises on using EXCEPT clauses, you'll check out the last two types of joins for the course: semi-joins and anti-joins. I'll see you in the next video for them!

----------------------------------------
-- Except
-- Get the names of cities in cities which are not noted as capital cities in countries as a single field result.

-- Note that there are some countries in the world that are not included in the countries table, which will result in some cities not being labeled as capital cities when in fact they are.

-- Order the resulting field in ascending order.
-- Can you spot the city/cities that are actually capital cities which this query misses?

-- Select field
SELECT name
  -- From cities
  FROM cities
	-- Set theory clause
	EXCEPT
-- Select field
SELECT capital
  -- From countries
  FROM countries
-- Order by result
ORDER BY name;

----------------------------------------
-- Except (2)
-- Now you will complete the previous query in reverse!

-- Determine the names of capital cities that are not listed in the cities table.

-- Order by capital in ascending order.
-- The cities table contains information about 236 of the world's most populous cities. The result of your query may surprise you in terms of the number of capital cities that do not appear in this list!

-- Select field
SELECT capital
  -- From countries
  FROM countries
	-- Set theory clause
	EXCEPT
-- Select field
SELECT name
  -- From cities
  FROM cities
-- Order by ascending capital
ORDER BY capital;

----------------------------------------
-- 1. Semi-joins and Anti-joins
-- You'll now close this chapter by returning to joins. The six joins you've worked with so far are all additive joins in that they add columns to the original "left" table. Can you name all six? (1. INNER JOIN, 2. self-join, 3. LEFT JOIN, 4. RIGHT JOIN, 5. FULL JOIN, and 6. CROSS JOIN).

-- 2. Building up to a semi-join
-- The last two joins we will cover use a right table to determine which records to keep in the left table. In other words, you use these last two joins (semi-join and anti-join) in a way similar to a WHERE clause dependent on the values of a second table. Let's try out some examples of semi-joins and anti-joins and then return to the diagrams for each. Suppose that you are interested in determining the presidents of countries that gained independence before 1800. Let's first determine which countries this corresponds to in the states table. Recall from your knowledge of SQL before you knew anything about JOINs how this could be done. To get only the countries meeting this condition you can use the WHERE clause. We'll next set up the other part of the query to get the

-- 3. Another step towards the semi-join
-- presidents we want. What code is needed to retrieve the president, country, and continent columns from the presidents table in that order? [PAUSE] Now we need to use this result with the one in the previous slide to further filter the country field in the presidents table to give us the correct result. Let's see how this might be done next.

-- 4. Finish the semi-join (an intro to subqueries)
-- In the first query of this example, we determined that Portugal and Spain were both independent before 1800. In the second query, we determined how to display the table in a nice form to answer our question. In order to combine the two tables together we will again use a WHERE clause and then use the first query as the condition to check in the WHERE clause. Check it out! This is your first example of a subquery: a query that sits inside of another query. You'll explore these more in Chapter 4. What does this give as a result? Is it the presidents of Spain and of Portugal? Since Spain does not have a president, it is not included here and only the Portuguese president is listed. The semi-join chooses records in the first table where a condition IS met in a second table. An anti-join chooses records in the first table where a condition IS NOT met in the second table. How might you determine countries in the Americas founded after 1800?

-- 5. An anti-join
-- Using the code from the previous example, you only need to add a few pieces of code. So what goes in the blanks? [PAUSE] Fill in the WHERE clause by choosing only those continents ending in America and then fill in the other space with a NOT to exclude those countries in the subquery. The presidents of

-- 6. The result of the anti-join
-- countries in the Americas founded after 1800 are given in the table.

-- 7. Semi-join and anti-join diagrams
-- The semi-join matches records by key field in the right table with those in the left. It then picks out only the rows in the left table that match that condition. The anti-join picks out those columns in the left table that do not match the condition on the right table. Semi-joins and anti-joins don't have the same built-in SQL syntax that INNER JOIN and LEFT JOIN have. They are useful tools in filtering one table's records on the records of another table.

-- 8. Let's practice!
-- This chapter's challenge exercise will ask you to combine set theory clauses with semi-joins. Before you get to that, you'll try out some exercises on semi-joins and anti-joins. See you again in Chapter 4!

----------------------------------------
-- Semi-join
-- You are now going to use the concept of a semi-join to identify languages spoken in the Middle East.

-- Begin by selecting all country codes in the Middle East as a single field result using SELECT, FROM, and WHERE.

-- Select code
SELECT code
  -- From countries
  FROM countries
-- Where region is Middle East
WHERE region = 'Middle East';

-- Below the commented code, select only unique languages by name appearing in the languages table.
-- Order the resulting single field table by name in ascending order.

-- Select field
SELECT DISTINCT name 
  -- From languages
  FROM languages
-- Order by name
ORDER BY name;

-- Combine the previous two queries into one query by adding a WHERE IN statement to the SELECT DISTINCT query to determine the unique languages spoken in the Middle East.
-- Order the result by name in ascending order.

-- Query from step 2
SELECT DISTINCT name
  FROM languages
-- Where in statement
WHERE code IN
  -- Query from step 1
  -- Subquery
  (SELECT code
   FROM countries
   WHERE region = 'Middle East')
-- Order by name
ORDER BY name;

----------------------------------------
-- Relating semi-join to a tweaked inner join
-- Let's revisit the code from the previous exercise, which retrieves languages spoken in the Middle East.

-- SELECT DISTINCT name
-- FROM languages
-- WHERE code IN
--   (SELECT code
--    FROM countries
--    WHERE region = 'Middle East')
-- ORDER BY name;
-- Sometimes problems solved with semi-joins can also be solved using an inner join.

-- SELECT languages.name AS language
-- FROM languages
-- INNER JOIN countries
-- ON languages.code = countries.code
-- WHERE region = 'Middle East'
-- ORDER BY language;
-- This inner join isn't quite right. What is missing from this second code block to get it to match with the correct answer produced by the first block?

-- A: DISTINCT

----------------------------------------
-- Diagnosing problems using anti-join
-- Another powerful join in SQL is the anti-join. It is particularly useful in identifying which records are causing an incorrect number of records to appear in join queries.

-- You will also see another example of a subquery here, as you saw in the first exercise on semi-joins. Your goal is to identify the currencies used in Oceanian countries!

-- Begin by determining the number of countries in countries that are listed in Oceania using SELECT, FROM, and WHERE.

-- Select statement
SELECT COUNT(countries)
  -- From countries
  FROM countries
-- Where continent is Oceania
WHERE continent = 'Oceania';

-- Complete an inner join with countries AS c1 on the left and currencies AS c2 on the right to get the different currencies used in the countries of Oceania.
-- Match ON the code field in the two tables.
-- Include the country code, country name, and basic_unit AS currency.
-- Observe the query result and make note of how many different countries are listed here.

-- Select fields (with aliases)
SELECT c1.code, c1.name, basic_unit AS currency
  -- From countries (alias as c1)
  FROM countries AS c1
  	-- Join with currencies (alias as c2)
  	INNER JOIN currencies AS c2
    -- Match on code
    ON c1.code = c2.code
-- Where continent is Oceania
WHERE continent = 'Oceania';

-- Note that not all countries in Oceania were listed in the resulting inner join with currencies. Use an anti-join to determine which countries were not included!

-- Use NOT IN and (SELECT code FROM currencies) as a subquery to get the country code and country name for the Oceanian countries that are not included in the currencies table.

-- Select fields
SELECT c1.code, c1.name
  -- From Countries
  FROM countries AS c1
  -- Where continent is Oceania
  WHERE continent = 'Oceania'
  	-- And code not in
  	AND code NOT IN
  	-- Subquery
  	(SELECT code 
	FROM currencies);

----------------------------------------
-- Set theory challenge
-- Congratulations! You've now made your way to the challenge problem for this third chapter. Your task here will be to incorporate two of UNION/UNION ALL/INTERSECT/EXCEPT to solve a challenge involving three tables.

-- In addition, you will use a subquery as you have in the last two exercises! This will be great practice as you hop into subqueries more in Chapter 4!

-- Identify the country codes that are included in either economies or currencies but not in populations.
-- Use that result to determine the names of cities in the countries that match the specification in the previous instruction.

-- Select the city name
SELECT c1.name
  -- Alias the table where city name resides
  FROM cities AS c1
  -- Choose only records matching the result of multiple set theory clauses
  WHERE country_code IN
(
    -- Select appropriate field from economies AS e
    SELECT e.code
    FROM economies AS e
    -- Get all additional (unique) values of the field from currencies AS c2  
    UNION
    SELECT DISTINCT c2.code
    FROM currencies AS c2  
    -- Exclude those appearing in populations AS p
    EXCEPT
    SELECT p.country_code
    FROM populations AS p
);

----------------------------------------
----------------------------------------
----------------------------------------