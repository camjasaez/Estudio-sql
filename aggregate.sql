CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(255),
  CategoryID INT,
  Price DECIMAL(10, 2)
);

CREATE TABLE Sales (
  SaleID INT PRIMARY KEY,
  ProductID INT,
  EmployeeID INT,
  CustomerID INT,
  QuantitySold INT,
  SaleDate DATE,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY,
  CategoryName VARCHAR(255)
);

CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Department VARCHAR(255),
  HireDate DATE
);

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Email VARCHAR(255),
  NumberOfTransactions INT
);



INSERT INTO Products (ProductID, ProductName, CategoryID, Price) VALUES
(1, 'Laptop', 1, 1200.00),
(2, 'Monitor', 1, 300.00),
(3, 'Mouse', 2, 25.99),
(4, 'Keyboard', 2, 49.99),
(5, 'Printer', 3, 200.00);

INSERT INTO Sales (SaleID, ProductID, EmployeeID, CustomerID, QuantitySold, SaleDate) VALUES
(1, 1, 1, 1, 1, '2023-01-01'),
(2, 2, 2, 1, 2, '2023-02-01'),
(3, 3, 1, 2, 3, '2023-03-01'),
(4, 4, 2, 3, 1, '2023-04-01'),
(5, 5, 1, 4, 1, '2023-05-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, HireDate) VALUES
(1, 'John', 'Doe', 'Sales', '2020-01-01'),
(2, 'Jane', 'Doe', 'Sales', '2020-06-01');

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, NumberOfTransactions) VALUES
(1, 'Alice', 'Smith', 'alice@example.com', 2),
(2, 'Bob', 'Jones', 'bob@example.com', 1),
(3, 'Charlie', 'Brown', 'charlie@example.com', 1),
(4, 'Diana', 'Prince', 'diana@example.com', 1);

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Computers & Accessories'),
(2, 'Peripherals'),
(3, 'Office Equipment');
