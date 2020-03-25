-- Keyword LIKE to use wildcard filtering
-- % wildcard means any chars of any times
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'jet%';

-- wildcard can use multiple
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '%anvil%';

-- match word start with 's' and end with 'e'
SELECT prod_name
FROM products
WHERE prod_name LIKE 's%e';

-- _ wildcard means one word
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';

-- compare _ with %
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '% ton anvil';