-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: runners2
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competition` (
  `CompetitionID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(255) DEFAULT NULL,
  `Place` varchar(255) DEFAULT NULL,
  `EventTitle` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CompetitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=10529 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition`
--

LOCK TABLES `competition` WRITE;
/*!40000 ALTER TABLE `competition` DISABLE KEYS */;
INSERT INTO `competition` VALUES (10447,'2019-03-03','Ikast','DGI Landmesterskab 2019','DK'),(10448,'2019-11-10','Oure','Turnering nr. 2','DK'),(10486,'2019-04-22','Hjemme','Træning','DK'),(10505,'2019-04-14','Hjemme','Træning','DK'),(10522,'2017-02-03','Herning','Jydske Mesterskaber 2017','DK'),(10523,'2018-02-02','Hobro','DGI Landsmesterskab 2018','DK'),(10524,'2016-02-02','Skive','DGI Landsmesterskab 2016','DK'),(10525,'2015-02-02','Sønderborg','DGI Landsmesterskab 2015','DK'),(10526,'2015-02-02','Sønderborg','DGI Landsmesterskab 2015','DK'),(10527,'2015-02-02','Sønderborg','DGI Landsmesterskab 2015','DK'),(10528,'2015-05-02','Vejle','DGI Jydske Mesterskaber 2015','DK');
/*!40000 ALTER TABLE `competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competition_details`
--

DROP TABLE IF EXISTS `competition_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competition_details` (
  `CompetitionDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `CompetitionID` int(11) DEFAULT NULL,
  `Result` int(11) DEFAULT NULL,
  `ResultString` varchar(255) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `disciplinid` int(11) DEFAULT NULL,
  PRIMARY KEY (`CompetitionDetailID`),
  KEY `CompetitionID` (`CompetitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition_details`
--

LOCK TABLES `competition_details` WRITE;
/*!40000 ALTER TABLE `competition_details` DISABLE KEYS */;
INSERT INTO `competition_details` VALUES (522,10448,14708,'2:27:08',94,4),(523,10449,14859,'2:28:59',95,4),(524,10450,15033,'2:30:33',96,4),(525,10451,15505,'2:35:05',97,4),(526,10452,15724,'2:37:24',98,4),(527,10453,15860,'2:38:60',99,4),(528,10454,16122,'2:41:22',100,4),(529,10455,16126,'2:41:26',102,4),(530,10456,NULL,'2:41:88',109,4),(531,10457,16288,'2:42:88',110,4),(532,10458,16373,'2:43:73',111,4),(533,10459,16681,'2:46:81',112,4),(534,10460,17359,'2:53:59',113,4),(535,10461,17730,'2:57:30',114,4),(536,10462,17905,'2:59:05',115,4),(537,10463,18102,'3:01:02',116,4),(538,10464,18402,'3:04:02',117,4),(539,10465,19586,'3:15:86',118,4),(540,10466,NULL,'3:26:89',119,4),(541,10448,10815,'1:48:15',94,3),(542,10449,11094,'1:50:94',95,3),(543,10450,11182,'1:51:82',96,3),(544,10451,11452,'1:54:52',97,3),(545,10452,11586,'1:55:86',98,3),(546,10453,11557,'1:55:57',99,3),(547,10454,11952,'1:59:52',100,3),(548,10455,11910,'1:59:10',102,3),(549,10456,11917,'1:59:17',109,3),(550,10457,NULL,'2:02:98',110,3),(551,10458,12170,'2:01:70',111,3),(552,10459,12408,'2:04:08',112,3),(553,10460,12789,'2:07:89',113,3),(554,10461,13094,'2:10:94',114,3),(555,10462,13051,'2:10:51',115,3),(556,10463,13645,'2:16:45',116,3),(557,10464,13649,'2:16:49',117,3),(558,10465,14869,'2:28:69',118,3),(559,10466,15382,'2:33:82',119,3),(560,10448,NULL,'1:08:81',94,2),(561,10449,7127,'1:11:27',95,2),(562,10450,7247,'1:12:47',96,2),(563,10451,7388,'1:13:88',97,2),(564,10452,7430,'1:14:30',98,2),(565,10453,7294,'1:12:94',99,2),(566,10454,7655,'1:16:55',100,2),(567,10455,7632,'1:16:32',102,2),(568,10456,7566,'1:15:66',109,2),(569,10457,8010,'1:20:10',110,2),(570,10458,NULL,'1:18:43',111,2),(571,10459,7947,'1:19:47',112,2),(572,10460,8145,'1:21:45',113,2),(573,10461,8380,'1:23:80',114,2),(574,10462,8128,'1:21:28',115,2),(575,10463,8767,'1:27:67',116,2),(576,10464,8761,'1:27:61',117,2),(577,10465,9691,'1:36:91',118,2),(578,10466,9826,'1:38:26',119,2),(579,10448,3204,'32:04',94,1),(580,10449,NULL,'33:45',95,1),(581,10450,3469,'34:69',96,1),(582,10451,3519,'35:19',97,1),(583,10452,3543,'35:43',98,1),(584,10453,3341,'33:41',99,1),(585,10454,3625,'36:25',100,1),(586,10455,3538,'35:38',102,1),(587,10456,3535,'35:35',109,1),(588,10457,3748,'37:48',110,1),(589,10458,3741,'37:41',111,1),(590,10459,NULL,'36:77',112,1),(591,10460,3794,'37:94',113,1),(592,10461,3959,'39:59',114,1),(593,10462,3763,'37:63',115,1),(594,10463,4135,'41:35',116,1),(595,10464,4045,'40:45',117,1),(596,10465,4462,'44:62',118,1),(597,10466,4529,'45:29',119,1),(598,10467,10595,' 1:45:95',94,3),(599,10468,10831,' 1:48:31',95,3),(600,10469,NULL,' 1:51:60',96,3),(601,10470,NULL,' 1:53:04',97,3),(602,10471,NULL,' 1:50:54',98,3),(603,10472,NULL,' 1:53:58',99,3),(604,10473,NULL,' 1:55:43',100,3),(605,10474,NULL,' 1:53:04',102,3),(606,10475,NULL,' 1:55:99',109,3),(607,10476,NULL,' 1:55:50',110,3),(608,10477,NULL,' 1:57:77',111,3),(609,10478,NULL,' 1:54:76',112,3),(610,10479,NULL,' 1:58:07',113,3),(611,10480,11847,' 1:58:47',114,3),(612,10481,12143,' 2:01:43',115,3),(613,10482,12181,' 2:01:81',116,3),(614,10483,12443,' 2:04:43',117,3),(615,10484,13261,' 2:12:61',118,3),(616,10485,13942,' 2:19:42',119,3),(617,10467,14408,' 2:24:08',94,4),(618,10468,14458,' 2:24:58',95,4),(619,10469,14932,' 2:29:32',96,4),(620,10470,NULL,' 2:30:33',97,4),(621,10471,15047,' 2:30:47',98,4),(622,10472,15254,' 2:32:54',99,4),(623,10473,15370,' 2:33:70',100,4),(624,10474,15419,' 2:34:19',102,4),(625,10475,15466,' 2:34:66',109,4),(626,10476,15770,' 2:37:70',110,4),(627,10477,15799,' 2:37:99',111,4),(628,10478,15836,' 2:38:36',112,4),(629,10479,15853,' 2:38:53',113,4),(630,10480,NULL,' 2:39:18',114,4),(631,10481,16162,' 2:41:62',115,4),(632,10482,16347,' 2:43:47',116,4),(633,10483,16566,' 2:45:66',117,4),(634,10484,18050,' 3:00:50',118,4),(635,10485,18351,' 3:03:51',119,4),(636,10486,16137,' 2:41:37',94,4),(637,10487,16310,' 2:43:10',95,4),(638,10488,16390,' 2:43:90',96,4),(639,10489,16904,' 2:49:04',97,4),(640,10490,NULL,' 2:55:18',98,4),(641,10491,17555,' 2:55:55',99,4),(642,10492,17561,' 2:55:61',100,4),(643,10493,17621,' 2:56:21',102,4),(644,10494,17738,' 2:57:38',109,4),(645,10495,18257,' 3:02:57',110,4),(646,10496,18364,' 3:03:64',111,4),(647,10497,19039,' 3:10:39',112,4),(648,10498,19316,' 3:13:16',113,4),(649,10499,19532,' 3:15:32',114,4),(650,10500,NULL,' 3:24:05',115,4),(651,10501,21413,' 3:34:13',116,4),(652,10502,21807,' 3:38:07',117,4),(653,10486,12246,' 2:02:46',94,3),(654,10487,12376,' 2:03:76',95,3),(655,10488,12320,' 2:03:20',96,3),(656,10489,12496,' 2:04:96',97,3),(657,10490,12971,' 2:09:71',98,3),(658,10491,13172,' 2:11:72',99,3),(659,10492,13076,' 2:10:76',100,3),(660,10493,NULL,' 2:12:12',102,3),(661,10494,13101,' 2:11:01',109,3),(662,10495,13595,' 2:15:95',110,3),(663,10496,13598,' 2:15:98',111,3),(664,10497,14621,' 2:26:21',112,3),(665,10498,14526,' 2:25:26',113,3),(666,10499,14535,' 2:25:35',114,3),(667,10500,NULL,'',115,3),(668,10501,15828,' 2:38:28',116,3),(669,10502,16202,' 2:42:02',117,3),(670,10486,NULL,' 1:20:93',94,2),(671,10487,7996,' 1:19:96',95,2),(672,10488,7933,' 1:19:33',96,2),(673,10489,7963,' 1:19:63',97,2),(674,10490,8270,' 1:22:70',98,2),(675,10491,8474,' 1:24:74',99,2),(676,10492,8303,' 1:23:03',100,2),(677,10493,8367,' 1:23:67',102,2),(678,10494,8290,' 1:22:90',109,2),(679,10495,8752,' 1:27:52',110,2),(680,10496,NULL,' 1:26:85',111,2),(681,10497,9455,' 1:34:55',112,2),(682,10498,9272,' 1:32:72',113,2),(683,10499,9213,' 1:32:13',114,2),(684,10500,9671,' 1:36:71',115,2),(685,10501,10038,' 1:40:38',116,2),(686,10502,10255,' 1:42:55',117,2);
/*!40000 ALTER TABLE `competition_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplin`
--

DROP TABLE IF EXISTS `disciplin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplin` (
  `disciplinid` int(11) NOT NULL AUTO_INCREMENT,
  `SwimArtID` int(11) DEFAULT NULL,
  `SwimDistID` int(11) DEFAULT NULL,
  PRIMARY KEY (`disciplinid`),
  KEY `SwimArtID` (`SwimArtID`),
  KEY `SwimDistID` (`SwimDistID`),
  CONSTRAINT `disciplin_ibfk_1` FOREIGN KEY (`SwimArtID`) REFERENCES `swimart` (`SwimArtID`),
  CONSTRAINT `disciplin_ibfk_2` FOREIGN KEY (`SwimDistID`) REFERENCES `swimdist` (`SwimDistID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplin`
--

LOCK TABLES `disciplin` WRITE;
/*!40000 ALTER TABLE `disciplin` DISABLE KEYS */;
INSERT INTO `disciplin` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,3,1),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,4,1),(20,4,2),(21,4,3),(22,4,4),(23,4,5),(24,4,6),(25,5,1),(26,5,2),(27,5,3),(28,5,4),(29,5,5),(30,5,6),(31,6,1),(32,6,2),(33,6,3),(34,6,4),(35,6,5),(36,6,6);
/*!40000 ALTER TABLE `disciplin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `fee_year` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `fk_fee_person_idx` (`memberid`),
  CONSTRAINT `fk_fee_person` FOREIGN KEY (`memberid`) REFERENCES `members` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (8,93,2018,500),(9,94,2018,1000),(10,94,2018,1000),(11,95,2018,1000),(12,99,2018,1600),(13,105,2018,200),(14,109,2018,1300),(15,93,2018,200),(16,94,2017,1000),(17,94,2018,500),(18,95,2018,100),(19,99,2017,1000),(20,105,2018,400),(21,109,2017,1300);
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `GenderID` int(11) NOT NULL AUTO_INCREMENT,
  `GenderType` int(11) DEFAULT NULL,
  `GenderTypeDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,0,'Women'),(2,1,'Men');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

DROP TABLE IF EXISTS `general_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_log`
--

LOCK TABLES `general_log` WRITE;
/*!40000 ALTER TABLE `general_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberdisciplin`
--

DROP TABLE IF EXISTS `memberdisciplin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberdisciplin` (
  `memberdis_id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `disciplinid` int(11) NOT NULL,
  PRIMARY KEY (`memberdis_id`),
  KEY `memberid` (`memberid`),
  KEY `disciplinid` (`disciplinid`),
  CONSTRAINT `memberdisciplin_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `members` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `memberdisciplin_ibfk_2` FOREIGN KEY (`disciplinid`) REFERENCES `disciplin` (`disciplinid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberdisciplin`
--

LOCK TABLES `memberdisciplin` WRITE;
/*!40000 ALTER TABLE `memberdisciplin` DISABLE KEYS */;
INSERT INTO `memberdisciplin` VALUES (1,94,4),(2,95,4),(3,96,4),(4,97,4),(5,98,4),(6,99,4),(7,100,4),(8,102,4),(9,109,4),(10,110,4),(11,111,4),(12,112,4),(13,113,4),(14,114,4),(15,115,4),(16,116,4),(17,117,4),(18,118,4),(19,119,4),(20,94,3),(21,95,3),(22,96,3),(23,97,3),(24,98,3),(25,99,3),(26,100,3),(27,102,3),(28,109,3),(29,110,3),(30,111,3),(31,112,3),(32,113,3),(33,114,3),(34,115,3),(35,116,3),(36,117,3),(37,118,3),(38,119,3),(39,94,2),(40,95,2),(41,96,2),(42,97,2),(43,98,2),(44,99,2),(45,100,2),(46,102,2),(47,109,2),(48,110,2),(49,111,2),(50,112,2),(51,113,2),(52,114,2),(53,115,2),(54,116,2),(55,117,2),(56,118,2),(57,119,2),(58,94,1),(59,95,1),(60,96,1),(61,97,1),(62,98,1),(63,99,1),(64,100,1),(65,102,1),(66,109,1),(67,110,1),(68,111,1),(69,112,1),(70,113,1),(71,114,1),(72,115,1),(73,116,1),(74,117,1),(75,118,1),(76,119,1);
/*!40000 ALTER TABLE `memberdisciplin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL AUTO_INCREMENT,
  `Employeeid` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `Compete` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (93,NULL,'Fenja Romanski',2005,0,1,1,'FenjaRomanski@dolphin.dk','test123'),(94,NULL,'Ellen Jensen',2005,0,1,1,'EllenJensen@dolphin.dk','test123'),(95,NULL,'Ophelia Kronborg Jensen',2005,0,1,1,'OpheliaKronborgJensen@dolphin.dk','test123'),(96,NULL,'Katrine Stoltenhoff',2006,0,1,1,'KatrineStoltenhoff@dolphin.dk','test123'),(97,NULL,'Ida Overgaard Thomassen',2005,0,1,1,'Ida@dolphin.dk','test123'),(98,NULL,'Ida Rønnow',2006,0,1,1,'IdaRnnow@dolphin.dk','test123'),(99,NULL,'Katrine Bøeg Thormann',2006,0,1,1,'KatrineBegThormann@dolphin.dk','test123'),(100,NULL,'Sisse Berg Olesen',2005,0,1,1,'SisseBergOlesen@dolphin.dk','test123'),(101,NULL,'Weronika L. Bjørn',2005,0,1,1,'WeronikaL.Bjrn@dolphin.dk','test123'),(102,NULL,'Sophie Møller Madsen',2005,0,1,1,'SophieMllerMadsen@dolphin.dk','test123'),(103,NULL,'Ida Kold Dalsgaard',2005,0,1,1,'IdaKoldDalsgaard@dolphin.dk','test123'),(104,NULL,'Pernille Petersen',2006,0,1,1,'PernillePetersen@dolphin.dk','test123'),(105,NULL,'Laura Håkonsson',2006,0,1,1,'LauraHkonsson@dolphin.dk','test123'),(106,NULL,'Karoline Hellesøe',2006,0,1,1,'KarolineHellese@dolphin.dk','test123'),(107,NULL,'Mathilde Hjort Lodstrup',2005,0,1,1,'MathildeHjortLodstrup@dolphin.dk','test123'),(108,NULL,'Anne Kølby Christensen',2005,0,1,1,'AnneKlbyChristensen@dolphin.dk','test123'),(109,NULL,'Anna Mai Andersen',2006,0,1,1,'AnnaMaiAndersen@dolphin.dk','test123'),(110,NULL,'Annemone Rasmussen',2006,0,1,1,'AnnemoneRasmussen@dolphin.dk','test123'),(111,NULL,'Clara Hejndorff Bøgsted',2006,0,1,1,'ClaraHejndorffBgsted@dolphin.dk','test123'),(112,NULL,'Sofie Keller',2005,0,1,1,'SofieKeller@dolphin.dk','test123'),(113,NULL,'Emma Bergene Hansen',2005,0,1,1,'EmmaBergeneHansen@dolphin.dk','test123'),(114,NULL,'Dicte Westphal',2005,0,1,1,'DicteWestphal@dolphin.dk','test123'),(115,NULL,'Dicte Nørvang Bisgaard',2006,0,1,1,'DicteNrvangBisgaard@dolphin.dk','test123'),(116,NULL,'Karoline Høgh',2006,0,1,1,'KarolineHgh@dolphin.dk','test123'),(117,NULL,'Olivia Tilsted',2006,0,1,1,'OliviaTilsted@dolphin.dk','test123'),(118,NULL,'Stine Lund Holgersen',2006,0,1,1,'StineLundHolgersen@dolphin.dk','test123'),(119,NULL,'Lærke Kirkedal Laursen',2005,0,1,1,'LrkeKirkedalLaursen@dolphin.dk','test123'),(120,NULL,'Vilma Marie Walsted',2006,0,1,1,'VilmaMarieWalsted@dolphin.dk','test123'),(121,NULL,'Freya Knop Kristensen',2005,0,1,1,'FreyaKnopKristensen@dolphin.dk','test123'),(122,NULL,'Naja Kristiane Sørensen',2006,0,1,1,'NajaKristianeSrensen@dolphin.dk','test123'),(123,NULL,'Yasmin Thrane Kristensen',2006,0,1,1,'YasminThraneKristensen@dolphin.dk','test123'),(124,NULL,'Camila Hansen',2006,0,1,1,'CamilaHansen@dolphin.dk','test123'),(125,NULL,'Emilie Hummelshøj',2006,0,1,1,'EmilieHummelshj@dolphin.dk','test123'),(126,NULL,'Trine Dam',2001,0,1,1,'TrineDam@dolphin.dk','test123'),(127,NULL,'Sara Falch',2002,0,1,1,'SaraFalch@dolphin.dk','test123'),(128,NULL,'Natasja N. Løland',2000,0,1,1,'NatasjaN.Lland@dolphin.dk','test123'),(129,NULL,'Nynne Nørlem',2002,0,1,1,'NynneNrlem@dolphin.dk','test123'),(130,NULL,'Maya Nautrup Pedersen',1999,0,1,1,'MayaNautrupPedersen@dolphin.dk','test123'),(131,NULL,'Emmely Andersen',2001,0,1,1,'EmmelyAndersen@dolphin.dk','test123'),(132,NULL,'Freya Kobber Nielsen',2001,0,1,1,'FreyaKobberNielsen@dolphin.dk','test123'),(133,NULL,'Signe Dam',1999,0,1,1,'SigneDam@dolphin.dk','test123'),(134,NULL,'Iben Kjær Bengtson',2002,0,1,1,'IbenKjrBengtson@dolphin.dk','test123'),(135,NULL,'Amanda Grønbæk Jensen',2001,0,1,1,'AmandaGrnbkJensen@dolphin.dk','test123'),(136,NULL,'Lucca Mikkelsen',2002,0,1,1,'LuccaMikkelsen@dolphin.dk','test123'),(137,NULL,'Cecilia Bækager Meldgaard',2002,0,1,1,'CeciliaBkagerMeldgaard@dolphin.dk','test123'),(138,NULL,'Katrine Jensen',2001,0,1,1,'KatrineJensen@dolphin.dk','test123'),(139,NULL,'Alberte Jensen',1999,0,1,1,'AlberteJensen@dolphin.dk','test123'),(140,NULL,'Kamille Termansen',2002,0,1,1,'KamilleTermansen@dolphin.dk','test123'),(141,NULL,'Freja Gram',2001,0,1,1,'FrejaGram@dolphin.dk','test123'),(142,NULL,'Emma Christensen',2002,0,1,1,'EmmaChristensen@dolphin.dk','test123'),(143,NULL,'Ea Thomsen',2001,0,1,1,'EaThomsen@dolphin.dk','test123'),(144,NULL,'Mariana James',2002,0,1,1,'MarianaJames@dolphin.dk','test123'),(145,NULL,'Mathilde Wisborg Fog',2003,0,1,1,'MathildeWisborgFog@dolphin.dk','test123'),(146,NULL,'Line Heise',2003,0,1,1,'LineHeise@dolphin.dk','test123'),(147,NULL,'Mathilde Møller',2004,0,1,1,'MathildeMller@dolphin.dk','test123'),(148,NULL,'Anna Christine Pedersen',2003,0,1,1,'AnnaChristinePedersen@dolphin.dk','test123'),(149,NULL,'Camilla Tommerup Sørensen',2003,0,1,1,'CamillaTommerupSrensen@dolphin.dk','test123'),(150,NULL,'Cheyenne Erdmann',2004,0,1,1,'CheyenneErdmann@dolphin.dk','test123'),(151,NULL,'Mathilde Werge Skall',2003,0,1,1,'MathildeWergeSkall@dolphin.dk','test123'),(152,NULL,'Nynne Jakobsen',2004,0,1,1,'NynneJakobsen@dolphin.dk','test123'),(153,NULL,'Benedikte Bøllingtoft',2003,0,1,1,'BenedikteBllingtoft@dolphin.dk','test123'),(154,NULL,'Liva Ginnerup',2004,0,1,1,'LivaGinnerup@dolphin.dk','test123'),(155,NULL,'Karen K. H. Hagensen',2004,0,1,1,'KarenK.H.@dolphin.dk','test123'),(156,NULL,'Nicoline Hansen',2004,0,1,1,'NicolineHansen@dolphin.dk','test123'),(157,NULL,'Victoria Broch',2004,0,1,1,'VictoriaBroch@dolphin.dk','test123'),(158,NULL,'Thea Brøndum',2004,0,1,1,'TheaBrndum@dolphin.dk','test123'),(159,NULL,'Laura Ostersen',2004,0,1,1,'LauraOstersen@dolphin.dk','test123'),(160,NULL,'Sandra Aarslev',2004,0,1,1,'SandraAarslev@dolphin.dk','test123'),(161,NULL,'Laura Østerby Clausen',2004,0,1,1,'LaurasterbyClausen@dolphin.dk','test123'),(162,NULL,'Karoline Skaarup Nielsen',2003,0,1,1,'KarolineSkaarupNielsen@dolphin.dk','test123'),(163,NULL,'Sofie Holm Rasmussen',2004,0,1,1,'SofieHolmRasmussen@dolphin.dk','test123'),(164,NULL,'Frederikke Johansen',2003,0,1,1,'FrederikkeJohansen@dolphin.dk','test123'),(165,NULL,'Mille Heise',2004,0,1,1,'MilleHeise@dolphin.dk','test123'),(166,NULL,'Cecilie Billesø',2003,0,1,1,'CecilieBilles@dolphin.dk','test123'),(167,NULL,' Malthe Le Fevre',1987,1,0,0,'MaltheLeFevre@dolphin.dk','test123'),(168,NULL,' Lucas Skjødt Broe',2001,1,0,0,'LucasSkjdtBroe@dolphin.dk','test123'),(169,NULL,' Mads Poulsen',1967,1,0,0,'MadsPoulsen@dolphin.dk','test123'),(170,NULL,' Ebbe Als Olsen',2002,1,0,0,'EbbeAlsOlsen@dolphin.dk','test123'),(171,NULL,' Frederik Jensen',1977,1,0,0,'FrederikJensen@dolphin.dk','test123'),(172,NULL,'Kasper Jensen',2005,1,1,0,'KasperJensen@dolphin.dk','test123'),(173,NULL,'Mathias Nybro Laursen',2005,1,1,0,'MathiasNybroLaursen@dolphin.dk','test123'),(174,NULL,'Jonas Gaur',2005,1,1,0,'JonasGaur@dolphin.dk','test123'),(175,NULL,'Bastian Stausholm Larsen',2005,1,1,0,'BastianStausholmLarsen@dolphin.dk','test123'),(176,NULL,'William Romer Jørgensen',2005,1,1,0,'WilliamRomerJrgensen@dolphin.dk','test123'),(177,NULL,'Mads Kristensen',2005,1,1,0,'MadsKristensen@dolphin.dk','test123'),(178,NULL,'Mark Rüdinger',2006,1,1,0,'MarkRüdinger@dolphin.dk','test123'),(179,NULL,'Philip Emborg Andreasen',2005,1,1,0,'PhilipEmborgAndreasen@dolphin.dk','test123'),(180,NULL,'Mads Rager Larsen',2005,1,1,0,'MadsRagerLarsen@dolphin.dk','test123'),(181,NULL,'Emil Winther',2006,1,1,0,'EmilWinther@dolphin.dk','test123'),(182,NULL,'Lukas Nissen',2006,1,1,0,'LukasNissen@dolphin.dk','test123'),(183,NULL,'Andreas Skovgaard Hald',2006,1,1,0,'AndreasSkovgaardHald@dolphin.dk','test123'),(184,NULL,'Alexander Mogensen',2005,1,1,0,'AlexanderMogensen@dolphin.dk','test123'),(185,NULL,'Elias Alminde Pedersen',2006,1,1,0,'EliasAlmindePedersen@dolphin.dk','test123'),(186,NULL,'Kristian Nielsen',2005,1,1,0,'KristianNielsen@dolphin.dk','test123'),(187,NULL,'Magnus Løkke',2005,1,1,0,'MagnusLkke@dolphin.dk','test123'),(188,NULL,'Johannes Lund',2006,1,1,0,'JohannesLund@dolphin.dk','test123'),(189,NULL,'Andreas Laursen',2006,1,1,0,'AndreasLaursen@dolphin.dk','test123'),(190,NULL,'Henrik Hansen',2005,1,1,0,'HenrikHansen@dolphin.dk','test123'),(191,NULL,'Sebastian Skov',2005,1,1,0,'SebastianSkov@dolphin.dk','test123'),(192,NULL,'Silas Birkkjær',2006,1,1,0,'SilasBirkkjr@dolphin.dk','test123'),(193,NULL,'Vilmer Damgaard',2006,1,1,0,'VilmerDamgaard@dolphin.dk','test123'),(194,NULL,'Kristian Ølgaard',2005,1,1,0,'Kristianlgaard@dolphin.dk','test123'),(195,NULL,'Kristian Bøllingtoft',2006,1,1,0,'KristianBllingtoft@dolphin.dk','test123'),(196,NULL,'Malthe Skau Rasmussen',2006,1,1,0,'MaltheSkauRasmussen@dolphin.dk','test123'),(197,NULL,'Martin Mark Hansen',2005,1,1,0,'MartinMarkHansen@dolphin.dk','test123'),(198,NULL,'Jannick Franow',2006,1,1,0,'JannickFranow@dolphin.dk','test123'),(199,NULL,'Daniel Kristensen',2006,1,1,0,'DanielKristensen@dolphin.dk','test123'),(200,NULL,'Christopher Kristiansen',2000,1,1,0,'ChristopherKristiansen@dolphin.dk','test123'),(201,NULL,'Frederik Kongstad Hansen',2001,1,1,0,'FrederikKongstadHansen@dolphin.dk','test123'),(202,NULL,'Alexander Roe',1997,1,1,0,'AlexanderRoe@dolphin.dk','test123'),(203,NULL,'Niklas T. Kristiansen',2000,1,1,0,'NiklasT.Kristiansen@dolphin.dk','test123'),(204,NULL,'Frederik Juhl Leiszner',1999,1,1,0,'FrederikJuhlLeiszner@dolphin.dk','test123'),(205,NULL,'Esben Røjkjær Rasmussen',2001,1,1,0,'EsbenRjkjrRasmussen@dolphin.dk','test123'),(206,NULL,'Scott Stegenborg',2000,1,1,0,'ScottStegenborg@dolphin.dk','test123'),(207,NULL,'Niklas Børsmose Simony',2001,1,1,0,'NiklasBrsmoseSimony@dolphin.dk','test123'),(208,NULL,'Joachim Hedegaard Nielsen',2002,1,1,0,'JoachimHedegaardNielsen@dolphin.dk','test123'),(209,NULL,'Kristoffer Thomsen',2000,1,1,0,'KristofferThomsen@dolphin.dk','test123'),(210,NULL,'Rasmus D. Jensen',1998,1,1,0,'RasmusD.Jensen@dolphin.dk','test123'),(211,NULL,'Rasmus Irmschler',2002,1,1,0,'RasmusIrmschler@dolphin.dk','test123'),(212,NULL,'Simon Tuelstrup Bechmann',2001,1,1,0,'SimonTuelstrupBechmann@dolphin.dk','test123'),(213,NULL,'Mads Berentzen',2002,1,1,0,'MadsBerentzen@dolphin.dk','test123'),(214,NULL,'Andreas Skak Thomsen',2001,1,1,0,'AndreasSkakThomsen@dolphin.dk','test123'),(215,NULL,'Jonas Sørensen',1995,1,1,0,'JonasSrensen@dolphin.dk','test123'),(216,NULL,'Jesper Thyssen',1995,1,1,0,'JesperThyssen@dolphin.dk','test123'),(217,NULL,'David Tuan V. Valbjørn',2002,1,1,0,'DavidTuanV.@dolphin.dk','test123'),(218,NULL,'Christoffer Nedergaard',1995,1,1,0,'ChristofferNedergaard@dolphin.dk','test123'),(219,NULL,'Frederik Klüver',1998,1,1,0,'FrederikKlüver@dolphin.dk','test123'),(220,NULL,'Sebastian Emil Thomsen',2002,1,1,0,'SebastianEmilThomsen@dolphin.dk','test123'),(270,NULL,'Ghita Kobbelgaard',1995,0,1,1,'GhitaKobbelgaard@dolphin.dk','test123'),(271,NULL,'Sille Ibsen',2001,0,1,1,'SilleIbsen@dolphin.dk','test123'),(272,NULL,'Janni Martinussen',2001,0,1,1,'JanniMartinussen@dolphin.dk','test123'),(274,NULL,'Julie Fink',2001,0,1,1,'JulieFink@dolphin.dk','test123'),(275,NULL,'Olivia Steenstrup',2000,0,1,1,'OliviaSteenstrup@dolphin.dk','test123'),(277,NULL,'Julie B. Andersen',2002,0,1,1,'JulieB.Andersen@dolphin.dk','test123'),(278,NULL,'Julie Martinussen',1997,0,1,1,'JulieMartinussen@dolphin.dk','test123'),(280,NULL,'Trine Rasmussen',1999,0,1,1,'TrineRasmussen@dolphin.dk','test123'),(283,NULL,'Sara Høi Graversen',2003,0,0,0,'SaraHiGraversen@dolphin.dk','test123'),(284,NULL,'Cecilie Daugaard',2003,0,0,0,'CecilieDaugaard@dolphin.dk','test123'),(285,NULL,'Sofie Marie Damsø',2004,0,0,0,'SofieMarieDams@dolphin.dk','test123'),(286,NULL,'Sarah Salling Larsen',2003,1,1,0,'SarahSallingLarsen@dolphin.dk','test123'),(287,NULL,'Lærke Kirstine Johnsen',2003,1,1,0,'LrkeKirstineJohnsen@dolphin.dk','test123'),(291,NULL,'Sofie Skovgaard Sørensen',2004,1,1,0,'SofieSkovgaardSrensen@dolphin.dk','test123'),(292,NULL,'Caroline Christensen',2004,1,1,0,'CarolineChristensen@dolphin.dk','test123'),(293,NULL,'Nete Kirial',2003,1,1,0,'NeteKirial@dolphin.dk','test123'),(294,NULL,'Mathias Maarbjerg Toft',1998,1,1,1,'MathiasMaarbjergToft@dolphin.dk','test123'),(295,NULL,'Kurt Verner Toft',1999,1,1,0,'KurtVernerToft@dolphin.dk','test123'),(296,NULL,'Anton Viggo Toft',1999,1,1,0,'AntonViggoToft@dolphin.dk','test123'),(297,NULL,'Anton Viggo Villy',1999,1,1,0,'AntonViggoVilly@dolphin.dk','test123');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberstyle`
--

DROP TABLE IF EXISTS `memberstyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberstyle` (
  `styleid` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `SwimArtID` int(11) DEFAULT NULL,
  `SwimDistID` int(11) DEFAULT NULL,
  PRIMARY KEY (`styleid`),
  KEY `MemberID` (`MemberID`),
  KEY `SwimArtID` (`SwimArtID`),
  KEY `SwimDistID` (`SwimDistID`),
  CONSTRAINT `memberstyle_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`),
  CONSTRAINT `memberstyle_ibfk_2` FOREIGN KEY (`SwimArtID`) REFERENCES `swimart` (`SwimArtID`),
  CONSTRAINT `memberstyle_ibfk_3` FOREIGN KEY (`SwimDistID`) REFERENCES `swimdist` (`SwimDistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberstyle`
--

LOCK TABLES `memberstyle` WRITE;
/*!40000 ALTER TABLE `memberstyle` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberstyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SwimArt`
--

DROP TABLE IF EXISTS `SwimArt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SwimArt` (
  `SwimArtID` int(11) NOT NULL AUTO_INCREMENT,
  `SwimArtName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SwimArtID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SwimArt`
--

LOCK TABLES `SwimArt` WRITE;
/*!40000 ALTER TABLE `SwimArt` DISABLE KEYS */;
INSERT INTO `SwimArt` VALUES (1,'Brystsvømning',NULL),(2,'Fri',NULL),(3,'Crawl',NULL),(4,'Rygcrawl',NULL),(5,'Butterfly',NULL),(6,'Medley',NULL);
/*!40000 ALTER TABLE `SwimArt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SwimDist`
--

DROP TABLE IF EXISTS `SwimDist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SwimDist` (
  `SwimDistID` int(11) NOT NULL AUTO_INCREMENT,
  `SwimDist` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SwimDistID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SwimDist`
--

LOCK TABLES `SwimDist` WRITE;
/*!40000 ALTER TABLE `SwimDist` DISABLE KEYS */;
INSERT INTO `SwimDist` VALUES (1,50,NULL),(2,100,NULL),(3,150,NULL),(4,200,NULL),(5,25,NULL),(6,500,NULL);
/*!40000 ALTER TABLE `SwimDist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 12:21:17
