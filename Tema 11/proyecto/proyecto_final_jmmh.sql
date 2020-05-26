-- Juan Manuel Mena Hernández

/*Órdenes de system*/

-- 2.2- Crea el tablespace y el usuario, asignando los permisos adecuados.
-- 2.3- Crea la conexión al usuario/bbdd.

CREATE USER trofeo_alcaldesa IDENTIFIED BY secreto
default tablespace users;
grant connect,create session, resource to trofeo_alcaldesa;
grant resource to trofeo_alcaldesa;
grant create procedure to trofeo_alcaldesa;
grant create view to trofeo_alcaldesa;


/*Órdenes dentro de la conexión del ejercicio*/

-- 2.4- A partir del modelo relacional, crea las tablas en Oracle utilizando SQL Developer. Con los ajustes/modificaciones que te indique el profesor.
-- 2.5- Crea las llaves primarias y foráneas.
-- 2.6- Define las restricciones: null/not null, numéricas, mayúsculas,espacios, longitud de cadenas, patrones...
-- 2.7- Inserta datos en todas las tablas.

-- Todos estos puntos estan creados dentro de la creacion de las tablas y la inserccíon de datos

-- Creacion de las tablas e inserts

--------------------------------------------------------
--  Table EDICION
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."EDICION" 
   ("IDEDICION" NUMBER(4,0) NOT NULL, 
	"AÑO" NUMBER(4,0) NOT NULL
   );
  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."EDICION_PK" ON "TROFEO_ALCALDESA"."EDICION" ("IDEDICION");
  ALTER TABLE "TROFEO_ALCALDESA"."EDICION" ADD CONSTRAINT "EDICION_PK" PRIMARY KEY ("IDEDICION");

Insert into TROFEO_ALCALDESA.EDICION (IDEDICION,"AÑO") values ('1','2020');

--------------------------------------------------------
--  Table EQUIPO
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."EQUIPO" 
   ("IDEQUIPO" NUMBER(5,0) NOT NULL, 
	"IDEDICION" NUMBER(4,0) NOT NULL, 
	"NOMBRE" VARCHAR2(50) NOT NULL
   );
  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."EQUIPO_PK" ON "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION");
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_CHK1" CHECK (NOMBRE=UPPER(NOMBRE));
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_PK" PRIMARY KEY ("IDEQUIPO", "IDEDICION");
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_FK1" FOREIGN KEY ("IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EDICION" ("IDEDICION");


Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('1','1','MADERAS MORAL');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('2','1','AUTOS PEGALAJAR');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('3','1','GRAFICAS CHICA');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('4','1','LA FLOR DE VALENCIA');

--------------------------------------------------------
-- Table JORNADA
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."JORNADA" 
   ("IDJORNADA" NUMBER(2,0) NOT NULL, 
	"IDEDICION" NUMBER(4,0) NOT NULL
   );
  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."JORNADA_PK" ON "TROFEO_ALCALDESA"."JORNADA" ("IDJORNADA", "IDEDICION");
  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" ADD CONSTRAINT "JORNADA_PK" PRIMARY KEY ("IDJORNADA", "IDEDICION");
  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" ADD CONSTRAINT "JORNADA_FK1" FOREIGN KEY ("IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EDICION" ("IDEDICION");

Insert into TROFEO_ALCALDESA.JORNADA (IDJORNADA,IDEDICION) values ('1','1');
Insert into TROFEO_ALCALDESA.JORNADA (IDJORNADA,IDEDICION) values ('2','1');

--------------------------------------------------------
--  DDL for Table PARTIDO
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."PARTIDO" 
   ("IDPARTIDO" NUMBER(5,0) NOT NULL, 
	"EQUIPO1" NUMBER(5,0) NOT NULL, 
	"EQUIPO2" NUMBER(5,0) NOT NULL, 
	"RESULTADO" VARCHAR2(5) NOT NULL, 
	"IDEDICION" NUMBER(4,0) NOT NULL
   );
  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."PARTIDO_PK" ON "TROFEO_ALCALDESA"."PARTIDO" ("IDPARTIDO");
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_CHK1" CHECK (REGEXP_LIKE(RESULTADO,'[0-9][0-9]-[0-9][0-9]'));
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_PK" PRIMARY KEY ("IDPARTIDO");

Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('1','1','2','00-03','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('2','3','4','01-01','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('3','1','3','04-02','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('4','2','4','02-00','1');

  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_FK1" FOREIGN KEY ("EQUIPO1", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_FK2" FOREIGN KEY ("EQUIPO2", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") ENABLE;
--------------------------------------------------------
--  Table CLASIFICACION
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."CLASIFICACION" 
   ("IDCLASIFICACION" NUMBER(5,0) NOT NULL, 
	"IDEQUIPO" NUMBER(5,0) NOT NULL, 
	"IDJORNADA" NUMBER(2,0) NOT NULL, 
	"IDEDICION" NUMBER(4,0) NOT NULL, 
	"PUESTO" NUMBER(2,0) NOT NULL
   );
   CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."CLASIFICACION_PK" ON "TROFEO_ALCALDESA"."CLASIFICACION" ("IDCLASIFICACION");
   ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_PK" PRIMARY KEY ("IDCLASIFICACION");
   ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_FK1" FOREIGN KEY ("IDJORNADA", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."JORNADA" ("IDJORNADA", "IDEDICION");
   ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_FK2" FOREIGN KEY ("IDEQUIPO", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION");


Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('1','1','1','1','1');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('2','2','1','1','2');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('3','3','1','1','3');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('4','4','1','1','4');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('5','1','2','1','3');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('6','2','2','1','2');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('7','3','2','1','1');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('8','4','2','1','4');

-- VISTA

-- 2.8- Crea una vista y realiza una consulta sobre ella

CREATE VIEW clasificacion_ed1
AS SELECT IDJORNADA AS JORNADA, PUESTO,(SELECT NOMBRE FROM EQUIPO WHERE EQUIPO.IDEQUIPO=CLASIFICACION.IDEQUIPO) AS EQUIPO 
FROM CLASIFICACION ORDER BY PUESTO;
/

SELECT * FROM clasificacion_ed1 WHERE JORNADA=1;

/* Esta vista nos facilita ver la clasificacion de una misma edicion, en este caso la primera, de los equipos, 
de esta forma esta mucho mas a mano ya que es una consulta un poco compleja */

-- CONSULTAS

-- 3.1- Muestra las tablas que hay en la base de datos, describe las tablas.

SELECT * FROM USER_TABLES;
DESCRIBE EQUIPO;
DESCRIBE EDICION;
DESCRIBE JORNADA;
DESCRIBE PARTIDO;
DESCRIBE CLASIFICACION;

-- 3.2- Realiza 2 consultas sobre una tabla: *, columnas, alias, con condición...

SELECT * FROM CLASIFICACION;

SELECT * FROM EQUIPO WHERE IDEDICION=1;

-- 3.3- Realiza 2 consultas sobre varias tablas: join on, join using, where tabla1.id=tabla2.id...

SELECT PUESTO,NOMBRE,IDJORNADA FROM EQUIPO NATURAL JOIN CLASIFICACION;

SELECT AÑO,NOMBRE FROM EQUIPO,EDICION WHERE EQUIPO.IDEDICION=EDICION.IDEDICION AND NOMBRE='MADERAS MORAL';

-- 3.4-Crea 3 consultas agregadas

SELECT MIN(PUESTO) AS "MEJOR CLASIFICACION" FROM CLASIFICACION WHERE IDEQUIPO=1 GROUP BY IDEQUIPO;

SELECT AVG(PUESTO) AS "PUESTO MEDIO" FROM CLASIFICACION WHERE IDEQUIPO=1 GROUP BY EQUIPO;

SELECT COUNT(*) AS "NUMERO EQUIPOS" FROM EQUIPO WHERE IDEDICION=1;

-- 3.6- Crea 2 subconsultas

SELECT PUESTO,(SELECT NOMBRE FROM EQUIPO WHERE EQUIPO.IDEQUIPO=CLASIFICACION.IDEQUIPO) AS EQUIPO FROM CLASIFICACION WHERE IDJORNADA=2 ORDER BY PUESTO;

SELECT (SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO1) AS EQUIPO1,(SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO2) AS EQUIPO2, RESULTADO FROM PARTIDO;


-- ACTUALIZACIONES

-- 4.1- Realiza nuevas inserciones, actualizaciones y borrados.
-- 4.2- Realiza inserciones, actualizaciones y borrados usando consultas/condiciones.

Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('5','1','HIERROS MORAL');

Insert into TROFEO_ALCALDESA.EDICION (IDEDICION,AÑO) values ('2','2021');

Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('5','2','HIERROS MORAL');

Update EQUIPO SET NOMBRE='GRAFICAS CHICA' WHERE IDEQUIPO=3;

COMMIT WORK;

-- 4.3- Crea una tabla a partir del resultado de una consulta..

CREATE TABLE EQUIPOS_ED1 AS (SELECT NOMBRE FROM EQUIPO WHERE IDEDICION=1 );

COMMIT WORK;

-- 4.4- Crea un bloque de PL/SQL que pida datos para insertar en una tabla.

DECLARE
  
  EDICION NUMBER(4,0);
  AÑO NUMBER(4,0);
BEGIN
  EDICION:= TO_NUMBER('&edicion');
  AÑO:=  TO_NUMBER('&año');

  Insert into TROFEO_ALCALDESA.EDICION values (EDICION,AÑO);

END;
/


-- 4.5- Inserta una tupla en una tabla. Ejecuta commit y comprueba que los datos están al salir y volver a conectar.

Insert into TROFEO_ALCALDESA.EDICION (IDEDICION,AÑO) values ('4','2023');

COMMIT WORK;

-- 4.6- Modifica una tupla en una tabla. Ejecuta rollback y comprueba que los datos no están al salir y volver a conectar.

Update EQUIPO SET NOMBRE='INDUSTRIAS GRAFICAS CHICA' WHERE IDEQUIPO=3;

SELECT * FROM EQUIPO;

ROLLBACK;

SELECT * FROM EQUIPO;

-- 4.7- Crea un trigger que mantenga una regla de integridad que SQL y el MER no puedan comprobar.

/*Trigger que pone en mayusculas el campo nombre de la tabla equipo cada vez que inserta o actualiza un dato*/

CREATE OR REPLACE TRIGGER biu_equipos
BEFORE INSERT OR UPDATE
ON EQUIPO
FOR EACH ROW
BEGIN
  :NEW.NOMBRE:=UPPER(:NEW.NOMBRE);
END;
/

COMMIT WORK;

-- 5.1- Crea un trigger que asigne un valor autonumérico a un campo clave.

CREATE SEQUENCE edicion_seq START WITH 3;

CREATE OR REPLACE TRIGGER bi_edicion 
BEFORE INSERT ON edicion 
FOR EACH ROW

BEGIN
  SELECT edicion_seq.NEXTVAL
  INTO   :new.idedicion
  FROM   dual;
END;
/

COMMIT WORK;

-- 5.2- Crea dos procedimientos y dos funciones.

-- Procedimiento para insertar una nueva edicion

CREATE OR REPLACE PROCEDURE nueva_edicion
( n_idedicion IN edicion.idedicion%TYPE,
  n_año IN edicion.año%TYPE)
IS
BEGIN
INSERT INTO edicion
VALUES (n_idedicion,n_año);
END nueva_edicion;
/

COMMIT WORK;

-- Procedimiento para insertar un nuevo equipo

CREATE OR REPLACE PROCEDURE nuevo_equipo
( n_idequipo IN equipo.idequipo%TYPE,
  n_idedicion IN equipo.idedicion%TYPE,
  n_nombre IN equipo.nombre%TYPE)
IS
BEGIN
INSERT INTO equipo
VALUES (n_idequipo,n_idedicion,n_nombre);
END nuevo_equipo;
/

COMMIT WORK;

-- Funcion que devuelve el equipo dado un id de equipo y un id de edicion

CREATE OR REPLACE FUNCTION ver_equipo
( n_idequipo IN equipo.idequipo%TYPE,
  n_idedicion IN equipo.idedicion%TYPE
  )
RETURN VARCHAR2
IS
  n_nombre equipo.nombre%TYPE;
BEGIN
SELECT nombre INTO n_nombre
FROM equipo
WHERE idequipo=n_idequipo AND idedicion=n_idedicion;
return(n_nombre);
END ver_equipo;
/

COMMIT WORK;

-- Funcion que devuelve el resultado de un patido segun su id

CREATE OR REPLACE FUNCTION resultado
( n_idpartido IN partido.idpartido%TYPE
  )
RETURN VARCHAR2
IS
  n_resultado partido.resultado%TYPE;
BEGIN
SELECT resultado INTO n_resultado
FROM partido
WHERE idpartido=n_idpartido;
return(n_resultado);
END resultado;
/

COMMIT WORK;

-- 5.3- Crea un procedimiento que haga uso de un cursor.

-- Procedimiento que devuelve la lista de equipos

CREATE OR REPLACE PROCEDURE VER_EQUIPOS
AS 
    CURSOR CUR_EQUIPOS IS SELECT NOMBRE FROM equipo;
    V_EQUIPO EQUIPO.NOMBRE%TYPE;
BEGIN
    OPEN CUR_EQUIPOS;

    LOOP
        FETCH CUR_EQUIPOS INTO V_EQUIPO;
        EXIT WHEN CUR_EQUIPOS%NOTFOUND; 
        DBMS_OUTPUT.PUT_LINE(V_EQUIPO);
    END LOOP;

    CLOSE CUR_EQUIPOS;

END;
/

COMMIT WORK;
