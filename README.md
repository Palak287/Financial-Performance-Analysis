# Financial Performance Analysis

An end-to-end Data Analytics project focused on analyzing financial performance across regions, countries, products, sales channels, order priorities, and time periods using **Python, MySQL, and Power BI**.

---

## 📌 Project Overview

This project analyzes a financial sales dataset to understand business performance across different dimensions such as revenue, cost, profit, products, regions, countries, sales channels, and time periods.

The project follows a complete data analytics workflow:

**Data Inspection → Data Cleaning → Exploratory Data Analysis → SQL Business Analysis → Power BI Dashboard → Business Insights**

The goal is to transform raw transactional data into meaningful business insights that can support data-driven decision-making.

---

## 🎯 Business Objectives

The main objectives of this project are:

- Analyze overall revenue, cost, and profit
- Calculate overall profit margin
- Compare financial performance across regions
- Analyze product/item-type performance
- Identify high-revenue and high-profit products
- Compare Online and Offline sales channels
- Analyze country-level revenue and profitability
- Analyze order priority performance
- Identify yearly and monthly financial trends
- Identify high-value orders
- Identify products with low profit margins
- Build an interactive Power BI dashboard for business reporting

---

# 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **Python** | Data inspection, cleaning and EDA |
| **Pandas** | Data manipulation and analysis |
| **MySQL** | SQL-based business analysis |
| **Power BI** | Interactive dashboard and visualization |
| **DAX** | KPI and profit margin calculations |
| **VS Code** | Project development and management |
| **GitHub** | Project documentation and version control |

---

# 📊 Dataset

The dataset contains financial sales transactions with information related to regions, countries, products, sales channels, orders, revenue, costs, and profit.

### Dataset Size

- **Rows:** 100
- **Columns:** 14
- **Missing Values After Cleaning:** 0
- **Duplicate Rows After Cleaning:** 0

### Dataset Columns

- Region
- Country
- Item Type
- Sales Channel
- Order Priority
- Order Date
- Order ID
- Ship Date
- Units Sold
- Unit Price
- Unit Cost
- Total Revenue
- Total Cost
- Total Profit

---

# 📂 Project Structure

```text
Financial-Performance-Analysis/
│
├── python/
│   ├── 01_data_inspection.py
│   ├── 02_data_cleaning.py
│   └── 03_eda.py
│
├── sql/
│   └── 01_financial_analysis.sql
│
├── screenshots/
│   ├── Executive_Financial_Overview.png
│   ├── Profitability_Products.png
│   └── Regional_Sales_Analysis.png
│
├── financial_sales.csv
├── financial_sales_cleaned.csv
├── region_financial_analysis.csv
├── item_type_financial_analysis.csv
├── sales_channel_analysis.csv
├── Financial_Performance_Analysis.pbix
└── README.md