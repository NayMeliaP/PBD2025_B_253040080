USE RetailStoreDB
GO

SELECT * FROM Production.Product;

SELECT Name, Color
FROM Production.Product; 

SELECT Name AS 'Nama Produk'
FROM Production.Product;

SELECT Name, ListPrice, (ListPrice * 10) AS 'HargaBaru'
FROM Production.Product;

SELECT Name + ' (' + ProductNumber + ')' AS ProdukLengkap
FROM Production.Product;

SELECT Name + ' (' + Color + ')' AS Warna
FROM Production.Product;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Red';

SELECT Name + ' (' + Color + ')' AS Warna
FROM Production.Product
WHERE Color = 'black';

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Black' AND ListPrice > 500;

SELECT Name, Color
FROM Production.Product
WHERE Color IN ('Red', 'Blue', 'Black');

SELECT Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Road%';

SELECT COUNT(*) AS TotalProduk
FROM Production.Product; 

SELECT Color, COUNT(*) AS JumlahProduk
FROM Production.Product
GROUP BY Color;

SELECT ProductID, SUM(OrderQty) AS TotalTerjual, AVG(UnitPrice) AS
RataRataHarga
FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT Color, Size, COUNT(*) AS Jumlah
FROM Production.Product
GROUP BY Color, Size;

SELECT Color, Name, COUNT(*)
FROM Production.Product
GROUP BY Color;

SELECT Color, COUNT(*) AS Jumlah
FROM Production.Product
GROUP BY Color
HAVING COUNT(*) > 20;

SELECT Color, COUNT(*) AS Jumlah
FROM Production.Product
WHERE ListPrice > 500
GROUP BY Color
HAVING COUNT(*) > 10;

SELECT ProductID, SUM(OrderQty) AS TotalQty
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 1000;

SELECT SpecialOfferID, AVG(OrderQty) AS RataRataBeli
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
HAVING AVG(OrderQty) < 2;

SELECT Color
FROM Production.Product
GROUP BY Color
HAVING MAX(ListPrice) > 3000;

SELECT DISTINCT JobTitle
FROM HumanResources.Employee;

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

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

SELECT TOP 5 ProductID, /*dihasilin outputnya lalu ke order by lalu di filter ke top cepuluh*/
SUM(LineTotal) AS TotalPendapatan
FROM Sales.SalesOrderDetail /*ngambil seluruh data tabel*/
WHERE OrderQty >= 2 /*di filter sehingga minimal 2*/
GROUP BY ProductID /*dikelompokn produk idny Jdi satu kelompok*/
HAVING SUM(LineTotal) > 1000 /*di filter lagi supaya yg diatas 50000 aja*/
ORDER BY TotalPendapatan DESC; /* setelah di hasilin outputnya diurutin dari yg besar sampe kecil*/

/*maaf kak ini aku pilter diatas 1000 soalnya gaada yg 50000 :( */
/*untuk tahapannya dari from-where-group by- having-select-orderby-top*/





