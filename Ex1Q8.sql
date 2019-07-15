USE Northwind; --Take the number 1 order number and give relevant name
SELECT TOP 1 OrderID AS 'Order number with highest discount'
FROM [Order Details] 
ORDER BY (Quantity * Discount) DESC --More products bought = higher discount
--Order by discount so first order has highest discount