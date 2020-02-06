-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: Ej72
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Empleado` (
  `N_Empl` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) NOT NULL,
  `Apellido1` varchar(30) NOT NULL,
  `Apellido2` varchar(30) DEFAULT NULL,
  `Cod_Prov` varchar(2) NOT NULL,
  `Id_Sec` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`N_Empl`),
  KEY `Emp_Prov_fk` (`Cod_Prov`),
  KEY `Emp_ISec_fk` (`Id_Sec`),
  CONSTRAINT `Emp_ISec_fk` FOREIGN KEY (`Id_Sec`) REFERENCES `Sección` (`Id_Sec`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Emp_Prov_fk` FOREIGN KEY (`Cod_Prov`) REFERENCES `Provincia` (`Cod_Prov`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (1,'Jaime','Segovia','Segovia','14','CONT'),(2,'Manuel','Aguilar','Aguilar','17','EDU'),(3,'Alba','Rodríguez','Cano','20','OTR'),(4,'Alicia','Valdivia','Cobo','18','OFI'),(5,'Felipe','Extremera','Escabias','18','ATV'),(6,'Julián','Cobo','Aceituno','22','JUE'),(7,'Antonia','Ruiz','Ruiz','22','EDU'),(8,'María','Madera','Molina','13','CONT'),(9,'Andrés','Tello','García','05','EDU'),(10,'Mario','Molina','Pérez','06','OFI');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Empresa` (
  `Cod_Empr` varchar(8) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Dirección` varchar(35) DEFAULT NULL,
  `Telefono` varchar(11) DEFAULT NULL,
  `Correo` varchar(20) DEFAULT NULL,
  `Cod_Prov` varchar(2) NOT NULL,
  PRIMARY KEY (`Cod_Empr`),
  KEY `Empr_CProv_fk` (`Cod_Prov`),
  CONSTRAINT `Empr_CProv_fk` FOREIGN KEY (`Cod_Prov`) REFERENCES `Provincia` (`Cod_Prov`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES ('ANTV_SA','Antivirus SA',NULL,'611111111','antvsa@correo.com','05'),('CONT_SA','Contabilidad SA',NULL,'655555555','contsa@correo.es','26'),('CONTABLE','Contable, SL',NULL,'677777777','contablesl@correo.es','36'),('EDUSOFT','Edusoft SL',NULL,'688888888','edusoft@correo.es','42'),('EDUSYS','EduSystem, SA',NULL,'633333333','edusystem@correo.es','15'),('JUG_D','Juegos y Deportes, SA',NULL,'644444444','juegos@correo.es','50'),('OFI_JA','OfiJaén, S.L.',NULL,'622222222','ofija@correo.com','22');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Producto` (
  `Cod_Prod` varchar(5) NOT NULL,
  `Denominación` varchar(30) DEFAULT NULL,
  `Precio_Compra` float DEFAULT NULL,
  `Precio_Venta` float DEFAULT NULL,
  `Empresa` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Cod_Prod`),
  KEY `Prod_Emp_fk` (`Empresa`),
  CONSTRAINT `Prod_Emp_fk` FOREIGN KEY (`Empresa`) REFERENCES `Empresa` (`Cod_Empr`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES ('AVAN','Antivirus Android',10,15,'ANTV_SA'),('AVW','Antivirus Windows',15,20,'ANTV_SA'),('COOP','ContaCoop',30,60,'CONTABLE'),('COPY','ContaPymes',30,60,'CONT_SA'),('ECBIO','Enciclopedia biología',10,30,'EDUSOFT'),('ECSH','Enciclopedia ser humano',20,40,'EDUSYS'),('JUBA','Balonmano 18',10,30,'JUG_D'),('OFIC','Cálculo OFI',10,20,'OFI_JA'),('OFIP','Presentaciones OFI',10,20,'OFI_JA');
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincia`
--

DROP TABLE IF EXISTS `Provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Provincia` (
  `Cod_Prov` varchar(2) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincia`
--

LOCK TABLES `Provincia` WRITE;
/*!40000 ALTER TABLE `Provincia` DISABLE KEYS */;
INSERT INTO `Provincia` VALUES ('00','Álava'),('01','Albacete'),('02','Alicante'),('03','Almería'),('04','Ávila'),('05','Badajoz'),('06','Islas Baleares'),('07','Barcelona'),('08','Burgos'),('09','Cáceres'),('10','Cádiz'),('11','Castellón'),('12','Ciudad Real'),('13','Córdoba'),('14','Coruña'),('15','Cuenca'),('16','Girona'),('17','Granada'),('18','Guadalajara'),('19','Gipuzkoa'),('20','Huelva'),('21','Huesca'),('22','Jaén'),('23','León'),('24','Lleida'),('25','La Rioja'),('26','Lugo'),('27','Madrid'),('28','Málaga'),('29','Murcia'),('30','Navarra'),('31','Ourense'),('32','Asturias'),('33','Palencia'),('34','Las Palmas'),('35','Pontevedra'),('36','Salamanca'),('37','S.C.Tenerife'),('38','Cantabria'),('39','Segovia'),('40','Sevilla'),('41','Soria'),('42','Tarragona'),('43','Teruel'),('44','Toledo'),('45','Valencia'),('46','Valladolid'),('47','Vizcaya'),('48','Zamora'),('49','Zaragoza'),('50','Ceuta'),('51','Melilla');
/*!40000 ALTER TABLE `Provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sección`
--

DROP TABLE IF EXISTS `Sección`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Sección` (
  `Id_Sec` varchar(5) NOT NULL,
  `Descripción` varchar(20) NOT NULL,
  `N_Empl_Jefe` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Sec`),
  KEY `Sec_NEmp_fk` (`N_Empl_Jefe`),
  CONSTRAINT `Sec_NEmp_fk` FOREIGN KEY (`N_Empl_Jefe`) REFERENCES `Empleado` (`N_Empl`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sección`
--

LOCK TABLES `Sección` WRITE;
/*!40000 ALTER TABLE `Sección` DISABLE KEYS */;
INSERT INTO `Sección` VALUES ('ATV','Antivirus',5),('CONT','Contabilidad',8),('EDU','Educativo',7),('JUE','Juegos',NULL),('OFI','Ofimática',10),('OTR','Otros',3);
/*!40000 ALTER TABLE `Sección` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-18 22:06:34
