-- 34. Profit Margin
SELECT Model, Region, (Profit / (Price * Units_Sold)) * 100 AS Profit_Margin_Pct FROM bmw_sales;

-- 35. Difference between Price and Cost
SELECT Model, Region, (Price - Cost) AS Margin_Per_Unit FROM bmw_sales;

-- 36. Total Revenue per record
SELECT Model, Region, (Units_Sold * Price) AS Total_Revenue FROM bmw_sales;

-- 37. Total revenue per Model
SELECT Model, SUM(Units_Sold * Price) AS Total_Revenue FROM bmw_sales GROUP BY Model;