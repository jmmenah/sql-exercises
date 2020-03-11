-- Ejercicio 1
SELECT * FROM Producto WHERE Precio<100 ORDER BY Sección DESC, Precio DESC;
-- Ejercicio 2
SELECT Descripción,Precio,ROUND(Precio*0.95,2) AS "PVP Rebajado" FROM Producto;
-- Ejercicio 3
SELECT CONCAT(Apellidos,', ',Nombre) AS "Nombre",YEAR(SYSDATE())-YEAR(Fecha_Nac) AS "Edad" FROM Cliente ORDER BY Edad;
-- Ejercicio 4
SELECT ROUND(AVG(YEAR(SYSDATE())-YEAR(Fecha_Nac))) AS "Edad" FROM Cliente;
-- Ejercicio 5
SELECT * FROM Producto WHERE Descripción!="Tablet" AND Descripción!="Cafetera" ORDER BY Precio DESC;
-- Ejercicio 6
SELECT * FROM Producto WHERE Precio>5 AND Precio<10 AND Sección='ILU';
-- Ejercicio 7
SELECT * FROM Cliente WHERE MONTH(Fecha_Nac)<4;
-- Ejercicio 8
SELECT Descripción,Precio,ROUND(Precio*0.9,2) AS "Rebaja" FROM Producto ORDER BY Precio DESC LIMIT 1;
-- Ejercicio 9
SELECT * FROM Producto ORDER BY Precio ASC LIMIT 2;
-- Ejercicio 10
SELECT * FROM Producto WHERE Precio!=(SELECT MAX(Precio) FROM Producto ORDER BY Cod) AND Precio!=(SELECT MIN(Precio) FROM Producto ORDER BY Cod) ORDER BY Precio ASC;
-- Ejercicio 11
SELECT Sección, ROUND(SUM(Precio),2) AS "Total" FROM Producto GROUP BY Sección ORDER BY Total DESC;
-- Ejercicio 12
SELECT Cod,Nombre,Apellidos,SUM(Cantidad) AS "#Elementos comprados" FROM Cliente,Compra WHERE Cod=Cod_Cliente GROUP BY Cod_Cliente;
-- Ejercicio 13/14
SELECT Cliente.Cod,Nombre,Apellidos,Descripción,Cantidad,Precio,ROUND(Precio*Cantidad,2) AS "Subtotal" FROM Producto,Cliente,Compra WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto; 
-- Ejercicio 15
SELECT Cliente.Cod,Nombre,Apellidos,SUM(ROUND(Precio*Cantidad,2)) AS "GASTO" FROM Producto,Cliente,Compra WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto GROUP BY Cod_Cliente ORDER BY GASTO; 
-- Ejercicio 16
SELECT Cliente.Cod,Nombre,Apellidos,SUM(ROUND(Precio*Cantidad,2)) AS "GASTO" FROM Producto,Cliente,Compra WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto GROUP BY Cod_Cliente HAVING SUM(ROUND(Precio*Cantidad,2))>500 ORDER BY GASTO; 
-- Ejercicio 17
SELECT CONCAT(Nombre,' ',Apellidos) AS "Cafeteros" FROM Cliente,Compra,Producto WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto AND Descripción="Cafetera";
-- Ejercicio 18
SELECT Descripción, SUM(Cantidad) AS "Ventas" FROM Producto,Compra WHERE Producto.Cod=Codigo_Producto GROUP BY Codigo_Producto ORDER BY Ventas DESC LIMIT 1;
-- Ejercicio 19
SELECT UPPER(CONCAT(Nombre,' ',Apellidos)) AS "Nombre",SUM(ROUND(Precio*Cantidad,2)) AS "Valor" FROM Producto,Cliente,Compra WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto GROUP BY Cod_Cliente,Fecha ORDER BY Valor DESC LIMIT 1; 
-- Ejercicio 20
SELECT Nombre,Apellidos,SUM(ROUND(Precio*Cantidad,2)) AS "Gastos Hogar" FROM Producto,Cliente,Compra WHERE Cliente.Cod=Cod_Cliente AND Producto.Cod=Codigo_Producto AND Sección='HOG' GROUP BY Cod_Cliente ORDER BY Nombre; 
