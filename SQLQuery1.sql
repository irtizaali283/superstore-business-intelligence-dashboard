CREATE DATABASE SuperStoreDB;
--------------------------------------------------------------------------
USE SuperstoreDB;
--------------------------------------------------------------------------
--How many rows are in the table?
--------------------------------------------------------------------------
SELECT COUNT(*) AS total_rows
FROM dbo.superstore_sales;
--------------------------------------------------------------------------
--TOP 10 rows of the table
--------------------------------------------------------------------------
SELECT TOP 10 *
FROM dbo.superstore_sales;
--------------------------------------------------------------------------
--How much total sales did the company generate?
--------------------------------------------------------------------------
SELECT SUM(sales) AS total_sales
FROM dbo.superstore_sales;
--------------------------------------------------------------------------
--How much total profit did the company make overall?
--------------------------------------------------------------------------
SELECT SUM(profit) AS total_profit
FROM dbo.superstore_sales;
--------------------------------------------------------------------------
--How much revenue did the business make each month?
--------------------------------------------------------------------------
SELECT year_month,SUM(sales) AS monthly_revenue
FROM dbo.superstore_sales
GROUP BY year_month
ORDER BY year_month;
--------------------------------------------------------------------------
--Which products generated the most sales?
--------------------------------------------------------------------------
SELECT TOP 10
    product_name,
    SUM(sales) AS total_sales
FROM dbo.superstore_sales
GROUP BY product_name
ORDER BY total_sales DESC;
--------------------------------------------------------------------------
--Which customers generated the most sales?
--------------------------------------------------------------------------
SELECT TOP 10
    customer_name,
    SUM(sales) AS total_sales
FROM dbo.superstore_sales
GROUP BY customer_name
ORDER BY total_sales DESC;
--------------------------------------------------------------------------
--Which regions perform best in sales and profit?
--------------------------------------------------------------------------
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY region
ORDER BY total_sales DESC;
--------------------------------------------------------------------------
--Which category generates the most sales and profit?
--------------------------------------------------------------------------
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY category
ORDER BY total_sales DESC;
--------------------------------------------------------------------------
--How much profit and loss did the business generate?
--------------------------------------------------------------------------
SELECT
    profit_status,
    SUM(profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY profit_status;
--------------------------------------------------------------------------
--Are sales increasing or decreasing over the years?
--------------------------------------------------------------------------
SELECT
    order_year,
    SUM(sales) AS total_sales
FROM dbo.superstore_sales
GROUP BY order_year
ORDER BY order_year;
--------------------------------------------------------------------------
--Which sub-categories perform best in sales and profit?
--------------------------------------------------------------------------
SELECT
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY sub_category
ORDER BY total_sales DESC;
--------------------------------------------------------------------------
--Which discount levels generate sales, and which ones may reduce profit?
--------------------------------------------------------------------------
SELECT
    discount_band,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY discount_band
ORDER BY total_sales DESC;