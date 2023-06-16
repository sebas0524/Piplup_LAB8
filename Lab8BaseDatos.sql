-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: lab08
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empresaseguro`
--

DROP TABLE IF EXISTS `empresaseguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresaseguro` (
  `idempresaSeguro` int NOT NULL,
  `nombreseguro` varchar(45) NOT NULL,
  PRIMARY KEY (`idempresaSeguro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresaseguro`
--

LOCK TABLES `empresaseguro` WRITE;
/*!40000 ALTER TABLE `empresaseguro` DISABLE KEYS */;
INSERT INTO `empresaseguro` VALUES (1,'Rimac'),(2,'Pacifico'),(3,'La positiva'),(4,'Seguro internacional'),(5,'Otro');
/*!40000 ALTER TABLE `empresaseguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idestudiante` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `edad` int NOT NULL,
  `codigopucp` varchar(45) NOT NULL,
  `correopucp` varchar(45) NOT NULL,
  `especialidad` varchar(45) NOT NULL,
  `statusestudiante` varchar(45) NOT NULL,
  `contrasenhahash` varchar(70) NOT NULL,
  PRIMARY KEY (`idestudiante`),
  UNIQUE KEY `idestudiante_UNIQUE` (`idestudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Juan','Pérez',20,'12345678','juanperez@pucp.edu.pe','Telecomunicaciones','Normal','6b500f0e9bc28ea48b8f85c115f84d233c329f46d46b84b9dcf32fc4ea01d981'),(2,'María','López',22,'09876543','marialopez@pucp.edu.pe','Telecomunicaciones','Silver','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f'),(3,'Carlos','Gómez',19,'98765432','carlosgomez@pucp.edu.pe','Telecomunicaciones','Normal','5204f0a4ed46c3f42b50416c57af913d372b2b6f71c40e9054a72f77b170f380'),(4,'Ana','Martínez',21,'54321098','anamartinez@pucp.edu.pe','Medicina','Platinum','f1e1fa3a7dfd45c249a571c385e15051386ffbf256edd2301efa156eff835949'),(5,'Stefano','Romero',22,'20023456','stefanoromero@pucp.edu.pe','Telecomunicaciones','Gold','0d3caaa09b2d063ee71a91f99d1eabf21861f0eab4e1015c221f6b489381be28'),(6,'Gumer','Bartra',23,'20047723','gumerbartra@pucp.edu.pe','Telecomunicaciones','Platinum','ee2ce2fa723690b6f04b3e36893c1cc5af99b67bb36505fdf4313b01e1b262ce');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaje` (
  `idviaje` int NOT NULL AUTO_INCREMENT,
  `fechareserva` date NOT NULL,
  `fechaviaje` date NOT NULL,
  `ciudadorigen` varchar(45) NOT NULL,
  `ciudaddestino` varchar(45) NOT NULL,
  `numboletos` int NOT NULL,
  `costoboleto` double DEFAULT NULL,
  `costototal` double NOT NULL,
  `empresaSeguro_idempresaSeguro` int NOT NULL,
  `estudiante_idestudiante` int NOT NULL,
  PRIMARY KEY (`idviaje`),
  KEY `fk_viaje_estudiante1_idx` (`estudiante_idestudiante`),
  KEY `fk_viaje_empresaSeguro1_idx` (`empresaSeguro_idempresaSeguro`),
  CONSTRAINT `fk_viaje_empresaSeguro1` FOREIGN KEY (`empresaSeguro_idempresaSeguro`) REFERENCES `empresaseguro` (`idempresaSeguro`),
  CONSTRAINT `fk_viaje_estudiante1` FOREIGN KEY (`estudiante_idestudiante`) REFERENCES `estudiante` (`idestudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=78956733 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
INSERT INTO `viaje` VALUES (14207004,'2023-05-20','2023-07-10','Arequipa','Lima',3,0,150,2,2),(15557804,'2023-06-01','2023-06-15','Lima','Cusco',0,0,0,1,1),(51677915,'2023-06-10','2023-08-05','Trujillo','Piura',0,0,0,1,3),(57011952,'2023-07-05','2023-08-20','Chiclayo','Lima',5,0,11000,3,4),(75688412,'2023-06-04','2023-06-25','Tarapoto','Lima',2,0,12000,4,6),(78956732,'2023-06-11','2023-07-10','Cusco','Arequipa',4,0,1200,4,5);
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lab08'
--

--
-- Dumping routines for database 'lab08'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 17:04:56
