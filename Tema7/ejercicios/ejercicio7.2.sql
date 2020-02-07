--1. Muestra el precio con IVA para todos los productos
SELECT Cod_Prod,Precio_Compra*1.21 AS 'Precio con IVA' FROM Producto; 
--2. Muestra el precio con IVA para los productos que valgan menos de 11 euros
SELECT Cod_Prod,Precio_Compra*1.21 AS 'Precio con IVA' FROM Producto WHERE Precio_Compra<=10.0;
--3. Muestra la denominación y el precio con IVA para los productos cuyo precio esté entre 10 y 20 euros
SELECT Denominación,Precio_Compra*1.21 AS 'Precio con IVA' FROM Producto WHERE Precio_Compra<=20 AND Precio_Compra>=10;
--4. Muestra todas las secciones en los que el número del empleado jefe sea menor que 5
SELECT * FROM Sección WHERE N_Empl_Jefe<5;
--5. Muestra los datos del empleado cuyo código sea la raíz cuadrada de 4
SELECT * FROM Empleado WHERE SQRT(4)=N_Empl;
--6. Obtén las iniciales de los empleados
SELECT CONCAT(SUBSTRING(Nombre,1,1),SUBSTRING(Apellido1,1,1),SUBSTRING(Apellido2,1,1)) AS "Iniciales" FROM Empleado;
--7. Selecciona el nombre y la longitud del mismo para todos los empleados
SELECT CONCAT(Nombre,' ',LENGTH(Nombre)) AS "Nombre+longitud" FROM Empleado;
--8. Muestra el nombre completo de todos los empleados (nombre + apellido1+ apellido2)
SELECT CONCAT(Nombre,' ',Apellido1,' ',Apellido2) AS "Nombre completo" FROM Empleado;
--9. Realiza la misma consulta que en el apartado 7 pero el valor devuelto deberá estar en minúsculas
SELECT LCASE(CONCAT(Nombre,' ',Apellido1,' ',Apellido2)) AS "Nombre completo en minúsculas" FROM Empleado;
--10. Realiza la misma consulta que en el apartado, mostrando el nombre como esté almacenado en la base de datos y los dos apellidos en mayúscula. Por ejemplo, Santiago RODRÍGUEZ RODRÍGUEZ
SELECT CONCAT(Nombre,' ',UCASE(Apellido1),' ',UCASE(Apellido2)) AS "Nombre completo" FROM Empleado; 
--11. Muestra el código de la provincia y el nombre separados por un guión. Usa concat_ws.
SELECT CONCAT_WS('-',Cod_Prov,Nombre) AS "Provincia" FROM Provincia;
--12. Muestra el código de la provincia y el nombre con el siguiente formato: Albacete tiene el código de provincia 01
SELECT CONCAT_WS(' tiene el codigo de provincia ',Nombre,Cod_Prov) AS "Provincia" FROM Provincia;
--13. Muestra todas las provincias cuyo nombre tenga diez o más caracteres
SELECT * FROM Provincia WHERE LENGTH(Nombre)>=10;
--14. Muestra los empleados que sean de Granada (el código es 17)
SELECT * FROM Empleado WHERE Cod_Prov=17;
--15. Muestra todos los empleados de la sección EDU
SELECT * FROM Empleado WHERE Id_Sec='EDU';
--16. Muestra el nombre y el correo de las empresas que tengan un correo acabado en .es
SELECT Nombre,Correo FROM Empresa WHERE Correo LIKE '%.es';
--17. Muestra el código, el nombre y el teléfono de las empresas cuyo nombre empiece por Edu
SELECT Cod_Empr,Nombre,Telefono FROM Empresa WHERE Nombre LIKE 'Edu%';
--18. Muestra los caracteres 2 a 6 de la descripción de todas las secciones
SELECT SUBSTRING(Descripción,2,6) AS "Caracteres 2 a 6 de la descripción" FROM Sección;
--19. Muestra los primeros cinco caracteres del nombre de las empresas
SELECT SUBSTRING(Nombre,1,5) AS "Primeros 5 caracteres del nombre" FROM Empresa;
--20. Muestra la parte izquierda del correo de todas las empresas (lo que aparece delante de @)
SELECT LEFT(Correo,LOCATE('@',Correo)-1) AS "Parte izquierda del correo" FROM Empresa;