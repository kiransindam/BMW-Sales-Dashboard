-- 45. Categorize sale (High/Medium/Low)
SELECT Model, Region, Profit,
CASE
    WHEN Profit > 100000 THEN 'High'
    WHEN Profit BETWEEN 50000 AND 100000 THEN 'Medium'
    ELSE 'Low'
END AS Profit_Category FROM bmw_sales;

-- 46. Performance rating
SELECT Model, Units_Sold,
CASE
    WHEN Units_Sold >= 15 THEN 'Excellent'
    WHEN Units_Sold >= 10 THEN 'Good'
    WHEN Units_Sold >= 5 THEN 'Average'
    ELSE 'Poor'
END AS Performance_Rating FROM bmw_sales;

-- 47. Calculate bonus
SELECT Model, Profit,
CASE
    WHEN Profit > 100000 THEN Profit * 0.10
    ELSE Profit * 0.05
END AS Bonus FROM bmw_sales;