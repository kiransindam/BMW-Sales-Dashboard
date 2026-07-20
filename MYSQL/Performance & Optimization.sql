-- 64. Create index
CREATE INDEX idx_model_region ON bmw_sales(Model, Region);

-- 65. Find duplicate records
SELECT Model, Region, Units_Sold, COUNT(*) as count
FROM bmw_sales GROUP BY Model, Region, Units_Sold HAVING COUNT(*) > 1;

-- 66. Create a view
CREATE VIEW vw_model_region_revenue AS
SELECT Model, Region, SUM(Units_Sold * Price) AS Total_Revenue
FROM bmw_sales GROUP BY Model, Region;