-- Juan Manuel Mena Hernández

/*Órdenes de system*/

CREATE USER trofeo_alcaldesa IDENTIFIED BY secreto
default tablespace users;
grant connect,create session, resource to trofeo_alcaldesa;
grant resource to trofeo_alcaldesa;


/*Órdenes dentro de la conexión del ejercicio*/

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
	"NOMBRE" VARCHAR2(50)
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

-- CONSULTAS

SELECT * FROM CLASIFICACION;

SELECT PUESTO,(SELECT NOMBRE FROM EQUIPO WHERE EQUIPO.IDEQUIPO=CLASIFICACION.IDEQUIPO) AS EQUIPO FROM CLASIFICACION WHERE IDJORNADA=2 ORDER BY PUESTO;

SELECT PUESTO,NOMBRE,IDJORNADA FROM EQUIPO NATURAL JOIN CLASIFICACION;

SELECT (SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO1) AS EQUIPO1,(SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO2) AS EQUIPO2, RESULTADO FROM PARTIDO;


