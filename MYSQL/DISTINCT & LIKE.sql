-- 30. Unique Models
SELECT DISTINCT Model FROM bmw_sales;

-- 31. Unique Regions
SELECT DISTINCT Region FROM bmw_sales;

-- 32. Models containing 'Series'
SELECT DISTINCT Model FROM bmw_sales WHERE Model LIKE '%Series%';

-- 33. Models starting with 'BMW 3'
SELECT DISTINCT Model FROM bmw_sales WHERE Model LIKE 'BMW 3%';