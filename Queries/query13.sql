-- Join the products table with the order items table in the sql_store database
-- but include the products that have not been ordered
USE sql_store;

SELECT p.product_id,
	p.name,
	oi.quantity
FROM products p -- LEFT JOIN includes everything in this table regardless of the ON condition 
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id