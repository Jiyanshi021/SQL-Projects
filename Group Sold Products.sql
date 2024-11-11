-- PROBLEM STATEMENT
--  The goal is to group the products that were sold on each date and calculate 
-- the total number of products sold on that date

CREATE DATABASE Mandi;
USE Mandi;

CREATE TABLE Activities(
	sell_date DATE , 
    product VARCHAR(50)
);

INSERT INTO Activities (sell_date , product) VALUES
	('2020-05-30', 'Apples'),
    ('2020-06-01', 'Milk'),
    ('2020-06-02', 'Bread'),
    ('2020-05-30', 'Bananas'),
    ('2020-06-01', 'Cereal'),
    ('2020-06-02', 'Bread'),
    ('2020-05-30', 'Oranges');
    
SELECT 
	sell_date , 
    COUNT(*) AS num_sold , 
    GROUP_CONCAT(DISTINCT product ORDER BY product ASC ) as products 
    
FROM 
	Activities 
GROUP BY 
	sell_date 
ORDER BY 
	sell_date ;