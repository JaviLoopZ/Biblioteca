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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `IdLibro` int NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Paginas` int DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `Editorial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'El Gran Gatsby',218,'1925-04-10','Scribner'),(2,'1984',328,'1949-06-08','Secker & Warburg'),(3,'Matar a un ruiseñor',281,'1960-07-11','J. B. Lippincott & Co.'),(4,'Cien años de soledad',417,'1967-05-30','Editorial Sudamericana'),(5,'Don Quijote de la Mancha',863,'1605-01-16','Francisco de Robles'),(6,'Orgullo y prejuicio',314,'1813-01-28','T. Egerton, Whitehall'),(7,'Ulises',732,'1922-02-02','Sylvia Beach'),(8,'Harry Potter y la piedra filosofal',223,'1997-06-26','Bloomsbury'),(9,'El Hobbit',310,'1937-09-21','George Allen & Unwin'),(10,'Moby Dick',585,'1851-10-18','Harper & Brothers'),(11,'Los juegos del hambre',374,'2008-09-14','Scholastic'),(12,'Crimen y castigo',551,'1866-01-01','The Russian Messenger'),(13,'El código Da Vinci',454,'2003-03-18','Doubleday'),(14,'To Kill a Mockingbird',324,'1960-07-11','J. B. Lippincott & Co.'),(15,'El principito',96,'1943-04-06','Reynal & Hitchcock'),(16,'1984',328,'1949-06-08','Secker & Warburg'),(17,'Orgullo y prejuicio',314,'1813-01-28','T. Egerton, Whitehall'),(18,'La Odisea',442,'1990-01-01','Desconocido'),(19,'Don Quijote de la Mancha',863,'1605-01-16','Francisco de Robles'),(20,'The Catcher in the Rye',277,'1951-07-16','Little, Brown and Company'),(21,'El Alquimista',197,'1988-01-01','HarperOne'),(22,'El poder del ahora',229,'1997-09-01','New World Library'),(23,'Harry Potter y el prisionero de Azkaban',317,'1999-07-08','Bloomsbury'),(24,'Los pilares de la Tierra',973,'1989-10-01','Macmillan'),(25,'Un mundo feliz',288,'1932-06-01','Chatto & Windus'),(26,'Bajo la misma estrella',313,'2012-01-10','Dutton Books'),(27,'El código enigma',416,'2000-10-01','Arrow Books'),(28,'La chica del tren',316,'2015-01-13','Riverhead Books'),(29,'Sapiens: De animales a dioses',443,'2014-04-01','Harper'),(30,'Ready Player One',374,'2011-08-16','Crown Publishing Group'),(31,'El testamento',480,'1999-12-14','Doubleday'),(32,'Cazadores de sombras: Ciudad de hueso',485,'2007-03-27','Margaret K. McElderry Books'),(33,'El nombre del viento',662,'2007-04-01','DAW Books'),(34,'Cincuenta sombras de Grey',514,'2011-06-20','Vintage Books'),(35,'El laberinto de los espíritus',812,'2016-11-17','Planeta'),(36,'The Silent Patient',323,'2019-02-05','Celadon Books'),(37,'La chica del grupo',352,'2020-08-04','Atria Books'),(38,'Circe',393,'2018-04-10','Little, Brown and Company'),(39,'El último deseo',288,'1993-11-02','SuperNOWA'),(40,'El temor de un hombre sabio',1202,'2011-03-01','DAW Books');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
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
