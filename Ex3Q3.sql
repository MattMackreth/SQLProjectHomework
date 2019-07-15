USE Northwind;
SELECT TOP 10 CompanyName AS 'Customer Name', --Take the top 10 Customers
SUM(Freight) AS 'Total Value Shipped' --Show the total value shipped
FROM Orders o --From orders table
JOIN Customers c ON c.CustomerID = o.CustomerID --Joining customers
GROUP BY CompanyName--Group by customer name
ORDER BY [Total Value Shipped] DESC;--Display the highest value first and descend.
