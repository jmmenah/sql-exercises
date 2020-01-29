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
  `id_sec` VARCHAR(5) NOT NULL,
  `descripcion` VARCHAR(10) NOT NULL,
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
  `cod_empr` VARCHAR(5) NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
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
  `cod_prod` INT NOT NULL,
  `precio_compra` FLOAT NULL,
  `precio_venta` FLOAT NULL,
  `empresa` VARCHAR(5) NOT NULL,
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
