-- Juan Manuel Mena Hernández

CREATE USER trofeo_alcaldesa IDENTIFIED BY secreto
default tablespace users;
grant connect,create session, resource to trofeo_alcaldesa;
grant resource to trofeo_alcaldesa;

-- Creacion de las tablas
--------------------------------------------------------
--  DDL for Table EDICION
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."EDICION" 
   (	"IDEDICION" NUMBER(4,0), 
	"AÑO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TROFEO_ALCALDESA.EDICION
SET DEFINE OFF;
Insert into TROFEO_ALCALDESA.EDICION (IDEDICION,"AÑO") values ('1','2020');
--------------------------------------------------------
--  DDL for Index EDICION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."EDICION_PK" ON "TROFEO_ALCALDESA"."EDICION" ("IDEDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EDICION
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."EDICION" ADD CONSTRAINT "EDICION_PK" PRIMARY KEY ("IDEDICION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."EDICION" MODIFY ("AÑO" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."EDICION" MODIFY ("IDEDICION" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Table EQUIPO
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."EQUIPO" 
   (	"IDEQUIPO" NUMBER(5,0), 
	"IDEDICION" NUMBER(4,0), 
	"NOMBRE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TROFEO_ALCALDESA.EQUIPO
SET DEFINE OFF;
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('1','1','MADERAS MORAL');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('2','1','AUTOS PEGALAJAR');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('3','1','GRAFICAS CHICA');
Insert into TROFEO_ALCALDESA.EQUIPO (IDEQUIPO,IDEDICION,NOMBRE) values ('4','1','LA FLOR DE VALENCIA');
--------------------------------------------------------
--  DDL for Index EQUIPO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."EQUIPO_PK" ON "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EQUIPO
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_CHK1" CHECK (NOMBRE=UPPER(NOMBRE)) ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_PK" PRIMARY KEY ("IDEQUIPO", "IDEDICION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" MODIFY ("IDEDICION" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" MODIFY ("IDEQUIPO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EQUIPO
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."EQUIPO" ADD CONSTRAINT "EQUIPO_FK1" FOREIGN KEY ("IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EDICION" ("IDEDICION") ENABLE;

--------------------------------------------------------
--  DDL for Table JORNADA
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."JORNADA" 
   (	"IDJORNADA" NUMBER(2,0), 
	"IDEDICION" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TROFEO_ALCALDESA.JORNADA
SET DEFINE OFF;
Insert into TROFEO_ALCALDESA.JORNADA (IDJORNADA,IDEDICION) values ('1','1');
Insert into TROFEO_ALCALDESA.JORNADA (IDJORNADA,IDEDICION) values ('2','1');
--------------------------------------------------------
--  DDL for Index JORNADA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."JORNADA_PK" ON "TROFEO_ALCALDESA"."JORNADA" ("IDJORNADA", "IDEDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table JORNADA
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" ADD CONSTRAINT "JORNADA_PK" PRIMARY KEY ("IDJORNADA", "IDEDICION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" MODIFY ("IDEDICION" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" MODIFY ("IDJORNADA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table JORNADA
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."JORNADA" ADD CONSTRAINT "JORNADA_FK1" FOREIGN KEY ("IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EDICION" ("IDEDICION") ENABLE;

--------------------------------------------------------
--  DDL for Table PARTIDO
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."PARTIDO" 
   (	"IDPARTIDO" NUMBER(5,0), 
	"EQUIPO1" NUMBER(5,0), 
	"EQUIPO2" NUMBER(5,0), 
	"RESULTADO" VARCHAR2(5 BYTE), 
	"IDEDICION" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TROFEO_ALCALDESA.PARTIDO
SET DEFINE OFF;
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('1','1','2','00-03','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('2','3','4','01-01','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('3','1','3','04-02','1');
Insert into TROFEO_ALCALDESA.PARTIDO (IDPARTIDO,EQUIPO1,EQUIPO2,RESULTADO,IDEDICION) values ('4','2','4','02-00','1');
--------------------------------------------------------
--  DDL for Index PARTIDO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."PARTIDO_PK" ON "TROFEO_ALCALDESA"."PARTIDO" ("IDPARTIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PARTIDO
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" MODIFY ("IDEDICION" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_CHK1" CHECK (REGEXP_LIKE(RESULTADO,'[0-9][0-9]-[0-9][0-9]')) ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_PK" PRIMARY KEY ("IDPARTIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" MODIFY ("RESULTADO" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" MODIFY ("EQUIPO2" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" MODIFY ("EQUIPO1" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" MODIFY ("IDPARTIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PARTIDO
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_FK1" FOREIGN KEY ("EQUIPO1", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."PARTIDO" ADD CONSTRAINT "PARTIDO_FK2" FOREIGN KEY ("EQUIPO2", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") ENABLE;

--------------------------------------------------------
--  DDL for Table CLASIFICACION
--------------------------------------------------------

  CREATE TABLE "TROFEO_ALCALDESA"."CLASIFICACION" 
   (	"IDCLASIFICACION" NUMBER(5,0), 
	"IDEQUIPO" NUMBER(5,0), 
	"IDJORNADA" NUMBER(2,0), 
	"IDEDICION" NUMBER(4,0), 
	"PUESTO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TROFEO_ALCALDESA.CLASIFICACION
SET DEFINE OFF;
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('1','1','1','1','1');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('2','2','1','1','2');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('3','3','1','1','3');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('4','4','1','1','4');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('5','1','2','1','3');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('6','2','2','1','2');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('7','3','2','1','1');
Insert into TROFEO_ALCALDESA.CLASIFICACION (IDCLASIFICACION,IDEQUIPO,IDJORNADA,IDEDICION,PUESTO) values ('8','4','2','1','4');
--------------------------------------------------------
--  DDL for Index CLASIFICACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TROFEO_ALCALDESA"."CLASIFICACION_PK" ON "TROFEO_ALCALDESA"."CLASIFICACION" ("IDCLASIFICACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLASIFICACION
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_PK" PRIMARY KEY ("IDCLASIFICACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" MODIFY ("PUESTO" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" MODIFY ("IDEDICION" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" MODIFY ("IDJORNADA" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" MODIFY ("IDEQUIPO" NOT NULL ENABLE);
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" MODIFY ("IDCLASIFICACION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLASIFICACION
--------------------------------------------------------

  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_FK1" FOREIGN KEY ("IDJORNADA", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."JORNADA" ("IDJORNADA", "IDEDICION") ENABLE;
  ALTER TABLE "TROFEO_ALCALDESA"."CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_FK2" FOREIGN KEY ("IDEQUIPO", "IDEDICION")
	  REFERENCES "TROFEO_ALCALDESA"."EQUIPO" ("IDEQUIPO", "IDEDICION") ENABLE;



-- CONSULTAS

SELECT PUESTO,NOMBRE,IDJORNADA FROM EQUIPO NATURAL JOIN CLASIFICACION;

SELECT (SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO1) AS EQUIPO1,(SELECT NOMBRE FROM EQUIPO WHERE IDEQUIPO=EQUIPO2) AS EQUIPO2, RESULTADO FROM PARTIDO;


