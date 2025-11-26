
USE RetailStoreDB

SELECT *
FROM Production.Product;

SELECT Name, Productnumber, ListPrice
FROM Production.Product;

SELECT Name AS [Nama Barang], ListPrice AS 'Harga Jual'
FROM Production.Product;

SELECT Name, ListPrice, (ListPrice * 1.1) AS HargaBaru
FROM Production.Product;

SELECT Name + '('+ ProductNumber + ')' AS ProdukLengkap
FROM Production.Product


SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'red';

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice> 1000;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'black' AND ListPrice > 500;

SELECT Name, Color 
FROM Production.Product
WHERE Color IN ('red', 'black', 'blue')
ORDER BY Color ASC;

SELECT Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%road%';

SELECT COUNT(*) AS TotalProduct
FROM Production.Product

SELECT Color, COUNT(*) AS JumlahProduct
FROM Production.Product
GROUP BY Color;

SELECT ProductID, SUM(OrderQty) AS TotalJual, AVG(UnitPrice) AS HargaTengah
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT Color, COUNT(*) AS JumlahTotal
FROM Production.Product
GROUP BY Color 
HAVING COUNT(*) > 1;

SELECT Color, COUNT(*) AS TotalJumlah
FROM Production.Product
WHERE Listprice > 500
GROUP BY Color 
HAVING COUNT(*) > 1;

SELECT SpecialOfferID, AVG(OrderQty) AS RataRataBeli
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
HAVING AVG(OrderQty) < 5;

SELECT * FROM HumanResources.Employee;

SELECT DISTINCT JObTitle
FROM HumanResources.Employee;

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice ASC;

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;

SELECT TOP 3 Color, SUM(ListPrice) AS TotalNilaiStok
FROM Production.Product
WHERE ListPrice > 0
GROUP BY Color 
ORDER BY TotalNilaiStok DESC;