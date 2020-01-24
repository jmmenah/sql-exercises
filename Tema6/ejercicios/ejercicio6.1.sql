--Ejercicio 2--

CREATE TABLE ejercicio2 (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(20),
	apellido1 VARCHAR(20),
	apellido2 VARCHAR(20),
	provincia VARCHAR(20) DEFAULT 'Jaen',
	fecha_de_nacimiento DATE,
	mayor_edad INT DEFAULT '0',
	PRIMARY KEY (id));

INSERT INTO ejercicio2 VALUES (1,'Ana','Lopez','Lopez','Jaen','1965-05-13',1);
INSERT INTO ejercicio2 VALUES (2,'Elena','Martinez','Martinez','Cordoba','2001-06-14',0);
INSERT INTO ejercicio2 VALUES (3,'Jaime','Madera',null,'Sevilla','2005-09-16',0);
INSERT INTO ejercicio2 VALUES (4,'Fernando','Caceres','Caceres','Jaen','1995-03-03',1);

--Ejercicio3--

CREATE TABLE ejercicio3 (
	id INT AUTO_INCREMENT,
	campo1 INT DEFAULT 1,
	campo2 VARCHAR(20) DEFAULT 'campo2',
	campo3 DATE DEFAULT '2019-01-25',
	PRIMARY KEY (id));

INSERT INTO ejercicio3 VALUES();
INSERT INTO ejercicio3 VALUES(0,2,'prueba set','2018-02-10');
INSERT INTO ejercicio3 VALUES(); --Inserta una nueva con id distinto
INSERT INTO ejercicio3 VALUES(0,id+2,DEFAULT,DEFAULT);

--Ejercicio4--

CREATE TABLE ejercicio4 (
	comunidad VARCHAR(40), 
	mujeres INT, 
	hombres INT, 
	total INT, 
	PRIMARY KEY (comunidad));

INSERT INTO ejercicio4 VALUES('Andalucia',1390,1282,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Aragon',192,159,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Asturias(Principado de )',144,156,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Balears(Illes)',56,46,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Canarias',189,139,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Cantabria',74,89,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Castilla - La Mancha',40,74,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Castilla y Leon',374,313,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Cataluña',1674,1462,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Comunitat Valenciana',1205,1012,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Estado',75,111,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Extremadura',175,136,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Galicia',337,300,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Madrid(Comunidad de)',2294,2102,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Murcia(Region de)',339,305,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Navarra(Comunidad Foral de)',142,118,hombres+mujeres);
INSERT INTO ejercicio4 VALUES('Pais Vasco',369,365,hombres+mujeres);

--Ejercicio5--

CREATE TABLE ejercicio5 (
	campo1 INT, 
	campo2 INT NOT NULL, 
	campo3 VARCHAR(2), 
	campo4 INT(1), 
	PRIMARY KEY (campo1));

INSERT INTO ejercicio5 VALUES(1,2,'ab',0);
INSERT INTO ejercicio5 VALUES(5,6,'cd',1);
INSERT INTO ejercicio5 VALUES(9,10,'ef',0);
INSERT INTO ejercicio5 VALUES(13,NULL,'gh',1);--No puede ser null el campo2
INSERT INTO ejercicio5 VALUES(4,8,'ij',16);
INSERT INTO ejercicio5 VALUES(17,'18','klm',1); --Error en la sintaxis, tiene que haber en 18 otra comilla

--Ejercicio6--

CREATE TABLE ejercicio6 (
	id INT AUTO_INCREMENT,
	campo1 INT DEFAULT 1,
	campo2 VARCHAR(20) DEFAULT 'campo2',
	campo3 DATE DEFAULT '2019-01-25',
	PRIMARY KEY (id));

REPLACE INTO ejercicio6 VALUES();
REPLACE INTO ejercicio6 VALUES(0,2,'prueba set','2018-02-10');
REPLACE INTO ejercicio6 VALUES();
REPLACE INTO ejercicio6 VALUES(0,id+2,DEFAULT,DEFAULT);

--Ejercicio7--

CREATE TABLE ejercicio7 (
	cod VARCHAR(3) ,
	nif VARCHAR(9) UNIQUE,
	nombre VARCHAR(20),
	PRIMARY KEY (cod));

INSERT INTO ejercicio7 VALUES('ABC','11111111F','Ana');
INSERT INTO ejercicio7 VALUES('DEF','22222222E','Jose');
INSERT INTO ejercicio7 VALUES('GEH','22222222E','Maria');--El DNI no es unico y el cod tampoco
INSERT INTO ejercicio7 VALUES('GEH','33333333E','Julio');

INSERT INTO ejercicio7 VALUES('IJK','22222222F','Maria');--Arreglado

--Ejercicio8--

CREATE TABLE ejercicio8 (
	campo1 INT, 
	campo2 VARCHAR(20), 
	campo3 INT,  
	PRIMARY KEY (campo1));

INSERT INTO ejercicio8 VALUES(1,'Campo2',2) ON DUPLICATE KEY UPDATE campo2='actualizado'; --Si
INSERT INTO ejercicio8 VALUES(2,'Campo2',3) ON DUPLICATE KEY UPDATE campo2='actualizado'; --Si
INSERT INTO ejercicio8 VALUES(1,'Campo2',2) ON DUPLICATE KEY UPDATE campo2='actualizado'; --Actualiza la primera inserccion
