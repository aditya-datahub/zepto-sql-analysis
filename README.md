# ⚡ Zepto Quick-Commerce SQL Analysis

A data analysis project focused on **Zepto** operational data. We use **SQL** for cleaning, organizing, and analyzing the dataset to derive key business insights for the quick-commerce industry.

---

## 📁 Project Structure

| Path | Purpose |
| :--- | :--- |
| **`datasets/zepto_v2.csv`** | The raw operational dataset used for the analysis. |
| **`sql/01_zepto_data_preparation.sql`** | SQL scripts for initial setup, data quality checks, and cleaning. |
| **`sql/02_zepto_analysis_queries.sql`** | SQL queries for **Exploratory Data Analysis (EDA)** and calculating important business metrics. |
| `LICENSE` | Project licensing details. |

---

## 🧹 Data Preparation & Cleaning Highlights (`01_zepto_data_preparation.sql`)

This script demonstrates foundational data governance skills:

* **Schema & Table Creation:** Defining the table structure (`CREATE TABLE`) with appropriate data types for the raw data.
* **Unit Conversion:** Applying arithmetic operations (`/ 100.0`) to convert the price columns (`mrp`, `discountedSellingPrice`) from **paise to rupees** for consistency and accurate analysis.
* **Data Validation:** Identifying and **removing invalid records** where the discounted selling price or MRP was zero.
* **Data Integrity:** Checking the dataset for **NULL values** and addressing potential duplicates.

---

## 📈 Analysis & Insights Highlights (`02_zepto_analysis_queries.sql`)

This script focuses on extracting actionable business intelligence from the cleaned data:

* **Revenue Estimation:** Calculating the total estimated revenue generated per **product category**.
* **Value-for-Money Ranking:** Calculating the **price per gram** metric to standardize comparison across different products and identify best value.
* **Discount Strategy Evaluation:** Identifying the top product categories that are offering the **highest average discount percentage**.
* **Pricing Margin Assessment:** Filtering for products with **high MRP** but minimal discount to analyze potential high-margin items.
* **Inventory Segmentation:** Using **`CASE` statements** to categorize products into custom weight segments (e.g., Low, Medium, Bulk) for inventory management.

---

## 🛠️ Key Skills & Techniques

This project demonstrates core proficiency in the data analysis workflow using SQL:

* **Data Cleaning & Transformation**
* **Exploratory Data Analysis (EDA)**
* **Business Metric Calculation**
* **Foundational Querying** (GROUP BY, and Aggregate functions)
* **Conditional Logic** (using `CASE` statements for segmentation)

---

## 🚀 Getting Started

To run this analysis:

1.  **Load** the `datasets/zepto_v2.csv` file into your preferred SQL database.
2.  **Execute** the scripts in the `sql/` folder sequentially, starting with **`01_zepto_data_preparation.sql`**.

---
