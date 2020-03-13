-- 1. Selecciona todos los datos de las matrículas de los alumnos de Córdoba (el código de los pueblos de Córdoba empieza por 14)
SELECT NIF,Cod_Asig,Nota,Fecha FROM Alumno NATURAL JOIN Matrícula WHERE Cod_Localidad LIKE '14%';
-- 2. Obtén el número de matrículas total de las asignaturas del departamento de matemáticas
SELECT COUNT(NIF) AS "Número de matrículas" FROM Matrícula,Asignatura WHERE Código=Cod_Asig AND Descripción='Matemáticas';
-- 3. Selecciona el código de la asignatura y el NIF de los alumnos matriculados en alguna asignatura del departamento de matemáticas. Usa dos soluciones: con join y con where
SELECT Cod_Asig,NIF FROM Matrícula,Asignatura WHERE Código=Cod_Asig AND Departamento='MAT';
SELECT Cod_Asig,NIF FROM Matrícula JOIN Asignatura ON Código=Cod_Asig AND Departamento='MAT';
-- 4. Selecciona el código de la asignatura y el nombre completo de los alumnos matriculados en alguna asignatura del departamento de matemáticas
SELECT Cod_Asig, CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Matrícula,Alumno,Asignatura WHERE Alumno.NIF=Matrícula.NIF AND Código=Cod_Asig AND Departamento='MAT';
-- 5. Selecciona el nombre completo del alumno con la máxima nota. Incluye dos soluciones: con subconsultas y sin subconsultas
SELECT CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Matrícula NATURAL JOIN Alumno WHERE Nota=(SELECT MAX(Nota) FROM Matrícula);
SELECT CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Matrícula NATURAL JOIN Alumno ORDER BY Nota DESC LIMIT 1;
-- 6. Selecciona el NIF, el nombre y el primer apellido del resto de alumnos que se matricularon el mismo año que el alumno de NIF '11111111A'
SELECT NIF,Nombre,Apellido1 FROM Alumno NATURAL JOIN Matrícula WHERE YEAR(Fecha)=(SELECT YEAR(Fecha) FROM Matrícula WHERE NIF='11111111A' LIMIT 1) AND NIF!='11111111A';
-- 7. Selecciona el nombre y el primer apellido de los alumnos que se matricularon el mismo año que Fernando Molina Molina
SELECT Nombre,Apellido1 FROM Alumno NATURAL JOIN Matrícula WHERE YEAR(Fecha)=(SELECT YEAR(Fecha) FROM Matrícula NATURAL JOIN Alumno WHERE CONCAT_WS(' ',Nombre,Apellido1,Apellido2)='Fernando Molina Molina') AND CONCAT_WS(' ',Nombre,Apellido1,Apellido2)!='Fernando Molina Molina' GROUP BY Alumno.NIF;
-- 8. Selecciona el nombre y los apellidos de los alumnos cuya nota es más baja que la nota media
SELECT Nombre,Apellido1,Apellido2 FROM Alumno NATURAL JOIN Matrícula WHERE Nota<(SELECT AVG(Nota) FROM Matrícula);
-- 9. Selecciona el número de matrículas realizadas en cualquier curso por alumnos de la localidad Palma del Río
SELECT COUNT(Matrícula.NIF) AS "Numero de matrículas" FROM Matrícula,Alumno,Localidad WHERE Matrícula.NIF=Alumno.NIF AND Cod_Loc=Cod_Localidad AND Localidad.Nombre='Palma del Rio'; 
-- 10. Muestra un listado de todos los alumnos que tengan alguna localidad asignada.Muestra el nombre, apellido1, apellido2 y el nombre de la localidad
SELECT Alumno.Nombre,Apellido1,Apellido2,Localidad.Nombre FROM Alumno,Localidad WHERE Cod_Localidad=Cod_Loc AND Cod_Localidad IS NOT NULL;