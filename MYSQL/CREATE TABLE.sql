CREATE TABLE bmw_sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Model VARCHAR(50),
    Region VARCHAR(20),
    Units_Sold INT,
    Price DECIMAL(10,2),
    Cost DECIMAL(10,2),
    Profit DECIMAL(10,2)
);