# Advanced Data Analytics using SQL

## 📌 Project Overview
This project demonstrates advanced SQL data analytics techniques used to extract insights from business data.
The focus is on **analytical thinking**, **query optimization**, and **decision-oriented metrics**, not just writing queries.

---

# Advanced Data Analytics: SQL Performance & Behavior Report
This project demonstrates advanced SQL techniques to extract deep business insights from sales and customer data.
It focuses on performance tracking, customer segmentation, and complex aggregations.

## 🚀 Key Features & SQL Techniques
- **Window Functions:** Used for calculating running totals, month-over-month growth, and performance rankings.
- **Nested CTEs:** Structured for modular, readable, and efficient query execution.
- **Advanced Aggregation:** Segmenting products and customers into high/low performing tiers.
- **KPI Calculation:** Deriving metrics like Recency, Average Order Revenue (AOR), and Customer Lifespan.

---

## 🎯 Objectives
- Analyze sales performance over time
- Track running totals and growth trends
- Compare yearly product performance
- Identify top contributing categories
- Segment customers based on spending behavior and time period
- Build a consolidated product performance report

---

## 🛠 SQL Concepts Used
- Aggregation functions (SUM, COUNT, AVG,MIN,MAX)
- GROUP BY & HAVING
- Row level functions (DATEDIFF,CAST,NULLIF,COALESCE,ROUND,CANCAT,DATETRUNC)
- Window Functions (ROW_NUMBER, RANK, LAG, RUNNING TOTAL)
- Subqueries
- Common Table Expressions (CTE)
- Nested CTEs
- Conditional logic (CASE WHEN)

---

## 📁 SQL Queries
All SQL analyses are available as executable `.sql` files inside the `sql/` directory.
Each file is documented with business objectives and SQL techniques used.
## 🧠 Analysis Overview

| Analysis | SQL File |
|--------|---------|
| Monthly Sales & Running Total | [01_monthly_sales_running_total.sql](01_Monthly_sales_running_total.sql) |
|  Yearly Product Performance   | [02_yearly_product_performance.sql](02_Yearly_product_performance_analysis.sql) |
|     Category Contribution     | [03_category_contribution.sql](03_Category_contribution.sql) |
|     Customer Segmentation     | [04_customer_segmentation.sql](04_Customer_Segmentation.sql) |
|     Product Report (CTE)      | [05_product_report_cte.sql](05_Customers_product_report.sql) |
|     Sales Trend & Growth      | [06_sales_trend_growth.sql](06_Sales_trend_growth_report.sql) |


Visual screenshots of queries are also available in Project Highlights for quick reference.

## 📊 Project Highlights

### 1️⃣ Monthly Sales & Running Total
- Calculates total sales per month
- Computes cumulative sales over time using window functions
<img width="1459" height="581" alt="cumulative_analysis" src="https://github.com/user-attachments/assets/098dddbb-38bb-4a8f-aa3d-aa9a7019a0c9" />


### 2️⃣ Yearly Product Performance Analysis
- Compares yearly sales against:
  - Product’s average sales
  - Previous year’s performance
- Helps identify growth or decline trends
- <img width="1895" height="806" alt="Performance_analysis" src="https://github.com/user-attachments/assets/78a56a3b-a3a1-4efa-84b6-d69e9c06ffef" />


### 3️⃣ Category Contribution Analysis
- Determines which product categories contribute the most to overall revenue
- <img width="1463" height="493" alt="part-to-whole analysis" src="https://github.com/user-attachments/assets/3b98a0ae-d5a7-4dd4-9019-ac33ef345972" />


### 4️⃣ Customer Segmentation
Customers are grouped based on history and spending:
- **VIP**: ≥ 12 months history & spending > €5,000
- **Regular**: ≥ 12 months history & spending ≤ €5,000
- **New**: < 12 months customer lifespan
- <img width="1458" height="702" alt="data_segmentation" src="https://github.com/user-attachments/assets/afe502e6-83ee-477a-81bd-27d02682ed52" />


### 5️⃣ Product Performance Report (NESTED CTE-based)
Generates a consolidated report including:
- Total orders
- Total sales
- Quantity sold
- Unique customers
- Product lifespan
- KPIs:
  - Recency
  - Average Order Revenue (AOR)
  - Average Monthly Revenue
  - ![Customer report](https://github.com/user-attachments/assets/f28a0f00-ecd2-493a-8546-e619bec7d007)


 ### 6️⃣ Sales Trend & Growth Analysis (Window Function–Driven)
Analyzes sales momentum over time to identify growth patterns and performance shifts.
- Segment products by revenue to identify High-Performs,Mid-range,or Low-Performers
- Calculates month-over-month (MoM) sales growth
- Growth months
- Decline periods
- Stable performance trends
- Helps understand seasonality and long-term business direction
   - Recency (months since last date)
   - average order revenue (AOR)
   - average monthly revenue
   - <img width="1461" height="806" alt="Projrct report" src="https://github.com/user-attachments/assets/0baeb3e1-f3a5-4477-aba4-1041b98408d7" />

📌 Business Value:
Supports forecasting, strategic planning, and early detection of performance drops.

---

## 📂 Database CSV Files
- [dim_customers.csv](dim_customers.csv ) 
- [dim_products.csv](dim_products.csv ) 
- [fact_sales.csv](fact_sales.csv ) 
---

## 🚀 Why This Project Matters
This project reflects **real-world analytical thinking**, where SQL is used to:
- Answer business questions
- Measure performance
- Support decision-making

It goes beyond basic CRUD queries and focuses on **analytics-driven SQL**.

---

## 👨‍💻 Author
**Manraj Singh**  
BCA (1st Year) | Aspiring Data Analyst  
Skills: SQL, Python, Excel, Statistics, Power BI
# Sql_Data_Analyst_Portfolio_Project
