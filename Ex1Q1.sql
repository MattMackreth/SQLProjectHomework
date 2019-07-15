USE Northwind;
SELECT CustomerID AS 'Customer ID', --Saves customer id and company name in user friendly format
CompanyName AS 'Company Name', 
Address + ', ' + City + ', ' + ISNULL(Region + ', ', '') + Country + ', ' + PostalCode AS 'Full Address'
FROM Customers --Concatenates address from all address fields. If region is null it is not output, if it isn't it outputs the region.
WHERE City IN('Paris', 'London'); --Only displays customers from Paris or London
