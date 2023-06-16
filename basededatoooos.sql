-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab08
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab08
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab08` DEFAULT CHARACTER SET utf8 ;
USE `lab08` ;

-- -----------------------------------------------------
-- Table `lab08`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab08`.`estudiante` (
  `idestudiante` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `edad` INT(10) NOT NULL,
  `codigopucp` VARCHAR(45) NOT NULL,
  `correopucp` VARCHAR(45) NOT NULL,
  `especialidad` VARCHAR(45) NOT NULL,
  `contrasenha` VARCHAR(45) NOT NULL,
  `statusestudiante` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idestudiante`),
  UNIQUE INDEX `idestudiante_UNIQUE` (`idestudiante` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab08`.`empresaSeguro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab08`.`empresaSeguro` (
  `idempresaSeguro` INT NOT NULL,
  `nombreseguro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idempresaSeguro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab08`.`viaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab08`.`viaje` (
  `idviaje` INT NOT NULL AUTO_INCREMENT,
  `fechareserva` DATE NOT NULL,
  `fechaviaje` DATE NOT NULL,
  `ciudadorigen` VARCHAR(45) NOT NULL,
  `ciudaddestino` VARCHAR(45) NOT NULL,
  `numboletos` INT NOT NULL,
  `costototal` DOUBLE NOT NULL,
  `empresaSeguro_idempresaSeguro` INT NOT NULL,
  `estudiante_idestudiante` INT NOT NULL,
  PRIMARY KEY (`idviaje`),
  INDEX `fk_viaje_empresaSeguro1_idx` (`empresaSeguro_idempresaSeguro` ASC) VISIBLE,
  INDEX `fk_viaje_estudiante1_idx` (`estudiante_idestudiante` ASC) VISIBLE,
  CONSTRAINT `fk_viaje_empresaSeguro1`
    FOREIGN KEY (`empresaSeguro_idempresaSeguro`)
    REFERENCES `lab08`.`empresaSeguro` (`idempresaSeguro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_estudiante1`
    FOREIGN KEY (`estudiante_idestudiante`)
    REFERENCES `lab08`.`estudiante` (`idestudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
