CREATE DATABASE CompanySellings

USE CompanySellings

CREATE TABLE Employees
(
	Id int primary key identity,
	Fullname nvarchar(100),
	PositionId int references Positions(Id),
	Salary decimal(18,2)
)

CREATE TABLE Positions
(
	Id int primary key identity,
	PositionName nvarchar(50),
)

CREATE TABLE Branches
(
	Id int primary key identity,
	BranchName nvarchar(50),
)

CREATE TABLE Products
(
	Id int primary key identity,
	ProductName nvarchar(50),
	PurchasePrice decimal(18,2),
	SalePrice decimal(18,2)
)

CREATE TABLE Sales
(
	Id int primary key identity,
	BrancheId int references Branches(Id),
	SaleDate datetime
)

CREATE TABLE EmployeeSales
(
	Id int primary key identity,
	EmployeeId int references Employees(Id),
	SaleId int references Sales(Id)
)

CREATE TABLE ProductSales
(
	Id int primary key identity,
	SaleId int references Sales(Id),
	ProductId int references Products(Id)
)

INSERT INTO Positions
VALUES 
('Position 1'),
('Position 2'),
('Position 3'),
('Position 4'),
('Position 5'),
('Position 6'),
('Position 7'),
('Position 8'),
('Position 9'),
('Position 10')

INSERT INTO Employees
VALUES
('Employee 1 Father1', 1, 944),
('Employee 2 Father2', 2, 1320),
('Employee 3 Father3', 3, 1110),
('Employee 4 Father4', 5, 700),
('Employee 5 Father5', 7, 1410),
('Employee 6 Father6', 4, 543.58),
('Employee 7 Father7', 9, 420),
('Employee 8 Father8', 10, 1200),
('Employee 9 Father9', 6, 780.34),
('Employee 10 Father10', 2, 956)


INSERT INTO Branches
VALUES
('Address 1'),
('Address 2'),
('Address 3'),
('Address 4'),
('Address 5'),
('Address 6')

INSERT INTO Products
VALUES
('Product 1', 10, 15),
('Product 2', 4.5, 7),
('Product 3', 2, 3.5),
('Product 4', 0.5, 2),
('Product 5', 5, 7),
('Product 6', 1, 3),
('Product 7', 0.05, 0.5),
('Product 8', 3, 5),
('Product 9', 2, 4),
('Product 10', 5, 6)

INSERT INTO Sales
VALUES
(1, '2022-07-22 13:25:12'),
(2, '2022-06-12 12:03:34'),
(3, '2021-02-10 18:32:32'),
(4, '2019-01-08 15:30:54'),
(5, '2018-07-22 11:56:59'),
(6, '2022-12-30 19:54:01'),
(5, '2022-04-02 17:45:23'),
(1, '2022-07-22 14:34:43')

INSERT INTO EmployeeSales
VALUES
(1, 2),
(2,1),
(3,3),
(4,8),
(5,4),
(6,5),
(7,6),
(8,7),
(9,8),
(10,1)

INSERT INTO ProductSales
VALUES
(1, 2),
(2,1),
(3,3),
(4,8),
(5,4),
(6,5),
(7,6),
(8,7),
(8,9),
(1,10)

SELECT Fullname, ProductName, BranchName, PurchasePrice, SalePrice FROM Employees
INNER JOIN EmployeeSales
ON EmployeeSales.EmployeeId = Employees.Id
INNER JOIN Sales
ON EmployeeSales.SaleId = Sales.Id
INNER JOIN ProductSales
ON ProductSales.SaleId = Sales.Id
INNER JOIN Products
ON Products.Id = ProductSales.ProductId
INNER JOIN Branches
ON Sales.BrancheId = Branches.Id





