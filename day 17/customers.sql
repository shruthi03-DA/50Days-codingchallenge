#DDL
create database customer
use customer
CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100), city VARCHAR(50));
describe customers
INSERT INTO customers VALUES(1, 'Amit', 'Bangalore'), (2, 'Sneha', 'Mumbai'), (3, 'Rahul', 'Delhi'), (4, 'Priya', 'Chennai');
select * from customers;

CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, amount DECIMAL(10,2));
INSERT INTO orders VALUES(101, 1, '2024-01-10', 500), (102, 1, '2024-02-15', 700), (103, 2, '2024-03-01', 300), (104, 5, '2024-03-05', 900);
select * from orders;

CREATE TABLE payments (payment_id INT PRIMARY KEY, order_id INT, payment_status VARCHAR(20));
INSERT INTO payments VALUES (1, 101, 'Completed'), (2, 102, 'Pending'), (3, 103, 'Completed');
select * from payments

1. select c.customer_name, o.order_id, o.amount from customers c 
INNER JOIN orders o on c.customer_id = o.customer_id;

2. select c.customer_name, o.order_id from customers c
LEFT JOIN orders o on c.customer_id = o.customer_id;

3. select o.* from orders o
LEFT JOIN customers c on o.customer_id = c.customer_id WHERE c.customer_id IS NULL;

4. select c.customer_name, o.order_id, p.payment_status from orders o
LEFT JOIN customers c on o.customer_id = c.customer_id
LEFT JOIN payments p on o.order_id = p.order_id;

5. select c.customer_name from customers c LEFT JOIN orders o on c.customer_id = o.customer_id where o.order_id IS NULL;

6. select o.order_id from orders o LEFT JOIN payments p 
on o.order_id = p.order_id where p.order_id IS NULL;

7. select c.customer_name, SUM(o.amount) AS total_spent from customers c
INNER JOIN orders o on c.customer_id = o.customer_id GROUP BY c.customer_name;

8. select c.customer_name from customers c
INNER JOIN orders o on c.customer_id = o.customer_id
LEFT JOIN payments p on o.order_id = p.order_id
GROUP BY c.customer_name HAVING COUNT(o.order_id) = COUNT(CASE WHEN p.payment_status = 'Completed' THEN 1 END);

9. select c.customer_name, MAX(o.amount) as highest_order from customers c
INNER JOIN orders o on c.customer_id = o.customer_id group by c.customer_name;

10. select c.customer_name, SUM(o.amount) AS total_spent from customers c
INNER JOIN orders o on c.customer_id = o.customer_id  group by c.customer_name
order by total_spent desc limit 2;