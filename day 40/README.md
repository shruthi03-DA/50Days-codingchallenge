# Day 40 – SQL Case Study: Packaging Domain Analysis
# 📌 Project Overview
This project focuses on analyzing production, defects, and revenue performance in a packaging company. 
The goal is to extract meaningful business insights using SQL.

# 🗂️ Dataset Description
The project uses three tables:

## 1. products
Column Name	Data Type
product_id	INT
product_name	VARCHAR
category	VARCHAR
cost_per_unit	DECIMAL

## 2. production
Column Name	Data Type
production_id	INT
product_id	INT
production_date	DATE
quantity_produced	INT
defective_quantity	INT

## 3. sales
Column Name	Data Type
sale_id	INT
product_id	INT
sale_date	DATE
quantity_sold	INT
selling_price_per_unit	DECIMAL

## 🎯 Business Objectives
Analyze production efficiency
Identify defect trends
Evaluate revenue and profitability
Track inventory gaps

## 🧠 Key SQL Tasks & Insights
# ✅ Task 1: Defect Rate per Product
Calculated defect percentage for each product
Identified products with high defect rates
# ✅ Task 2: Top Performing Product (Revenue)
Determined highest revenue-generating product
# ✅ Task 3: Monthly Production Trend
Analyzed production trends over time
Useful for demand planning
# ✅ Task 4: Category-wise Profit
Compared revenue vs cost
Identified most profitable category
# ✅ Task 5: High Defect Days
Detected days where defect rate exceeded 5%
Helps in quality control monitoring
# ✅ Task 6: Running Total Revenue
Used window function to track cumulative revenue
Useful for growth analysis
# ✅ Task 7: Best Category by Profit Margin
Identified category with highest profitability ratio
# ✅ Task 8: Unsold Inventory
Found products where production exceeded sales
Helps in inventory management

# ⚙️ SQL Concepts Used
Joins (INNER JOIN, LEFT JOIN)
Aggregations (SUM, GROUP BY)
Window Functions (OVER)
Conditional Filtering (WHERE, HAVING)
Date Functions
NULL Handling (COALESCE)

# 📊 Key Insights
Some products show consistently higher defect rates → need quality improvement
Revenue is concentrated in a few top-performing products
Certain categories have better profit margins than others
Unsold inventory highlights potential overproduction

# 🚀 How to Run
Create tables using provided schema
Insert sample data
Execute SQL queries task-wise
Validate outputs

# 📁 Project Structure
Day40-Packaging-SQL/
│
├── dataset.sql
├── queries.sql
├── README.md

# 💼 Use Case
This project simulates a real-world data analyst scenario, demonstrating:
Business problem solving
Data-driven decision making
SQL proficiency for analytics roles
