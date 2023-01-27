-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: record_collection
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `artistorband`
--

DROP TABLE IF EXISTS `artistorband`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistorband` (
  `artistName` varchar(30) NOT NULL,
  `labelName` varchar(30) DEFAULT NULL,
  `genre` varchar(30) NOT NULL,
  `netWorth` bigint DEFAULT NULL,
  `totalAlbumsPublished` int NOT NULL,
  PRIMARY KEY (`artistName`),
  KEY `for_label` (`labelName`),
  KEY `for_genre` (`genre`),
  CONSTRAINT `for_genre` FOREIGN KEY (`genre`) REFERENCES `musicgenre` (`genre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `for_label` FOREIGN KEY (`labelName`) REFERENCES `recordlabel` (`labelName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistorband`
--

LOCK TABLES `artistorband` WRITE;
/*!40000 ALTER TABLE `artistorband` DISABLE KEYS */;
INSERT INTO `artistorband` VALUES ('2pac','Death Row Records','Hip-Hop',40000000,5),('6lack','LOVE RENAISSANCE','R&B',2000000,2),('A Tribe Called Quest','Jive Records','Hip-Hop',NULL,6),('Artic Monkeys','Domino Records','Indie Rock',12520000,6),('Bob Marley And The Wailers','JAD Records','Reggae',130000000,11),('Bryson Tiller','RCA Records','R&B',2000000,3),('Childish Gambino','Glassnote Records','Hip-Hop',35000000,4),('D\'Angelo','RCA Records','Neo-Soul',2000000,3),('DMX','Ruff Ryders','Hip-Hop',-1000000,8),('Dr Dre','Aftermath Entertainment','Hip-Hop',820000000,1),('Eminem','Shady Records','Hip-Hop',230000000,11),('Frank Sinatra','Reprise Records','Pop',200000000,59),('Freddie Gibbs','Interscope Records','Hip-Hop',3000000,4),('Freddie Gibbs & Madlib','Madlib Invazion','Hip-Hop',NULL,1),('Fugees','Ruffhouse Records','Hip-Hop',700000,2),('Funkadelic','Westbound Records','Funk',1700000,13),('Ghostface Killah','Def Jam','Hip-Hop',10000000,13),('Gza','Geffen Records','Hip-Hop',18000000,5),('Hans Zimmer','Remote Control Productions','Movie Soundtrack',200000000,165),('J Dilla','Stones Throw Records','Hip-Hop',10000000,10),('J. Cole','Dreamville Records','Hip-Hop',60000000,6),('Jay-Z','Roc-A-Fella Records','Hip-Hop',1300000000,13),('Jay-Z & Kanye West','Roc-A-Fella Records','Hip-Hop',NULL,1),('Jimi Hendrix','Reprise Records','Rock',175000000,3),('Kanye West','Def Jam','Hip-Hop',6600000000,10),('Kendrick Lamar','Top Dawg Entertainment','Hip-Hop',75000000,4),('Lauryn Hill','Ruffhouse Records','Neo-Soul',9000000,1),('Madlib','Stones Throw Records','Hip-Hop',1500000,24),('Madvillain','Stones Throw Records','Hip-Hop',NULL,1),('Madvillain:Madlib & MF DOOM','Stones Throw Records','Hip-Hop',NULL,1),('Marvin Gaye','Motown Records','Soul',9000000,25),('Method Man','Def Jam','Hip-Hop',14000000,6),('MF DOOM',NULL,'Hip-Hop',1000000,6),('Micheal Jackson','Epic Records','Pop',750000000,10),('Miles Davis','Rhino Entertainment','Jazz',19000000,61),('Mobb Deep','Loud Records','Hip-Hop',10000000,8),('N.W.A','Ruthless Records','Hip-Hop',10000000,2),('Nas','Def Jam','Hip-Hop',70000000,14),('Otis Redding','Stax Records','Soul',10000000,6),('Raekwon','Loud Records','Hip-Hop',6000000,7),('Sam Cooke','SAR Records','Soul',5000000,15),('Snoop Dogg','Doggystyle Records','Hip-Hop',150000000,18),('Stevie Wonder','Motown Records','Soul',200000000,23),('The Notorious B.I.G.','Bad Boy Records','Hip-Hop',20000000,2),('The Roots','Def Jam','Hip-Hop',17000000,14),('The Weeknd','XO','R&B',200000000,5),('Thug Life','Jive Records','Hip-Hop',2000000,1),('Wu-Tang Clan','Loud Records','Hip-Hop',20000000,7);
/*!40000 ALTER TABLE `artistorband` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 21:35:20
