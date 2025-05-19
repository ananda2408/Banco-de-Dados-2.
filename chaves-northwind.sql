-- Definição de chaves primárias
ALTER TABLE Suppliers ADD PRIMARY KEY (SupplierID);
ALTER TABLE Products ADD PRIMARY KEY (ProductID);
ALTER TABLE Categories ADD PRIMARY KEY (CategoryID);
ALTER TABLE Customers ADD PRIMARY KEY (CustomerID);
ALTER TABLE Orders ADD PRIMARY KEY (OrderID);
ALTER TABLE OrderDetails ADD PRIMARY KEY (OrderDetailID);
ALTER TABLE Employees ADD PRIMARY KEY (EmployeeID);
ALTER TABLE Shippers ADD PRIMARY KEY (ShipperID);

-- Definição de chaves estrangeiras
ALTER TABLE Products ADD CONSTRAINT FK_Products_Suppliers FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Shippers FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID);
