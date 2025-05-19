-- CREATE DATABASE Northwind;
-- USE Northwind;

CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100),
    Phone VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Categories (
    CategoryID INT,
    CategoryName VARCHAR(255),
    Description TEXT
);

CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

CREATE TABLE OrderDetails (
    OrderDetailID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT
);

CREATE TABLE Employees (
    EmployeeID INT,
    LastName VARCHAR(100),
    FirstName VARCHAR(100),
    BirthDate DATE,
    Photo BLOB,
    Notes TEXT
);

CREATE TABLE Shippers (
    ShipperID INT,
    ShipperName VARCHAR(255),
    Phone VARCHAR(50)
);

-- O próximo passo seria definir as chaves primárias e estrangeiras

