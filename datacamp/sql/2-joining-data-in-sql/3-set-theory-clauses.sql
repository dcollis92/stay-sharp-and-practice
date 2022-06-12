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