-- join shippers, order, customer, and order_statuses tables
-- display the order regardless of the shipper 
USE sql_store;

SELECT o.order_date,
	o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name AS status
FROM orders o
LEFT JOIN shippers sh
	ON sh.shipper_id = o.shipper_id
JOIN customers c
	ON c.customer_id = o.customer_id
JOIN order_statuses os
	ON os.order_status_id = o.status
ORDER BY os.name

-- NOTE: shippers sh can also come in 2nd with the LEFT JOIN reserved word beside it



