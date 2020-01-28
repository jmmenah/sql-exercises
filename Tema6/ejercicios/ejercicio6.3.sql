--Ejercicio2--

DELETE FROM ejercicio4 WHERE hombres>2000;
DELETE FROM ejercicio4 WHERE mujeres>30 AND mujeres<100;
DELETE FROM ejercicio4 WHERE comunidad LIKE 'C%';
DELETE FROM ejercicio4 WHERE hombres>mujeres;
DELETE FROM ejercicio4 WHERE hombres<mujeres;

--Ejercicio3--

DELETE FROM ejercicio6 LIMIT 1008;

--Ejercicio4--

TRUNCATE ejercicio5;