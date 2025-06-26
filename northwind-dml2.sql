-- Consulta tabela de Produtos
SELECT * FROM Products;

-- Atualiza preço de produto
UPDATE Products
SET Price = 25.00
WHERE CategoryID = 6;
-- Mostra a tabela atualizada 
SELECT * FROM Products
WHERE CategoryID = 6;

-- Insere dados de novo funcionário 
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes)
VALUES ('Ana', 'Silva', '1990-05-15', 'EmpID11.pic', 'Ana has a BA degree in French.' );
-- Mostra tabela atualizada 
SELECT * FROM Employees;

-- Consulta clientes pelo filtro sem contato
SELECT *
FROM Customers
WHERE ContactName IS NULL;

-- Remove dados de fornecedores de Tokyo
DELETE FROM Suppliers
WHERE City = 'Tokyo';
-- Confere a remoção dos fornecedores
SELECT * FROM Suppliers;

-- Consulta pedidos com filtro por data
SELECT OrderID, CustomerID, OrderDate, ShipperID
FROM Orders
WHERE OrderDate > '1997-01-01'
ORDER BY OrderDate DESC;

-- Atualizar a nº de unidades de produtos
UPDATE Products
SET Unit = Unit + 10
WHERE Unit > 0;
-- Mostra tabela atualizada
SELECT * FROM Products;

-- Remove clientes de USA
DELETE FROM Customers
WHERE Country = 'USA';
-- Consulta a remoção na tabela
SELECT * FROM Customers;

-- Inclui nova categoria na tabela CategoryProducts
INSERT INTO CategoryProducts (CategoryName, Description)
VALUES ('Bakery', 'Baked goods like bread and cakes');
-- Mostra a tabela atualizada
SELECT * FROM CategoryProducts;

-- Consulta produtos por preço entre 10 e 50
SELECT ProductName, Price, Unit
FROM Products
WHERE Price BETWEEn 10 AND 50;

-- Atualiza a coluna Notes do funcionário 
UPDATE Employees
SET Notes = 'He was a Senior Sales Representative.'
WHERE EmployeeID = 5;
-- Consulta a tabela atualizada 
SELECT * FROM Employees;
