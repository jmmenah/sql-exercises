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

