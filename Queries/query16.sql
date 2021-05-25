-- Do a CROSS join between shippers and products
-- 		using implicit syntax
-- 		and then using explicit syntax
USE sql_store;
SELECT *

-- implicit syntax
-- FROM shippers sh, products p

-- explicit syntax
FROM shippers sh
CROSS JOIN products p