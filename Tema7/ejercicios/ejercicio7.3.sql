--1. Muestra cómo quedarían las notas de todas las asignaturas si se redujeran en un 5%
SELECT Cod_Asig,Nota*0.95 AS "Nueva nota" FROM Matrícula;
--2. Muestra los datos de todas las matrículas posteriores al 1 de julio de 2016
SELECT * FROM Matrícula WHERE Fecha>'2016-07-01';
--3. Cuenta el número de matrículas con nota mayor o igual que 7
SELECT COUNT(*) AS "Notas mayores que 7" FROM Matrícula WHERE Nota>=7;
--4. Muestra el nombre y los dos apellidos de todos los alumnos en un único campo separados por un guión (usa CONCAT_WS)
SELECT Nombre, CONCAT(Apellido1,' ',Apellido2) AS "Apellidos" FROM Alumno;
--5. Muestra el nombre y el primer apellido de todos los alumnos en mayúsculas
SELECT UCASE(CONCAT(Nombre,' ',Apellido2)) AS "Alumno" FROM Alumno;
--6. Muestra la descripción de cada asignatura junto con el código de departamento en minúsculas
SELECT Descripción,LCASE(Departamento) FROM Asignatura;
--7. Muestra un listado con todas las matrículas, incluyendo el año en lugar de la fecha
SELECT NIF,Cod_Asig,Nota,YEAR(Fecha) AS "Año" FROM Matrícula;
--8. Muestra un listado con todas las matrículas, incluyendo el año en lugar de la fecha para todas las matrículas con nota menor o igual a 6
SELECT NIF,Cod_Asig,Nota,YEAR(Fecha) AS "Año" FROM Matrícula WHERE Nota<=6;
--9. Muestra un listado con todas las matrículas, sumándole un año a la fecha de matriculación
SELECT NIF,Cod_Asig,Nota,ADDDATE(Fecha, INTERVAL 1 YEAR) AS "Nueva Fecha" FROM Matrícula;
--10. Muestra un listado con las matrículas cuyo código de asignatura sea mayor que 4 y la nota sea menor que 7 restándole a la fecha un mes
SELECT NIF,Cod_Asig,Nota,SUBDATE(Fecha, INTERVAL 1 MONTH) AS "Nueva Fecha" FROM Matrícula WHERE Cod_Asig>4 AND Nota<7;