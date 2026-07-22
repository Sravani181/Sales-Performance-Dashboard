CREATE DATABASE sales_dashboard;

USE sales_dashboard;

SELECT SUM(sales) AS Total_Sales
FROM sales;

SELECT SUM(profit) AS Total_Profit
FROM sales;

SELECT region,
SUM(sales)
FROM sales
GROUP BY region;

SELECT category,
SUM(profit)
FROM sales
GROUP BY category;

SELECT category,
SUM(sales)
FROM sales
GROUP BY category;

SELECT ship_mode,
SUM(sales)
FROM sales
GROUP BY ship_mode;

SELECT segment,
SUM(quantity)
FROM sales
GROUP BY segment;

SELECT city,
SUM(sales)
FROM sales
GROUP BY city
ORDER BY SUM(sales) DESC
LIMIT 10;