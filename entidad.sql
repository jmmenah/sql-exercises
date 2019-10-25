--$ sudo mysql -u root -p

Creamos un usuario que administre:

CREATE USER admin@'%' IDENTIFIED WITH mysql_native_password BY 'Qwerty1234#'; --> Ejecutar tal cual, sin cambiar nada. El '%' indica el comodín para cualquier host.

GRANT ALL PRIVILEGES ON *.* to admin@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- Salimos y entramos de nuevo con admin:

-- $mysql -u admin -p

-- Creamos el esquema almacén;

CREATE SCHEMA almacen;

--Vemos las bases de datos disponibles:

SHOW schemas;

--Usamos almacén:

USE almacen;

--Creamos la tabla productos en el esquema:

CREATE TABLE IF NOT EXISTS productos (

         idProducto       INT AUTO_INCREMENT,

         codigo          CHAR(3)       NOT NULL DEFAULT '',

         nombre           VARCHAR(30)   NOT NULL DEFAULT '',

         cantidad        INT UNSIGNED  NOT NULL DEFAULT 0,

         precio            DECIMAL(7,2)  NOT NULL DEFAULT 99999.99,

         PRIMARY KEY  (idProducto)

       );

--Comprobamos que hemos creado la tabla:

SHOW TABLES;

DESCRIBE productos;

SHOW CREATE TABLE productos\G;
--INSERTANDO DATOS:

--Todos los campos:

INSERT INTO productos VALUES (NULL, '001','CHANDAL', 12, 30 );

--Omitiendo el autoincremental:

INSERT INTO productos (Codigo, nombre, cantidad, precio)

VALUES

('002','ZAPATO GRIS',23, 34.3);

Varias filas a la vez:

INSERT INTO productos (Codigo, nombre, cantidad, precio)

VALUES

('002','ZAPATO VERDE',23, 34.3),

('001','SUDADERA',35, 50.3),

('002','ZAPATO ROSA',2, 39.3);


-- Borra todos los datos de la tabla con la orden truncate.

TRUNCATE TABLE productos;


-- Inserta los datos en la tabla con la siguiente orden desde la consola:


--    Nos posicionamos en la carpeta en la que tengamos el archivo


--    Accedemos a Mysql con lo siguiente: mysql -u admin -p almacen <productos.sql


-- Realiza las siguientes consultas:


--    Selecciona todo

SELECT * FROM productos;

--    Selecciona el nombre y el precio

SELECT nombre, precio FROM productos;

--    Nombre y precio de los productos con un código determinado

SELECT nombre, precio FROM productos WHERE codigo='CIE';

--    Selecciona los distintos tipos de producto (DISTINCT)

SELECT DISTINCT codigo FROM productos;

--    Los que valgan menos de un precio dado

SELECT * FROM productos WHERE precio= '21';

--    Cuyo precio sea menor o igual a 200

SELECT * FROM productos WHERE precio<= '200';

--    Todos los productos ordenados por precio

SELECT * FROM productos ORDER BY precio;

--    Todos los precios distintos que hay. Usa un alias “Precios distintos”

SELECT DISTINCT precio AS 'Precios Distintos' FROM productos;

--    Crea los usuarios jacinto en cualquier host y con superpoderes.

CREATE USER jacinto@'%' IDENTIFIED WITH mysql_native_password BY 'Qwerty1234#';
GRANT ALL PRIVILEGES ON *.* to jacinto@'%';
FLUSH PRIVILEGES;


