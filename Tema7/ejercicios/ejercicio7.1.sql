--1. Muestra todos los datos de las asignaturas
SELECT * FROM Asignatura;
--2. Muestra la descripción y el departamento de todas las asignaturas
SELECT Descripción, Departamento FROM Asignatura;
--3. Muestra el código de asignatura y la fecha de todas las matrículas. La información debe aparecer tal y como se muestra a continuación, apareciendo antes las más recientes y con cuatro dígitos para el año
SELECT Cod_Asig, DATE_FORMAT(Fecha, "%d/%m/%Y") AS "Fecha" FROM Matrícula ORDER BY Fecha;
--4. ¿Qué asignaturas no pertenecen a ningún departamento?
SELECT * FROM Asignatura WHERE Departamento IS NULL;
--5. Obtén un listado de las matrículas donde figure la descripción de cada asignatura ordenados por nota de forma ascendente
SELECT NIF, Descripción, Fecha, Nota FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) ORDER BY Nota;
--6. Muestra el nombre y los apellidos de todos los alumnos cuyo código de localidad sea 14049. Ten en cuenta que el nombre de las columnas debe aparecer tal y como se muestra a continuación
SELECT Nombre ,Apellido1 ,Apellido2 FROM Alumno WHERE Cod_Localidad='14049';
--7. Muestra los datos de todas las asignaturas de 2-ESO, 3-ESO y 4-ESO
SELECT * FROM Asignatura WHERE Curso="4-ESO" OR Curso="3-ESO" OR Curso="2-ESO";
--8. Muestra los datos de todas las asignaturas cuyo código esté entre 3 y 6
SELECT * FROM Asignatura WHERE Código>=3 AND Código<=6;
--9. Obtén un listado de todos los alumnos, uniendo en una sola columna el nombre y los dos apellidos
SELECT NIF,CONCAT(Nombre,' ', Apellido1,' ', Apellido2) AS "Nombre Completo", Dirección, Telefono FROM Alumno;
--10. Obtén un listado con todas las asignaturas que tengan algún departamento asignado
SELECT * FROM Asignatura WHERE Departamento IS NOT NULL;
--11. Selecciona todos los alumnos cuyo primer apellido termine en 'a'
SELECT * FROM Alumno WHERE Apellido1 LIKE '%a';
--12. Selecciona todos los alumnos cuyo primer apellido empiece por ‘M’ y termine en 'a'
SELECT * FROM Alumno WHERE Apellido1 LIKE 'M%a';
--13. Selecciona todos los alumnos cuyo primer apellido termine en 'a' y tengan 9 caracteres
SELECT * FROM Alumno WHERE Apellido1 LIKE '%a' AND LENGTH(Apellido1)=9;
--14. Devuelve los datos de los dos primeros alumnos
SELECT * FROM Alumno LIMIT 2;
--15. Obtén un listado de todas las asignaturas ordenadas por descripción en orden ascendente y por curso en orden descendente
SELECT * FROM Asignatura ORDER BY Descripción ASC, Curso DESC;
--16. Devuelve los datos de las tres asignaturas a partir de la segunda
SELECT * FROM Asignatura WHERE Código>2 LIMIT 3;