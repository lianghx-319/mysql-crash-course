-- Keyword SELECT to select column data
-- select a single columm
SELECT prod_name 
FROM products;

-- select mutiple columms
SELECT prod_id, prod_name, prod_price
FROM products;

-- select all columms
SELECT *
FROM products;

-- Keyword DISTINCT to select different row
SELECT DISTINCT vend_id
FROM products;

-- Keyword DISTINCT effect on all columns
-- return rows that vend_id and prod_price are all different
SELECT DISTINCT vend_id, prod_price
FROM products;

-- Keyword LIMIT to limit result
-- limit 5 results
SELECT prod_name
FROM products
LIMIT 5;

-- return next 5 results
SELECT prod_name
FROM products
LIMIT 5, 5;

-- row start from 0, not 1, this query with return No.2 row, because 1 plus 1 equal 2
SELECT prod_name
FROM products
LIMIT 1, 1;

-- Keyword OFFSET to semantic limit query
-- same as ELECT prod_name FROM products LIMIT 5, 5;
SELECT prod_name
FROM products
LIMIT 5
OFFSET 5;

-- use fully qualified database name to identify same table name
SELECT products.prod_name 
FROM crashcourse.products;
