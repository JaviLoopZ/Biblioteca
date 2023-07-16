-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `IdAutor` int NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Apellidos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'John','Smith'),(2,'Emma','Johnson'),(3,'Michael','Williams'),(4,'Sophia','Brown'),(5,'David','Jones'),(6,'Olivia','Miller'),(7,'Daniel','Davis'),(8,'Emily','Wilson'),(9,'Andrew','Taylor'),(10,'Isabella','Anderson'),(11,'Christopher','Martinez'),(12,'Ava','Garcia'),(13,'William','Lopez'),(14,'Mia','Rivera'),(15,'James','Hernandez'),(16,'Sofia','Gonzalez'),(17,'Joseph','Perez'),(18,'Amelia','Torres'),(19,'Benjamin','Sanchez'),(20,'Charlotte','Ramirez'),(21,'Liam','Gomez'),(22,'Ella','Torres'),(23,'Noah','Vargas'),(24,'Victoria','Ortega'),(25,'Jacob','Silva'),(26,'Luna','Navarro'),(27,'Alexander','Mendoza'),(28,'Lucia','Herrera'),(29,'Daniel','Rojas'),(30,'Valentina','Cruz'),(31,'Gabriel','Flores'),(32,'Isla','Santos'),(33,'Samuel','Castillo'),(34,'Eva','Vega'),(35,'Mateo','Morales'),(36,'Mila','Pérez'),(37,'Sebastian','Ramos'),(38,'Camila','Reyes'),(39,'Diego','Cortez'),(40,'Martina','Guzmán');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 11:51:06
