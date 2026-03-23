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
  `ordainduta` int DEFAULT NULL,
  PRIMARY KEY (`id`,`langileak_id`,`mahaiak_id`),
  KEY `fk_erreserbak_langileak1_idx` (`langileak_id`),
  KEY `fk_erreserbak_mahaiak1_idx` (`mahaiak_id`),
  KEY `langileak_id` (`langileak_id`),
  KEY `mahaiak_id` (`mahaiak_id`),
  CONSTRAINT `FK_411AD20C` FOREIGN KEY (`langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `FK_9CEB933F` FOREIGN KEY (`mahaiak_id`) REFERENCES `mahaiak` (`id`),
  CONSTRAINT `fk_erreserbak_langileak1` FOREIGN KEY (`langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `fk_erreserbak_mahaiak1` FOREIGN KEY (`mahaiak_id`) REFERENCES `mahaiak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `erreserbak_id` (`erreserbak_id`),
  KEY `erreserbak_langileak_id` (`erreserbak_langileak_id`),
  KEY `erreserbak_mahaiak_id` (`erreserbak_mahaiak_id`),
  CONSTRAINT `FK_82A96F40` FOREIGN KEY (`erreserbak_id`) REFERENCES `erreserbak` (`id`),
  CONSTRAINT `FK_8E810A89` FOREIGN KEY (`erreserbak_mahaiak_id`) REFERENCES `mahaiak` (`id`),
  CONSTRAINT `FK_A612A34C` FOREIGN KEY (`erreserbak_langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `fk_eskariak_erreserbak1` FOREIGN KEY (`erreserbak_id`, `erreserbak_langileak_id`, `erreserbak_mahaiak_id`) REFERENCES `erreserbak` (`id`, `langileak_id`, `mahaiak_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `eskariak_id` (`eskariak_id`),
  KEY `produktuak_id` (`produktuak_id`),
  CONSTRAINT `FK_496A0619` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`),
  CONSTRAINT `FK_E9A6D6AA` FOREIGN KEY (`eskariak_id`) REFERENCES `eskariak` (`id`),
  CONSTRAINT `fk_eskariak_has_produktuak_eskariak1` FOREIGN KEY (`eskariak_id`) REFERENCES `eskariak` (`id`),
  CONSTRAINT `fk_eskariak_has_produktuak_produktuak1` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `lanpostuak_id` (`lanpostuak_id`),
  CONSTRAINT `FK_134CB256` FOREIGN KEY (`lanpostuak_id`) REFERENCES `lanpostuak` (`id`),
  CONSTRAINT `fk_langileak_lanpostuak1` FOREIGN KEY (`lanpostuak_id`) REFERENCES `lanpostuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mota`
--

DROP TABLE IF EXISTS `mota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mota` (
  `id` int NOT NULL,
  `izena` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `stock` int NOT NULL,
  `mota_id` int NOT NULL,
  PRIMARY KEY (`id`,`mota_id`),
  KEY `fk_produktuak_mota1_idx` (`mota_id`),
  CONSTRAINT `fk_produktuak_mota1` FOREIGN KEY (`mota_id`) REFERENCES `mota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produktuak_has_osagaiak`
--

DROP TABLE IF EXISTS `produktuak_has_osagaiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak_has_osagaiak` (
  `produktuak_id` int NOT NULL,
  `osagaiak_id` int NOT NULL,
  `kantitatea` int NOT NULL,
  PRIMARY KEY (`produktuak_id`,`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak_osagaiak1_idx` (`osagaiak_id`),
  KEY `fk_produktuak_has_osagaiak_produktuak1_idx` (`produktuak_id`),
  KEY `produktuak_id` (`produktuak_id`),
  KEY `osagaiak_id` (`osagaiak_id`),
  CONSTRAINT `FK_200FAAF` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `FK_980955FB` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`),
  CONSTRAINT `fk_produktuak_has_osagaiak_osagaiak1` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `fk_produktuak_has_osagaiak_produktuak1` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-23 16:22:53
