## Energy Consumption Analysis Project
# Project Title

#Energy Consumption & Revenue Analysis Dashboard

## 1. Project Overview

We worked on an energy company dataset to analyze:

Electricity consumption
Revenue generation
Customer payment behavior
Energy source performance
Regional consumption trends

The main goal of the project was to help the company:

Optimize energy distribution
Improve revenue collection
Identify high consuming regions
Monitor pending payments
Understand business trends

The project was completed using:

SQL → Data storage & analysis
Power BI → Dashboard & visualization

## 2. Business Problem

The company was facing challenges such as:

Difficulty tracking electricity consumption across regions
Revenue leakage due to pending payments
No centralized dashboard for decision making
Lack of visibility into customer payment patterns
Need to identify top consumers and profitable energy sources

The business wanted a dashboard that provides real-time insights for management decisions.

## 3. Dataset Information

We created a table called:

Energy_Consumption

The dataset contains:

Column Name	Description
customer_id	Unique customer ID
region	Customer region
energy_source	Type of energy used
consumption_kwh	Energy consumed
billing_amount	Bill generated
payment_status	Paid or Pending
bill_date	Billing date

The energy sources include:

Solar
Coal
Wind
Hydro

Regions include:

North
South
East
West

## 4. SQL Phase – Database Setup
Step 1: Table Creation

We created the database table using SQL.

CREATE TABLE Energy_Consumption (
 customer_id INT,
 region VARCHAR(20),
 energy_source VARCHAR(20),
 consumption_kwh FLOAT,
 billing_amount FLOAT,
 payment_status VARCHAR(20),
 bill_date DATE
);

Purpose:

To store customer electricity data in a structured format.
Step 2: Data Insertion

Inserted customer records into the table.

Example:

INSERT INTO Energy_Consumption VALUES
(101, 'South', 'Solar', 120, 1500, 'Paid', '2024-01-01');

Purpose:

To simulate real business data for analysis.

## 5. SQL Analysis Performed
A. Total Consumption

We calculated total electricity consumption.

SELECT SUM(consumption_kwh) AS Total_Consumption
FROM Energy_Consumption;

Business Use:

Helps company understand overall electricity demand.
B. Total Revenue
SELECT SUM(billing_amount) AS Total_Revenue
FROM Energy_Consumption;

Business Use:

Measures company earnings.
C. Consumption by Region
SELECT region,
SUM(consumption_kwh) AS Total_Consumption
FROM Energy_Consumption
GROUP BY region;

Business Use:

Identifies regions consuming maximum electricity.
D. Revenue by Energy Source
SELECT energy_source,
SUM(billing_amount) AS Revenue
FROM Energy_Consumption
GROUP BY energy_source;

Business Use:

Shows which energy source is most profitable.
E. Highest Consuming Region
SELECT region,
SUM(consumption_kwh) AS Total_Consumption
FROM Energy_Consumption
GROUP BY region
ORDER BY Total_Consumption DESC;

Business Use:

Helps plan energy distribution.
F. Pending Payments Count
SELECT COUNT(*) AS Pending_Count
FROM Energy_Consumption
WHERE payment_status='Pending';

Business Use:

Tracks unpaid customer bills.
G. Average Billing per Customer
SELECT AVG(billing_amount) AS Avg_Bill
FROM Energy_Consumption;

Business Use:

Understands average customer revenue.
H. Top 3 Customers by Consumption
SELECT TOP 3 customer_id,
consumption_kwh
FROM Energy_Consumption
ORDER BY consumption_kwh DESC;

Business Use:

Identifies heavy consumers.
I. Revenue Split by Payment Status
SELECT payment_status,
SUM(billing_amount) AS Revenue
FROM Energy_Consumption
GROUP BY payment_status;

Business Use:

Shows paid vs pending revenue.

## 6. Power BI Phase

After SQL analysis, the dataset was imported into Microsoft Power BI.

## 7. Data Connection

Connected SQL database to Power BI using:

Get Data
SQL Server Connection
Loaded Energy_Consumption table

Purpose:

To create interactive dashboards.

## 8. DAX Measures Created
Total Consumption
Total Consumption = SUM(Energy_Consumption[consumption_kwh])
Total Revenue
Total Revenue = SUM(Energy_Consumption[billing_amount])
Pending Payments
Pending Payments =
CALCULATE(
COUNT(Energy_Consumption[payment_status]),
Energy_Consumption[payment_status]="Pending"
)
Average Consumption
Avg Consumption =
AVERAGE(Energy_Consumption[consumption_kwh])

## 9. Dashboard Visualizations
KPI Cards

We created KPI cards for:

Total Consumption
Total Revenue
Pending Payments
Average Consumption

Purpose:

Gives quick business overview.
Bar Chart – Consumption by Region

Shows electricity usage across regions.

Insight:

Identifies high-demand areas.
Column Chart – Revenue by Energy Source

Shows revenue contribution of:

Solar
Coal
Wind
Hydro

Insight:

Helps identify profitable energy sources.
Pie Chart – Payment Status

Displays:

Paid customers
Pending customers

Insight:

Shows payment distribution.
Line Chart – Consumption Trend

Displays energy consumption over time using bill_date.

Insight:

Helps identify increasing/decreasing trends.

## 10. Filters/Slicers Used

We added slicers for:

Region
Energy Source
Payment Status

Purpose:

Enables interactive dashboard analysis.

## 11. Business Insights Generated
1. Highest Energy Consuming Region

The company can identify which region consumes the most electricity and allocate resources accordingly.

2. Most Profitable Energy Source

The dashboard helps determine which energy source generates maximum revenue.

3. Revenue Stuck in Pending Payments

The company can calculate unpaid revenue and improve collection strategies.

4. Customers for Payment Recovery

High-value pending customers can be targeted first.

5. Consumption Trend Analysis

Management can monitor whether electricity usage is increasing or decreasing over time.

## 12. Business Impact

This project helps the company:

Improve operational efficiency
Monitor customer payments
Increase profitability
Optimize energy distribution
Make data-driven decisions

## 13. Technologies Used
Tool	Purpose
SQL	Data storage & querying
Microsoft Power BI	Dashboard creation
DAX	Calculated measures
Data Visualization	Business insights

## 14. Final Conclusion

This project successfully transformed raw electricity consumption data into meaningful business insights using SQL and Power BI.

The dashboard enables management to:

Monitor energy consumption
Track revenue
Identify payment issues
Analyze regional performance
Improve business decision making

The solution is scalable and can be extended for real-time analytics in the energy sector.
