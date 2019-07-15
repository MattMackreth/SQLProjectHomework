USE Northwind;
SELECT RegionDescription AS 'Region', --Take the region description as the region
ROUND(SUM((UnitPrice -Discount) * Quantity), 2) AS 'Total Sales' --Add up the sales for each region calculated by unit price - discount * quantity. Round this to 2 dp.
FROM [Order Details] od
JOIN Orders o ON o.OrderID = od.OrderID --Join all relevant tables to get from order details to regions
JOIN EmployeeTerritories et ON et.EmployeeID = o.EmployeeID
JOIN Territories t ON et.TerritoryID = t.TerritoryID
JOIN Region r ON r.RegionID = t.RegionID
GROUP BY r.RegionDescription --Group by region
HAVING SUM((UnitPrice -Discount) * Quantity) > 1000000; --Having instead of where as selecting groups.