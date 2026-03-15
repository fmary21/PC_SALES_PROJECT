-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
SELECT COUNT(*) AS TOTAL_SALES_RECORDS
FROM [PC_Sales].[dbo].[pc_dataset]

-- 2. Count the number of sales per Continent.
Select continent ,Count(*)AS Number_of_sales
From [PC_Sales].[dbo].[pc_dataset]
Group By Continent;

-- 3. Count the number of sales per Country or State.
Select Country_or_State,
      COUNT (*)As number_of_sales
From [PC_Sales].[dbo].[pc_dataset]
Group By Country_or_State;

-- 4. List all distinct Shop Name values.
Select Distinct Shop_Name
From [PC_Sales].[dbo].[pc_dataset];

-- 5. Find the average Sale Price.
Select AVG (Sale_price) AS average_sale_price
From [PC_Sales].[dbo].[pc_dataset];

-- 6. Find the highest and lowest Sale Price.
Select Min(Sale_Price)As Lowest_Sale_price, 
       MAX (Sale_price)AS highest_sale_price
From  [PC_Sales].[dbo].[pc_dataset];


-- 7. Count the number of sales by Payment Method.
Select Payment_Method,
       Count (*)As Number_of_sales
From  [PC_Sales].[dbo].[pc_dataset]
Group By Payment_Method;

-- 8. Count the number of sales by Channel (Online vs Offline).
Select Channel,
       Count(*)AS number_of_sales
From [PC_Sales].[dbo].[pc_dataset]
Group By Channel;

-- 9. Count the number of sales by Priority level.
Select Priority,
      COUNT(*)AS Number_of_sales
From [PC_Sales].[dbo].[pc_dataset]
Group By Priority;

-- 10. Count the number of distinct PC Make values.
Select Distinct PC_Make
From PC_Sales.dbo.pc_dataset;
