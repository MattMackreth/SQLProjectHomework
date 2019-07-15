USE Northwind;--Displays product name in user friendly format
SELECT ProductName AS 'Product Name'
FROM Products	
WHERE QuantityPerUnit LIKE '%bottle%';
--Objects stored in bottles have bottle somewhere in their quantity