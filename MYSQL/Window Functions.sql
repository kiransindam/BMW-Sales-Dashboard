-- 48. Rank sales by Profit within Region
SELECT Model, Region, Profit,
RANK() OVER(PARTITION BY Region ORDER BY Profit DESC) as Profit_Rank FROM bmw_sales;

-- 49. Running total of Units Sold ordered by Model
SELECT Model, Units_Sold,
SUM(Units_Sold) OVER(ORDER BY Model) as Running_Total_Units FROM bmw_sales;

-- 50. Difference between sale's Profit and average Profit of its Model
SELECT Model, Profit,
Profit - AVG(Profit) OVER(PARTITION BY Model) as Profit_Diff_From_Model_Avg FROM bmw_sales;

-- 51. Row numbers within Region ordered by Profit DESC
SELECT Model, Region, Profit,
ROW_NUMBER() OVER(PARTITION BY Region ORDER BY Profit DESC) as Row_Num FROM bmw_sales;

-- 52. Moving average of Profit (3-row window) ordered by Model
SELECT Model, Profit,
AVG(Profit) OVER(ORDER BY Model ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) as Moving_Avg_Profit FROM bmw_sales;

-- 53. Previous and next Profit values (LAG/LEAD)
SELECT Model, Profit,
LAG(Profit, 1) OVER(ORDER BY Model) as Prev_Profit,
LEAD(Profit, 1) OVER(ORDER BY Model) as Next_Profit FROM bmw_sales;