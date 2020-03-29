-- Keyword REGEXP to using regular expressions
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000';

-- '.' means match one word
SELECT prod_name
FROM products
WHERE prod_name REGEXP '.000';

-- regular expression ignore cases by default, Keyword BINARY can match by cases
-- here has same result
SELECT prod_name
FROM products
WHERE prod_name REGEXP BINARY 'JetPack .000';

SELECT prod_name
FROM products
WHERE prod_name REGEXP 'Jetpack .000';

-- '|' filtering like OR
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'
ORDER BY prod_name;

-- match one of several characters
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] Ton'
ORDER BY prod_name;

-- Why use '[]'
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1|2|3 Ton'
ORDER BY prod_name;

-- [0-9] is same as [0123456789]
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] Ton'
ORDER BY prod_name;

-- match special character, use escaping prefix '\\' to match character '.', like '\\.'
SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '\\.'
ORDER BY vend_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '\\([0-9] sticks?\\)'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '[[:digit:]]{4}'
ORDER BY prod_name;

-- Locator, find prod_name start with '.' and start with digital
SELECT prod_name
FROM products
WHERE prod_name REGEXP '^[[:digit:]\\.]'
ORDER BY prod_name;
