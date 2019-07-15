USE Northwind; --Concatenate relevant fields with spaces between
SELECT TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS 'Full Name',
City --City is already a user friendly field
FROM Employees
WHERE Country = 'UK' --Only UK Employees