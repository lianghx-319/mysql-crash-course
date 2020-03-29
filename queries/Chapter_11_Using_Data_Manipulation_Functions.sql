-- Text functions
-- UPPER return upcase string
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

-- LEFT return character from left
SELECT vend_name, LEFT(vend_name, 5) AS vend_name_left_5
FROM vendors
ORDER BY vend_name;

-- LENGTH return the lenght of string
SELECT vend_name, LENGTH(vend_name) AS vend_name_length‰
FROM vendors
ORDER BY vend_name;

-- LOCATE @see https://www.w3schools.com/sql/trymysql.asp?filename=trysql_func_mysql_locate

-- SOUNDEX 
SELECT cust_name, cust_contact
FROM customers
WHERE cust_contact = 'Y. Lie';
-- return nothing

SELECT cust_name, cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Y Lie');
-- return 'Y Lee'

-- Date & Time functions
SELECT cust_id, order_num
FROM orders
WHERE order_date = '2005-09-01';

-- more reliable way is using DATE function
SELECT cust_id, order_num
FROM orders
WHERE DATE(order_date) = '2005-09-01';

-- query orders in September
SELECT cust_id, order_num
FROM orders
WHERE DATE(order_date) BETWEEN '2005-09-01' AND '2005-09-30';

-- another way
SELECT cust_id, order_num
FROM orders
WHERE YEAR(order_date) = 2005 AND MONTH(order_date) = 9;
