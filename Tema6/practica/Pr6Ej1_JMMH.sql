-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Pr6Ej1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pr6Ej1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pr6Ej1` DEFAULT CHARACTER SET utf8 ;
USE `Pr6Ej1` ;

-- -----------------------------------------------------
-- Table `Pr6Ej1`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pr6Ej1`.`provincia` (
  `cod_prov` INT NOT NULL,
  `nombre` VARCHAR(30) NULL,
  PRIMARY KEY (`cod_prov`),
  UNIQUE INDEX `cod_prov_UNIQUE` (`cod_prov` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pr6Ej1`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pr6Ej1`.`empleado` (
  `n_empl` INT NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  `apellido1` VARCHAR(30) NOT NULL,
  `apellido2` VARCHAR(30) NULL,
  `provincia` INT NOT NULL,
  `id_sec` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`n_empl`),
  UNIQUE INDEX `n_empl_UNIQUE` (`n_empl` ASC),
  INDEX `fk_empleado_provincia1_idx` (`provincia` ASC),
  INDEX `fk_empleado_seccion1_idx` (`id_sec` ASC),
  CONSTRAINT `fk_empleado_provincia1`
    FOREIGN KEY (`provincia`)
    REFERENCES `Pr6Ej1`.`provincia` (`cod_prov`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_empleado_seccion1`
    FOREIGN KEY (`id_sec`)
    REFERENCES `Pr6Ej1`.`seccion` (`id_sec`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pr6Ej1`.`seccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pr6Ej1`.`seccion` (
  `id_sec` VARCHAR(10) NOT NULL,
  `descripcion` VARCHAR(15) NOT NULL,
  `n_empl_jefe` INT NULL,
  PRIMARY KEY (`id_sec`),
  UNIQUE INDEX `id_sec_UNIQUE` (`id_sec` ASC),
  INDEX `fk_seccion_empleado1_idx` (`n_empl_jefe` ASC),
  CONSTRAINT `fk_seccion_empleado1`
    FOREIGN KEY (`n_empl_jefe`)
    REFERENCES `Pr6Ej1`.`empleado` (`n_empl`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pr6Ej1`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pr6Ej1`.`empresa` (
  `cod_empr` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `direccion` VARCHAR(35) NULL,
  `telefono` VARCHAR(11) NULL,
  `correo` VARCHAR(20) NULL,
  `provincia` INT NOT NULL,
  PRIMARY KEY (`cod_empr`),
  UNIQUE INDEX `cod_empr_UNIQUE` (`cod_empr` ASC),
  INDEX `fk_empresa_provincia1_idx` (`provincia` ASC),
  CONSTRAINT `fk_empresa_provincia1`
    FOREIGN KEY (`provincia`)
    REFERENCES `Pr6Ej1`.`provincia` (`cod_prov`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pr6Ej1`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pr6Ej1`.`producto` (
  `cod_prod` VARCHAR(5) NOT NULL,
  `precio_compra` FLOAT NULL,
  `precio_venta` FLOAT NULL,
  `empresa` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`cod_prod`, `empresa`),
  UNIQUE INDEX `cod_prod_UNIQUE` (`cod_prod` ASC),
  INDEX `fk_producto_empresa_idx` (`empresa` ASC),
  CONSTRAINT `fk_producto_empresa`
    FOREIGN KEY (`empresa`)
    REFERENCES `Pr6Ej1`.`empresa` (`cod_empr`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

--Desactivamos la comprobacion de claves foraneas
SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------
-- Inserts `Pr6Ej1`.`seccion`
-- -----------------------------------------------------

INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('ATV','Antivirus',5);
INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('CONT','Contabilidad',8);
INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('EDU','Educativo',7);
INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('JUG','Juegos',NULL);
INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('OFI','Ofimática',10);
INSERT INTO `seccion` (`id_sec`,`descripcion`,`n_empl_jefe`) VALUES ('OTR','Otros',3);

-- -----------------------------------------------------
-- Inserts `Pr6Ej1`.`empresa`
-- -----------------------------------------------------

INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('ANTV_SA', 'Antivirus,S.A.', NULL, '611111111', 'antvsa@correo.com', '05');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('OFI_JA', 'OfiJaén,S.L.', NULL, '622222222', 'ofija@correo.com', '22');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('EDUSYS', 'EduSystem,S.A.', NULL, '633333333', 'edusystem@correo.es', '15');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('JUG_D', 'Juegos y Deportes,S.A.', NULL, '644444444', 'juegos@correo.es', '50');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('CONT_SA', 'Contabilidad,S.A.', NULL, '655555555', 'contsa@correo.es', '26');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('CONTABLE', 'Contable,S.L.', NULL, '677777777', 'contablesl@correo.es', '36');
INSERT INTO `Pr6Ej1`.`empresa` (`cod_empr`, `nombre`, `direccion`, `telefono`, `correo`, `provincia`) VALUES ('EDUSOFT', 'EduSoft,S.L.', NULL, '688888888', 'edusoft@correo.es', '42');

-- -----------------------------------------------------
-- Inserts `Pr6Ej1`.`provincia`
-- -----------------------------------------------------

INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (0,'Álava');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (1,'Albacete');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (2,'Alicante');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (3,'Almería');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (4,'Ávila');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (5,'Badajoz');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (6,'Islas Baleares');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (7,'Barcelona');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (8,'Burgos');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (9,'Cáceres');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (10,'Cádiz');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (11,'Castellón');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (12,'Ciudad Real');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (13,'Córdoba');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (14,'Coruña');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (15,'Cuenca');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (16,'Girona');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (17,'Granada');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (18,'Guadalajara');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (19,'Gipuzkoa');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (20,'Huelva');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (21,'Huesca');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (22,'Jaén');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (23,'León');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (24,'Lleida');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (25,'La Rioja');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (26,'Lugo');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (27,'Madrid');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (28,'Málaga');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (29,'Murcia');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (30,'Navarra');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (31,'Ourense');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (32,'Asturias');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (33,'Palencia');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (34,'Las Palmas');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (35,'Pontevedra');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (36,'Salamanca');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (37,'S.C.Tenerife');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (38,'Cantabria');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (39,'Segovia');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (40,'Sevilla');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (41,'Soria');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (42,'Tarragona');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (43,'Teruel');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (44,'Toledo');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (45,'Valencia');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (46,'Valladolid');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (47,'Vizcaya');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (48,'Zamora');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (49,'Zaragoza');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (50,'Ceuta');
INSERT INTO `provincia` (`cod_prov`,`nombre`) VALUES (51,'Melilla');

-- -----------------------------------------------------
-- Inserts `Pr6Ej1`.`empleado`
-- -----------------------------------------------------

INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('0', 'Jaime', 'Segovia', 'Segovia', '14', 'CONT');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('1', 'Manuel', 'Aguilar', 'Aguilar', '17', 'EDU');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('2', 'Alba', 'Rodríguez', 'Cano', '20', 'OTR');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('3', 'Alicia', 'Valdivia', 'Cobo', '18', 'OFI');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('4', 'Felipe', 'Extremera', 'Escabias', '18', 'ATV');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('5', 'Julián', 'Cobo', 'Aceituno', '22', 'JUG');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('6', 'Antonia', 'Ruiz', 'Ruiz', '22', 'EDU');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('7', 'María', 'Madera', 'Molina', '13', 'CONT');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('8', 'Andrés', 'Tello', 'García', '05', 'EDU');
INSERT INTO `Pr6Ej1`.`empleado` (`n_empl`, `nombre`, `apellido1`, `apellido2`, `provincia`, `id_sec`) VALUES ('9', 'Mario', 'Molina', 'Pérez', '06', 'OFI');

-- -----------------------------------------------------
-- Inserts `Pr6Ej1`.`producto`
-- -----------------------------------------------------

INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('AVW', '15', '20', 'ANTV_SA');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('ECBIO', '10', '30', 'EDUSOFT');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('ECSH', '20', '40', 'EDUSYS');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('JUBA', '10', '30', 'JUG_D');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('COPY', '30', '60', 'CONT_SA');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('COOP', '30', '60', 'CONTABLE');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('OFIP', '10', '20', 'OFI_JA');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('OFIC', '10', '20', 'OFI_JA');
INSERT INTO `Pr6Ej1`.`producto` (`cod_prod`, `precio_compra`, `precio_venta`, `empresa`) VALUES ('AVAN', '10', '15', 'ANTV_SA');

--Activamos la comprobacion de las claves foraneas

SET FOREIGN_KEY_CHECKS = 1;


--Incrementa en un 5% el precio de compra de todos los productos de la empresa OFI_JA

UPDATE `Pr6Ej1`.`producto` SET precio_compra=precio_compra*1.05 WHERE empresa='OFI_JA';

--Reduce en un 8% el precio de venta de todos los productos cuyo precio_venta sea mayor de 60

SET SQL_SAFE_UPDATES = 0;
UPDATE `Pr6Ej1`.`producto` SET precio_compra=precio_compra*0.92 WHERE precio_venta>=60;
SET SQL_SAFE_UPDATES = 1;

--Establece un beneficio del 30% para todos los productos cuyo precio de compra está entre 9 y 14. Es decir, el precio_venta será igual al precio_compra + 30%precio_compra

SET SQL_SAFE_UPDATES = 0;
UPDATE `Pr6Ej1`.`producto` SET precio_venta=precio_compra*1.3 WHERE precio_compra>9 AND precio_compra<14;
SET SQL_SAFE_UPDATES = 1;

--Establece como empleado jefe de la sección juegos al empleado de código 6 (Julián Cobo).

UPDATE `Pr6Ej1`.`seccion` SET n_empl_jefe=6 WHERE id_sec='JUG';

--Alicia Valdivia Cobo ha cambiado de sección: pasa de ofimática a otros. Incluye esta modificación en la base de datos (no debes usar el código del empleado, solo el nombre y los apellidos)

SET SQL_SAFE_UPDATES = 0;
UPDATE `Pr6Ej1`.`empleado` SET id_sec='OTR' WHERE nombre='Alicia' AND apellido1='Valdivia' AND apellido2='Cobo';
SET SQL_SAFE_UPDATES = 1;

--Modifica la provincia del empleado de código 1 a la 19

UPDATE `Pr6Ej1`.`empleado` SET provincia=19 WHERE n_empl=1;

--Cambia el correo electrónico de la empresa CONT_SA a correosa@correo.com

UPDATE `Pr6Ej1`.`empresa` SET correo='correosa@correo.com' WHERE cod_empr='CONT_SA';

--Deja el departamento otros sin jefe

UPDATE `Pr6Ej1`.`seccion` SET `n_empl_jefe`=NULL WHERE `id_sec`='OTR';

--Cambia la denominación del producto OFIC a “hoja de cálculo de OFI_JA”

--No puede hacerse, la tabla no tiene ese campo

--Cambia el código del producto ECBIO a BIOED

UPDATE `Pr6Ej1`.`producto` SET cod_prod='BIOED' WHERE cod_prod='ECBIO';

--Cambia el código de la sección ATV a ANT. ¿Puedes hacerlo? Si ¿Se modifica la sección en los empleados que trabajan en ella? Si ¿Por qué? Por la clave foranea

UPDATE `Pr6Ej1`.`seccion` SET id_sec='ANT' WHERE id_sec='ATV';

--Borra el producto de código OFIP. ¿Puedes hacerlo? Si ¿Por qué?

DELETE FROM `Pr6Ej1`.`producto` WHERE cod_prod='OFIP';

--Borra la sección “JUG”. ¿Puedes hacerlo? No ¿Por qué? Porque la clave foranea no lo permite ¿Qué ocurre con los empleados y los productos de esta sección?

DELETE FROM `Pr6Ej1`.`seccion` WHERE id_sec='JUG';

--Borra la localidad de código 05. ¿Puedes hacerlo? No ¿Por qué? Porque hay tablas que usan esa provincia

DELETE FROM `Pr6Ej1`.`provincia` WHERE cod_prov=5;

--Borra el empleado de código 7. ¿Puedes hacerlo? Si ¿Por qué? Porque no existe ninguna tabla que use esa provincia

DELETE FROM `Pr6Ej1`.`provincia` WHERE cod_prov=7;

--Borra todas las tablas de la base de datos de forma que no obtengas ningún error cuando ejecutes las sentencias correspondientes. Justifica el orden de borrado

--Es imposible ya que las tablas empleado y seccion estan relacionadas mutuamente, por tanto hay que desactivar las claves foraneas

SET SQL_SAFE_UPDATES = 0;

DROP TABLE `Pr6Ej1`.`producto`;
DROP TABLE `Pr6Ej1`.`empresa`;
DROP TABLE `Pr6Ej1`.`empleado`;
DROP TABLE `Pr6Ej1`.`seccion`;
DROP TABLE `Pr6Ej1`.`provincia`;

SET SQL_SAFE_UPDATES = 1;

--Ejercicio 2

CREATE TABLE `ine`.`nombre_juan_manuel` (
  `provincia` VARCHAR(45) NOT NULL,
  `total` INT NOT NULL,
  `por_mil` INT NOT NULL,
  PRIMARY KEY (`provincia`));

LOAD DATA INFILE '/home/juanma/Descargas/tnombres900094375.csv' 
INTO TABLE nombres_juan_manuel
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(provincia,total,por_mil);
