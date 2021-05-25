-- join the order items table with the product table
-- return both the product id, name, quantity and unit price
-- use an alias to simplify your code
SELECT  order_id,
	oi.product_id,
	name, 
    quantity, 
    oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id