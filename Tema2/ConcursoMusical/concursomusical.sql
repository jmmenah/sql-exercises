-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema concurso
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema concurso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `concurso` DEFAULT CHARACTER SET utf8 ;
USE `concurso` ;

-- -----------------------------------------------------
-- Table `concurso`.`grupos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concurso`.`grupos` (
  `nombre` VARCHAR(70) NOT NULL,
  `tipomusica` ENUM('ROCK', 'FLAMENCO', 'POP') NOT NULL,
  `añoformacion` INT UNSIGNED NOT NULL,
  `localidad` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concurso`.`componentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concurso`.`componentes` (
  `nif` VARCHAR(9) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `fechanacimiento` DATE NOT NULL,
  `edad` INT NOT NULL,
  `telefono` VARCHAR(12) NOT NULL,
  `telefonoemergencia` VARCHAR(12) NOT NULL,
  `instrumento` VARCHAR(45) NOT NULL,
  `grupo` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`nif`, `grupo`),
  CONSTRAINT `fk_componentes_grupos`
    FOREIGN KEY (`grupo`)
    REFERENCES `concurso`.`grupos` (`nombre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE INDEX `fk_componentes_grupos_idx` ON `concurso`.`componentes` (`grupo` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `concurso`.`grupos`
-- -----------------------------------------------------
START TRANSACTION;
USE `concurso`;
INSERT INTO `concurso`.`grupos` (`nombre`, `tipomusica`, `añoformacion`, `localidad`) VALUES ('agua', 'pop', 2012, 'jaen');
INSERT INTO `concurso`.`grupos` (`nombre`, `tipomusica`, `añoformacion`, `localidad`) VALUES ('jaspe', 'flamenco', 1990, 'cordoba');
INSERT INTO `concurso`.`grupos` (`nombre`, `tipomusica`, `añoformacion`, `localidad`) VALUES ('azules', 'rock', 2003, 'sevilla');

COMMIT;


-- -----------------------------------------------------
-- Data for table `concurso`.`componentes`
-- -----------------------------------------------------
START TRANSACTION;
USE `concurso`;
INSERT INTO `concurso`.`componentes` (`nif`, `nombre`, `fechanacimiento`, `edad`, `telefono`, `telefonoemergencia`, `instrumento`, `grupo`) VALUES ('47820174B', 'jose garcia', '1996-05-04', 23, '645821741', '69017258', 'guitarra', 'jaspe');

COMMIT;

