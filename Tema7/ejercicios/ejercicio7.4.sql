-- 1. Obtén un listado de las matrículas donde figure la descripción de cada asignatura ordenados por nota de forma ascendente
SELECT NIF, Descripción, Fecha, Nota FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) ORDER BY Nota ASC;
-- 2. Muestra cómo quedarían las notas de todas las asignaturas si se redujeran en un 5% incluyendo la descripción de la asignatura en lugar del código.
SELECT Descripción,Nota*0.95 AS "Nota" FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) ORDER BY Nota ASC;
-- 3. Muestra cómo quedarían las notas de las asignaturas de informática si se redujeran en un 5%, incluyendo la descripción
SELECT Descripción,Nota*0.95 AS "Nota" FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND Descripción="informática" ORDER BY Nota ASC;
-- 4. Muestra las matrículas de biología posteriores al 1 de julio de 2016
SELECT * FROM Matrícula WHERE Fecha>'2016-07-01' AND Cod_Asig=5;
-- 5. Muestra las matrículas de biología posteriores al 1 de julio de 2016, figurando el curso de cada asignatura y la descripción en lugar del código
SELECT NIF, Descripción, Curso, Fecha, Nota FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND Fecha>'2016-07-01' AND Cod_Asig=5 ORDER BY Nota ASC;
-- 6. Obtén un listado con el NIF y el nombre completo de los alumnos junto con su nota media
SELECT Alumno.NIF, CONCAT(Nombre,' ', Apellido1,' ', Apellido2) AS "Nombre Completo" , AVG(Nota) AS "Media" FROM Matrícula,Alumno WHERE (Alumno.NIF=Matrícula.NIF) GROUP BY NIF;
-- 7. Obtén un listado con la descripción de las asignaturas y la fecha en las que se ha matriculado Elías, ordenados por fecha de forma descendente
SELECT Descripción, Fecha FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND NIF='11111111A' ORDER BY Fecha DESC;
-- 8. Muestra los alumnos con nota media mayor o igual que 6
SELECT Nombre FROM Matrícula,Alumno WHERE (Alumno.NIF=Matrícula.NIF) GROUP BY Matrícula.NIF HAVING(AVG(Nota)) >= 6;
-- 9. Selecciona todos los datos de las matrículas del curso 3o de ESO ordenadas por nota en forma descendente
SELECT NIF,Cod_Asig,Nota,Fecha FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND Curso='3-ESO';
-- 10. Selecciona todos los datos de las matrículas del departamento de matemáticas con notas mayores que 5.5
SELECT NIF,Cod_Asig,Nota,Fecha FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND Nota>5.5 AND Descripción='Matemáticas';
-- 11. Selecciona el nombre del alumno, de la asignatura, la nota y la fecha para todas las matrículas cuya nota sea menor que 5
SELECT Nombre,Descripción AS "Asignatura",Nota,Fecha FROM Matrícula,Asignatura,Alumno WHERE (Código=Cod_Asig) AND (Alumno.NIF=Matrícula.NIF) AND Nota<5;
-- 12. Obtén un listado de todos los departamentos y la nota media obtenida en sus respectivas asignaturas ordenados por nota
SELECT Departamento ,AVG(Nota) AS "Nota media" FROM Matrícula,Asignatura WHERE (Código=Cod_Asig) AND Departamento IS NOT NULL GROUP BY Departamento;
-- 13. Obtén un listado del nombre de los alumnos y el número de matrículas que tienen ordenados por nombre
SELECT Nombre, COUNT(Matrícula.NIF) AS "Numero Matriculas" FROM Alumno,Matrícula WHERE Alumno.NIF=Matrícula.NIF GROUP BY Matrícula.NIF;
-- 14. Muestra el nombre completo (en mayúsculas del alumno que tiene la máxima nota) y la nota
SELECT UCASE(CONCAT(Nombre,' ', Apellido1,' ', Apellido2)) AS "Nombre completo", Nota FROM Alumno,Matrícula WHERE Alumno.NIF=Matrícula.NIF ORDER BY Nota DESC LIMIT 1;
-- 15. Muestra los datos de las matrículas de todas las asignaturas que no tengan departamento. Incluye la descripción de la asignatura en lugar de su código
SELECT NIF,Descripción,Nota,Fecha FROM Matrícula,Asignatura WHERE (Cod_Asig=Código) AND Departamento IS NULL;
-- 16. Muestra los datos de las matrículas de todas las asignaturas que no tengan departamento. Incluye la descripción de la asignatura en lugar de su código y el nombre completo del alumno en lugar del NIF
SELECT CONCAT(Nombre,' ', Apellido1,' ', Apellido2) AS "Nombre completo",Descripción,Nota,Fecha FROM Matrícula,Asignatura,Alumno WHERE (Código=Cod_Asig) AND (Alumno.NIF=Matrícula.NIF) AND Departamento IS NULL;