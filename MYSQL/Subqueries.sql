-- 40. Profit > average Profit
SELECT * FROM bmw_sales WHERE Profit > (SELECT AVG(Profit) FROM bmw_sales);

-- 41. Units Sold > average Units Sold for their Region
SELECT b1.* FROM bmw_sales b1
WHERE b1.Units_Sold > (SELECT AVG(b2.Units_Sold) FROM bmw_sales b2 WHERE b2.Region = b1.Region);

-- 42. Model with highest total Profit
SELECT Model, SUM(Profit) AS Total_Profit FROM bmw_sales
GROUP BY Model ORDER BY Total_Profit DESC LIMIT 1;

-- 43. Regions where total Profit exceeds overall average Profit
SELECT Region, SUM(Profit) AS Total_Profit FROM bmw_sales
GROUP BY Region HAVING SUM(Profit) > (SELECT AVG(Profit) FROM bmw_sales);

-- 44. Units Sold in top 20%
WITH RankedSales AS (
    SELECT 
        *, 
        NTILE(5) OVER (ORDER BY Units_Sold DESC) as quintile
    FROM bmw_sales
)
SELECT * 
FROM RankedSales 
WHERE quintile = 1;