USE Northwind;--Using northwind
SELECT e.TitleOfCourtesy + ' ' + e.FirstName + ' ' + e.LastName AS 'Full Employee Name', --Concatenate the full employee name
r.TitleOfCourtesy + ' ' + r.FirstName + ' ' + r.LastName AS 'Full Supervisor Name'--Concatenate the full refers to, or supervisor, name
FROM Employees e --Take employee table as e
JOIN Employees r ON r.EmployeeID = e.ReportsTo; --Join to itself taking second instance as r.