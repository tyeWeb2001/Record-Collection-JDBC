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
-- Table structure for table `recordlabel`
--

DROP TABLE IF EXISTS `recordlabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recordlabel` (
  `labelName` varchar(30) NOT NULL,
  `dateFounded` int NOT NULL,
  `currentCEO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`labelName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordlabel`
--

LOCK TABLES `recordlabel` WRITE;
/*!40000 ALTER TABLE `recordlabel` DISABLE KEYS */;
INSERT INTO `recordlabel` VALUES ('Aftermath Entertainment',1996,'Andre Young'),('Bad Boy Records',1993,'Sean Combs'),('Capital Records',1942,'Steve Barnett'),('Columbia Records',1889,'Rob Stringer'),('Death Row Records',1992,NULL),('Decca Records',1929,'David Joseph'),('Def Jam',1984,'Steve Bartels'),('Doggystyle Records',1995,'	Calvin Cordozar Broadus Jr.'),('Domino Records',1993,'Annabella Coldrick'),('Dreamville Records',2007,'Jermaine Lamarr Cole'),('Epic Records',1953,'Sylvia Rhone'),('Geffen Records',1980,NULL),('Glassnote Records',2007,'Guy Moot'),('Interscope Records',1990,'John Janick'),('Island Records',1959,NULL),('JAD Records',1967,NULL),('Jive Records',1981,'Barry Weiss'),('Loud Records',1991,'Steve Rifkind'),('LOVE RENAISSANCE',2012,'Amber Grimes'),('Madlib Invazion',2010,'Otis Jackson Jr'),('Motown Records',1959,'Ethiopia Habtemariam'),('No Limits Record',1990,NULL),('RCA Records',1901,'Peter Edge'),('Remote Control Productions',1989,'Hans Zimmer'),('Reprise Records',1960,NULL),('Republic Records',1995,'Monte Lipman'),('Rhino Entertainment',1978,'Ross Parkhill'),('Roc-A-Fella Records',1995,'Damon Dash'),('Ruff Ryders',1988,'WAAH DEAN '),('Ruffhouse Records',1989,NULL),('Ruthless Records',1987,NULL),('SAR Records',1961,NULL),('Shady Records',1999,'Marshell Mathers'),('Stax Records',1957,NULL),('Stones Throw Records',1996,'Peanut Butter Wolf'),('Top Dawg Entertainment',2004,'Anthony Top Dawg Tiffith'),('Virgin Records',1972,'Andy Slater'),('WestBound Records',1968,NULL),('XO',2011,'Wassim Slaiby'),('Ze Records',1978,NULL);
/*!40000 ALTER TABLE `recordlabel` ENABLE KEYS */;
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
