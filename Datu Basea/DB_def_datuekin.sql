-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 192.168.10.5    Database: 2mg3_2erronka
-- ------------------------------------------------------
-- Server version	8.0.44

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
  `faktura_ruta` varchar(100) DEFAULT NULL,
  `langileak_id` int NOT NULL,
  `mahaiak_id` int NOT NULL,
  `ordainduta` int DEFAULT NULL,
  `prezio_totala_hasierakoa` double DEFAULT NULL,
  `deskontu_kodea` varchar(64) DEFAULT NULL,
  `deskontu_mota` varchar(16) DEFAULT NULL,
  `deskontu_balioa` double DEFAULT NULL,
  `deskontu_zenbatekoa` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`langileak_id`,`mahaiak_id`),
  KEY `langileak_id` (`langileak_id`),
  KEY `mahaiak_id` (`mahaiak_id`),
  CONSTRAINT `FK_411AD20C` FOREIGN KEY (`langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `FK_9CEB933F` FOREIGN KEY (`mahaiak_id`) REFERENCES `mahaiak` (`id`),
  CONSTRAINT `fk_erreserbak_langileak` FOREIGN KEY (`langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `fk_erreserbak_mahaiak` FOREIGN KEY (`mahaiak_id`) REFERENCES `mahaiak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erreserbak`
--

LOCK TABLES `erreserbak` WRITE;
/*!40000 ALTER TABLE `erreserbak` DISABLE KEYS */;
INSERT INTO `erreserbak` VALUES (1,'Ander','619600133',2,'2026-02-22 20:00:00',19,NULL,3,6,1,NULL,NULL,NULL,NULL,0),(2,'Ander','638637940',8,'2026-02-22 14:30:00',278.5,NULL,1,5,1,NULL,NULL,NULL,NULL,0),(3,'Iker','655940781',4,'2026-02-27 14:00:00',121,NULL,2,1,1,NULL,NULL,NULL,NULL,0),(4,'Aitor','695931034',4,'2026-02-27 13:30:00',229,NULL,1,1,1,NULL,NULL,NULL,NULL,0),(5,'Oier','634192832',2,'2026-02-28 13:00:00',64,NULL,2,2,1,NULL,NULL,NULL,NULL,0),(6,'Ander','635030564',4,'2026-02-28 21:30:00',92,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(7,'Nerea','642388496',4,'2026-03-01 14:30:00',53.5,NULL,3,4,1,NULL,NULL,NULL,NULL,0),(8,'Asier','628710122',4,'2026-03-01 21:00:00',198,NULL,3,4,1,NULL,NULL,NULL,NULL,0),(9,'Ander','601845146',8,'2026-03-06 14:30:00',157,NULL,1,5,1,NULL,NULL,NULL,NULL,0),(10,'Uxue','682814893',4,'2026-03-06 20:30:00',168,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(11,'Iker','654303911',4,'2026-03-07 14:30:00',78,NULL,3,4,1,NULL,NULL,NULL,NULL,0),(12,'Maite','682278248',4,'2026-03-07 20:30:00',98,NULL,3,4,1,NULL,NULL,NULL,NULL,0),(13,'Iker','633150983',4,'2026-03-08 21:00:00',93,NULL,3,4,1,NULL,NULL,NULL,NULL,0),(14,'Maite','603105183',2,'2026-03-08 13:00:00',73.5,NULL,2,2,1,NULL,NULL,NULL,NULL,0),(15,'Iker','616566701',4,'2026-03-13 14:30:00',121,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(16,'Leire','613338726',4,'2026-03-13 13:30:00',47.5,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(17,'Maite','632677360',4,'2026-03-14 20:30:00',41.9,NULL,1,1,1,NULL,NULL,NULL,NULL,0),(18,'Nahia','647468723',4,'2026-03-14 20:30:00',90.5,NULL,2,4,1,NULL,NULL,NULL,NULL,0),(19,'Saioa','678820812',4,'2026-03-15 21:30:00',20,NULL,1,1,1,NULL,NULL,NULL,NULL,0),(20,'Asier','661939909',8,'2026-03-15 13:30:00',116,NULL,1,5,1,NULL,NULL,NULL,NULL,0),(21,'Asier','646247510',2,'2026-03-20 20:00:00',22.5,NULL,2,6,1,NULL,NULL,NULL,NULL,0),(22,'Maite','683842513',8,'2026-03-20 13:00:00',213,NULL,2,5,1,NULL,NULL,NULL,NULL,0),(23,'Iker','624118244',2,'2026-03-21 21:30:00',63.5,NULL,3,6,1,NULL,NULL,NULL,NULL,0),(24,'Irati','648740164',2,'2026-03-21 14:30:00',57.5,NULL,1,2,1,NULL,NULL,NULL,NULL,0),(25,'Ander','601128059',8,'2026-03-22 14:00:00',137,NULL,3,5,1,NULL,NULL,NULL,NULL,0),(26,'Nerea','604505331',2,'2026-03-22 14:00:00',76,NULL,2,2,1,NULL,NULL,NULL,NULL,0),(27,'Mikel','656342160',4,'2026-03-27 14:30:00',111,NULL,2,4,1,NULL,NULL,NULL,NULL,0),(28,'Maddi','654330365',2,'2026-03-27 21:30:00',85,NULL,2,2,1,NULL,NULL,NULL,NULL,0),(29,'Uxue','629401965',4,'2026-03-28 21:30:00',70.5,NULL,3,1,1,NULL,NULL,NULL,NULL,0),(30,'Xabat','681693406',6,'2026-03-28 21:00:00',100,NULL,1,3,1,NULL,NULL,NULL,NULL,0),(31,'Aitor','684656482',2,'2026-03-29 13:30:00',36,NULL,1,6,1,NULL,NULL,NULL,NULL,0),(32,'Mikel','699468044',4,'2026-03-29 14:00:00',86.5,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(33,'June','672148951',4,'2026-04-03 14:00:00',87.5,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(34,'Asier','632003791',2,'2026-04-03 20:30:00',64,NULL,2,6,1,NULL,NULL,NULL,NULL,0),(35,'Ane','616328708',2,'2026-04-04 21:30:00',99,NULL,1,2,1,NULL,NULL,NULL,NULL,0),(36,'Nerea','678895798',4,'2026-04-04 21:00:00',50,NULL,2,1,1,NULL,NULL,NULL,NULL,0),(37,'June','673471434',2,'2026-04-05 14:30:00',18.5,NULL,2,6,1,NULL,NULL,NULL,NULL,0),(38,'Nerea','623623166',6,'2026-04-05 13:00:00',137,NULL,2,3,1,NULL,NULL,NULL,NULL,0),(39,'Gaizka','605466889',8,'2026-04-10 14:30:00',116.5,NULL,1,5,1,NULL,NULL,NULL,NULL,0),(40,'Uxue','667065627',4,'2026-04-10 21:00:00',104.5,NULL,1,4,1,NULL,NULL,NULL,NULL,0),(41,'Mikel','604653755',2,'2026-04-11 13:00:00',60,NULL,2,2,1,NULL,NULL,NULL,NULL,0),(42,'Uxue','617080531',6,'2026-04-11 14:30:00',29.3,NULL,3,3,1,NULL,NULL,NULL,NULL,0),(43,'Gaizka','619374529',2,'2026-04-12 20:30:00',63.5,NULL,3,2,1,NULL,NULL,NULL,NULL,0),(44,'Mikel','641904966',2,'2026-04-12 21:00:00',30.5,NULL,3,6,1,NULL,NULL,NULL,NULL,0),(45,'Local','',2,'2026-04-24 13:00:00',26,'/tiketak/Tiket_Erreserba_45.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(46,'Local','',1,'2026-04-24 13:00:00',77.5,'/tiketak/Tiket_Erreserba_46.pdf',2,2,1,NULL,NULL,NULL,NULL,0),(47,'Local','',2,'2026-04-24 13:30:00',94,'/tiketak/Tiket_Erreserba_47.pdf',2,2,1,NULL,NULL,NULL,NULL,0),(48,'Local','',2,'2026-04-24 14:30:00',14.3,'/tiketak/Tiket_Erreserba_48.pdf',2,2,1,NULL,NULL,NULL,NULL,0),(49,'Local','',2,'2026-04-24 13:30:00',134,'/tiketak/Tiket_Erreserba_49.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(50,'Local','',2,'2026-04-24 14:00:00',111.5,'/tiketak/Tiket_Erreserba_50.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(51,'Local','',5,'2026-04-24 14:30:00',301.95000000000005,'/tiketak/Tiket_Erreserba_51.pdf',3,3,1,NULL,NULL,NULL,NULL,0),(52,'Local','',2,'2026-04-24 14:30:00',85,'/tiketak/Tiket_Erreserba_52.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(53,'Local','',3,'2026-04-24 14:30:00',43.5,'/tiketak/Tiket_Erreserba_53.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(54,'Local','',8,'2026-04-24 20:30:00',28,'/tiketak/Tiket_Erreserba_54.pdf',2,5,1,NULL,NULL,NULL,NULL,0),(55,'Local','',2,'2026-04-24 14:00:00',85.5,'/tiketak/Tiket_Erreserba_55.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(56,'Local','',2,'2026-04-24 14:00:00',27,'/tiketak/Tiket_Erreserba_56.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(57,'Local','',2,'2026-04-24 14:30:00',78.5,'/tiketak/Tiket_Erreserba_57.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(58,'Local','',6,'2026-04-24 14:00:00',44,'/tiketak/Tiket_Erreserba_58.pdf',3,3,1,NULL,NULL,NULL,NULL,0),(59,'Local','',2,'2026-04-24 15:00:00',0,'/tiketak/Tiket_Erreserba_59.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(60,'Local','',3,'2026-04-24 14:30:00',6.5,'/tiketak/Tiket_Erreserba_60.pdf',2,5,1,NULL,NULL,NULL,NULL,0),(61,'Local','',2,'2026-04-24 15:00:00',86.5,'/tiketak/Tiket_Erreserba_61.pdf',3,2,1,NULL,NULL,NULL,NULL,0),(62,'Local','',3,'2026-04-24 15:00:00',29.700000000000003,'/tiketak/Tiket_Erreserba_62.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(63,'Local','',2,'2026-04-25 13:30:00',11,'/tiketak/Tiket_Erreserba_63.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(64,'Local','',2,'2026-04-25 13:00:00',17,'/tiketak/Tiket_Erreserba_64.pdf',3,1,1,NULL,NULL,NULL,NULL,0),(65,'Local','',2,'2026-04-25 13:30:00',38.5,'/tiketak/Tiket_Erreserba_65.pdf',2,2,1,NULL,NULL,NULL,NULL,0);
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
  KEY `fk_eskariak_erreserbak1` (`erreserbak_id`,`erreserbak_langileak_id`,`erreserbak_mahaiak_id`),
  KEY `erreserbak_id` (`erreserbak_id`),
  KEY `erreserbak_langileak_id` (`erreserbak_langileak_id`),
  KEY `erreserbak_mahaiak_id` (`erreserbak_mahaiak_id`),
  CONSTRAINT `FK_82A96F40` FOREIGN KEY (`erreserbak_id`) REFERENCES `erreserbak` (`id`),
  CONSTRAINT `FK_8E810A89` FOREIGN KEY (`erreserbak_mahaiak_id`) REFERENCES `mahaiak` (`id`),
  CONSTRAINT `FK_A612A34C` FOREIGN KEY (`erreserbak_langileak_id`) REFERENCES `langileak` (`id`),
  CONSTRAINT `fk_eskariak_erreserbak1` FOREIGN KEY (`erreserbak_id`, `erreserbak_langileak_id`, `erreserbak_mahaiak_id`) REFERENCES `erreserbak` (`id`, `langileak_id`, `mahaiak_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eskariak`
--

LOCK TABLES `eskariak` WRITE;
/*!40000 ALTER TABLE `eskariak` DISABLE KEYS */;
INSERT INTO `eskariak` VALUES (1,19,'Zerbitzatua',1,3,6),(2,0,'Zerbitzatua',1,3,6),(3,159,'Zerbitzatua',2,1,5),(4,119.5,'Zerbitzatua',2,1,5),(5,96,'Zerbitzatua',3,2,1),(6,25,'Zerbitzatua',3,2,1),(7,118,'Zerbitzatua',4,1,1),(8,111,'Zerbitzatua',4,1,1),(9,56,'Zerbitzatua',5,2,2),(10,8,'Zerbitzatua',5,2,2),(11,46,'Zerbitzatua',6,1,4),(12,46,'Zerbitzatua',6,1,4),(13,41.5,'Zerbitzatua',7,3,4),(14,12,'Zerbitzatua',7,3,4),(15,165,'Zerbitzatua',8,3,4),(16,33,'Zerbitzatua',8,3,4),(17,84,'Zerbitzatua',9,1,5),(18,73,'Zerbitzatua',9,1,5),(19,106,'Zerbitzatua',10,1,4),(20,62,'Zerbitzatua',10,1,4),(21,54,'Zerbitzatua',11,3,4),(22,24,'Zerbitzatua',11,3,4),(23,35,'Zerbitzatua',12,3,4),(24,63,'Zerbitzatua',12,3,4),(25,66,'Zerbitzatua',13,3,4),(26,27,'Zerbitzatua',13,3,4),(27,13.5,'Zerbitzatua',14,2,2),(28,60,'Zerbitzatua',14,2,2),(30,26,'zerbitzatua',45,3,1),(31,31,'zerbitzatua',46,2,2),(32,46.5,'zerbitzatua',46,2,2),(33,25,'zerbitzatua',47,2,2),(34,69,'zerbitzatua',47,2,2),(35,13,'Prest',48,2,2),(36,134,'Prest',49,3,1),(37,21.5,'zerbitzatua',50,3,2),(38,90,'zerbitzatua',50,3,2),(39,13,'Prest',51,3,3),(40,225,'Prest',51,3,3),(41,36.5,'Prest',51,3,3),(42,47,'zerbitzatua',52,3,2),(43,38,'zerbitzatua',52,3,2),(44,34.5,'zerbitzatua',53,3,1),(45,9,'Bidalita',53,3,1),(46,28,'Bidalita',54,2,5),(47,16.5,'zerbitzatua',55,3,2),(48,69,'zerbitzatua',55,3,2),(49,27,'zerbitzatua',56,3,2),(50,19.5,'zerbitzatua',57,3,2),(51,59,'zerbitzatua',57,3,2),(52,44,'zerbitzatua',58,3,3),(53,6.5,'zerbitzatua',60,2,5),(54,23.5,'zerbitzatua',61,3,2),(55,63,'zerbitzatua',61,3,2),(56,19,'zerbitzatua',62,3,1),(57,8,'Bidalita',62,3,1),(58,11,'zerbitzatua',63,3,1),(59,17,'zerbitzatua',64,3,1),(60,36.5,'zerbitzatua',65,2,2),(61,2,'zerbitzatua',65,2,2);
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
  KEY `eskariak_id` (`eskariak_id`),
  KEY `produktuak_id` (`produktuak_id`),
  CONSTRAINT `FK_496A0619` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`),
  CONSTRAINT `FK_E9A6D6AA` FOREIGN KEY (`eskariak_id`) REFERENCES `eskariak` (`id`),
  CONSTRAINT `fk_esk_has_pro_esk` FOREIGN KEY (`eskariak_id`) REFERENCES `eskariak` (`id`),
  CONSTRAINT `fk_esk_has_pro_pro` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eskariak_has_produktuak`
--

LOCK TABLES `eskariak_has_produktuak` WRITE;
/*!40000 ALTER TABLE `eskariak_has_produktuak` DISABLE KEYS */;
INSERT INTO `eskariak_has_produktuak` VALUES (1,9,2,8),(2,4,4,9),(2,6,3,13),(3,6,4,13),(3,16,4,21),(4,5,4,11),(5,9,2,8),(5,14,1,24),(5,25,4,5),(6,33,2,1.5),(7,21,3,6),(7,31,1,5),(8,3,1,14),(8,24,2,6),(8,30,1,3.5),(9,2,1,12),(9,26,1,14),(10,13,2,22),(11,11,1,45),(11,28,1,18),(11,29,2,2),(12,1,3,7.5),(12,27,1,6),(13,7,2,12.5),(13,20,2,14),(14,18,4,13),(15,6,3,13),(15,23,1,5.5),(16,19,4,19),(17,8,3,9.5),(17,10,1,11.5),(18,15,2,18),(18,32,2,4.5),(19,12,2,20),(20,17,4,17),(21,14,1,24),(21,34,3,3.5),(22,22,2,6.5),(22,33,2,1.5),(23,30,2,3.5),(23,35,2,1.8),(24,27,3,6),(25,16,3,21),(25,31,1,5),(26,28,2,18),(26,29,2,2),(27,11,2,45),(28,18,2,13),(28,24,2,6),(30,6,2,13),(31,2,1,12),(31,19,1,19),(32,7,1,12.5),(32,13,1,22),(32,27,2,6),(33,3,1,14),(33,5,1,11),(34,11,1,45),(34,14,1,24),(35,6,1,13),(36,4,8,9),(36,11,1,45),(36,17,1,17),(37,1,1,7.5),(37,3,1,14),(38,11,2,45),(39,6,1,13),(40,11,5,45),(41,21,1,6),(41,22,3,6.5),(41,23,2,5.5),(42,3,1,14),(42,4,1,9),(42,27,4,6),(43,14,1,24),(43,20,1,14),(44,2,1,12),(44,6,1,13),(44,8,1,9.5),(45,4,1,9),(46,1,2,7.5),(46,6,1,13),(47,1,1,7.5),(47,4,1,9),(48,11,1,45),(48,14,1,24),(49,3,1,14),(49,6,1,13),(50,1,1,7.5),(50,2,1,12),(51,11,1,45),(51,20,1,14),(52,3,1,14),(52,4,1,9),(52,6,1,13),(52,9,1,8),(53,22,1,6.5),(54,2,1,12),(54,10,1,11.5),(55,11,1,45),(55,15,1,18),(56,8,2,9.5),(57,9,1,8),(58,5,1,11),(59,17,1,17),(60,7,1,12.5),(60,14,1,24),(61,29,1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hornitzaileak`
--

LOCK TABLES `hornitzaileak` WRITE;
/*!40000 ALTER TABLE `hornitzaileak` DISABLE KEYS */;
INSERT INTO `hornitzaileak` VALUES (1,'Gipuzkoa Elikagaiak','943111222','Donostia'),(2,'Arrain Freskoa SL','943333444','Pasaia'),(3,'Euskal Haragiak','943555666','Beasain'),(4,'Arabako Barazkiak','945112233','Gasteiz'),(5,'Edari Euskaldunak','944221133','Bilbo'),(6,'Esneki Naturala','943667788','Azpeitia');
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
  `txat_sarbidea` tinyint NOT NULL,
  `lanpostuak_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lanpostuak_id` (`lanpostuak_id`),
  CONSTRAINT `FK_134CB256` FOREIGN KEY (`lanpostuak_id`) REFERENCES `lanpostuak` (`id`),
  CONSTRAINT `fk_langileak_lanpostuak` FOREIGN KEY (`lanpostuak_id`) REFERENCES `lanpostuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langileak`
--

LOCK TABLES `langileak` WRITE;
/*!40000 ALTER TABLE `langileak` DISABLE KEYS */;
INSERT INTO `langileak` VALUES (1,'Ane','Soto','11122233A','azubiri',101,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Kale Nagusia 5',1,1),(2,'Jon','Milo','44455566B','jlasa',102,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','San Martin 2',1,2),(3,'Iraitz','Guisado','77788899C','ketxebe',103,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Itsas kalea 10',1,2),(4,'Joseba','Ramos','12345678D','miraola',104,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','Foru Plaza 1',1,4),(5,'Ander','Madinabeitia','88596547F','amadina',105,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','hgiarye',1,3),(6,'Estebe','Ormazabal','78546325G','eormazabal',106,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','agrae',1,4),(13,'Jon','Milo','15432679R','jonmilo80@gmail.com',135,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','uñhfgouahas',0,1),(14,'Marc','Demo','67890452A','demo',525,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','sedfrghyjui',0,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanpostuak`
--

LOCK TABLES `lanpostuak` WRITE;
/*!40000 ALTER TABLE `lanpostuak` DISABLE KEYS */;
INSERT INTO `lanpostuak` VALUES (1,'Gerentea'),(2,'Administratzailea'),(3,'Sukaldaria'),(4,'Zerbitzaria');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahaiak`
--

LOCK TABLES `mahaiak` WRITE;
/*!40000 ALTER TABLE `mahaiak` DISABLE KEYS */;
INSERT INTO `mahaiak` VALUES (1,1,4,'Egongela nagusia'),(2,2,2,'Egongela nagusia'),(3,3,6,'Egongela nagusia'),(4,4,4,'Terraza'),(5,5,8,'Egongela nagusia'),(6,6,2,'Terraza');
/*!40000 ALTER TABLE `mahaiak` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mota`
--

LOCK TABLES `mota` WRITE;
/*!40000 ALTER TABLE `mota` DISABLE KEYS */;
INSERT INTO `mota` VALUES (1,'Lehengoak'),(2,'Bigarrenak'),(3,'Postreak'),(4,'Edariak');
/*!40000 ALTER TABLE `mota` ENABLE KEYS */;
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
  KEY `fk_osagaiak_hornitzaileak1` (`hornitzaileak_id`),
  CONSTRAINT `fk_osagaiak_hornitzaileak1` FOREIGN KEY (`hornitzaileak_id`) REFERENCES `hornitzaileak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osagaiak`
--

LOCK TABLES `osagaiak` WRITE;
/*!40000 ALTER TABLE `osagaiak` DISABLE KEYS */;
INSERT INTO `osagaiak` VALUES (1,'Patata',0.6,445,1),(2,'Tipula',0.4,174,1),(3,'Arrautza',0.2,243,1),(4,'Bakailaoa',15,33,2),(5,'Txuleta',22,17,3),(6,'Esnea',0.8,59,1),(7,'Ira-sagarra',1.2,46,1),(8,'Irina',0.5,135,1),(9,'Legatza',18,9,2),(10,'Bildotsa',25,11,3),(11,'Txipiroia',14,34,2),(12,'Intxaurrak',5,12,1),(13,'Ardoa',8,71,1),(14,'Sagarra',0.5,87,1),(15,'Babarrunak',2.5,100,4),(16,'Porruak',1,80,4),(17,'Azenarioa',0.7,125,4),(18,'Tomate',0.6,139,4),(19,'Baratxuria',0.3,136,4),(20,'Piper gorria',1.1,22,4),(21,'Atun freskoa',12,15,2),(22,'Antxoa',9,16,2),(23,'Oilasko bularra',6,60,3),(24,'Txerri saihetsa',8,28,3),(25,'Idiazabal gazta',7,45,6),(26,'Esne gaina',1.5,78,6),(27,'Azukrea',0.4,288,1),(28,'Limoia',0.6,67,4),(29,'Txakolina',5,98,5),(30,'Sagardoa',3,144,5),(31,'Azaloria',0.8,97,4),(32,'Ilarra',1.2,86,4),(33,'Urdaiazpikoa',9,44,3),(34,'Alkatxofa',2,49,4),(35,'Txerri txistorra',5.5,49,3),(36,'Almendra',4,38,1),(37,'Txokolatea',3.5,30,1);
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
  `stock` int NOT NULL,
  `mota_id` int NOT NULL,
  PRIMARY KEY (`id`,`mota_id`),
  KEY `fk_produktuak_mota1` (`mota_id`),
  CONSTRAINT `fk_produktuak_mota1` FOREIGN KEY (`mota_id`) REFERENCES `mota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak`
--

LOCK TABLES `produktuak` WRITE;
/*!40000 ALTER TABLE `produktuak` DISABLE KEYS */;
INSERT INTO `produktuak` VALUES (1,'Porrusalda',7.5,45,1),(2,'Bakailao tortila',12,20,1),(3,'Tolosako babarrunak',14,20,1),(4,'Ibarrako piparrak',9,28,1),(5,'Arrain zopa',11,18,1),(6,'Marmitakoa',13,14,1),(7,'Alkatxofak urdaiazpikoarekin',12.5,16,1),(8,'Garbantzuak azalorearekin',9.5,27,1),(9,'Lekak patatekin',8,43,1),(10,'Karduak almendrakin',11.5,19,1),(11,'Txuleta parrillan',45,3,2),(12,'Bakailaoa pil-pilean',20,20,2),(13,'Legatza saltsa berdean',22,14,2),(14,'Arkume errea',24,8,2),(15,'Txipiroiak bere tintan',18,24,2),(16,'Bakailaoa bizkaitar erara',21,18,2),(17,'Hegaluzea tomatearekin',17,28,2),(18,'Antxoak frijituak',13,32,2),(19,'Txerri saihetsa txakolinareki',19,18,2),(20,'Txistorra patatekin',14,25,2),(21,'Goxua',6,29,3),(22,'Pantxineta',6.5,21,3),(23,'Gaztanbera eztiarekin',5.5,38,3),(24,'Intxaur musa',6,7,3),(25,'Sagar erreak',5,31,3),(26,'Txakolina botila',14,60,4),(27,'Sagardo botila',6,94,4),(28,'Errioxako ardoa botila',18,80,4),(29,'Ur minerala',2,195,4),(30,'Garagardoa',3.5,150,4),(31,'Sagar sorbetea',5,40,4),(32,'Patxarana',4.5,30,4),(33,'Sagardo kopa',1.5,200,4),(34,'Txakolina kopa',3.5,120,4),(35,'Kafea',1.8,300,4);
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
  `kantitatea` int NOT NULL,
  PRIMARY KEY (`produktuak_id`,`osagaiak_id`),
  KEY `produktuak_id` (`produktuak_id`),
  KEY `osagaiak_id` (`osagaiak_id`),
  CONSTRAINT `FK_200FAAF` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `FK_980955FB` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`),
  CONSTRAINT `fk_pro_has_osa_osa` FOREIGN KEY (`osagaiak_id`) REFERENCES `osagaiak` (`id`),
  CONSTRAINT `fk_pro_has_osa_pro` FOREIGN KEY (`produktuak_id`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak_has_osagaiak`
--

LOCK TABLES `produktuak_has_osagaiak` WRITE;
/*!40000 ALTER TABLE `produktuak_has_osagaiak` DISABLE KEYS */;
INSERT INTO `produktuak_has_osagaiak` VALUES (1,1,3),(1,16,2),(1,17,1),(2,2,1),(2,3,3),(2,4,1),(3,2,1),(3,15,4),(3,24,1),(4,13,1),(4,19,2),(4,20,6),(5,2,1),(5,9,1),(5,18,2),(6,1,3),(6,20,1),(6,21,2),(7,33,2),(7,34,4),(8,2,1),(8,18,1),(8,31,1),(9,1,2),(9,32,2),(9,33,1),(10,19,1),(10,34,3),(10,36,2),(11,5,1),(11,13,1),(11,19,2),(12,2,1),(12,4,1),(12,19,3),(13,8,1),(13,9,1),(13,19,3),(14,10,1),(14,13,1),(14,19,2),(15,2,1),(15,11,3),(15,13,1),(16,4,1),(16,18,2),(16,20,2),(17,2,1),(17,18,2),(17,21,2),(18,8,2),(18,22,8),(18,28,1),(19,19,2),(19,24,1),(19,29,1),(20,1,3),(20,2,1),(20,35,2),(21,3,2),(21,26,2),(21,27,1),(22,8,2),(22,12,2),(22,27,1),(23,3,2),(23,6,3),(24,6,2),(24,12,3),(24,27,1),(25,7,1),(25,14,3),(25,27,1),(26,29,1),(27,30,1),(28,13,1),(31,6,2),(31,14,1),(33,30,1),(34,29,1);
/*!40000 ALTER TABLE `produktuak_has_osagaiak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-29 16:09:02
