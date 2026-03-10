-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: 2mg3_2erronka
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `erreserbak`
--

DROP TABLE IF EXISTS `erreserbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erreserbak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bezero_izena` varchar(45) NOT NULL,
  `telefonoa` varchar(9) NOT NULL,
  `pertsona_kopurua` int NOT NULL,
  `eguna_ordua` datetime NOT NULL,
  `prezio_totala` double NOT NULL,
  `faktura_ruta` varchar(45) DEFAULT NULL,
  `langileak_id` int NOT NULL,
  `mahaiak_id` int NOT NULL,
  PRIMARY KEY (`id`,`langileak_id`,`mahaiak_id`),
  KEY `fk_erreserbak_langileak1_idx` (`langileak_id`),
  KEY `fk_erreserbak_mahaiak1_idx` (`mahaiak_id`),
  CONSTRAINT `fk_erreserbak_langileak1` FOREIGN KEY (`langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `fk_erreserbak_mahaiak1` FOREIGN KEY (`mahaiak_id`) REFERENCES `mahaiak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erreserbak`
--

LOCK TABLES `erreserbak` WRITE;
/*!40000 ALTER TABLE `erreserbak` DISABLE KEYS */;
/*!40000 ALTER TABLE `erreserbak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eskariak`
--

DROP TABLE IF EXISTS `eskariak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eskariak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prezioa` double NOT NULL,
  `egoera` varchar(45) NOT NULL,
  `erreserbak_id` int NOT NULL,
  `erreserbak_langileak_id` int NOT NULL,
  `erreserbak_mahaiak_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_eskariak_erreserbak1_idx` (`erreserbak_id`,`erreserbak_langileak_id`,`erreserbak_mahaiak_id`),
  CONSTRAINT `fk_eskariak_erreserbak1` FOREIGN KEY (`erreserbak_id`, `erreserbak_langileak_id`, `erreserbak_mahaiak_id`) REFERENCES `erreserbak` (`id`, `langileak_id`, `mahaiak_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eskariak`
--

LOCK TABLES `eskariak` WRITE;
/*!40000 ALTER TABLE `eskariak` DISABLE KEYS */;
/*!40000 ALTER TABLE `eskariak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eskariak_has_produktuak`
--

DROP TABLE IF EXISTS `eskariak_has_produktuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eskariak_has_produktuak` (
  `eskariak_id` int NOT NULL,
  `produktuak_id` int NOT NULL,
  `kantitatea` int NOT NULL,
  `prezioa` double NOT NULL,
  PRIMARY KEY (`eskariak_id`,`produktuak_id`),
  KEY `fk_eskariak_has_produktuak_produktuak1_idx` (`produktuak_id`),
  KEY `fk_eskariak_has_produktuak_eskariak1_idx` (`eskariak_id`),
  CONSTRAINT `fk_eskariak_has_produktuak_eskariak1` FOREIGN KEY (`eskariak_id`) REFERENCES `eskariak` (`id`),
  CONSTRAINT `fk_eskariak_has_produktuak_produktuak1` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eskariak_has_produktuak`
--

LOCK TABLES `eskariak_has_produktuak` WRITE;
/*!40000 ALTER TABLE `eskariak_has_produktuak` DISABLE KEYS */;
/*!40000 ALTER TABLE `eskariak_has_produktuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hornitzaileak`
--

DROP TABLE IF EXISTS `hornitzaileak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hornitzaileak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(45) NOT NULL,
  `kontaktua` varchar(50) NOT NULL,
  `helbidea` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hornitzaileak`
--

LOCK TABLES `hornitzaileak` WRITE;
/*!40000 ALTER TABLE `hornitzaileak` DISABLE KEYS */;
/*!40000 ALTER TABLE `hornitzaileak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langileak`
--

DROP TABLE IF EXISTS `langileak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langileak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(20) NOT NULL,
  `abizena` varchar(45) NOT NULL,
  `NAN` varchar(9) NOT NULL,
  `erabiltzaile_izena` varchar(20) NOT NULL,
  `langile_kodea` int NOT NULL,
  `pasahitza` longtext NOT NULL,
  `helbidea` varchar(100) NOT NULL,
  `lanpostuak_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_langileak_lanpostuak1_idx` (`lanpostuak_id`),
  CONSTRAINT `fk_langileak_lanpostuak1` FOREIGN KEY (`lanpostuak_id`) REFERENCES `lanpostuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langileak`
--

LOCK TABLES `langileak` WRITE;
/*!40000 ALTER TABLE `langileak` DISABLE KEYS */;
INSERT INTO `langileak` VALUES (1,'Ane','Goikoetxea','12345678A','ane.g',101,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Kale Nagusia 1, Bilbo',1),(2,'Mikel','Urrutia','87654321B','mikel.u',102,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Plaza Berria 5, Donostia',2),(3,'Leire','Etxebarria','11223344C','leire.e',103,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Libertate Kalea 10, Gasteiz',3);
/*!40000 ALTER TABLE `langileak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanpostuak`
--

DROP TABLE IF EXISTS `lanpostuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lanpostuak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lanpostua` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanpostuak`
--

LOCK TABLES `lanpostuak` WRITE;
/*!40000 ALTER TABLE `lanpostuak` DISABLE KEYS */;
INSERT INTO `lanpostuak` VALUES (1,'Gerentea'),(2,'Zerbitzaria'),(3,'Sukaldaria');
/*!40000 ALTER TABLE `lanpostuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahaiak`
--

DROP TABLE IF EXISTS `mahaiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahaiak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zenbakia` int NOT NULL,
  `pertsona_kopuru` int NOT NULL,
  `kokapena` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahaiak`
--

LOCK TABLES `mahaiak` WRITE;
/*!40000 ALTER TABLE `mahaiak` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahaiak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialak`
--

DROP TABLE IF EXISTS `materialak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(20) NOT NULL,
  `prezioa` double NOT NULL,
  `stock` int NOT NULL,
  `hornitzaileak_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_materialak_hornitzaileak1_idx` (`hornitzaileak_id`),
  CONSTRAINT `fk_materialak_hornitzaileak1` FOREIGN KEY (`hornitzaileak_id`) REFERENCES `hornitzaileak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialak`
--

LOCK TABLES `materialak` WRITE;
/*!40000 ALTER TABLE `materialak` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osagaiak`
--

DROP TABLE IF EXISTS `osagaiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `osagaiak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(20) NOT NULL,
  `prezioa` double NOT NULL,
  `stock` int NOT NULL,
  `hornitzaileak_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_osagaiak_hornitzaileak1_idx` (`hornitzaileak_id`),
  CONSTRAINT `fk_osagaiak_hornitzaileak1` FOREIGN KEY (`hornitzaileak_id`) REFERENCES `hornitzaileak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osagaiak`
--

LOCK TABLES `osagaiak` WRITE;
/*!40000 ALTER TABLE `osagaiak` DISABLE KEYS */;
/*!40000 ALTER TABLE `osagaiak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktuak`
--

DROP TABLE IF EXISTS `produktuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(60) NOT NULL,
  `prezioa` double NOT NULL,
  `mota` varchar(20) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak`
--

LOCK TABLES `produktuak` WRITE;
/*!40000 ALTER TABLE `produktuak` DISABLE KEYS */;
/*!40000 ALTER TABLE `produktuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktuak_has_osagaiak`
--

DROP TABLE IF EXISTS `produktuak_has_osagaiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak_has_osagaiak` (
  `produktuak_id` int NOT NULL,
  `osagaiak_id` int NOT NULL,
  PRIMARY KEY (`produktuak_id`,`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak_osagaiak1_idx` (`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak_produktuak1_idx` (`produktuak_id`),
  CONSTRAINT `fk_produktuak_has_osagaiak_osagaiak1` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `fk_produktuak_has_osagaiak_produktuak1` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak_has_osagaiak`
--

LOCK TABLES `produktuak_has_osagaiak` WRITE;
/*!40000 ALTER TABLE `produktuak_has_osagaiak` DISABLE KEYS */;
/*!40000 ALTER TABLE `produktuak_has_osagaiak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktuak_has_osagaiak1`
--

DROP TABLE IF EXISTS `produktuak_has_osagaiak1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak_has_osagaiak1` (
  `produktuak_id` int NOT NULL,
  `osagaiak_id` int NOT NULL,
  PRIMARY KEY (`produktuak_id`,`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak1_osagaiak1_idx` (`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak1_produktuak1_idx` (`produktuak_id`),
  CONSTRAINT `fk_produktuak_has_osagaiak1_osagaiak1` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `fk_produktuak_has_osagaiak1_produktuak1` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak_has_osagaiak1`
--

LOCK TABLES `produktuak_has_osagaiak1` WRITE;
/*!40000 ALTER TABLE `produktuak_has_osagaiak1` DISABLE KEYS */;
/*!40000 ALTER TABLE `produktuak_has_osagaiak1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 13:17:33
