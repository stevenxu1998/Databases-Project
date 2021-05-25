USE store;
-- displays the name, unit price, and new price with a mathematical calculation 
-- from the products table under the store database
SELECT 
	name,
    unit_price,
    (unit_price * 1.1) AS 'new price'
FROM products