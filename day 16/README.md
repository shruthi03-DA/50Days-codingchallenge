# Customer Segmentation using SQL
Project Overview
This project demonstrates how to analyze customer data and segment them based on their spending behavior using basic SQL concepts.

# We use simple SQL clauses like:
SELECT
WHERE
GROUP BY
ORDER BY
CASE
HAVING
Dataset Details

# Key SQL Queries
1. Filter Customers
SELECT * FROM customers WHERE city = 'Bangalore';
SELECT * FROM customers WHERE total_spent > 20000;
SELECT * FROM customers WHERE age BETWEEN 25 AND 35;
2. Sorting & Aggregation
SELECT * FROM customers ORDER BY total_spent DESC;

SELECT SUM(total_spent) AS total_revenue FROM customers;

SELECT AVG(total_spent) AS avg_spending FROM customers;
3. Grouping
SELECT city, SUM(total_spent) AS total_spending
FROM customers
GROUP BY city;

SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;
4. Customer Segmentation
SELECT 
    CASE 
        WHEN total_spent > 50000 THEN 'High Value'
        WHEN total_spent BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment;
5. Average Spending per Customer
SELECT 
    customer_id,
    customer_name,
    (total_spent / number_of_orders) AS avg_spending_per_customer
FROM customers;
6. HAVING Clause
SELECT city, SUM(total_spent) AS total_spending
FROM customers
GROUP BY city
HAVING SUM(total_spent) > 50000;

# Insights
Identified high, medium, and low value customers
Compared spending across cities
Calculated per-customer spending behavior
Used aggregation and filtering for business insights

# Conclusion
This project helps understand how SQL can be used for:

# Data analysis
Customer segmentation
Business decision making
Future Improvements
Add more customer data
Create dashboards using Power BI
Perform advanced segmentation (RFM Analysis)
