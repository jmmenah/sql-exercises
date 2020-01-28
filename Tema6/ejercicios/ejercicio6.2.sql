--Ejercicio2--

CREATE TABLE ejercicio2 (
	nombre VARCHAR(20),
	frecuencia INT,
	porcentaje FLOAT(3,1),
	sexo ENUM('hombre','mujer'),
	PRIMARY KEY (nombre));

LOAD DATA INFILE '/var/lib/mysql-files/Nombres.txt' 
INTO TABLE ejercicio2
FIELDS TERMINATED BY '\t' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nombre,frecuencia,porcentaje,sexo);

--Ejercicio3--

REPLACE ejercicio3 VALUES(2,id*3,'prueba set','2018-02-10');--Se modifica el campo con id=2

--Ejercicio4--

REPLACE ejercicio3 SET id=4,campo2='campo4';

--Ejercicio5--

UPDATE ejercicio2 SET apellido2=null WHERE provincia='Jaen';
UPDATE ejercicio2 SET id=id*10 WHERE mayor_edad=1;
UPDATE ejercicio2 SET id=100, apellido2='Valdivia' WHERE fecha_de_nacimiento>'2005-10-15';
UPDATE ejercicio2 SET nombre='Maria' WHERE apellido1 LIKE 'M%' AND apellido1 LIKE '%z';

--Ejercicio6--

CREATE TABLE ejercicio6 (
	COD_CNAE2009 VARCHAR(10),
	CODINTEGR VARCHAR(10),
	TITULO_CNAE2009 VARCHAR(160),
	PRIMARY KEY (COD_CNAE2009));

LOAD DATA INFILE '/var/lib/mysql-files/estructura_cnae2009.csv' 
INTO TABLE ejercicio6
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(COD_CNAE2009,CODINTEGR,TITULO_CNAE2009);