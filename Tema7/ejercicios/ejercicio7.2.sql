--1. Muestra el precio con IVA para todos los productos
SELECT Cod_Prod,Precio_Venta*1.21 AS 'Precio con IVA' FROM Producto; 
--2. Muestra el precio con IVA para los productos que valgan menos de 11 euros
SELECT Cod_Prod,Precio_Venta*1.21 AS 'Precio con IVA' FROM Producto WHERE Precio_Venta<11.0;