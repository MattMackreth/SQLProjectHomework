USE Northwind;
SELECT CompanyName AS 'Company Name', --Take each supplier name
ROUND(SUM(Quantity * (od.UnitPrice -Discount)),2) AS 'Supplier Sales Total' --Work out total for each company and round to 2dp for currency
FROM [Order Details] od
JOIN Products p ON od.ProductID = p.ProductID --Join relevant tables
JOIN Suppliers s ON s.SupplierID = p.SupplierID
GROUP BY CompanyName --Group by name of supplier
HAVING SUM(Quantity * (od.UnitPrice -Discount)) > 10000 --Only take where total sales is over 10,000
