-- 1. Selecciona todos los datos de las matrículas de los alumnos de Córdoba (el código de los pueblos de Córdoba empieza por 14)
SELECT NIF,Cod_Asig,Nota,Fecha FROM Alumno NATURAL JOIN Matrícula WHERE Cod_Localidad LIKE '14%';
SELECT * FROM Matrícula WHERE NIF IN(SELECT NIF FROM Alumno WHERE Cod_Localidad IN(SELECT Cod_Loc FROM Localidad WHERE Cod_Loc LIKE '14%'));
-- 2. Obtén el número de matrículas total de las asignaturas del departamento de matemáticas
SELECT COUNT(NIF) AS "Número de matrículas" FROM Matrícula,Asignatura WHERE Código=Cod_Asig AND Descripción='Matemáticas';
-- 3. Selecciona el código de la asignatura y el NIF de los alumnos matriculados en alguna asignatura del departamento de matemáticas. Usa dos soluciones: con join y con where
SELECT Cod_Asig,NIF FROM Matrícula,Asignatura WHERE Código=Cod_Asig AND Departamento='MAT';
SELECT Cod_Asig,NIF FROM Matrícula JOIN Asignatura ON Código=Cod_Asig AND Departamento='MAT';
SELECT Cod_Asig,NIF FROM Matrícula WHERE Cod_Asig IN (SELECT Código FROM Asignatura WHERE Departamento='MAT');
-- 4. Selecciona el código de la asignatura y el nombre completo de los alumnos matriculados en alguna asignatura del departamento de matemáticas
SELECT Cod_Asig, CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Matrícula,Alumno,Asignatura WHERE Alumno.NIF=Matrícula.NIF AND Código=Cod_Asig AND Departamento='MAT';
SELECT CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Alumno WHERE IN (SELECT Cod_Asig FROM Matrícula WHERE Cod_Asig IN (SELECT Código FROM Asignatura WHERE Departamento='MAT'));
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
-- 11. Muestra el mismo listado que el apartado anterior, pero incluyendo todos los alumnos. Si no tienen ninguna localidad asignada, debe mostrarse el texto “Localidad no asignada”. Resuelve la consulta de dos maneras
SELECT Alumno.Nombre,Apellido1,Apellido2,IFNULL(Localidad.Nombre,"Localidad no Asignada") AS "Localidad" FROM Alumno LEFT JOIN Localidad ON Cod_Localidad=Cod_Loc;
SELECT Alumno.Nombre,Apellido1,Apellido2,COALESCE(Localidad.Nombre,"Localidad no Asignada") AS "Localidad" FROM Alumno LEFT JOIN Localidad ON Cod_Localidad=Cod_Loc;
-- 12. Muestra la nota media de los alumnos por localidad. Calcula también la de los alumnos que no tienen ninguna localidad asignada
SELECT IFNULL(Cod_Localidad, "Sin Localidad Asignada") AS "Locadidad",AVG(Nota) AS "Media" FROM Matrícula RIGHT JOIN Alumno ON Matrícula.NIF=Alumno.NIF GROUP BY Cod_Localidad;
-- 13. Muestra un listado con el nombre completo de los alumnos que se matricularon en el año más antiguo registrado en la base de datos
SELECT CONCAT_WS(' ',Nombre,Apellido1,Apellido2) AS "Nombre completo" FROM Matrícula NATURAL JOIN Alumno WHERE YEAR(Fecha)=(SELECT MIN(YEAR(Fecha)) FROM Matrícula) GROUP BY NIF;
-- 14. Muestra el nombre de las asignaturas (en mayúsculas) que en las que haya dos o más matrículas registradas
SELECT UPPER(Descripción) AS "Asignatura" FROM Matrícula,Asignatura WHERE Código=Cod_Asig GROUP BY Descripción,Curso HAVING COUNT(*)>=2;
-- 15. Selecciona el código de las asignaturas que tengan el máximo número de matrículas realizadas
SELECT Cod_Asig FROM Matrícula GROUP BY Cod_Asig HAVING COUNT(*)>=2;
-- 16. Igual que el caso anterior, pero mostrando la descripción de las asignaturas en lugar del código
SELECT Descripción FROM Matrícula,Asignatura WHERE Cod_Asig=Código GROUP BY Cod_Asig HAVING COUNT(*)>=2;
-- 17. Selecciona la localidad que tenga dos o más alumnos matriculados
SELECT Localidad.Nombre FROM Matrícula,Alumno,Localidad WHERE Matrícula.NIF=Alumno.NIF AND Cod_Loc=Cod_Localidad GROUP BY Localidad.Nombre HAVING COUNT(*)>=2; 
-- 18. Selecciona la descripción de las asignaturas cuyo número de matrículas esté entre 0 y 1
SELECT Descripción FROM Matrícula,Alumno,Asignatura WHERE Matrícula.NIF=Alumno.NIF AND Código=Cod_Asig GROUP BY Descripción,Curso HAVING COUNT(*)<2; 
