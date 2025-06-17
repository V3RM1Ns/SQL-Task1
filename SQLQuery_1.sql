CREATE DATABASE Market
USE Market
CREATE TABLE Products(
    Id INT,
    [Name] NVARCHAR(20),
    Price INT
)
ALTER TABLE Products ADD BRAND NVARCHAR(20)
INSERT INTO Products (Id, Name, Price, Brand)
VALUES
(1, 'Leyla', 100, 'BrandA'),
(2, 'Hebib', 100, 'BrandB'),
(3, 'Hazira', 550, 'BrandC'),
(4, 'Muhammed', 250, 'BrandA'),
(5, 'Resul', 250, 'BrandB');
DELETE FROM Products WHERE Id=5
UPDATE Products SET [NAME]='Ali' WHERE Id=4
UPDATE Products SET [NAME]='Leyla Aliyeva' WHERE Id=1
SELECT AVG(Price) AS AvaragePrice FROM Products 
SELECT * FROM Products WHERE Price > (SELECT AVG(Price) FROM Products); 
SELECT * FROM Products WHERE Price>10
SELECT  [Name] + ' - ' + Brand AS ProductInfo FROM Products WHERE LEN(BRAND)>5

CREATE TABLE Employee (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Fullname NVARCHAR(255) NOT NULL, 
    Age INT NOT NULL CHECK (Age>=0),
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Salary DECIMAL(10,2) NOT NULL CHECK (Salary BETWEEN 300 AND 2000)
)

INSERT INTO Employee (Fullname, Age, Email, Salary)
VALUES 
('Leyla Aliyeva', 28, 'leyla@gmail.com', 1200.50),
('Hebib Ramazanov', 30, 'hebib@mail.ru', 1850.75),
('Kamran Quliyev', 24, 'kamra@code.edu.az', 500.00)
