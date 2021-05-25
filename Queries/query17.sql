-- In the customer table first figure out whether each customer is bronze, silver or gold based on points
-- Bronze is less than 2000 pts
-- Silver is between 2000 to 3000 inclusive
-- Gold is more than 3000 pts
-- sort the first name of the customers
USE sql_store;

SELECT customer_id,
	first_name,
    points,
    'BRONZE' as type
FROM customers
WHERE points < 2000
UNION
SELECT customer_id,
	first_name,
    points,
    'SILVER' as type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id,
	first_name,
    points,
    'GOLD' as type
FROM customers
WHERE points > 3000
ORDER BY first_name