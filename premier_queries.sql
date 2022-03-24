USE premier_products;

SELECT * FROM customer;

SELECT customer_num, customer_name
FROM customer;

SELECT *
FROM customer
WHERE city="Grove";

SELECT customer_num, customer_name, balance, credit_limit, city
FROM customer
WHERE city="Grove";

SELECT customer_num, customer_name, balance, credit_limit, city
FROM customer
WHERE credit_limit >= 10000;

SELECT customer_num, customer_name, balance, credit_limit, city
FROM customer
WHERE (city="Grove" OR city="Fillmore") AND (credit_limit BETWEEN 5000 AND 10000);

SELECT * FROM part;

SELECT part_num, (on_hand * price) AS Total
FROM part;

SELECT class, COUNT(class) AS count_of_prod
FROM part
GROUP BY class;

SELECT class, SUM(on_hand * price) AS Total
FROM part
GROUP BY class;

SELECT *
FROM orders;

SELECT *
FROM order_line;

SELECT customer_num, orders.order_num, order_date, part_num
FROM  orders, order_line
WHERE orders.order_num = order_line.order_num;


SELECT customer_num, orders.order_num, order_date, part_num, num_ordered, quoted_price, (num_ordered * quoted_price) AS LineTotal
FROM  orders, order_line
WHERE orders.order_num = order_line.order_num;

SELECT customer_num, order_line.order_num, SUM(quoted_price) AS TotalInvoice
FROM  orders, order_line
WHERE orders.order_num = order_line.order_num
GROUP BY order_line.order_num;

SELECT customer_num, orders.order_num, order_date, part_num
FROM  orders, order_line
WHERE orders.order_num = order_line.order_num;

SELECT customer_num, orders.order_num, order_date, part_num
FROM  orders
JOIN order_line ON
orders.order_num = order_line.order_num;

SELECT customer_name, orders.order_num, order_date, part_num
FROM customer
JOIN orders ON
customer.customer_num = orders.customer_num
JOIN order_line ON
orders.order_num = order_line.order_num;











































