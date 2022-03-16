USE premier_products;

SELECT * FROM customer;

SELECT customer_num, customer_name
FROM customer;

SELECT *
FROM customer
WHERE city="Grove";

SELECT customer_num, customer_name, balance, credit_limit
FROM customer
WHERE city="Grove";