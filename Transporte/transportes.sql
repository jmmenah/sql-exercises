-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`provincias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`provincias` (
  `codigoprovincia` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codigoprovincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`paquetes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`paquetes` (
  `idpaquetes` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(120) NOT NULL,
  `destinatario` VARCHAR(120) NOT NULL,
  `direccionDestinatario` VARCHAR(45) NOT NULL,
  `provincias_codigoprovincia` INT NOT NULL,
  PRIMARY KEY (`idpaquetes`, `provincias_codigoprovincia`),
  CONSTRAINT `fk_paquetes_provincias1`
    FOREIGN KEY (`provincias_codigoprovincia`)
    REFERENCES `mydb`.`provincias` (`codigoprovincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idpaquetes_UNIQUE` ON `mydb`.`paquetes` (`idpaquetes` ASC);

CREATE INDEX `fk_paquetes_provincias1_idx` ON `mydb`.`paquetes` (`provincias_codigoprovincia` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`transportistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`transportistas` (
  `dni` VARCHAR(15) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `salario` INT NOT NULL,
  `localidad` VARCHAR(45) NOT NULL,
  `paquetes_idpaquetes` INT NOT NULL,
  PRIMARY KEY (`dni`, `paquetes_idpaquetes`),
  CONSTRAINT `fk_transportistas_paquetes`
    FOREIGN KEY (`paquetes_idpaquetes`)
    REFERENCES `mydb`.`paquetes` (`idpaquetes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_transportistas_paquetes_idx` ON `mydb`.`transportistas` (`paquetes_idpaquetes` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`camiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`camiones` (
  `matricula` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `potencia` INT NOT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usoCamion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usoCamion` (
  `camiones_matricula` VARCHAR(10) NOT NULL,
  `transportistas_dni` VARCHAR(15) NOT NULL,
  `transportistas_paquetes_idpaquetes` INT NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`camiones_matricula`, `transportistas_dni`, `transportistas_paquetes_idpaquetes`),
  CONSTRAINT `fk_camiones_has_transportistas_camiones1`
    FOREIGN KEY (`camiones_matricula`)
    REFERENCES `mydb`.`camiones` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_camiones_has_transportistas_transportistas1`
    FOREIGN KEY (`transportistas_dni` , `transportistas_paquetes_idpaquetes`)
    REFERENCES `mydb`.`transportistas` (`dni` , `paquetes_idpaquetes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_camiones_has_transportistas_transportistas1_idx` ON `mydb`.`usoCamion` (`transportistas_dni` ASC, `transportistas_paquetes_idpaquetes` ASC);

CREATE INDEX `fk_camiones_has_transportistas_camiones1_idx` ON `mydb`.`usoCamion` (`camiones_matricula` ASC);

CREATE UNIQUE INDEX `fecha_UNIQUE` ON `mydb`.`usoCamion` (`fecha` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
