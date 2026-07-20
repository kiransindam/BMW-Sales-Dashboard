-- 61. Models in all 4 Regions
SELECT Model FROM bmw_sales GROUP BY Model HAVING COUNT(DISTINCT Region) = 4;

-- 62. Regions where BMW 3 Series > BMW X3 total Profit
SELECT Region FROM bmw_sales WHERE Model IN ('BMW 3 Series', 'BMW X3')
GROUP BY Region
HAVING SUM(CASE WHEN Model = 'BMW 3 Series' THEN Profit ELSE 0 END) >
       SUM(CASE WHEN Model = 'BMW X3' THEN Profit ELSE 0 END);

-- 63. Top-selling Model in each Region
SELECT Region, Model, Total_Units FROM (
    SELECT Region, Model, SUM(Units_Sold) AS Total_Units,
    RANK() OVER(PARTITION BY Region ORDER BY SUM(Units_Sold) DESC) as rnk
    FROM bmw_sales GROUP BY Region, Model
) ranked WHERE rnk = 1;


