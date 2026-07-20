-- 69. Highest average Profit Margin (Model-Region)
SELECT Model, Region, AVG((Profit / (Price * Units_Sold)) * 100) AS Avg_Margin
FROM bmw_sales GROUP BY Model, Region ORDER BY Avg_Margin DESC LIMIT 1;

-- 70. Contribution of each Region to each Model's total Profit
SELECT Model, Region, SUM(Profit) AS Region_Profit,
(SUM(Profit) / SUM(SUM(Profit)) OVER(PARTITION BY Model)) * 100 AS Region_Contribution_Pct
FROM bmw_sales GROUP BY Model, Region;

-- 71. Underperforming regions for each Model
SELECT Model, Region, Region_Profit, Model_Avg_Profit
FROM (
    SELECT 
        Model, 
        Region, 
        SUM(Profit) AS Region_Profit,
        AVG(SUM(Profit)) OVER(PARTITION BY Model) AS Model_Avg_Profit
    FROM bmw_sales 
    GROUP BY Model, Region
) AS SubQuery
WHERE Region_Profit < Model_Avg_Profit;

-- 72. Pivot table (Units Sold, Models rows, Regions cols)
SELECT Model,
SUM(CASE WHEN Region = 'North' THEN Units_Sold ELSE 0 END) AS North,
SUM(CASE WHEN Region = 'East' THEN Units_Sold ELSE 0 END) AS East,
SUM(CASE WHEN Region = 'South' THEN Units_Sold ELSE 0 END) AS South,
SUM(CASE WHEN Region = 'West' THEN Units_Sold ELSE 0 END) AS West
FROM bmw_sales GROUP BY Model;

-- 73. Top 3 performing Model-Region (Weighted score: Units * Profit)
SELECT Model, Region, SUM(Units_Sold * Profit) AS Weighted_Score
FROM bmw_sales GROUP BY Model, Region ORDER BY Weighted_Score DESC LIMIT 3;

 
-- 74. What-if analysis (Price +10% for BMW 3 Series)
SELECT 
  SUM(CASE WHEN Model = 'BMW 3 Series' THEN Units_Sold * (Price * 1.10) - Cost ELSE Profit END) AS Scenario_Profit,
  SUM(Profit) AS Current_Profit,
  SUM(CASE WHEN Model = 'BMW 3 Series' THEN Units_Sold * (Price * 1.10) - Cost ELSE Profit END) - SUM(Profit) AS Profit_Increase
FROM bmw_sales;