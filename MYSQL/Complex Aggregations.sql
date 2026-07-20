-- 57. Percentage of total Profit by Model
SELECT Model, SUM(Profit) AS Model_Profit,
(SUM(Profit) / (SELECT SUM(Profit) FROM bmw_sales)) * 100 AS Profit_Percentage
FROM bmw_sales GROUP BY Model;

-- 58. Highest profit margin per Region
SELECT Region, Model, (SUM(Profit) / SUM(Price * Units_Sold)) * 100 AS Profit_Margin
FROM bmw_sales GROUP BY Region, Model ORDER BY Region, Profit_Margin DESC;

-- 59. Cumulative Profit by Region ordered alphabetically
SELECT Region, SUM(Profit) AS Region_Profit,
SUM(SUM(Profit)) OVER(ORDER BY Region) AS Cumulative_Profit
FROM bmw_sales GROUP BY Region;

-- 60. Variance and standard deviation of Profit
SELECT VARIANCE(Profit) AS Profit_Variance, STDDEV(Profit) AS Profit_StdDev FROM bmw_sales;