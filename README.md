# Supermarket-sales-SQL

## Overview
This project analyzes supermarket sales data using SQL. The dataset includes detailed sales records with columns for InvoiceID, Branch, City, Customer Type, Gender, Product Line, Unit Price, Quantity, Tax, Total, Date, Time, Payment, COGS, Gross Margin, Gross Income, and Rating.

## Database Schema
The table `supermarket_sales` was created by directly importing data from an Excel file. The structure of the table is:

- InvoiceID: VARCHAR(10)
- Branch: VARCHAR(10)
- City: VARCHAR(50)
- CustomerType: VARCHAR(50)
- Gender: VARCHAR(10)
- ProductLine: VARCHAR(50)
- UnitPrice: DECIMAL(10, 2)
- Quantity: INT
- Tax: DECIMAL(10, 2)
- Total: DECIMAL(10, 2)
- Date: DATE
- Time: TIME
- Payment: VARCHAR(20)
- COGS: DECIMAL(10, 2)
- GrossMargin: DECIMAL(10, 2)
- GrossIncome: DECIMAL(10, 2)
- Rating: DECIMAL(3, 1)

## Sample Queries
- Retrieve all sales records:
  SELECT * FROM Sales;
