-- Keyword ORDER BY to sort selected columns data
SELECT prod_name
FROM products
ORDER BY prod_name;

-- also can ORDER BY the columns not selected
SELECT prod_name
FROM products
ORDER BY vend_id;

-- ORDER BY mutiple columns 
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price, prod_name;

-- Keyword DESC can sort descending, otherwise sort ascending by default
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC;

-- DESC can effect on specified columns
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC, prod_name;