
-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
Select Sum(Sale_Price) AS total_revenue
From [PC_Sales].[dbo].[pc_dataset];

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
Select SUM(Sale_Price - Cost_Price)AS Total_Profit
From [PC_Sales].[dbo].[pc_dataset];

-- 13. Find the average Discount Amount.
Select AVG(Discount_Amount)AS average_discount_amount
From [PC_Sales].[dbo].[pc_dataset];

-- 14. Calculate total Finance Amount issued.
Select SUM(Finance_Amount)AS Total_Finance_Amount
From  [PC_Sales].[dbo].[pc_dataset];


-- 15. Find total revenue per PC Make.
Select Pc_make, 
     Sum(Sale_Price)AS Total_revenue
From [PC_Sales].[dbo].[pc_dataset]
Group By PC_Make;

-- 16. Find average Sale Price per Storage Type.
Select Storage_Type,
      AVG(Sale_Price)Average_sale_price
From [PC_Sales].[dbo].[pc_dataset]
Group By Storage_Type;

-- 17. Calculate total revenue per Shop Name.
Select Shop_Name ,
     Sum(Sale_Price)AS  Total_Revenue
From [PC_Sales].[dbo].[pc_dataset]
Group By Shop_Name;

-- 18. Calculate total revenue per Sales Person Name.
Select Sales_Person_Name,
      SUM(Sale_Price)AS total_revenue
From [PC_Sales].[dbo].[pc_dataset]
Group By Sales_Person_Name;

-- 19. Find average Credit Score per Payment Method.
Select Payment_Method,
      AVG(Credit_Score)AS Average_Credit_Score
From [PC_Sales].[dbo].[pc_dataset]
Group By Payment_Method;

-- 20. Calculate total Cost of Repairs per Sales Person Department.
Select Sales_Person_Department,
     SUM(Cost_of_Repairs)AS total_cost_of_repairs
From  [PC_Sales].[dbo].[pc_dataset]
Group By Sales_Person_Department;

