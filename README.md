# ⚡ Zepto Quick-Commerce SQL Analysis

A data analysis project focused on **Zepto** operational data. We use **SQL** for cleaning, organizing, and analyzing the dataset to derive key business insights for the quick-commerce industry.

---

## 📁 Project Structure

| Path | Focus |
| :--- | :--- |
| **`datasets/zepto_v2.csv`** | Raw quick-commerce inventory data. |
| **`sql/01_zepto_data_preparation.sql`** | **Data Cleaning:** Schema setup, data quality checks, and unit conversion. |
| **`sql/02_zepto_analysis_queries.sql`** | **EDA:** Calculating key metrics, value ranking, and strategic insights. |
| `LICENSE` | Project license. |

---

## 📈 Key Insights & Analysis Highlights

This project addresses crucial business questions by segmenting the data and calculating specific metrics:

### **Data Preparation Focus** (`01_zepto_data_preparation.sql`)
* **Unit Conversion:** Crucial transformation to convert all price fields (**paise to rupees**) for accurate financial analysis.
* **Data Integrity:** Identifying and correcting/removing invalid entries (e.g., zero prices) and checking for data quality issues.

### **Analysis & Strategy Focus** (`02_zepto_analysis_queries.sql`)
* **Value Assessment:** Calculated **Price per Gram** to standardize product value and identify best-value items.
* **Revenue & Discounts:** Estimated total revenue per category and determined the highest average discount percentage offered.
* **Inventory Segmentation:** Used **`CASE` statements** to categorize products (e.g., Low, Medium, Bulk) for optimized inventory planning.

---

## 🛠️ Core Skills Demonstrated

This project showcases core proficiency in the data analysis workflow using SQL:

* **Data Preparation & Transformation:** **Standardizing** data integrity, including crucial **unit conversion** (paise to rupees).
* **Foundational Querying:** Writing efficient SQL using **`GROUP BY`** and **Aggregate Functions** to summarize large datasets.
* **Business Metric Calculation:** **Calculating key performance indicators (KPIs)** like estimated revenue, **price per gram** efficiency, and discount averages.
* **Conditional Logic:** Employing **`CASE` statements** for data segmentation and custom reporting.

---

## 🚀 Getting Started

To replicate this analysis:

1.  **Setup:** Import the `datasets/zepto_v2.csv` file into your SQL database environment (e.g., MySQL, PostgreSQL).
2.  **Run Scripts:** Execute the SQL scripts in numerical order:
    - Start with `sql/01_zepto_data_preparation.sql` to clean and transform the data.
    - Then run `sql/02_zepto_analysis_queries.sql` to generate the insights.

---
