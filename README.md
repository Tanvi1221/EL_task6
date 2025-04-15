# EL_task6
Sales Trend Analysis (MySQL)
This project performs a monthly sales trend analysis using SQL on a database containing orders and orderdetails tables. The goal is to calculate monthly revenue and order volume.
Tools Used: MySQL
Key Metrics:
Total revenue (SUM(quantityOrdered * priceEach))
Total order count (COUNT(DISTINCT orderNumber))
Grouping: By year and month using EXTRACT()

Data Source: E-commerce-style sales data
The SQL script joins both tables and groups the results by month to visualize sales performance over time.
