-- In the sql_invoicing database, look at the invoices table
-- copy all the data into an invoicing_archived table 
-- and instead of the client id row, change to client name row
-- 	use that query as a subquery in a create table statement  
-- copy only the invoices that do have a payment
USE sql_invoicing;

CREATE TABLE invoices_archived AS
-- First write the subquery, then create the new table
SELECT i.invoice_id,
	i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL
-- INSERT INTO invoicing_archived
-- SELECT *
-- FROM invoices
