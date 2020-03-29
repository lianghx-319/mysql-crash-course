-- CONCAT: comcatenate field
SELECT CONCAT(vend_name, ' (', vend_country, ')')
FROM vendors
ORDER BY vend_name;

-- RTRIM: trim blank from right
SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')')
FROM vendors
ORDER BY vend_name;

-- name an alias for field
SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS vend_title
FROM vendors
ORDER BY vend_name;

-- arithmetic calculation
SELECT prod_id, quantity, item_price
FROM orderitems
WHERE order_num = 20005;

SELECT prod_id, 
			 quantity, 
			 item_price, 
			 quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20005;
