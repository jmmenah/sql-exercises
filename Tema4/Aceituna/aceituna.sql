-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema aceituna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aceituna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aceituna` DEFAULT CHARACTER SET utf8 ;
USE `aceituna` ;

-- -----------------------------------------------------
-- Table `aceituna`.`transporte`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aceituna`.`transporte` ;

CREATE TABLE IF NOT EXISTS `aceituna`.`transporte` (
  `matricula` VARCHAR(7) NOT NULL,
  `cliente` VARCHAR(70) NOT NULL,
  `tipo` ENUM('REMOLQUE', 'PICKUP', 'CAMIÓN') NOT NULL,
  `mma` INT(6) NOT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `matricula_UNIQUE` ON `aceituna`.`transporte` (`matricula` ASC);

-- -----------------------------------------------------
-- Table `aceituna`.`carga`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aceituna`.`carga` ;

CREATE TABLE IF NOT EXISTS `aceituna`.`carga` (
  `id_carga` INT(11) NOT NULL AUTO_INCREMENT,
  `kilos` FLOAT(6,2) NOT NULL,
  `rendimiento` INT(11) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `matricula` VARCHAR(7) NOT NULL,
  PRIMARY KEY (`id_carga`),
  CONSTRAINT `fk_carga_transporte`
    FOREIGN KEY (`matricula`)
    REFERENCES `aceituna`.`transporte` (`matricula`))
ENGINE = InnoDB
AUTO_INCREMENT = 34
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `id_carga_UNIQUE` ON `aceituna`.`carga` (`id_carga` ASC);

CREATE INDEX `fk_carga_transporte_idx` ON `aceituna`.`carga` (`matricula` ASC);


USE `aceituna`;

DELIMITER $$

USE `aceituna`$$
DROP TRIGGER IF EXISTS `aceituna`.`transporte_BEFORE_INSERT` $$
USE `aceituna`$$
CREATE
DEFINER=`admin`@`%`
TRIGGER `aceituna`.`transporte_BEFORE_INSERT`
BEFORE INSERT ON `aceituna`.`transporte`
FOR EACH ROW
BEGIN
	set new.matricula=upper(new.matricula);
    set new.cliente=upper(new.cliente);
    set new.tipo=upper(new.tipo);
END$$


DELIMITER ;

-- -----------------------------------------------------
-- Inserts transporte
-- -----------------------------------------------------

INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('0111VPJ', 'Aceites El Escurridizo', 'pickup', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('0832SBC', 'Proaceituna', 'remolque', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('1083HDZ', 'Aceites El Escurridizo', 'camión', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('1354DBB', 'Aceitunera de Jaén NP', 'pickup', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('2610UZB', 'Aceite Cordobés', 'remolque', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('4230BMR', 'Aceites El Escurridizo', 'remolque', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('5241BPN', 'Proaceituna', 'remolque', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('6524PGQ', 'Proaceituna', 'camión', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('8998VSY', 'Proaceituna', 'remolque', 0);
INSERT INTO aceituna.transporte (matricula, cliente, tipo, mma) VALUES ('9017LTD', 'Proaceituna', 'camión', 0);

-- -----------------------------------------------------
-- Inserts carga
-- -----------------------------------------------------

INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (1, 279.58, 33, '2020-03-17 05:52:37', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (2, 1111.47, 81, '2020-02-27 00:41:20', '0832SBC');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (3, 1795.64, 4, '2020-03-06 13:57:54', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (4, 328.23, 14, '2020-03-13 00:59:57', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (5, 1409.79, 79, '2020-01-10 22:20:51', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (6, 1638.18, 96, '2019-12-17 09:20:22', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (7, 25.39, 57, '2020-05-11 21:16:02', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (8, 1945.11, 47, '2020-04-19 19:14:39', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (9, 413.50, 67, '2020-03-04 22:16:48', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (10, 1292.50, 42, '2020-04-19 14:19:34', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (11, 1832.44, 59, '2019-12-30 08:55:14', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (12, 962.39, 4, '2020-05-26 19:49:27', '0832SBC');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (13, 2682.12, 20, '2020-01-04 02:45:21', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (14, 1985.61, 97, '2020-03-23 08:07:30', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (15, 2843.89, 73, '2020-01-24 03:47:25', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (16, 655.79, 88, '2019-12-15 02:32:14', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (17, 2854.41, 75, '2020-03-17 18:23:37', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (18, 1814.34, 38, '2020-04-23 15:17:16', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (19, 2387.40, 93, '2020-05-15 09:14:29', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (20, 1948.39, 19, '2020-01-22 05:15:18', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (21, 2614.38, 32, '2020-02-28 02:08:31', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (22, 2669.70, 66, '2020-04-12 13:50:37', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (23, 620.14, 31, '2020-02-12 13:16:45', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (24, 1283.41, 12, '2020-02-05 07:51:26', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (25, 1849.55, 66, '2019-12-23 22:53:14', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (26, 11.71, 53, '2020-04-15 11:30:10', '0111VPJ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (27, 1384.61, 56, '2020-03-17 11:12:12', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (28, 1248.11, 12, '2020-03-23 17:15:32', '0832SBC');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (29, 1175.44, 96, '2020-01-03 01:24:28', '0832SBC');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (30, 1868.71, 76, '2020-05-09 12:00:55', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (31, 1340.89, 90, '2020-02-14 16:38:37', '1083HDZ');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (32, 1120.34, 58, '2020-03-03 21:59:12', '0832SBC');
INSERT INTO aceituna.carga (id_carga, kilos, rendimiento, fecha, matricula) VALUES (33, 672.01, 81, '2020-04-24 17:37:04', '0111VPJ');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
