# Keyword GROUP BY
SELECT vend_id, COUNT(*) AS num_price
FROM products
GROUP BY vend_id;

# return the summary
SELECT vend_id, COUNT(*) AS num_price
FROM products
GROUP BY vend_id WITH ROLLUP;

# Keyword HAVING
SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

# HAVING filtering data after GROUP BY, WHERE filtering data before GROUP BY
SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 10
GROUP BY vend_id
HAVING COUNT(*) >= 2;

# Always use ORDER BY to sort data
# Bad example
SELECT order_num, SUM(quantity * item_price) AS order_total
FROM orderitems
GROUP BY order_num
HAVING SUM(quantity * item_price) >= 50;

# Good example
SELECT order_num, SUM(quantity * item_price) AS order_total
FROM orderitems
GROUP BY order_num
HAVING SUM(quantity * item_price) >= 50
ORDER BY order_total;
