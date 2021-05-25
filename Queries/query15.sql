-- in the sql_invoicing db, in the payments table 
USE sql_invoicing;

SELECT p.date,
	c.name,
    p.amount,
    pm.name
FROM payments p 
JOIN clients c
	USING (client_id)
JOIN payment_methods pm
	ON pm.payment_method_id = p.payment_method