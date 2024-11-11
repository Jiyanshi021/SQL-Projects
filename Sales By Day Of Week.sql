CREATE DATABASE SalesByDay ;
USE SalesByDay ;

CREATE TABLE SalesData (
	TransactionID INT , 
    PurchaseDate DATE , 
    Amount DECIMAL(10,2)
);

INSERT INTO SalesData (TransactionID , PurchaseDate , Amount) VALUES
	(1, '2023-08-14', 50.00),
    (2, '2023-08-15', 75.00),
    (3, '2023-08-15', 60.00),
    (4, '2023-08-16', 45.00),
    (5, '2023-08-16', 55.00),
    (6, '2023-08-17', 90.00),
    (7, '2023-08-17', 70.00),
    (8, '2023-08-17', 120.00),
    (9, '2023-08-18', 65.00),
    (10, '2023-08-18', 85.00);
    
SELECT 
	DAYNAME(PurchaseDate) AS DayOfWeek , 
    SUM(Amount) AS TotalSales 
FROM
	SalesData
GROUP BY 
	DAYOFWEEK(PurchaseDate) , DAYNAME(PurchaseDate)
ORDER BY 
	DAYOFWEEK(PurchaseDate);
	

    
	

