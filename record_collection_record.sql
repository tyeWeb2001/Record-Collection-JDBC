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
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `recordName` varchar(50) NOT NULL,
  `artistName` varchar(30) NOT NULL,
  `totalPlayTime` int NOT NULL,
  `totalTracks` tinyint NOT NULL,
  `labelName` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `yearOfRelease` year NOT NULL,
  PRIMARY KEY (`recordName`,`artistName`),
  KEY `for_record` (`artistName`),
  KEY `for_record2` (`genre`),
  CONSTRAINT `for_record` FOREIGN KEY (`artistName`) REFERENCES `artistorband` (`artistName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `for_record2` FOREIGN KEY (`genre`) REFERENCES `musicgenre` (`genre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES ('2001','Dr Dre',68,22,'Aftermath Entertainment','Hip-Hop',1999),('2014 Forest Hills Drive','J. Cole',64,13,'Dreamville Records','Hip-Hop',2014),('Ain\'t That Good News','Sam Cooke',33,12,'RCA Records','Soul',1964),('All Eyez On Me','2pac',132,27,'Death Row Records','Hip-Hop',1996),('AM','Artic Monkeys',42,12,'Domino Records','Indie Rock',2013),('Awaken, My Love!','Childish Gambino',49,11,'Glassnote Records','Funk',2016),('Black Messiah','D\'Angelo',56,12,'RCA Records','Neo-Soul',2014),('Doggystyle','Snoop Dogg',52,13,'Death Row Records','Hip-Hop',1993),('Donuts','J Dilla',44,31,'Stones Throw Records','Hip-Hop',2006),('East Atlanta Love Letter','6LACK',48,14,'LOVE RENAISSANCE','R&B',2018),('Electric Ladyland','Jimi Hendrix',75,16,'Reprise Records','Rock',1968),('Enter The Wu-Tang Clan[36 Chambers}','Wu-Tang Clan',36,9,'Loud Records','Hip-Hop',1993),('Exodus','Bob Marley And The Wailers',50,12,'Island Records','Reggae',1977),('Free Your Mind... And Your Ass Will Follow','Funkadelic',31,6,'Westbound Records','Funk',1989),('Gladiator SoundTrack','Hans Zimmer',90,17,'Decca Records','Movie Soundtrack',2000),('good kid, m.A.A.d city[Deluxe]','Kendrick Lamar',92,17,'Top Dawg Entertainment','Hip-Hop',2012),('Graduation','Kanye West',51,13,'Def-Jam Records','Hip-Hop',2007),('Hell On Earth','Mobb Deep',59,14,'Loud Records','Hip-Hop',1996),('House Of Balloons','The Weeknd',49,9,'XO','Alternative R&B',2011),('I Want You','Marvin Gaye',38,11,'Motwon Records','Soul',1976),('Illmatic','Nas',40,10,'Columbia Records','Hip-Hop',1994),('In The Wee Small Hours','Frank Sinatra',50,16,'Capital Records','Vocal Jazz',1955),('Ironman','Ghostface Killah',63,16,'Epic Records','Hip-Hop',1996),('It\'s Dark And Hell Is Hot','DMX',65,19,'Def Jam','Hip-Hop',1998),('Jimi Hendrix The Legend Of Rock','Jimi Hendrix',60,13,'Reprise Records','Rock',1967),('Kind Of Blue','Miles Davis',46,5,'Columbia','Jazz',1959),('Kissland','The Weeknd',56,10,'XO','Contemporary R&B',2013),('Let\'s Get It On','Marvin Gaye',32,8,'Motown Records','Soul',1973),('Liquid Swords','Gza',55,13,'Geffen Records','Hip-Hop',1995),('MadVillainy','Madvillain:Madlib & MF DOOM',46,22,'Stones Throw Records','Hip-Hop',2004),('Maggot Brain','Funkadelic',37,7,'Westbound Records','Funk',1971),('Me Against The World','2pac',65,15,'Interscope Records','Hip-Hop',1995),('Midnight Maurders','A Tribe Called Quest',51,14,'Jive Records','Hip-Hop',1993),('Miseducation Of Lauryn Hill','Lauryn Hill',77,16,'Ruff House Records','Hip-Hop',1998),('My Beatiful Dark Twisted Fantasy','Kanye West',68,13,'Roc-A-Fella Records','Hip-Hop',2010),('Only Built 4 Cuban Linx...','Raekwon',73,18,'RCA Records','Hip-Hop',1995),('Otis Redding sings soul','Otis Redding',33,11,'Stax','Soul',1965),('Piñata','Freddie Gibbs & Madlib',60,17,'Madlib Invazion','Hip-Hop',2014),('Ready To Die','The Notorious B.I.G.',76,19,'Bad Boy Records','Hip-Hop',1994),('Signs','Snoop Dogg',4,1,'No Limits Records','Hip-Hop',2005),('Songs In The Key Of Life','Stevie Wonder',105,21,'Motwon Records','Soul',1976),('Standing On The Verge Of Getting It On','Funkadelic',38,7,'WestBound Records','Funk',1974),('Straight Outta Compton','N.W.A',60,13,'Ruthless Records','Hip-Hop',1988),('The Black Album','Jay-Z',56,14,'Roc-A-Fella Records','Hip-Hop',2003),('The Blueprint','Jay-Z',63,15,'Roc-A-Fella Records','Hip-Hop',2001),('The Eminem Show','Eminem',77,20,'Shady Records','Hip-Hop',2002),('The Score','Fugees',69,15,'Ruff House Records','Hip-Hop',1996),('Things Fall Apart','The Roots',68,18,'ZE Records','Hip-Hop',1999),('Thriller','Micheal Jackson',42,9,'Epic Records','Pop',1982),('Thug Life:Volume 1','Thug Life',42,10,'Jive Records','Hip-Hop',1994),('Tical','Method Man',44,13,'Def Jam','Hip-Hop',1994),('To Pimp A Butterfly','Kendrick Lamar',78,16,'Top Dawg Entertainment','Hip-Hop',2015),('Trapsoul','Bryson Tiller',45,14,'RCA Records','R&B',2015),('True To Self','Bryson Tiller',58,19,'RCA Records','Contemporary R&B',2017),('Voodoo','D\'Angelo',78,13,'Virgin Records','Neo-Soul',2000),('Watch The Throne','Jay-Z & Kanye West',46,12,'Roc-A-Fella Records','Hip-Hop',2011),('What\'s Going On','Marvin Gaye',36,9,'Motown Records','Soul',1971),('Wu-Tang Forever','Wu-Tang Clan',122,27,'Loud Records','Hip-Hop',1997);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
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
