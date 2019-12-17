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
-- Table `mydb`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`proveedor` (
  `nombre` VARCHAR(70) NOT NULL,
  `localidad` VARCHAR(45) NULL,
  `porcentaje` INT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(70) NULL,
  `almacen` ENUM('JAÉN', 'BAENA', 'TORREDELCAMPO') NULL,
  `precio_proveedor` INT NULL,
  `precio_final` INT NULL,
  `cant` INT NULL,
  `proveedor` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`id_producto`, `proveedor`),
  CONSTRAINT `fk_productos_proveedor1`
    FOREIGN KEY (`proveedor`)
    REFERENCES `mydb`.`proveedor` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_producto_UNIQUE` ON `mydb`.`productos` (`id_producto` ASC);

CREATE INDEX `fk_productos_proveedor1_idx` ON `mydb`.`productos` (`proveedor` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clientes` (
  `nif` VARCHAR(9) NOT NULL,
  `nombre` VARCHAR(70) NOT NULL,
  `apellido1` VARCHAR(70) NOT NULL,
  `apellido2` VARCHAR(70) NULL,
  `calle` VARCHAR(70) NOT NULL,
  `numero` INT(3) NOT NULL,
  `piso` VARCHAR(70) NULL,
  `codigopostal` INT(5) NOT NULL,
  `telefono1` VARCHAR(9) NULL,
  `telefono2` VARCHAR(9) NOT NULL,
  `correo` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`nif`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `nif_UNIQUE` ON `mydb`.`clientes` (`nif` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ventas` (
  `productos` INT NOT NULL,
  `nif` VARCHAR(9) NOT NULL,
  `fecha` DATE NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`productos`, `nif`, `fecha`),
  CONSTRAINT `fk_productos_has_clientes_productos`
    FOREIGN KEY (`productos`)
    REFERENCES `mydb`.`productos` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_has_clientes_clientes1`
    FOREIGN KEY (`nif`)
    REFERENCES `mydb`.`clientes` (`nif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_productos_has_clientes_clientes1_idx` ON `mydb`.`ventas` (`nif` ASC);

CREATE INDEX `fk_productos_has_clientes_productos_idx` ON `mydb`.`ventas` (`productos` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos` (
  `producto` INT NOT NULL,
  `proveedor` VARCHAR(70) NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`producto`, `proveedor`),
  CONSTRAINT `fk_pedidos_productos1`
    FOREIGN KEY (`producto` , `proveedor`)
    REFERENCES `mydb`.`productos` (`id_producto` , `proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_pedidos_productos1_idx` ON `mydb`.`pedidos` (`producto` ASC, `proveedor` ASC);

USE `mydb`;

DELIMITER $$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`productos_BEFORE_INSERT` BEFORE INSERT ON `productos` FOR EACH ROW
BEGIN
	set new.nombre=upper(new.nombre);
    set new.almacen=upper(new.almacen);
    set new.proveedor=upper(new.proveedor);
END$$

USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`clientes_BEFORE_INSERT` BEFORE INSERT ON `clientes` FOR EACH ROW
BEGIN
	set new.nif=upper(new.nif);
    set new.nombre=upper(new.nombre);
    set new.apellido1=upper(new.apellido1);
    set new.apellido2=upper(new.apellido2);
    set new.calle=upper(new.calle);
    set new.piso=upper(new.piso);
    set new.correo=upper(new.correo);
END$$

USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`ventas_BEFORE_INSERT` BEFORE INSERT ON `ventas` FOR EACH ROW
BEGIN
	set new.nif=upper(new.nif);
END$$

USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`pedidos_BEFORE_INSERT` BEFORE INSERT ON `pedidos` FOR EACH ROW
BEGIN
	set new.proveedor=upper(new.proveedor);
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
