-- Keyword WHERE to filtrate data
SELECT prod_name, prod_price
FROM products
WHERE prod_price = 2.50;

-- ORDER BY should after WHERE
SELECT prod_name, prod_price
FROM products
WHERE prod_price > 2.50
ORDER BY prod_price;

-- WHERE operator
-- equal =, ignore case by default
SELECT prod_name, prod_price
FROM products
WHERE prod_name = 'fuses';

-- <
SELECT prod_name, prod_price
FROM products
WHERE prod_price < 10;

-- <=
SELECT prod_name, prod_price
FROM products
WHERE prod_price <= 10;

-- mismatch check <>
SELECT prod_name, vend_id
FROM products
WHERE vend_id <> 1003;

-- mismatch check !=, same above
SELECT prod_name, vend_id
FROM products
WHERE vend_id != 1003;

-- Keyword BETWEEN to range check, inclusive [5, 10]
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10;

-- Keyword IS NULL to null value check
SELECT prod_name
FROM products
WHERE prod_price IS NULL;

SELECT cust_id
FROM customers
WHERE cust_email IS NULL;