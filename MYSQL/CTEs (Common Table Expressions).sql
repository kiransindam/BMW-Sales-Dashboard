-- 54. Models with above-average total Profit
WITH ModelProfits AS (
    SELECT Model, SUM(Profit) AS Total_Profit FROM bmw_sales GROUP BY Model
),
AvgProfit AS (
    SELECT AVG(Total_Profit) AS Avg_Total_Profit FROM ModelProfits
)
SELECT mp.Model, mp.Total_Profit FROM ModelProfits mp, AvgProfit ap
WHERE mp.Total_Profit > ap.Avg_Total_Profit;

-- 55. Regional performance exceeding target (Assume target is 500,000)
WITH RegionalPerformance AS (
    SELECT Region, SUM(Profit) AS Total_Profit FROM bmw_sales GROUP BY Region
)
SELECT * FROM RegionalPerformance WHERE Total_Profit > 500000;

-- 56. Top 3 Models by Units Sold and market share
WITH ModelUnits AS (
    SELECT Model, SUM(Units_Sold) AS Total_Units FROM bmw_sales GROUP BY Model
),
TotalUnits AS (
    SELECT SUM(Total_Units) AS Grand_Total FROM ModelUnits
),
Top3 AS (
    SELECT Model, Total_Units FROM ModelUnits ORDER BY Total_Units DESC LIMIT 3
)
SELECT t3.Model, t3.Total_Units, (t3.Total_Units / tt.Grand_Total) * 100 AS Market_Share
FROM Top3 t3 CROSS JOIN TotalUnits tt;