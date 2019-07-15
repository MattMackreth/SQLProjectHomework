USE Northwind;
SELECT ProductName AS 'Product Name',
CompanyName AS 'Supplier Name',
Country --Already user friendly
FROM Products--As before except suppliers table joined for extra fields
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE QuantityPerUnit LIKE '%bottle%';