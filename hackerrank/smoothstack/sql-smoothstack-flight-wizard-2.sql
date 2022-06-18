-- Return the airport codes where the percentage of delayed flights exceeds 13% and the percentage of canceled flights exceeds 1% after and including Aug 2002

/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/

SELECT airport_code
FROM airport
WHERE (num_delayed_flights / num_total_flights) * 100 > 13
AND (num_canceled_flights / num_total_flights) * 100 > 1
AND 
((year = 2002
    AND (month = 'Aug' 
    OR month = 'Sept' 
    OR month = 'Oct' 
    OR month = 'Nov' 
    OR month = 'Dec'))
OR year >= 2003);

-- Used mutliple where AND OR clauses to identify the correct fields
-- delayed / total * 100 gives the % of delayed flights
-- canceled / total * 100 gives the % of canceled flights

-- Since Month is identified as a string, multiple OR clauses are needed to encapsulate the remaining months in 2002
-- After the needed OR clauses for the 2002 remainder, the last clauses can just be 2003 onward.