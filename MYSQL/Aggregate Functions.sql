-- 13. Count total records
SELECT COUNT(*) AS Total_Records FROM bmw_sales;

-- 14. Total Units Sold
SELECT SUM(Units_Sold) AS Total_Units_Sold FROM bmw_sales;

-- 15. Average Price
SELECT AVG(Price) AS Average_Price FROM bmw_sales;

-- 16. Max Profit
SELECT MAX(Profit) AS Max_Profit FROM bmw_sales;

-- 17. Min Cost
SELECT MIN(Cost) AS Min_Cost FROM bmw_sales;