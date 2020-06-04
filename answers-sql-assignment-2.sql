-- Text and Date Queries
-- Using: Like, in, is null, is not null, between, distinct, >, >=, <, datediff function
-- Practice Exercises
-- Use the Northwind database.

-- 1. Find the Territory names that contain the word ‘Santa’ [Use the Territories Table]
SELECT * FROM Territories WHERE TerritoryDescription LIKE '%santa%';
-- 2. Display the Territory names that begin with the letter ‘C’. [Use the Territories Table]
SELECT * FROM Territories WHERE TerritoryDescription LIKE '%C%';
-- 3. Display the territory names that contain ‘boro’. [Use the Territories Table]
SELECT * FROM Territories WHERE TerritoryDescription LIKE '%boro%';
-- 4. Display the names and job titles (ContactTitle) of contacts who are also owners. [Use the Customers table]
SELECT ContactName, ContactTitle FROM Customers WHERE ContactTitle LIKE '%Owner%';
-- 5. Display the company names and the URLs of those suppliers that have websites. [Use the Suppliers table]
SELECT CompanyName, HomePage FROM Suppliers WHERE HomePage IS NOT NULL;
-- 6. Display the company names and the URL column of those suppliers that don’t have websites. [Use the Suppliers table]
SELECT CompanyName, HomePage FROM Suppliers WHERE HomePage IS NULL;
-- 7. Display the names and prices of those products with prices of $50 or more. [Use the Products table]
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice > 50.00;
-- 8. Display the names and prices of those products with prices less than $10. [Use the Products table]
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice < 10.00;
-- 9. Display the names and prices of those products with prices of $10 or less. [Use the Products table]
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice <= 10.00;
-- 10. Display the names and prices of those products with prices greater than or equal to $15 but less than or equal to $20. [Use the Products table]
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice >= 15.00 AND UnitPrice <= 20.00;
-- 11. Display the names and ages of all employees. [Use the Employees table]
SELECT FirstName, LastName, DATEDIFF(yy, BirthDate, GETDATE())AS Age FROM Employees ORDER BY LastName ASC;
-- 12. Display the freight total. [Use the Orders table] Use Group By
SELECT SUM(Freight) AS Frieght_Total  FROM Orders;
-- 13. Display the 1996 freight total. [Use the Orders table] Use Group By
SELECT SUM(Freight) AS Frieght_Total  FROM Orders GROUP BY YEAR(OrderDate) HAVING YEAR(OrderDate) = 1996;
-- 14. Display the 1997 freight total. [Use the Orders table] Use Group By
SELECT SUM(Freight) AS Frieght_Total  FROM Orders GROUP BY YEAR(OrderDate) HAVING YEAR(OrderDate) = 1997;
-- 15. Display the 1998 freight total. [Use the Orders table] Use Group By
SELECT SUM(Freight) AS Frieght_Total  FROM Orders GROUP BY YEAR(OrderDate) HAVING YEAR(OrderDate) = 1998;
