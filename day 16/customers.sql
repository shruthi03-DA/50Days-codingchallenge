#DDL
create database customers;
#activating datbase
use customers
CREATE TABLE customers (customer_id INT, customer_name VARCHAR(50), city VARCHAR(50), age INT, total_spent DECIMAL(10,2),number_of_orders INT);
describe customers
#DML
INSERT INTO customers VALUES (1, 'Amit', 'Bangalore', 25, 12000, 5), (2, 'Neha', 'Mumbai', 30, 45000, 12),
(3, 'Raj', 'Delhi', 22, 8000, 3), (4, 'Sneha', 'Bangalore', 28, 60000, 15), (5, 'Karan', 'Mumbai', 35, 20000, 7),
(6, 'Pooja', 'Delhi', 27, 15000, 6), (7, 'Arjun', 'Bangalore', 40, 70000, 20), (8, 'Meera', 'Mumbai', 23, 5000, 2);
select * from customers

Customer Segmentation

1. Select * from customers where city= 'Bangalore';
2. Select * from customers where total_spent > 20000;
3. Select * from customers where age between 25 and 35;
4. SELECT * FROM customers ORDER BY total_spent DESC;
5. SELECT SUM(total_spent) AS total_revenue FROM customers;
6. SELECT AVG(total_spent) AS average_spending FROM customers;
7. SELECT city, SUM(total_spent) AS total_spending FROM customers GROUP BY city;
8. SELECT city, COUNT(*) AS customer_count FROM customers GROUP BY city;
9. SELECT 
    CASE 
        WHEN total_spent > 50000 THEN 'High Value'
        WHEN total_spent BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value' END AS customer_segment, COUNT(*) AS total_customers
FROM customers GROUP BY customer_segment; SELECT customer_name, total_spent,
    CASE 
        WHEN total_spent > 50000 THEN 'High Value'
        WHEN total_spent BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value' END AS segment FROM customers;
10. SELECT city, SUM(total_spent) AS total_spending FROM customers GROUP BY city HAVING SUM(total_spent) > 50000; 