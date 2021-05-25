-- Get the top 3 loyal customers 
-- (aka customers with more points than anyone else)
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3

-- note: limit clause should always come at the end of the SQL query
-- ORDER for the reserved words in the MySQL queries
-- SELECT
-- FROM
-- WHERE
-- ORDER BY
-- LIMIT

-- Alternate Solution
-- SELECT *
-- FROM customers
-- ORDER BY points 
-- LIMIT 7,3