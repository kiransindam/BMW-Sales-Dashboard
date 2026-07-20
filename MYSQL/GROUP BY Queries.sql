-- 18. Count sales by Region
SELECT Region, COUNT(*) AS Sales_Count FROM bmw_sales GROUP BY Region;

-- 19. Total Units Sold per Model
SELECT Model, SUM(Units_Sold) AS Total_Units FROM bmw_sales GROUP BY Model;

-- 20. Average Profit by Region
SELECT Region, AVG(Profit) AS Avg_Profit FROM bmw_sales GROUP BY Region;

-- 21. Total Profit for each Model
SELECT Model, SUM(Profit) AS Total_Profit FROM bmw_sales GROUP BY Model;

-- 22. Average Price and Cost grouped by Model
SELECT Model, AVG(Price) AS Avg_Price, AVG(Cost) AS Avg_Cost FROM bmw_sales GROUP BY Model;