CREATE DATABASE supermarket_db;
USE supermarket_db;
SHOW DATABASES;
SELECT * FROM cleaned_supermarket_sales;

SELECT COUNT(*) AS Total_Records
FROM cleaned_supermarket_sales;

SELECT DISTINCT city
FROM cleaned_supermarket_sales;

SELECT city, SUM(sales) AS Total_Sales
FROM cleaned_supermarket_sales
GROUP BY city;

SELECT product_line, AVG(rating) AS Average_Rating
FROM cleaned_supermarket_sales
GROUP BY product_line;

SELECT payment, COUNT(*) AS Total_Customers
FROM cleaned_supermarket_sales
GROUP BY payment;

SELECT *
FROM cleaned_supermarket_sales
WHERE city='Yangon'
ORDER BY sales DESC
LIMIT 5;

SELECT AVG(rating) AS Average_Rating
FROM cleaned_supermarket_sales;
SELECT MAX(unit_price) AS Maximum_Price
FROM cleaned_supermarket_sales;
SELECT city, SUM(sales) AS Total_Sales
FROM cleaned_supermarket_sales
GROUP BY city
HAVING SUM(sales)>100000;
SELECT invoice_id, city, sales
FROM cleaned_supermarket_sales
ORDER BY sales DESC
LIMIT 5;
SELECT city, AVG(sales) AS Average_Sales
FROM cleaned_supermarket_sales
GROUP BY city;
SELECT product_line, SUM(sales) AS Total_Sales
FROM cleaned_supermarket_sales
GROUP BY product_line;
SELECT product_line, SUM(sales) AS Total_Sales
FROM cleaned_supermarket_sales
GROUP BY product_line;
SELECT payment, COUNT(*) AS Total_Transactions
FROM cleaned_supermarket_sales
GROUP BY payment;
SELECT product_line, AVG(rating) AS Average_Rating
FROM cleaned_supermarket_sales
GROUP BY product_line
ORDER BY Average_Rating DESC;
SELECT *
FROM cleaned_supermarket_sales
WHERE gender = 'Female';
SELECT *
FROM cleaned_supermarket_sales
WHERE payment = 'Cash';
SELECT branch, SUM(sales) AS Total_Sales
FROM cleaned_supermarket_sales
GROUP BY branch;
SELECT invoice_id, rating
FROM cleaned_supermarket_sales
ORDER BY rating DESC
LIMIT 10;