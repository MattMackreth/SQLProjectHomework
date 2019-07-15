USE Northwind; --Count all orders and give relevant title
SELECT Count(*) AS 'Orders from UK/USA with Freight above 100'
FROM Orders
WHERE Freight > 100 AND ShipCountry IN('UK','USA')
--Only where both the freight is above 100 and shipping from UK or USA