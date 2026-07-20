-- 23. Models where total Units Sold > 50
SELECT Model, SUM(Units_Sold) AS Total_Units FROM bmw_sales GROUP BY Model HAVING SUM(Units_Sold) > 50;

-- 24. Regions where average Profit > 100000
SELECT Region, AVG(Profit) AS Avg_Profit FROM bmw_sales GROUP BY Region HAVING AVG(Profit) > 100000;

-- 25. Models where count of sales > 3
SELECT Model, COUNT(*) AS Sale_Count FROM bmw_sales GROUP BY Model HAVING COUNT(*) > 3;