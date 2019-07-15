USE Northwind;
SELECT CategoryName, --Take name of each category
Count(p.CategoryID) AS 'Amount of Products' --Count the amount of products for each category
FROM Categories c --Save categories table under variable c
JOIN Products p ON c.CategoryID = p.CategoryID --Join products table
GROUP BY CategoryName --Group products by category
ORDER BY [Amount of Products] DESC; --Display category with highest amount of products first.