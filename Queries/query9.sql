-- Write a query that will only take in order_id = 2
-- 		and sort it based off of product price
SELECT *, quantity*unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC