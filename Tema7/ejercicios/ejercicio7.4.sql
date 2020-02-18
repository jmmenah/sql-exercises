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