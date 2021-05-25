-- Get the customers whose
-- addresses contain TRAIL or AVENUE

SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR 
	  address LIKE '%AVENUE%'

-- phone numbers end with 9

-- SELECT *
-- FROM customers
-- WHERE phone LIKE '%9'

-- phone numbers that don't end with 9

-- SELECT *
-- FROM customers
-- WHERE phone NOT LIKE '%9'