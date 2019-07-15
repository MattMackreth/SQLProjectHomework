USE Northwind;
SELECT MONTH(ShippedDate) AS 'Shipped Month',  --Take the month it was shipped in
AVG(DATEDIFF(d, OrderDate, ShippedDate)) AS 'Ship Time' --Calculate how long shipping took and average across every instance of each month
FROM Orders
WHERE ShippedDate IS NOT NULL AND DATEDIFF(d, OrderDate, ShippedDate) IS NOT NULL --Ignore NULL values
GROUP BY MONTH(ShippedDate)--Group by month
ORDER BY [Shipped Month];--Display in month order
