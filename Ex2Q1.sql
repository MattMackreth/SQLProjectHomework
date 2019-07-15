USE Northwind; --In the Northwind database
CREATE TABLE Spartans ( --Create a spartans table
SpartanID int IDENTITY PRIMARY KEY NOT NULL, --Primary key is auto increment int
Title VARCHAR(8),--Title up to 8 characters can be null
FName VARCHAR(16) NOT NULL, -- First name and last name cannot be null and must be 16 characters or less
LName VARCHAR(16) NOT NULL,
Uni VARCHAR(32),--32 characters for uni to accommodate most uni names, can be null if none intended
Course VARCHAR(64),--64 characters to allow for complex course names
Mark CHAR(3),--Mark taken as classification, must be 3 characters
CHECK (Mark IN('1st','2:1','2:2','3rd','DNP'))--Mark must either be the 4 classifications from 1st to 3rd or DNP for did not pass.
);