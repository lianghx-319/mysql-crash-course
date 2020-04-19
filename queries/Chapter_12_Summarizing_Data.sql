# Function AVG() to get average value
SELECT AVG(prod_price) AS avg_price
FROM products;

SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

# Function COUNT() to get number of column
SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS num_cust
FROM customers;

# Function MAX()
SELECT MAX(prod_price) AS max_price
FROM products;

# Function MIN()
SELECT MIN(prod_price) AS min_price
FROM products;

# Function SUM()
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

# Use DISTINCT params
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

# combine multiple function
SELECT COUNT(*) AS num_items,
			 MIN(prod_price) AS min_price,
			 MAX(prod_price) AS max_price,
			 AVG(prod_price) AS avg_price
FROM products;
