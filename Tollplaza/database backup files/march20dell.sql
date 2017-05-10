-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tadanaanal
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Tollapp_anpr`
--

DROP TABLE IF EXISTS `Tollapp_anpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_anpr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  `Timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_anpr`
--

LOCK TABLES `Tollapp_anpr` WRITE;
/*!40000 ALTER TABLE `Tollapp_anpr` DISABLE KEYS */;
INSERT INTO `Tollapp_anpr` VALUES (1,'TN02U0001',8,0,'2017-02-09 23:35:16'),(2,'KA19Y7777',2,0,'2017-02-09 23:42:40'),(3,'TN06CD1190',5,0,'2017-02-09 16:44:21'),(4,'PY22K1919',9,0,'2017-02-09 17:33:46'),(5,'GA01Q5233',9,0,'2017-02-09 22:33:23'),(6,'GJ08U7567',1,0,'2017-02-09 20:54:39'),(7,'GJ08U7567',2,0,'2017-02-09 17:47:21'),(8,'GJ08U7567',9,1,'2017-02-09 12:47:30'),(9,'TN02U0001',8,0,'2017-02-09 11:31:26'),(10,'TN06CD1190',8,0,'2017-02-09 13:23:45'),(11,'PY22K1919',6,0,'2017-02-09 17:28:46'),(12,'GJ08U7567',1,0,'2017-02-09 11:18:25'),(13,'PY22K1919',7,0,'2017-02-09 13:39:13'),(14,'MH11J8990',8,0,'2017-02-09 17:55:48'),(15,'GJ08U7567',9,0,'2017-02-09 17:11:18'),(16,'AP16T3680',8,0,'2017-02-09 18:54:55'),(17,'TN12T1234',6,0,'2017-02-09 10:29:55'),(18,'TN06CD1190',7,0,'2017-02-09 23:55:19'),(19,'TN06CD1190',7,0,'2017-02-09 22:45:32'),(20,'MH11J8990',8,0,'2017-02-09 18:34:31'),(21,'AP16T3680',10,0,'2017-02-09 20:37:49'),(22,'GA01Q5233',1,0,'2017-02-09 19:35:36'),(23,'GJ08U7567',7,0,'2017-02-09 13:22:11'),(24,'GJ08U7567',1,0,'2017-02-09 13:19:19'),(25,'MH11J8990',2,0,'2017-02-09 18:34:21'),(26,'PY22K1919',6,0,'2017-02-09 15:49:29'),(27,'GA01Q5233',10,0,'2017-02-09 20:35:20'),(28,'TN12T1234',4,0,'2017-02-09 13:39:22'),(29,'PY22K1919',1,0,'2017-02-09 10:55:47'),(30,'AP16T3680',4,0,'2017-02-09 17:55:35'),(31,'MH11J8990',9,0,'2017-02-09 20:29:42'),(32,'AP16T3680',2,0,'2017-02-09 18:10:49'),(33,'AP16T3680',1,0,'2017-02-09 15:30:51'),(34,'MH11J8990',5,0,'2017-02-09 21:39:32'),(35,'MH11J8990',5,0,'2017-02-09 11:23:32'),(36,'TN06CD1190',4,0,'2017-02-09 19:49:40'),(37,'PY22K1919',3,0,'2017-02-09 11:49:38'),(38,'GA01Q5233',9,1,'2017-02-09 14:19:40'),(39,'PY22K1919',8,0,'2017-02-09 13:52:38'),(40,'TN12T1234',7,0,'2017-02-09 20:36:40');
/*!40000 ALTER TABLE `Tollapp_anpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_axle_count`
--

DROP TABLE IF EXISTS `Tollapp_axle_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_axle_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` varchar(100) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Axle` int(11) NOT NULL,
  `Flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_axle_count`
--

LOCK TABLES `Tollapp_axle_count` WRITE;
/*!40000 ALTER TABLE `Tollapp_axle_count` DISABLE KEYS */;
INSERT INTO `Tollapp_axle_count` VALUES (1,'2017-03-11 18:47:21',1,6,0),(2,'2017-03-11 15:49:18',4,5,0),(3,'2017-03-11 16:45:48',1,6,0),(4,'2017-03-11 15:56:10',3,8,0),(5,'2017-03-11 20:16:52',2,7,0),(6,'2017-03-11 20:28:55',3,6,0),(7,'2017-03-11 10:56:36',5,8,0),(8,'2017-03-11 18:45:54',4,6,0),(9,'2017-03-11 18:16:14',5,7,0),(10,'2017-03-11 11:51:28',4,5,0),(11,'2017-03-11 14:26:14',2,8,0),(12,'2017-03-11 15:52:18',1,6,0),(13,'2017-03-11 15:15:41',5,6,0),(14,'2017-03-11 15:13:51',3,7,0),(15,'2017-03-11 13:28:13',3,5,0),(16,'2017-03-11 13:17:25',3,8,0),(17,'2017-03-11 16:17:50',4,8,0),(18,'2017-03-11 18:24:23',1,6,0),(19,'2017-03-11 16:51:55',3,7,0),(20,'2017-03-11 14:11:26',4,6,0),(21,'2017-03-11 16:28:49',5,6,0),(22,'2017-03-11 10:18:51',2,6,0),(23,'2017-03-11 12:33:47',4,5,0),(24,'2017-03-11 17:49:58',5,8,0),(25,'2017-03-11 19:35:32',1,5,0),(26,'2017-03-11 18:47:51',3,5,0),(27,'2017-03-11 13:33:22',5,6,0),(28,'2017-03-11 14:54:47',3,7,0),(29,'2017-03-11 20:13:53',4,8,0),(30,'2017-03-11 16:26:36',1,5,0),(31,'2017-03-11 18:44:53',8,4,0),(32,'2017-03-11 12:36:24',6,4,0),(33,'2017-03-11 17:31:51',8,7,0),(34,'2017-03-11 10:14:54',8,6,0),(35,'2017-03-11 19:27:24',9,3,0),(36,'2017-03-11 17:28:16',7,3,0),(37,'2017-03-11 14:42:12',10,7,0),(38,'2017-03-11 11:45:10',8,7,0),(39,'2017-03-11 15:52:41',7,5,0),(40,'2017-03-11 16:18:28',10,5,0),(41,'2017-03-11 16:14:13',10,6,0),(42,'2017-03-11 13:42:24',7,7,0),(43,'2017-03-11 10:32:57',6,7,0),(44,'2017-03-11 14:21:33',7,7,0),(45,'2017-03-11 15:47:36',6,8,0),(46,'2017-03-11 13:23:11',9,4,1),(47,'2017-03-11 15:35:50',8,5,0),(48,'2017-03-11 14:15:25',9,3,0),(49,'2017-03-11 14:33:51',10,3,0),(50,'2017-03-11 20:29:52',9,3,0),(51,'2017-03-11 11:56:40',8,8,0),(52,'2017-03-11 16:24:26',6,3,0),(53,'2017-03-11 11:20:21',10,4,0),(54,'2017-03-11 14:31:38',9,8,0),(55,'2017-03-11 12:48:57',6,8,0),(56,'2017-03-11 16:10:19',9,7,0),(57,'2017-03-11 12:10:46',7,5,0),(58,'2017-03-11 16:18:19',8,4,0),(59,'2017-03-11 10:52:54',9,5,1),(60,'2017-03-11 15:14:42',9,8,0);
/*!40000 ALTER TABLE `Tollapp_axle_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_edit_lane`
--

DROP TABLE IF EXISTS `Tollapp_edit_lane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_edit_lane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Location` varchar(200) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `User_Name` varchar(200) DEFAULT NULL,
  `Direction` varchar(200) NOT NULL,
  `Created_Time` datetime NOT NULL,
  `Update_Time` datetime NOT NULL,
  `Camera1` char(39) NOT NULL,
  `Camera2` char(39) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_edit_lane`
--

LOCK TABLES `Tollapp_edit_lane` WRITE;
/*!40000 ALTER TABLE `Tollapp_edit_lane` DISABLE KEYS */;
INSERT INTO `Tollapp_edit_lane` VALUES (41,'TADA',9,'venkat','outgoing','2017-03-18 10:18:51','2017-03-18 10:18:51','192.168.30.80','192.168.30.67'),(42,'TADA',5,'vishnu','outgoing','2017-03-18 10:19:38','2017-03-18 10:19:38','192.168.30.20','192.168.30.15');
/*!40000 ALTER TABLE `Tollapp_edit_lane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_log_details`
--

DROP TABLE IF EXISTS `Tollapp_log_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_log_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Transaction_Id` varchar(200) NOT NULL,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Officer_Name` varchar(100) NOT NULL,
  `Permit` date NOT NULL,
  `Vehicle_Type` varchar(200) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `Comment` varchar(100) NOT NULL,
  `Vehicle_Class` varchar(100) NOT NULL,
  `Vehicle_Status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_log_details`
--

LOCK TABLES `Tollapp_log_details` WRITE;
/*!40000 ALTER TABLE `Tollapp_log_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tollapp_log_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_main`
--

DROP TABLE IF EXISTS `Tollapp_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Transaction_Id` varchar(200) NOT NULL,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Dimension_Height` int(11) NOT NULL,
  `Dimension_Length` int(11) NOT NULL,
  `Dimension_Breadth` int(11) NOT NULL,
  `Pollution` date NOT NULL,
  `Fitness` date NOT NULL,
  `Permit` date NOT NULL,
  `User_Name` varchar(200) NOT NULL,
  `Officer_Name` varchar(200) NOT NULL,
  `Axle` int(11) NOT NULL,
  `Vehicle_Type` varchar(200) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Direction` varchar(200) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Registration_Date` date NOT NULL,
  `Chassis_Number` varchar(200) NOT NULL,
  `Engine_Number` varchar(200) NOT NULL,
  `Vehicle_Fuel_Type` varchar(200) NOT NULL,
  `Engine_Cubic_Capacity` varchar(200) NOT NULL,
  `Tax` date NOT NULL,
  `Insurance` date NOT NULL,
  `National_Permit` date NOT NULL,
  `Authorization` date NOT NULL,
  `Laden_Weight` int(11) DEFAULT NULL,
  `Unladen_Weight` int(11) DEFAULT NULL,
  `Fine_Amount` int(11) NOT NULL,
  `Comment` varchar(100) NOT NULL,
  `Vehicle_Class` varchar(100) NOT NULL,
  `Sensor_Height` int(11) NOT NULL,
  `Sensor_Length` int(11) NOT NULL,
  `Sensor_Breadth` int(11) NOT NULL,
  `Vehicle_Status` varchar(100) NOT NULL,
  `Image_1` varchar(1000) NOT NULL,
  `Image_2` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_main`
--

LOCK TABLES `Tollapp_main` WRITE;
/*!40000 ALTER TABLE `Tollapp_main` DISABLE KEYS */;
INSERT INTO `Tollapp_main` VALUES (1,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:06:14','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(2,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:07:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(3,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:08:35','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(4,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:31:05','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(5,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 12:20:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(6,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:20:50','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(7,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:22:58','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(8,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:39:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(9,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:40:10','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(10,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:58:42','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(11,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:01:51','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(12,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:03:07','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(13,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:05:50','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(14,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:07:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(15,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:13:46','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(16,'','MH11J8990',8,10,4,'2017-01-22','2017-01-17','2017-05-23','vishnu','NA',6,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 08:55:33','2007-10-15','JSHDYE2234','HDJK5623','PETROL','1400cc','2017-05-23','2017-01-22','2017-01-17','2017-01-22',2000,500,0,'NA','HCVN1N3',9,9,12,'Not Ok','NA','NA'),(17,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:23:57','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(18,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:24:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(19,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:00','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(20,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:14','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(21,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(22,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:28:51','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(23,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:32:41','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(24,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 12:08:10','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA');
/*!40000 ALTER TABLE `Tollapp_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_officer`
--

DROP TABLE IF EXISTS `Tollapp_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_officer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Transaction_Id` varchar(200) NOT NULL,
  `Permit` date NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Officer_Id` int(11) NOT NULL,
  `officer_Name` varchar(100) NOT NULL,
  `Fine_Amount` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_officer`
--

LOCK TABLES `Tollapp_officer` WRITE;
/*!40000 ALTER TABLE `Tollapp_officer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tollapp_officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_relay_panel`
--

DROP TABLE IF EXISTS `Tollapp_relay_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_relay_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Relay_Number` tinyint(1) NOT NULL,
  `Lane_1` tinyint(1) NOT NULL,
  `Lane_2` tinyint(1) NOT NULL,
  `Lane_3` tinyint(1) NOT NULL,
  `Lane_4` tinyint(1) NOT NULL,
  `Lane_5` tinyint(1) NOT NULL,
  `Lane_6` tinyint(1) NOT NULL,
  `Lane_7` tinyint(1) NOT NULL,
  `Lane_8` tinyint(1) NOT NULL,
  `Lane_9` tinyint(1) NOT NULL,
  `Lane_10` tinyint(1) NOT NULL,
  `Lane_11` tinyint(1) NOT NULL,
  `Lane_12` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_relay_panel`
--

LOCK TABLES `Tollapp_relay_panel` WRITE;
/*!40000 ALTER TABLE `Tollapp_relay_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tollapp_relay_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_rto`
--

DROP TABLE IF EXISTS `Tollapp_rto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_rto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Diemension_Length` int(11) NOT NULL,
  `Diemension_Height` int(11) NOT NULL,
  `Diemension_Breadth` int(11) NOT NULL,
  `Fitness` date NOT NULL,
  `Permit` date NOT NULL,
  `Pollution` date NOT NULL,
  `Axle` int(11) NOT NULL,
  `Vehicle_Class` varchar(100) DEFAULT NULL,
  `Registration_Date` date NOT NULL,
  `Chassis_Number` varchar(200) NOT NULL,
  `Engine_Number` varchar(200) NOT NULL,
  `Vehicle_Fuel_Type` varchar(200) NOT NULL,
  `Engine_Cubic_Capacity` varchar(200) NOT NULL,
  `Tax` date NOT NULL,
  `Insurance` date NOT NULL,
  `National_Permit` date NOT NULL,
  `Authorization` date NOT NULL,
  `Unladen_Weight` int(11) DEFAULT NULL,
  `Vehicle_Type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_rto`
--

LOCK TABLES `Tollapp_rto` WRITE;
/*!40000 ALTER TABLE `Tollapp_rto` DISABLE KEYS */;
INSERT INTO `Tollapp_rto` VALUES (1,'KA19Y7777',6,8,5,'2017-06-18','2017-08-12','2017-07-13',8,'HCVN1N3','2010-01-02','JSHDYE2234','HDJK5623','PETROL','600cc','2017-08-12','2017-07-13','2017-06-18','2017-07-13',500,'LMV-TR'),(2,'MH11J8990',10,8,4,'2017-01-17','2017-05-23','2017-01-22',3,'HCVN1N3','2007-10-15','JSHDYE2234','HDJK5623','PETROL','1400cc','2017-05-23','2017-01-22','2017-01-17','2017-01-22',500,'LMV-TR'),(3,'TN12T1234',8,7,5,'2017-04-25','2017-01-11','2017-07-11',5,'HCVN1N3','2001-03-29','MHCSFR2536','HDJK5623','PETROL','1000cc','2017-01-11','2017-07-11','2017-04-25','2017-07-11',550,'LMV-TR'),(4,'KA19Y7777',11,9,4,'2017-01-27','2017-08-27','2017-08-28',4,'HCVN1N3','2001-03-29','JSHDYE2234','DF23HJ34','DIESEL','2000cc','2017-08-27','2017-08-28','2017-01-27','2017-08-28',550,'LMV-TR'),(5,'KA19Y7777',7,6,7,'2017-05-10','2017-06-13','2017-09-22',5,'HCVN1N3','2007-10-15','SGHJRUC23J','DF23HJ34','PETROL','1400cc','2017-06-13','2017-09-22','2017-05-10','2017-09-22',650,'LMV-TR'),(6,'AP16T3680',7,6,4,'2017-08-26','2017-04-20','2017-01-17',4,'HCVN1N3','2002-12-22','JSHDYE2234','DF23HJ34','PETROL','1000cc','2017-04-20','2017-01-17','2017-08-26','2017-01-17',700,'LMV-TR'),(7,'TN12T1234',9,7,8,'2017-01-15','2017-02-23','2017-09-14',8,'HCVN1N3','2007-10-15','HJSFGT562G','DF23HJ34','DIESEL','900cc','2017-02-23','2017-09-14','2017-01-15','2017-09-14',700,'LMV-TR'),(8,'TN02U0001',7,8,8,'2017-09-20','2017-09-28','2017-04-19',7,'HCVN1N3','2001-03-29','JSHDYE2234','HDJK5623','PETROL','2000cc','2017-09-28','2017-04-19','2017-09-20','2017-04-19',700,'LMV-TR'),(9,'GA01Q5233',8,8,4,'2017-04-12','2017-09-23','2017-07-10',8,'HCVN1N3','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',600,'LMV-TR'),(10,'GA01Q5233',8,6,7,'2017-09-14','2017-08-20','2017-09-10',5,'HCVN1N3','2001-03-29','SGHJRUC23J','HDJK5623','DIESEL','2000cc','2017-08-20','2017-09-10','2017-09-14','2017-09-10',500,'LMV-TR'),(11,'KA19Y7777',5,7,6,'2017-07-25','2017-09-28','2017-09-19',3,'HCVN1N3','2002-12-22','MHCSFR2536','HDJK5623','PETROL','1400cc','2017-09-28','2017-09-19','2017-07-25','2017-09-19',600,'LMV-TR'),(12,'MH11J8990',12,7,8,'2017-05-11','2017-06-12','2017-06-15',7,'HCVN1N3','1999-07-18','HJSFGT562G','DF23HJ34','PETROL','850cc','2017-06-12','2017-06-15','2017-05-11','2017-06-15',600,'LMV-TR'),(13,'GA01Q5233',7,9,5,'2017-05-21','2017-06-16','2017-05-11',3,'HCVN1N3','2010-01-02','HJSFGT562G','HDJK5623','PETROL','1400cc','2017-06-16','2017-05-11','2017-05-21','2017-05-11',500,'LMV-TR'),(14,'TN12T1234',8,8,8,'2017-07-21','2017-04-15','2017-02-24',4,'HCVN1N3','2001-03-29','MHCSFR2536','HDJK5623','DIESEL','900cc','2017-04-15','2017-02-24','2017-07-21','2017-02-24',700,'LMV-TR'),(15,'TN02U0001',11,8,7,'2017-06-22','2017-09-26','2017-02-19',5,'HCVN1N3','2007-10-15','HJSFGT562G','DF23HJ34','PETROL','1150cc','2017-09-26','2017-02-19','2017-06-22','2017-02-19',650,'LMV-TR'),(16,'AP16T3680',7,9,4,'2017-04-12','2017-02-12','2017-03-24',3,'HCVN1N3','2001-03-29','HJSFGT562G','DF23HJ34','DIESEL','1000cc','2017-02-12','2017-03-24','2017-04-12','2017-03-24',550,'LMV-TR'),(17,'AP16T3680',9,7,8,'2017-09-24','2017-04-22','2017-07-10',8,'HCVN1N3','2010-01-02','SGHJRUC23J','HDJK5623','DIESEL','700cc','2017-04-22','2017-07-10','2017-09-24','2017-07-10',700,'LMV-TR'),(18,'PY22K1919',10,7,5,'2017-04-27','2017-04-24','2017-02-25',6,'HCVN1N3','1999-07-18','SGHJRUC23J','DF23HJ34','DIESEL','1400cc','2017-04-24','2017-02-25','2017-04-27','2017-02-25',600,'LMV-TR'),(19,'AP16T3680',12,8,4,'2017-08-15','2017-05-23','2017-06-27',7,'HCVN1N3','2002-12-22','HJSFGT562G','HDJK5623','DIESEL','900cc','2017-05-23','2017-06-27','2017-08-15','2017-06-27',500,'LMV-TR'),(20,'GJ08U7567',5,9,5,'2017-03-14','2017-01-27','2017-01-21',4,'HCVN1N3','2002-12-22','JSHDYE2234','HDJK5623','PETROL','1150cc','2017-01-27','2017-01-21','2017-03-14','2017-01-21',650,'LMV-TR'),(21,'GJ08U7567',11,8,8,'2017-07-27','2017-01-17','2017-07-25',7,'HCVN1N3','2007-10-15','HJSFGT562G','HDJK5623','DIESEL','1000cc','2017-01-17','2017-07-25','2017-07-27','2017-07-25',700,'LMV-TR'),(22,'GA01Q5233',12,9,4,'2017-06-10','2017-09-28','2017-08-28',6,'HCVN1N3','2002-12-22','SGHJRUC23J','DF23HJ34','PETROL','850cc','2017-09-28','2017-08-28','2017-06-10','2017-08-28',750,'LMV-TR'),(23,'KA19Y7777',7,9,7,'2017-06-12','2017-07-26','2017-02-20',5,'HCVN1N3','2001-03-29','MHCSFR2536','HDJK5623','DIESEL','600cc','2017-07-26','2017-02-20','2017-06-12','2017-02-20',500,'LMV-TR'),(24,'GJ08U7567',12,8,7,'2017-06-23','2017-03-28','2017-03-17',5,'HCVN1N3','1999-07-18','SGHJRUC23J','HDJK5623','DIESEL','850cc','2017-03-28','2017-03-17','2017-06-23','2017-03-17',600,'LMV-TR'),(25,'KA19Y7777',4,7,5,'2017-03-25','2017-09-12','2017-08-10',8,'HCVN1N3','2007-10-15','MHCSFR2536','HDJK5623','DIESEL','2000cc','2017-09-12','2017-08-10','2017-03-25','2017-08-10',650,'LMV-TR'),(26,'MH11J8990',4,8,4,'2017-01-15','2017-05-19','2017-05-28',5,'HCVN1N3','2001-03-29','MHCSFR2536','DF23HJ34','DIESEL','600cc','2017-05-19','2017-05-28','2017-01-15','2017-05-28',700,'LMV-TR'),(27,'PY22K1919',9,7,7,'2017-09-11','2017-07-23','2017-04-23',4,'HCVN1N3','2002-12-22','SGHJRUC23J','DF23HJ34','DIESEL','300cc','2017-07-23','2017-04-23','2017-09-11','2017-04-23',500,'LMV-TR'),(28,'AP16T3680',12,7,4,'2017-02-14','2017-05-26','2017-04-21',8,'HCVN1N3','2002-12-22','HJSFGT562G','HDJK5623','PETROL','1000cc','2017-05-26','2017-04-21','2017-02-14','2017-04-21',700,'LMV-TR'),(29,'TN02U0001',10,6,6,'2017-05-17','2017-01-25','2017-05-28',6,'HCVN1N3','1999-07-18','SGHJRUC23J','DF23HJ34','DIESEL','1150cc','2017-01-25','2017-05-28','2017-05-17','2017-05-28',500,'LMV-TR'),(30,'TN12T1234',7,9,7,'2017-05-26','2017-01-13','2017-05-28',3,'HCVN1N3','1999-07-18','JSHDYE2234','HDJK5623','DIESEL','2000cc','2017-01-13','2017-05-28','2017-05-26','2017-05-28',600,'LMV-TR'),(31,'MH11J8990',6,8,7,'2017-01-13','2017-06-18','2017-02-10',3,'HCVN1N3','2007-10-15','MHCSFR2536','HDJK5623','PETROL','600cc','2017-06-18','2017-02-10','2017-01-13','2017-02-10',600,'LMV-TR'),(32,'AP16T3680',9,8,6,'2017-09-22','2017-09-22','2017-06-12',6,'HCVN1N3','2007-10-15','SGHJRUC23J','HDJK5623','DIESEL','1400cc','2017-09-22','2017-06-12','2017-09-22','2017-06-12',650,'LMV-TR'),(33,'KA19Y7777',7,6,5,'2017-09-10','2017-01-13','2017-09-13',6,'HCVN1N3','2007-10-15','HJSFGT562G','HDJK5623','DIESEL','900cc','2017-01-13','2017-09-13','2017-09-10','2017-09-13',600,'LMV-TR'),(34,'TN06CD1190',7,7,7,'2017-03-25','2017-03-26','2017-04-18',7,'HCVN1N3','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',500,'LMV-TR'),(35,'GJ08U7567',6,9,5,'2017-07-16','2017-09-27','2017-09-17',4,'HCVN1N3','2007-10-15','SGHJRUC23J','HDJK5623','DIESEL','500cc','2017-09-27','2017-09-17','2017-07-16','2017-09-17',600,'LMV-TR'),(36,'AP16T3680',5,8,4,'2017-02-23','2017-09-28','2017-08-25',3,'HCVN1N3','2002-12-22','MHCSFR2536','DF23HJ34','PETROL','300cc','2017-09-28','2017-08-25','2017-02-23','2017-08-25',700,'LMV-TR'),(37,'PY22K1919',10,8,4,'2017-05-14','2017-07-16','2017-01-19',7,'HCVN1N3','1999-07-18','MHCSFR2536','HDJK5623','PETROL','1150cc','2017-07-16','2017-01-19','2017-05-14','2017-01-19',500,'LMV-TR'),(38,'TN06CD1190',5,6,6,'2017-02-13','2017-08-21','2017-02-13',7,'HCVN1N3','2002-12-22','JSHDYE2234','HDJK5623','DIESEL','600cc','2017-08-21','2017-02-13','2017-02-13','2017-02-13',650,'LMV-TR'),(39,'GA01Q5233',11,6,4,'2017-04-11','2017-01-28','2017-01-27',7,'HCVN1N3','2007-10-15','SGHJRUC23J','DF23HJ34','DIESEL','2000cc','2017-01-28','2017-01-27','2017-04-11','2017-01-27',700,'LMV-TR'),(40,'TN02U0001',5,8,5,'2017-02-21','2017-07-10','2017-04-14',8,'HCVN1N3','2001-03-29','MHCSFR2536','DF23HJ34','PETROL','1000cc','2017-07-10','2017-04-14','2017-02-21','2017-04-14',700,'LMV-TR');
/*!40000 ALTER TABLE `Tollapp_rto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_sensor_details`
--

DROP TABLE IF EXISTS `Tollapp_sensor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_sensor_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lane_Number` int(11) NOT NULL,
  `Diemension_Height` int(11) NOT NULL,
  `Diemension_Breadth` int(11) NOT NULL,
  `Diemension_Length` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_sensor_details`
--

LOCK TABLES `Tollapp_sensor_details` WRITE;
/*!40000 ALTER TABLE `Tollapp_sensor_details` DISABLE KEYS */;
INSERT INTO `Tollapp_sensor_details` VALUES (1,2,9,13,19,'2017-03-09 17:12:42',0),(2,1,10,10,13,'2017-03-09 12:48:39',0),(3,3,5,17,7,'2017-03-09 23:53:56',0),(4,1,4,12,14,'2017-03-09 18:44:14',0),(5,5,8,15,8,'2017-03-09 20:34:13',0),(6,4,4,8,7,'2017-03-09 20:46:33',0),(7,4,4,6,7,'2017-03-09 16:43:52',0),(8,2,7,18,12,'2017-03-09 20:34:18',0),(9,2,4,10,8,'2017-03-09 11:40:18',0),(10,5,8,8,16,'2017-03-09 13:13:29',0),(11,3,9,13,7,'2017-03-09 16:14:30',0),(12,5,5,5,6,'2017-03-09 23:56:28',0),(13,2,10,11,8,'2017-03-09 20:53:18',0),(14,1,6,14,19,'2017-03-09 11:51:33',0),(15,3,5,10,14,'2017-03-09 20:52:40',0),(16,1,4,15,18,'2017-03-09 18:52:48',0),(17,5,10,8,8,'2017-03-09 22:30:14',0),(18,4,7,15,13,'2017-03-09 16:13:26',0),(19,5,10,10,9,'2017-03-09 10:19:26',0),(20,3,4,5,11,'2017-03-09 17:52:15',0),(21,1,7,16,7,'2017-03-09 14:51:43',0),(22,5,7,15,18,'2017-03-09 18:24:17',0),(23,2,8,9,15,'2017-03-09 23:24:37',0),(24,5,5,6,12,'2017-03-09 12:33:23',0),(25,3,10,4,16,'2017-03-09 23:19:20',0),(26,1,8,4,10,'2017-03-09 23:41:51',0),(27,4,9,18,13,'2017-03-09 23:11:37',0),(28,3,7,4,18,'2017-03-09 20:13:47',0),(29,4,6,8,19,'2017-03-09 15:27:16',0),(30,5,5,4,8,'2017-03-09 17:45:46',0),(31,6,10,4,16,'2017-03-09 13:41:15',0),(32,5,9,5,18,'2017-03-09 18:53:43',0),(33,6,6,6,14,'2017-03-09 12:29:20',0),(34,5,4,14,8,'2017-03-09 14:20:27',0),(35,9,10,18,16,'2017-03-09 16:15:37',1),(36,8,10,14,17,'2017-03-09 18:13:46',0),(37,9,4,9,12,'2017-03-09 20:16:44',0),(38,5,8,11,15,'2017-03-09 23:38:46',0),(39,6,6,8,12,'2017-03-09 20:52:26',0),(40,8,6,17,7,'2017-03-09 16:39:51',0),(41,6,6,19,8,'2017-03-09 23:48:36',0),(42,5,6,16,12,'2017-03-09 10:16:54',0),(43,8,5,14,19,'2017-03-09 11:36:44',0),(44,6,6,15,19,'2017-03-09 23:38:40',0),(45,5,9,18,15,'2017-03-09 20:24:52',0),(46,5,7,6,10,'2017-03-09 10:29:50',0),(47,10,9,15,11,'2017-03-09 14:51:11',0),(48,5,9,12,9,'2017-03-09 11:50:37',0),(49,5,7,13,20,'2017-03-09 14:26:16',0),(50,10,7,4,6,'2017-03-09 16:49:25',0),(51,6,5,19,6,'2017-03-09 16:10:10',0),(52,5,5,13,12,'2017-03-09 16:12:43',0),(53,7,7,12,16,'2017-03-09 12:13:28',0),(54,5,8,9,8,'2017-03-09 17:36:32',0),(55,8,8,19,15,'2017-03-09 16:32:42',0),(56,7,4,11,19,'2017-03-09 20:30:21',0),(57,10,6,17,8,'2017-03-09 19:17:10',0),(58,5,7,13,12,'2017-03-09 13:37:39',0),(59,10,10,5,15,'2017-03-09 16:44:55',0),(60,9,10,5,8,'2017-03-09 13:20:19',1);
/*!40000 ALTER TABLE `Tollapp_sensor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_signup`
--

DROP TABLE IF EXISTS `Tollapp_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Type` varchar(100) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_signup`
--

LOCK TABLES `Tollapp_signup` WRITE;
/*!40000 ALTER TABLE `Tollapp_signup` DISABLE KEYS */;
INSERT INTO `Tollapp_signup` VALUES (1,'user','2017-03-03 10:41:49','naanal','venkat'),(2,'user','2017-03-03 10:56:44','naanal','vishnu'),(3,'officer','2017-03-03 19:19:29','naanal123','raja'),(4,'officer','2017-03-03 15:42:36','naanal123','ravi'),(5,'transport','2017-03-03 14:34:34','p@ssw0rd','vishal'),(6,'transport','2017-03-03 19:14:17','p@ssw0rd','yuvraj'),(7,'admin','2017-03-03 15:47:50','admin123','mani'),(8,'admin','2017-03-03 10:11:15','admin123','babu');
/*!40000 ALTER TABLE `Tollapp_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_weigh_bridge`
--

DROP TABLE IF EXISTS `Tollapp_weigh_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_weigh_bridge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` varchar(100) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_weigh_bridge`
--

LOCK TABLES `Tollapp_weigh_bridge` WRITE;
/*!40000 ALTER TABLE `Tollapp_weigh_bridge` DISABLE KEYS */;
INSERT INTO `Tollapp_weigh_bridge` VALUES (1,'2017-03-01 15:41:42',3,6100,0),(2,'2017-03-01 17:36:11',1,4600,0),(3,'2017-03-01 15:50:12',1,3400,0),(4,'2017-03-01 15:29:31',2,1300,0),(5,'2017-03-01 10:25:13',4,1600,0),(6,'2017-03-01 12:39:16',4,4300,0),(7,'2017-03-01 13:47:33',3,2200,0),(8,'2017-03-01 12:30:58',1,4600,0),(9,'2017-03-01 19:46:54',5,2200,0),(10,'2017-03-01 18:12:45',4,6100,0),(11,'2017-03-01 15:49:39',4,4300,0),(12,'2017-03-01 10:48:10',2,1900,0),(13,'2017-03-01 16:13:43',2,3700,0),(14,'2017-03-01 17:15:35',1,3700,0),(15,'2017-03-01 18:21:42',3,1300,0),(16,'2017-03-01 15:17:27',3,1000,0),(17,'2017-03-01 16:27:29',4,5500,0),(18,'2017-03-01 15:34:14',2,1000,0),(19,'2017-03-01 17:52:24',2,4000,0),(20,'2017-03-01 18:44:17',5,3100,0),(21,'2017-03-01 10:47:51',2,3400,0),(22,'2017-03-01 14:38:16',5,2500,0),(23,'2017-03-01 14:50:21',3,6700,0),(24,'2017-03-01 14:29:28',2,5500,0),(25,'2017-03-01 18:39:44',4,3400,0),(26,'2017-03-01 14:29:58',2,3400,0),(27,'2017-03-01 14:51:22',2,1300,0),(28,'2017-03-01 15:52:33',4,2500,0),(29,'2017-03-01 20:49:55',2,1900,0),(30,'2017-03-01 13:12:23',4,1000,0),(31,'2017-03-01 14:28:29',6,2300,0),(32,'2017-03-01 16:30:38',7,5500,0),(33,'2017-03-01 11:30:18',8,900,0),(34,'2017-03-01 17:19:22',8,3500,0),(35,'2017-03-01 12:17:31',9,1100,0),(36,'2017-03-01 11:54:54',10,900,0),(37,'2017-03-01 20:25:24',10,3300,0),(38,'2017-03-01 12:56:24',10,3500,0),(39,'2017-03-01 11:40:36',9,6500,1),(40,'2017-03-01 14:14:18',6,1900,0),(41,'2017-03-01 16:46:32',7,7700,0),(42,'2017-03-01 10:19:15',8,500,0),(43,'2017-03-01 18:56:57',10,3500,0),(44,'2017-03-01 15:47:51',8,4500,0),(45,'2017-03-01 11:50:45',9,4500,1),(46,'2017-03-01 18:26:52',6,900,0),(47,'2017-03-01 12:31:23',6,3500,0),(48,'2017-03-01 16:57:32',7,1100,0),(49,'2017-03-01 20:20:43',8,1700,0),(50,'2017-03-01 20:20:26',8,900,0),(51,'2017-03-01 17:47:29',10,7700,0),(52,'2017-03-01 20:34:32',8,7300,0),(53,'2017-03-01 12:15:28',9,4300,0),(54,'2017-03-01 15:18:10',10,6300,0),(55,'2017-03-01 14:31:31',8,4300,0),(56,'2017-03-01 17:22:22',7,5900,0),(57,'2017-03-01 10:25:22',8,4900,0),(58,'2017-03-01 17:30:40',7,4900,0),(59,'2017-03-01 18:27:37',9,4300,0),(60,'2017-03-01 18:40:40',9,1100,0);
/*!40000 ALTER TABLE `Tollapp_weigh_bridge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add main',7,'add_main'),(20,'Can change main',7,'change_main'),(21,'Can delete main',7,'delete_main'),(22,'Can add signup',8,'add_signup'),(23,'Can change signup',8,'change_signup'),(24,'Can delete signup',8,'delete_signup'),(25,'Can add toll_ lane',9,'add_toll_lane'),(26,'Can change toll_ lane',9,'change_toll_lane'),(27,'Can delete toll_ lane',9,'delete_toll_lane'),(28,'Can add anpr',10,'add_anpr'),(29,'Can change anpr',10,'change_anpr'),(30,'Can delete anpr',10,'delete_anpr'),(31,'Can add officer',11,'add_officer'),(32,'Can change officer',11,'change_officer'),(33,'Can delete officer',11,'delete_officer'),(34,'Can add log_ details',12,'add_log_details'),(35,'Can change log_ details',12,'change_log_details'),(36,'Can delete log_ details',12,'delete_log_details'),(37,'Can add sensor_ details',13,'add_sensor_details'),(38,'Can change sensor_ details',13,'change_sensor_details'),(39,'Can delete sensor_ details',13,'delete_sensor_details'),(40,'Can add rto',14,'add_rto'),(41,'Can change rto',14,'change_rto'),(42,'Can delete rto',14,'delete_rto'),(43,'Can add relay_ panel',15,'add_relay_panel'),(44,'Can change relay_ panel',15,'change_relay_panel'),(45,'Can delete relay_ panel',15,'delete_relay_panel'),(46,'Can add anpr_ camera',16,'add_anpr_camera'),(47,'Can change anpr_ camera',16,'change_anpr_camera'),(48,'Can delete anpr_ camera',16,'delete_anpr_camera'),(49,'Can add weigh_ bridge',17,'add_weigh_bridge'),(50,'Can change weigh_ bridge',17,'change_weigh_bridge'),(51,'Can delete weigh_ bridge',17,'delete_weigh_bridge'),(52,'Can add axle_ count',18,'add_axle_count'),(53,'Can change axle_ count',18,'change_axle_count'),(54,'Can delete axle_ count',18,'delete_axle_count'),(55,'Can add edit_ lane',19,'add_edit_lane'),(56,'Can change edit_ lane',19,'change_edit_lane'),(57,'Can delete edit_ lane',19,'delete_edit_lane');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(10,'Tollapp','anpr'),(16,'Tollapp','anpr_camera'),(18,'Tollapp','axle_count'),(19,'Tollapp','edit_lane'),(12,'Tollapp','log_details'),(7,'Tollapp','main'),(11,'Tollapp','officer'),(15,'Tollapp','relay_panel'),(14,'Tollapp','rto'),(13,'Tollapp','sensor_details'),(8,'Tollapp','signup'),(9,'Tollapp','toll_lane'),(17,'Tollapp','weigh_bridge');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-17 08:02:27'),(2,'auth','0001_initial','2017-03-17 08:02:27'),(3,'admin','0001_initial','2017-03-17 08:02:27'),(4,'contenttypes','0002_remove_content_type_name','2017-03-17 08:02:28'),(5,'auth','0002_alter_permission_name_max_length','2017-03-17 08:02:28'),(6,'auth','0003_alter_user_email_max_length','2017-03-17 08:02:28'),(7,'auth','0004_alter_user_username_opts','2017-03-17 08:02:28'),(8,'auth','0005_alter_user_last_login_null','2017-03-17 08:02:28'),(9,'auth','0006_require_contenttypes_0002','2017-03-17 08:02:28'),(10,'sessions','0001_initial','2017-03-17 08:02:28'),(11,'Tollapp','0001_initial','2017-03-17 08:03:19'),(12,'Tollapp','0002_auto_20170318_0704','2017-03-18 07:04:46'),(13,'Tollapp','0003_auto_20170318_0709','2017-03-18 07:09:31'),(14,'Tollapp','0004_auto_20170318_0712','2017-03-18 07:12:43'),(15,'Tollapp','0005_auto_20170318_0740','2017-03-18 07:40:32'),(16,'Tollapp','0006_auto_20170318_0750','2017-03-18 07:50:10'),(17,'Tollapp','0007_auto_20170318_0752','2017-03-18 07:52:57'),(18,'Tollapp','0008_auto_20170318_0819','2017-03-18 08:19:23'),(19,'Tollapp','0002_auto_20170318_0822','2017-03-18 08:22:38'),(20,'Tollapp','0003_auto_20170318_1603','2017-03-18 10:33:36'),(21,'Tollapp','0004_auto_20170318_1700','2017-03-18 11:30:39'),(22,'Tollapp','0005_auto_20170320_1128','2017-03-20 05:58:12'),(23,'Tollapp','0006_auto_20170320_1231','2017-03-20 07:01:31');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('o2d6wul5z82wtxv3cw88z5vaqz45bhca','ZWI5ZGZmNTEzMDUyNjg5YmMzNDRkMTBlOTcxZDBkOGFkNmQ3YmIxNzp7InVzZXJuYW1lIjoidmVua2F0IiwiVXNlcl9OYW1lIjoidmVua2F0In0=','2017-04-03 12:08:10');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-20 17:43:22
