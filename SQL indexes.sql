USE BikeStores 
GO
SELECT * FROM sales.customers

--CREATE AN INDEX AND NAME IT index_customer_names
CREATE INDEX index_customer_names
ON sales.customers(first_name)
--DISPLAY first_name IN THE sales.customers TABLE
SELECT first_name FROM sales.customers

--DISABLING THE INDEX
ALTER INDEX index_customer_names
ON sales.customers
DISABLE;

--RE-ENABLING THE INDEX
ALTER INDEX index_customer_names
ON sales.customers
REBUILD;

--DISABLING THE INDEX
DROP INDEX IF EXISTS index_customer_names
ON sales.customers;

SELECT * FROM sales.customers

CREATE INDEX index_phone_no
ON sales.customers(phone)
WHERE phone IS NOT NULL

SELECT * FROM sales.customers
WHERE phone='(916) 381-6003'




