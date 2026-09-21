-- ============================================================
-- FINANCIAL PERFORMANCE ANALYSIS
-- SQL BUSINESS ANALYSIS
-- ============================================================

USE financial_performance;


-- 01. View complete dataset
SELECT *
FROM financial_sales_cleaned;


-- 02. Total Revenue
SELECT
    ROUND(SUM(`Total Revenue`), 2) AS Total_Revenue
FROM financial_sales_cleaned;


-- 03. Total Cost
SELECT
    ROUND(SUM(`Total Cost`), 2) AS Total_Cost
FROM financial_sales_cleaned;


-- 04. Total Profit
SELECT
    ROUND(SUM(`Total Profit`), 2) AS Total_Profit
FROM financial_sales_cleaned;


-- 05. Overall Profit Margin
SELECT
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned;


-- 06. Total Units Sold
SELECT
    SUM(`Units Sold`) AS Total_Units_Sold
FROM financial_sales_cleaned;


-- 07. Financial Performance by Region
SELECT
    Region,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue,
    ROUND(SUM(`Total Cost`), 2) AS Cost,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY Region
ORDER BY Profit DESC;


-- 08. Profit Margin by Region
SELECT
    Region,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY Region
ORDER BY Profit_Margin_Percentage DESC;


-- 09. Performance by Item Type
SELECT
    `Item Type`,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue,
    ROUND(SUM(`Total Cost`), 2) AS Cost,
    ROUND(SUM(`Total Profit`), 2) AS Profit,
    SUM(`Units Sold`) AS Units_Sold
FROM financial_sales_cleaned
GROUP BY `Item Type`
ORDER BY Profit DESC;


-- 10. Profit Margin by Item Type
SELECT
    `Item Type`,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY `Item Type`
ORDER BY Profit_Margin_Percentage DESC;


-- 11. Performance by Sales Channel
SELECT
    `Sales Channel`,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue,
    ROUND(SUM(`Total Cost`), 2) AS Cost,
    ROUND(SUM(`Total Profit`), 2) AS Profit,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY `Sales Channel`
ORDER BY Profit DESC;


-- 12. Top 5 Countries by Profit
SELECT
    Country,
    ROUND(SUM(`Total Profit`), 2) AS Total_Profit
FROM financial_sales_cleaned
GROUP BY Country
ORDER BY Total_Profit DESC
LIMIT 5;


-- 13. Bottom 5 Countries by Profit
SELECT
    Country,
    ROUND(SUM(`Total Profit`), 2) AS Total_Profit
FROM financial_sales_cleaned
GROUP BY Country
ORDER BY Total_Profit ASC
LIMIT 5;


-- 14. Top 5 Countries by Revenue
SELECT
    Country,
    ROUND(SUM(`Total Revenue`), 2) AS Total_Revenue
FROM financial_sales_cleaned
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 5;


-- 15. Revenue and Profit by Order Priority
SELECT
    `Order Priority`,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY `Order Priority`
ORDER BY Profit DESC;


-- 16. Profit Margin by Order Priority
SELECT
    `Order Priority`,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY `Order Priority`
ORDER BY Profit_Margin_Percentage DESC;


-- 17. Year-wise Revenue
SELECT
    YEAR(`Order Date`) AS Order_Year,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;


-- 18. Year-wise Profit
SELECT
    YEAR(`Order Date`) AS Order_Year,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;


-- 19. Year-wise Revenue, Cost and Profit
SELECT
    YEAR(`Order Date`) AS Order_Year,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue,
    ROUND(SUM(`Total Cost`), 2) AS Cost,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;


-- 20. Year-wise Profit Margin
SELECT
    YEAR(`Order Date`) AS Order_Year,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;


-- 21. Monthly Revenue
SELECT
    YEAR(`Order Date`) AS Order_Year,
    MONTH(`Order Date`) AS Order_Month,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Order_Year, Order_Month;


-- 22. Monthly Profit
SELECT
    YEAR(`Order Date`) AS Order_Year,
    MONTH(`Order Date`) AS Order_Month,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Order_Year, Order_Month;


-- 23. Average Revenue per Order
SELECT
    ROUND(AVG(`Total Revenue`), 2) AS Average_Revenue_Per_Order
FROM financial_sales_cleaned;


-- 24. Average Profit per Order
SELECT
    ROUND(AVG(`Total Profit`), 2) AS Average_Profit_Per_Order
FROM financial_sales_cleaned;


-- 25. Average Units Sold per Order
SELECT
    ROUND(AVG(`Units Sold`), 2) AS Average_Units_Sold
FROM financial_sales_cleaned;


-- 26. Top 10 Orders by Revenue
SELECT
    `Order ID`,
    Country,
    `Item Type`,
    ROUND(`Total Revenue`, 2) AS Revenue,
    ROUND(`Total Profit`, 2) AS Profit
FROM financial_sales_cleaned
ORDER BY `Total Revenue` DESC
LIMIT 10;


-- 27. Top 10 Orders by Profit
SELECT
    `Order ID`,
    Country,
    `Item Type`,
    ROUND(`Total Revenue`, 2) AS Revenue,
    ROUND(`Total Profit`, 2) AS Profit
FROM financial_sales_cleaned
ORDER BY `Total Profit` DESC
LIMIT 10;


-- 28. Highest Revenue Item Type
SELECT
    `Item Type`,
    ROUND(SUM(`Total Revenue`), 2) AS Revenue
FROM financial_sales_cleaned
GROUP BY `Item Type`
ORDER BY Revenue DESC
LIMIT 1;


-- 29. Highest Profit Item Type
SELECT
    `Item Type`,
    ROUND(SUM(`Total Profit`), 2) AS Profit
FROM financial_sales_cleaned
GROUP BY `Item Type`
ORDER BY Profit DESC
LIMIT 1;


-- 30. Lowest Profit Margin Item Type
SELECT
    `Item Type`,
    ROUND(
        SUM(`Total Profit`) / SUM(`Total Revenue`) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_sales_cleaned
GROUP BY `Item Type`
ORDER BY Profit_Margin_Percentage ASC
LIMIT 1;
