create database sales


use sales


-- Retrieve all sales records
select * from supermarket_sales


-- Calculate the total sales amount
SELECT SUM(Total) AS TotalSales 
FROM supermarket_sales


-- Calculate the total number of sales transactions
SELECT COUNT(Invoice_ID) AS TotalTransactions 
FROM supermarket_sales


-- Find the average sales amount per transaction
SELECT AVG(Total) AS AverageTransactionValue
FROM supermarket_sales


-- Calculate the total sales amount by branch
SELECT Branch, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Branch;


-- Find the top-selling product line
SELECT TOP 1 Product_line, SUM(Quantity) AS TotalQuantity
FROM supermarket_sales
GROUP BY Product_line
ORDER BY TotalQuantity DESC


-- Calculate the total sales amount by city
SELECT City, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY City;


-- Find the average rating of each product line
SELECT Product_line, AVG(Rating) AS AverageRating
FROM supermarket_sales
GROUP BY Product_line;


-- Calculate the total sales by payment method
SELECT Payment, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Payment;


-- Find the total sales amount by customer type
SELECT Customer_type, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Customer_type;


-- Calculate the total sales by gender
SELECT Gender, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Gender;


-- Find the date with the highest sales
SELECT TOP 1 Date, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Date
ORDER BY TotalSales DESC


-- Calculate the monthly sales for a given year
SELECT MONTH(Date) AS Months, SUM(Total) AS MonthlySales
FROM Supermarket_sales
GROUP BY MONTH(date)
ORDER BY Months;


-- Find the total cost of goods sold (COGS) by branch
SELECT Branch, SUM(COGS) AS TotalCOGS
FROM supermarket_sales
GROUP BY Branch;


-- Find the sales distribution by time of day
SELECT CASE
           WHEN DATEPART(HOUR,TIME) BETWEEN 0 AND 11 THEN 'Morning'
           WHEN DATEPART(HOUR,TIME) BETWEEN 12 AND 17 THEN 'Afternoon'
           ELSE 'Evening'
       END AS TimeOfDay,
       SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY CASE
           WHEN DATEPART(HOUR,TIME) BETWEEN 0 AND 11 THEN 'Morning'
           WHEN DATEPART(HOUR,TIME) BETWEEN 12 AND 17 THEN 'Afternoon'
           ELSE 'Evening'
		END;



-- Top 5 Days with Highest Sales
SELECT TOP 5 Date, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Date
ORDER BY TotalSales DESC;


-- Day with lowest sales
SELECT TOP 1 Date, SUM(Total) AS TotalSales
FROM supermarket_sales
GROUP BY Date
ORDER BY TotalSales ASC










