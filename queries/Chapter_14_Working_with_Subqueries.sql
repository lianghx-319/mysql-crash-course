# Find all customs order TNT2
# Select all orders buying TNT2
SELECT order_num
FROM orderitems
WHERE prod_id = 'TNT2';

# Find cust_id order 2005 20007
SELECT cust_id
FROM orders
WHERE order_num IN (20005, 20007);

# Combine this two queries
SELECT cust_id
FROM orders
WHERE order_num IN (SELECT order_num
									  FROM orderitems
										WHERE prod_id = 'TNT2');
									
# Find costomer who buied TNT2
SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (10001, 10004);

# sub queries 
SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (SELECT cust_id
									FROM orders
									WHERE order_num IN (SELECT order_num
																			FROM orderitems
																			WHERE prod_id = 'TNT2'));
																			
# count the number of orders by 10001
SELECT COUNT(*) AS orders
FROM orders
WHERE cust_id = 10001;

# here count the number of orders by every customers
SELECT cust_name,
			 cust_state,
			 (SELECT COUNT(*)
			  FROM orders
				WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers
ORDER BY cust_name;
