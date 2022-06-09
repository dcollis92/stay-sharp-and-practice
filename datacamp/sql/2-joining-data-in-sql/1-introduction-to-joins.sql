----------------------------------------
-- Inner join
-- Although this course focuses on PostgreSQL, you'll find that these joins and the material here applies to different forms of SQL as well.

-- Throughout this course, you'll be working with the countries database containing information about the most populous world cities as well as country-level economic data, population data, and geographic data. This countries database also contains information on languages spoken in each country.

-- You can see the different tables in this database by clicking on the corresponding tabs. Click through them to get a sense for the types of data that each table contains before you continue with the course! Take note of the fields that appear to be shared across the tables.

-- Recall from the video the basic syntax for an INNER JOIN, here including all columns in both tables:

SELECT *
FROM left_table
INNER JOIN right_table
ON left_table.id = right_table.id;
-- You'll start off with a SELECT statement and then build up to an INNER JOIN with the cities and countries tables. Let's get to it!

-- Begin by selecting all columns from the cities table.

SELECT *
FROM cities;

-- Inner join the cities table on the left to the countries table on the right, keeping all of the fields in both tables.
-- You should match the tables on the country_code field in cities and the code field in countries.
-- Do not alias your tables here or in the next step. Using cities and countries is fine for now.

SELECT * 
FROM cities
INNER JOIN countries 
ON cities.country_code = countries.code;

-- Modify the SELECT statement to keep only the name of the city, the name of the country, and the name of the region the country resides in.
-- Alias the name of the city AS city and the name of the country AS country.

SELECT cities.name as city, countries.NAME as country, region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

----------------------------------------
-- Inner join (2)
-- Instead of writing the full table name, you can use table aliasing as a shortcut. For tables you also use AS to add the alias immediately after the table name with a space. Check out the aliasing of cities and countries below.

SELECT c1.name AS city, c2.name AS country
FROM cities AS c1
INNER JOIN countries AS c2
ON c1.country_code = c2.code;
-- Notice that to select a field in your query that appears in multiple tables, you'll need to identify which table/table alias you're referring to by using a . in your SELECT statement.

-- You'll now explore a way to get data from both the countries and economies tables to examine the inflation rate for both 2010 and 2015.

-- Sometimes it's easier to write SQL code out of order: you write the SELECT statement after you've done the JOIN.

-- Join the tables countries (left) and economies (right) aliasing countries AS c and economies AS e.
-- Specify the field to match the tables ON.
-- From this join, SELECT:
-- c.code, aliased as country_code.
-- name, year, and inflation_rate, not aliased.

-- Select fields with aliases
SELECT c.code AS country_code, NAME, YEAR, inflation_rate
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e 
-- Match on code
ON c.code = e.code;

----------------------------------------
-- Inner join (3)
-- The ability to combine multiple joins in a single query is a powerful feature of SQL, e.g:

SELECT *
FROM left_table
  INNER JOIN right_table
    ON left_table.id = right_table.id
  INNER JOIN another_table
    ON left_table.id = another_table.id;
-- As you can see here it becomes tedious to continually write long table names in joins. This is when it becomes useful to alias each table using the first letter of its name (e.g. countries AS c)! It is standard practice to alias in this way and, if you choose to alias tables or are asked to specifically for an exercise in this course, you should follow this protocol.

-- Now, for each country, you want to get the country name, its region, the fertility rate, and the unemployment rate for both 2010 and 2015.

-- Note that results should work throughout this course with or without table aliasing unless specified differently.

-- Inner join countries (left) and populations (right) on the code and country_code fields respectively.
-- Alias countries AS c and populations AS p.
-- Select code, name, and region from countries and also select year and fertility_rate from populations (5 fields in total).

-- Select fields
SELECT code, name, region, year, fertility_rate
-- From countries (alias as c)
FROM countries AS c
-- Join with populations (as p)
INNER JOIN populations as p 
-- Match on country code
ON c.code = p.country_code;

-- Add an additional INNER JOIN with economies to your previous query by joining on code.
-- Include the unemployment_rate column that became available through joining with economies.
-- Note that year appears in both populations and economies, so you have to explicitly use e.year instead of year as you did before.

-- Select fields
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
-- From countries (alias as c)
FROM countries AS c
-- Join to populations (as p)
INNER JOIN populations AS p
-- Match on country code
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e 
-- Match on country code
ON c.code = e.code;

-- Scroll down the query result and take a look at the results for Albania from your previous query. Does something seem off to you?
-- The trouble with doing your last join on c.code = e.code and not also including year is that e.g. the 2010 value for fertility_rate is also paired with the 2015 value for unemployment_rate.
-- Fix your previous query: in your last ON clause, use AND to add an additional joining condition. In addition to joining on code in c and e, also join on year in e and p.

-- Select fields
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
-- From countries (alias as c)
FROM countries AS c
-- Join to populations (as p)
INNER JOIN populations AS p
-- Match on country code
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code and year
ON c.code = e.code AND e.year = p.year;

-- Review inner join using on
-- Why does the following code result in an error?

SELECT c.name AS country, l.name AS language
FROM countries AS c
  INNER JOIN languages AS l;

-- A: INNER JOIN requires a specification of the key field (or fields) in each table.
----------------------------------------
-- Inner join with using
-- When joining tables with a common field name, e.g.

SELECT *
FROM countries
INNER JOIN economies
ON countries.code = economies.code
You can use USING as a shortcut:

SELECT *
FROM countries
INNER JOIN economies
USING (code)
-- You'll now explore how this can be done with the countries and languages tables.

-- Inner join countries on the left and languages on the right with USING(code).
-- Select the fields corresponding to:
-- country name AS country,
-- continent name,
-- language name AS language, and
-- whether or not the language is official.
-- Remember to alias your tables using the first letter of their names.

-- Select fields
SELECT c.name AS country, continent, l.name AS language, official
  -- From countries (alias as c)
  FROM countries AS c
  -- Join to languages (as l)
INNER JOIN languages as l 
    -- Match using code
USING (code);

----------------------------------------
-- Self-join
-- In this exercise, you'll use the populations table to perform a self-join to calculate the percentage increase in population from 2010 to 2015 for each country code!

-- Since you'll be joining the populations table to itself, you can alias populations as p1 and also populations as p2. This is good practice whenever you are aliasing and your tables have the same first letter. Note that you are required to alias the tables with self-joins.

-- Join populations with itself ON country_code.
-- Select the country_code from p1 and the size field from both p1 and p2. SQL won't allow same-named fields, so alias p1.size as size2010 and p2.size as size2015.

-- Select fields with aliases
SELECT p1.country_code, p1.size as size2010, p2.size as size2015
-- From populations (alias as p1)
FROM populations as p1
-- Join to itself (alias as p2)
INNER JOIN populations as p2
-- Match on country code
ON p1.country_code = p2.country_code;

-- Notice from the result that for each country_code you have four entries laying out all combinations of 2010 and 2015.
-- Extend the ON in your query to include only those records where the p1.year (2010) matches with p2.year - 5 (2015 - 5 = 2010). This will omit the three entries per country_code that you aren't interested in.

-- Select fields with aliases
SELECT p1.country_code,
p1.size AS size2010,
p2.size AS size2015
-- From populations (alias as p1)
FROM populations as p1
-- Join to itself (alias as p2)
INNER JOIN populations as p2
-- Match on country code
ON p1.country_code = p2.country_code
-- and year (with calculation)
AND p1.year = (p2.year - 5);

-- As you just saw, you can also use SQL to calculate values like p2.year - 5 for you. With two fields like size2010 and size2015, you may want to determine the percentage increase from one field to the next:

-- With two numeric fields  and , the percentage growth from  to  can be calculated as .

-- Add a new field to SELECT, aliased as growth_perc, that calculates the percentage population growth from 2010 to 2015 for each country, using p2.size and p1.size.

-- Select fields with aliases
SELECT p1.country_code,
p1.size AS size2010, 
p2.size AS size2015,
-- Calculate growth_perc
((p2.size - p1.size)/p1.size * 100.0) AS growth_perc
-- From populations (alias as p1)
FROM populations AS p1
-- Join to itself (alias as p2)
INNER JOIN populations AS p2
-- Match on country code
ON p1.country_code = p2.country_code
-- and year (with calculation)
AND p1.year = p2.year - 5;

----------------------------------------
-- Case when and then
-- Often it's useful to look at a numerical field not as raw data, but instead as being in different categories or groups.

-- You can use CASE with WHEN, THEN, ELSE, and END to define a new grouping field.

-- Using the countries table, create a new field AS geosize_group that groups the countries into three groups:

-- If surface_area is greater than 2 million, geosize_group is 'large'.
-- If surface_area is greater than 350 thousand but not larger than 2 million, geosize_group is 'medium'.
-- Otherwise, geosize_group is 'small'.

SELECT name, continent, code, surface_area,
-- First case
CASE WHEN surface_area > 2000000 THEN 'large'
-- Second case
WHEN surface_area > 350000 THEN 'medium'
-- Else clause + end
ELSE 'small' END
-- Alias name
AS geosize_group
-- From table
FROM countries;

----------------------------------------
-- Inner challenge
-- The table you created with the added geosize_group field has been loaded for you here with the name countries_plus. Observe the use of (and the placement of) the INTO command to create this countries_plus table:

-- SELECT name, continent, code, surface_area,
--     CASE WHEN surface_area > 2000000
--             THEN 'large'
--        WHEN surface_area > 350000
--             THEN 'medium'
--        ELSE 'small' END
--        AS geosize_group
-- INTO countries_plus
-- FROM countries;
-- You will now explore the relationship between the size of a country in terms of surface area and in terms of population using grouping fields created with CASE.

-- By the end of this exercise, you'll be writing two queries back-to-back in a single script. You got this!

-- Using the populations table focused only for the year 2015, create a new field aliased as popsize_group to organize population size into

-- 'large' (> 50 million),
-- 'medium' (> 1 million), and
-- 'small' groups.
-- Select only the country code, population size, and this new popsize_group as fields.

SELECT country_code, size,
    -- First case
    CASE WHEN size > 50000000 THEN 'large'
        -- Second case
        WHEN size > 1000000 THEN 'medium'
        -- Else clause + end
        ELSE 'small' END
        -- Alias name (popsize_group)
        AS popsize_group
-- From table
FROM populations
-- Focus on 2015
WHERE year = 2015;

-- Use INTO to save the result of the previous query as pop_plus. You can see an example of this in the countries_plus code in the assignment text. Make sure to include a ; at the end of your WHERE clause!

-- Then, include another query below your first query to display all the records in pop_plus using SELECT * FROM pop_plus; so that you generate results and this will display pop_plus in the query result.

SELECT country_code, size,
    CASE WHEN size > 50000000 THEN 'large'
        WHEN size > 1000000 THEN 'medium'
        ELSE 'small' END
        AS popsize_group
-- Into table
INTO pop_plus
FROM populations
WHERE year = 2015;

-- Select all columns of pop_plus
SELECT * FROM pop_plus;

-- Keep the first query intact that creates pop_plus using INTO.
-- Write a query to join countries_plus AS c on the left with pop_plus AS p on the right matching on the country code fields.
-- Sort the data based on geosize_group, in ascending order so that large appears on top.
-- Select the name, continent, geosize_group, and popsize_group fields.

SELECT country_code, size,
  CASE WHEN size > 50000000
            THEN 'large'
       WHEN size > 1000000 
            THEN 'medium'
       ELSE 'small' END
       AS popsize_group
INTO pop_plus       
FROM populations
WHERE year = 2015;

-- Select fields
SELECT name, continent, geosize_group, popsize_group
-- From countries_plus (alias as c)
FROM countries_plus AS c
  -- Join to pop_plus (alias as p)
INNER JOIN pop_plus AS p
    -- Match on country code
ON c.code = p.country_code
-- Order the table    
ORDER BY geosize_group;

----------------------------------------