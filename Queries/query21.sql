-- Back to the sql_store db, orders table
-- Update the comments for customers who have more than 3000 points
-- set it to gold customer
USE sql_store;
UPDATE orders
SET 
	comments = 'Gold customer'
WHERE customer_id IN
					(SELECT customer_id
					FROM customers
					WHERE points > 3000)