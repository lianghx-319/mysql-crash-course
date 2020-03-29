-- combine logical orperator with WHERE
-- Keyword AND
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 1003 AND prod_price <= 10;

-- Keyword OR
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003;

-- calculation order, AND have high-priority by default
-- In orter to filter supply from 1002 or 1003, and price is 10 or more

-- this is a wrong query because will calculate AND first
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003 AND prod_price >= 10;

-- this is a correct query, use () to specify the order of logical orperator
SELECT prod_name, prod_price
FROM products
WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price >= 10;

-- Kewword IN to specify condition range like enum
SELECT prod_name, prod_price
FROM products
WHERE vend_id IN (1002, 1003)
ORDER BY prod_name;

-- In some way, what IN can do, OR can too, but IN is more clearer and faster and shorter
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003
ORDER BY prod_name;

-- Keyword NOT to negate resultSELECT prod_name, prod_price
SELECT prod_name, prod_price
FROM products
WHERE vend_id NOT IN (1002, 1003)
ORDER BY prod_name;
