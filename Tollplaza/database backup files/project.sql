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
INSERT INTO `Tollapp_anpr` VALUES (1,'TN02U0001',8,0,'2017-02-09 23:35:16'),(2,'KA19Y7777',2,0,'2017-02-09 23:42:40'),(3,'TN06CD1190',5,0,'2017-02-09 16:44:21'),(4,'PY22K1919',9,0,'2017-02-09 17:33:46'),(5,'GA01Q5233',9,0,'2017-02-09 22:33:23'),(6,'GJ08U7567',1,0,'2017-02-09 20:54:39'),(7,'GJ08U7567',2,0,'2017-02-09 17:47:21'),(8,'GJ08U7567',9,1,'2017-02-09 12:47:30'),(9,'TN02U0001',8,0,'2017-02-09 11:31:26'),(10,'TN06CD1190',8,0,'2017-02-09 13:23:45'),(11,'PY22K1919',6,0,'2017-02-09 17:28:46'),(12,'GJ08U7567',1,1,'2017-02-09 11:18:25'),(13,'PY22K1919',7,0,'2017-02-09 13:39:13'),(14,'MH11J8990',8,0,'2017-02-09 17:55:48'),(15,'GJ08U7567',9,0,'2017-02-09 17:11:18'),(16,'AP16T3680',8,0,'2017-02-09 18:54:55'),(17,'TN12T1234',6,0,'2017-02-09 10:29:55'),(18,'TN06CD1190',7,0,'2017-02-09 23:55:19'),(19,'TN06CD1190',7,0,'2017-02-09 22:45:32'),(20,'MH11J8990',8,0,'2017-02-09 18:34:31'),(21,'AP16T3680',10,0,'2017-02-09 20:37:49'),(22,'GA01Q5233',1,0,'2017-02-09 19:35:36'),(23,'GJ08U7567',7,0,'2017-02-09 13:22:11'),(24,'GJ08U7567',1,1,'2017-02-09 13:19:19'),(25,'MH11J8990',2,0,'2017-02-09 18:34:21'),(26,'PY22K1919',6,0,'2017-02-09 15:49:29'),(27,'GA01Q5233',10,0,'2017-02-09 20:35:20'),(28,'TN12T1234',4,0,'2017-02-09 13:39:22'),(29,'PY22K1919',1,1,'2017-02-09 10:55:47'),(30,'AP16T3680',4,0,'2017-02-09 17:55:35'),(31,'MH11J8990',9,0,'2017-02-09 20:29:42'),(32,'AP16T3680',2,0,'2017-02-09 18:10:49'),(33,'AP16T3680',1,1,'2017-02-09 15:30:51'),(34,'MH11J8990',5,0,'2017-02-09 21:39:32'),(35,'MH11J8990',5,0,'2017-02-09 11:23:32'),(36,'TN06CD1190',4,0,'2017-02-09 19:49:40'),(37,'PY22K1919',3,0,'2017-02-09 11:49:38'),(38,'GA01Q5233',9,0,'2017-02-09 14:19:40'),(39,'PY22K1919',8,0,'2017-02-09 13:52:38'),(40,'TN12T1234',7,0,'2017-02-09 20:36:40');
/*!40000 ALTER TABLE `Tollapp_anpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_anpr_camera`
--

DROP TABLE IF EXISTS `Tollapp_anpr_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_anpr_camera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lane_Number` int(11) NOT NULL,
  `Created_Time` datetime NOT NULL,
  `Update_Time` datetime NOT NULL,
  `Camera1` char(39) NOT NULL,
  `Camera2` char(39) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_anpr_camera`
--

LOCK TABLES `Tollapp_anpr_camera` WRITE;
/*!40000 ALTER TABLE `Tollapp_anpr_camera` DISABLE KEYS */;
INSERT INTO `Tollapp_anpr_camera` VALUES (1,1,'2017-03-23 09:49:38','2017-03-24 10:55:12','192.168.30.20','192.168.30.100'),(2,2,'2017-03-23 09:50:19','2017-03-23 10:05:08','192.168.30.29','192.168.30.89'),(4,3,'2017-03-23 10:07:14','2017-03-23 10:07:14','192.168.30.45','192.168.30.1');
/*!40000 ALTER TABLE `Tollapp_anpr_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_axle_count`
--

DROP TABLE IF EXISTS `Tollapp_axle_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_axle_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` datetime,
  `Lane_Number` int(11) NOT NULL,
  `Axle` int(11) NOT NULL,
  `Flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_axle_count`
--

LOCK TABLES `Tollapp_axle_count` WRITE;
/*!40000 ALTER TABLE `Tollapp_axle_count` DISABLE KEYS */;
INSERT INTO `Tollapp_axle_count` VALUES (1,'2017-03-11 18:47:21',1,6,0),(2,'2017-03-11 15:49:18',4,5,0),(3,'2017-03-11 16:45:48',1,6,1),(4,'2017-03-11 15:56:10',3,8,0),(5,'2017-03-11 20:16:52',2,7,0),(6,'2017-03-11 20:28:55',3,6,0),(7,'2017-03-11 10:56:36',5,8,0),(8,'2017-03-11 18:45:54',4,6,0),(9,'2017-03-11 18:16:14',5,7,0),(10,'2017-03-11 11:51:28',4,5,0),(11,'2017-03-11 14:26:14',2,8,0),(12,'2017-03-11 15:52:18',1,6,1),(13,'2017-03-11 15:15:41',5,6,0),(14,'2017-03-11 15:13:51',3,7,0),(15,'2017-03-11 13:28:13',3,5,0),(16,'2017-03-11 13:17:25',3,8,0),(17,'2017-03-11 16:17:50',4,8,0),(18,'2017-03-11 18:24:23',1,6,1),(19,'2017-03-11 16:51:55',3,7,0),(20,'2017-03-11 14:11:26',4,6,0),(21,'2017-03-11 16:28:49',5,6,0),(22,'2017-03-11 10:18:51',2,6,0),(23,'2017-03-11 12:33:47',4,5,0),(24,'2017-03-11 17:49:58',5,8,0),(25,'2017-03-11 19:35:32',1,5,0),(26,'2017-03-11 18:47:51',3,5,0),(27,'2017-03-11 13:33:22',5,6,0),(28,'2017-03-11 14:54:47',3,7,0),(29,'2017-03-11 20:13:53',4,8,0),(30,'2017-03-11 16:26:36',1,5,1),(31,'2017-03-11 18:44:53',8,4,0),(32,'2017-03-11 12:36:24',6,4,0),(33,'2017-03-11 17:31:51',8,7,0),(34,'2017-03-11 10:14:54',8,6,0),(35,'2017-03-11 19:27:24',9,3,0),(36,'2017-03-11 17:28:16',7,3,0),(37,'2017-03-11 14:42:12',10,7,0),(38,'2017-03-11 11:45:10',8,7,0),(39,'2017-03-11 15:52:41',7,5,0),(40,'2017-03-11 16:18:28',10,5,0),(41,'2017-03-11 16:14:13',10,6,0),(42,'2017-03-11 13:42:24',7,7,0),(43,'2017-03-11 10:32:57',6,7,0),(44,'2017-03-11 14:21:33',7,7,0),(45,'2017-03-11 15:47:36',6,8,0),(46,'2017-03-11 13:23:11',9,4,0),(47,'2017-03-11 15:35:50',8,5,0),(48,'2017-03-11 14:15:25',9,3,0),(49,'2017-03-11 14:33:51',10,3,0),(50,'2017-03-11 20:29:52',9,3,0),(51,'2017-03-11 11:56:40',8,8,0),(52,'2017-03-11 16:24:26',6,3,0),(53,'2017-03-11 11:20:21',10,4,0),(54,'2017-03-11 14:31:38',9,8,0),(55,'2017-03-11 12:48:57',6,8,0),(56,'2017-03-11 16:10:19',9,7,0),(57,'2017-03-11 12:10:46',7,5,0),(58,'2017-03-11 16:18:19',8,4,0),(59,'2017-03-11 10:52:54',9,5,1),(60,'2017-03-11 15:14:42',9,8,0);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_edit_lane`
--

LOCK TABLES `Tollapp_edit_lane` WRITE;
/*!40000 ALTER TABLE `Tollapp_edit_lane` DISABLE KEYS */;
INSERT INTO `Tollapp_edit_lane` VALUES (44,'TADA',1,'vishnu','out','2017-03-23 06:28:31','2017-03-24 10:39:23'),(45,'TADA',2,'venkat','in','2017-03-23 06:28:43','2017-03-23 06:28:43'),(46,'TADA',3,'hari','out','2017-03-23 09:44:42','2017-03-23 09:44:42');
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
  `Fine_Amount` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_main`
--

LOCK TABLES `Tollapp_main` WRITE;
/*!40000 ALTER TABLE `Tollapp_main` DISABLE KEYS */;
INSERT INTO `Tollapp_main` VALUES (1,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:06:14','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(2,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:07:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(3,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:08:35','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(4,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 11:31:05','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(5,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-18 12:20:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(6,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:20:50','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(7,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:22:58','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(8,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:39:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(9,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:40:10','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(10,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 05:58:42','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(11,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:01:51','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(12,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:03:07','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(13,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:05:50','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(14,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:07:52','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(15,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 07:13:46','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(16,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 08:55:33','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(17,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:23:57','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(18,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:24:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(19,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:00','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(20,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:14','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(21,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:25:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(22,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:28:51','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(23,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 09:32:41','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(24,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-20 12:08:10','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(25,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:17:07','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(26,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:25:13','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(27,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:27:41','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(28,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:32:15','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(29,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:34:29','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(30,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:38:27','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(31,'','TN06CD1190',7,7,7,'2017-04-18','2017-03-25','2017-03-26','vishnu','NA',8,'LMV-TR','TADA',5,'outgoing',2500,'2017-03-20 12:40:19','2002-12-22','SGHJRUC23J','HDJK5623','PETROL','1000cc','2017-03-26','2017-04-18','2017-03-25','2017-04-18',2000,500,0,'NA','HCVN1N3',5,12,6,'Not Ok','NA','NA'),(32,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 06:29:37','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(33,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 06:38:12','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(34,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 06:45:37','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(35,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 07:13:14','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(36,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 07:13:47','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(37,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 07:14:56','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(38,'','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 07:14:59','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(39,'2103201712:46:10','NA',0,0,0,'2017-03-21','2017-03-21','2017-03-21','venkat','NA',0,'NA','TADA',9,'outgoing',4300,'2017-03-21 07:16:10','2017-03-21','NA','NA','NA','NA','2017-03-21','2017-03-21','2017-03-21','2017-03-21',0,0,0,'NA','NA',4,12,9,'NA','NA','NA'),(40,'2103201712:46:13','GJ08U7567',9,5,5,'2017-01-21','2017-03-14','2017-01-27','venkat','NA',3,'LMV-TR','TADA',9,'outgoing',4300,'2017-03-21 07:16:13','2002-12-22','JSHDYE2234','HDJK5623','PETROL','1150cc','2017-01-27','2017-01-21','2017-03-14','2017-01-21',3650,650,0,'NA','HCVN1N3',4,12,9,'NA','NA','NA'),(41,'21032017125010','GJ08U7567',9,5,5,'2017-01-21','2017-03-14','2017-01-27','venkat','raja',5,'LMV-TR','TADA',9,'outgoing',6500,'2017-03-21 07:20:10','2002-12-22','JSHDYE2234','HDJK5623','PETROL','1150cc','2017-01-27','2017-01-21','2017-03-14','2017-01-21',5850,650,0,'NA','HCVN1N3',39,39,39,'Not Ok','NA','NA'),(42,'21032017150539','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','raja',4,'LMV-TR','TADA',9,'outgoing',4500,'2017-03-21 09:35:38','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',3900,600,0,'NA','HCVN1N3',43,43,43,'Not Ok','NA','NA'),(43,'22032017155108','GJ08U7567',9,5,5,'2017-01-21','2017-03-14','2017-01-27','venkat','NA',3,'LMV-TR','TADA',9,'outgoing',4300,'2017-03-22 10:21:08','2002-12-22','JSHDYE2234','HDJK5623','PETROL','1150cc','2017-01-27','2017-01-21','2017-03-14','2017-01-21',3650,650,0,'NA','HCVN1N3',20,20,20,'Not Ok','NA','NA'),(44,'22032017181243','PY22K1919',7,10,5,'2017-02-25','2017-04-27','2017-04-24','venkat','NA',8,'LMV-TR','TADA',9,'outgoing',1100,'2017-03-22 12:42:43','1999-07-18','SGHJRUC23J','DF23HJ34','DIESEL','1400cc','2017-04-24','2017-02-25','2017-04-27','2017-02-25',500,600,0,'NA','HCVN1N3',25,25,25,'Not Ok','NA','NA'),(45,'22032017185451','MH11J8990',8,10,4,'2017-01-22','2017-01-17','2017-05-23','venkat','NA',8,'LMV-TR','TADA',9,'outgoing',4300,'2017-03-22 13:24:51','2007-10-15','JSHDYE2234','HDJK5623','PETROL','1400cc','2017-05-23','2017-01-22','2017-01-17','2017-01-22',3800,500,0,'NA','HCVN1N3',26,26,26,'Not Ok','NA','NA'),(46,'22032017185502','GA01Q5233',8,8,4,'2017-07-10','2017-04-12','2017-09-23','venkat','NA',7,'LMV-TR','TADA',9,'outgoing',1100,'2017-03-22 13:25:02','1999-07-18','SGHJRUC23J','DF23HJ34','PETROL','700cc','2017-09-23','2017-07-10','2017-04-12','2017-07-10',500,600,0,'NA','HCVN1N3',10,8,5,'Not Ok','NA','NA'),(47,'230317103035','NA',0,0,0,'2017-03-23','2017-03-23','2017-03-23','venkat','NA',0,'NA','TADA',9,'outgoing',6500,'2017-03-23 05:00:35','2017-03-23','NA','NA','NA','NA','2017-03-23','2017-03-23','2017-03-23','2017-03-23',0,0,0,'NA','NA',10,16,18,'NA','NA','NA'),(48,'230317103443','NA',0,0,0,'2017-03-23','2017-03-23','2017-03-23','venkat','NA',0,'NA','TADA',9,'outgoing',6500,'2017-03-23 05:04:43','2017-03-23','NA','NA','NA','NA','2017-03-23','2017-03-23','2017-03-23','2017-03-23',0,0,0,'NA','NA',10,16,18,'NA','NA','NA'),(49,'230317104014','NA',0,0,0,'2017-03-23','2017-03-23','2017-03-23','venkat','NA',0,'NA','TADA',9,'outgoing',6500,'2017-03-23 05:10:14','2017-03-23','NA','NA','NA','NA','2017-03-23','2017-03-23','2017-03-23','2017-03-23',0,0,0,'NA','NA',10,16,18,'NA','NA','NA'),(50,'230317104242','GJ08U7567',9,5,5,'2017-01-21','2017-03-14','2017-01-27','venkat','raja',5,'LMV-TR','TADA',9,'outgoing',6500,'2017-03-23 05:12:42','2002-12-22','JSHDYE2234','HDJK5623','PETROL','1150cc','2017-01-27','2017-01-21','2017-03-14','2017-01-21',5850,650,0,'NA','HCVN1N3',10,16,18,'Not Ok','NA','NA'),(51,'230317105222','NA',0,0,0,'2017-03-23','2017-03-23','2017-03-23','venkat','NA',0,'NA','TADA',9,'outgoing',4500,'2017-03-23 05:22:22','2017-03-23','NA','NA','NA','NA','2017-03-23','2017-03-23','2017-03-23','2017-03-23',0,0,0,'NA','NA',4,12,9,'NA','NA','NA'),(52,'240317121015','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','NA',2,'in',0,'2017-03-24 06:40:15','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(53,'240317121129','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 06:41:29','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(54,'240317121155','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 06:41:55','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(55,'240317121251','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 06:42:51','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(56,'240317122544','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','NA',2,'in',0,'2017-03-24 06:55:44','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(57,'240317122606','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 06:56:06','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(58,'240317123433','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 07:04:33','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(59,'240317123559','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 07:05:59','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(60,'240317123844','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','NA',2,'in',0,'2017-03-24 07:08:44','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(61,'240317123851','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','NA',1,'out',0,'2017-03-24 07:08:51','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(62,'240317124113','PY22K1919',7,10,5,'2017-02-25','2017-04-27','2017-04-24','vishnu','NA',6,'LMV-TR','NA',1,'out',4600,'2017-03-24 07:11:13','1999-07-18','SGHJRUC23J','DF23HJ34','DIESEL','1400cc','2017-04-24','2017-02-25','2017-04-27','2017-02-25',4000,600,0,'NA','HCVN1N3',173,0,15,'Not Ok','NA','NA'),(63,'240317125405','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','TADA',1,'out',0,'2017-03-24 07:24:05','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(64,'240317125833','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','TADA',1,'out',0,'2017-03-24 07:28:33','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(65,'240317125942','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','TADA',1,'out',0,'2017-03-24 07:29:42','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(66,'240317130023','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','TADA',1,'out',0,'2017-03-24 07:30:23','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(67,'240317145505','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 09:25:05','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(68,'240317163505','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','vishnu','NA',0,'NA','TADA',1,'out',0,'2017-03-24 11:05:05','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(69,'240317172718','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 11:57:18','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(70,'240317172840','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 11:58:40','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(71,'240317172927','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 11:59:27','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(72,'240317173003','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 12:00:03','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA'),(73,'240317173145','NA',0,0,0,'2017-03-24','2017-03-24','2017-03-24','venkat','NA',0,'NA','TADA',2,'in',0,'2017-03-24 12:01:45','2017-03-24','NA','NA','NA','NA','2017-03-24','2017-03-24','2017-03-24','2017-03-24',0,0,0,'NA','NA',0,0,0,'NA','NA','NA');
/*!40000 ALTER TABLE `Tollapp_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tollapp_monitor`
--

DROP TABLE IF EXISTS `Tollapp_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lane_Number` int(11) DEFAULT NULL,
  `Webapp` char(39) NOT NULL,
  `Anpr` char(39) NOT NULL,
  `Profiler` char(39) NOT NULL,
  `Weighbridge` char(39) NOT NULL,
  `Boombarrier` char(39) NOT NULL,
  `Tolluser` char(39) NOT NULL,
  `Overall_Health` char(39) NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Camera` char(39) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_monitor`
--

LOCK TABLES `Tollapp_monitor` WRITE;
/*!40000 ALTER TABLE `Tollapp_monitor` DISABLE KEYS */;
INSERT INTO `Tollapp_monitor` VALUES (1,1,'192.168.30.1','192.168.30.101','192.168.30.15','192.168.30.90','192.168.30.89','192.168.30.10','','venkat','In',0,'2017-03-22 06:30:28','192.168.30.23'),(2,2,'192.168.30.10','192.168.30.100','192.168.30.15','192.168.30.106','192.168.30.105','192.168.30.1','','vishnu','In',0,'2017-03-22 06:30:28','192.168.30.51'),(3,3,'192.168.30.89','192.168.30.52','192.168.30.109','192.168.30.23','192.168.30.57','192.168.30.98','','hari','In',0,'2017-03-22 09:42:23','192.168.30.48'),(4,4,'192.168.30.58','192.168.30.14','192.168.30.106','192.168.30.17','192.168.30.48','192.168.30.109','','dhoni','In',0,'2017-03-22 09:42:23','192.168.30.34'),(5,5,'192.168.30.30','192.168.30.35','192.168.30.107','192.168.30.7','192.168.30.58','192.168.30.106','','rohit','In',0,'2017-03-22 09:42:23','192.168.30.9'),(6,6,'192.168.30.54','192.168.30.4','192.168.30.118','192.168.30.11','192.168.30.45','192.168.30.98','','ashwin','In',0,'2017-03-22 09:42:23','192.168.30.66'),(7,7,'192.168.30.71','192.168.30.39','192.168.30.107','192.168.30.22','192.168.30.52','192.168.30.97','','pandia','In',0,'2017-03-22 09:42:23','192.168.30.44'),(8,8,'192.168.30.32','192.168.30.8','192.168.30.120','192.168.30.21','192.168.30.52','192.168.30.118','','yuvraj','In',0,'2017-03-22 09:42:23','192.168.30.26'),(9,9,'192.168.30.35','192.168.30.19','192.168.30.100','192.168.30.10','192.168.30.46','192.168.30.119','','virat','In',0,'2017-03-22 09:42:23','192.168.30.34'),(10,10,'192.168.30.21','192.168.30.7','192.168.30.113','192.168.30.12','192.168.30.50','192.168.30.90','','sachin','In',0,'2017-03-22 09:42:23','192.168.30.38'),(11,11,'192.168.30.76','192.168.30.14','192.168.30.119','192.168.30.23','192.168.30.45','192.168.30.103','','raina','out',0,'2017-03-22 09:42:23','192.168.30.54'),(12,12,'192.168.30.85','192.168.30.2','192.168.30.111','192.168.30.7','192.168.30.47','192.168.30.97','','jadeja','out',0,'2017-03-22 09:42:23','192.168.30.36'),(13,13,'192.168.30.31','192.168.30.39','192.168.30.100','192.168.30.20','192.168.30.45','192.168.30.102','','rahul','out',0,'2017-03-22 09:42:23','192.168.30.65'),(14,14,'192.168.30.48','192.168.30.48','192.168.30.107','192.168.30.21','192.168.30.52','192.168.30.97','','vijay','out',0,'2017-03-22 09:42:23','192.168.30.67'),(15,15,'192.168.30.61','192.168.30.28','192.168.30.116','192.168.30.22','192.168.30.51','192.168.30.117','','mishra','out',0,'2017-03-22 09:42:23','192.168.30.70'),(16,16,'192.168.30.81','192.168.30.9','192.168.30.113','192.168.30.21','192.168.30.53','192.168.30.129','','viru','out',0,'2017-03-22 09:42:23','192.168.30.49');
/*!40000 ALTER TABLE `Tollapp_monitor` ENABLE KEYS */;
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
-- Table structure for table `Tollapp_ping`
--

DROP TABLE IF EXISTS `Tollapp_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tollapp_ping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lane_Number` int(11) NOT NULL,
  `Webapp` varchar(200) NOT NULL,
  `Anpr` varchar(200) NOT NULL,
  `Profiler` varchar(200) NOT NULL,
  `Weighbridge` varchar(200) NOT NULL,
  `Boombarrier` varchar(200) NOT NULL,
  `Tolluser` varchar(200) NOT NULL,
  `Overall_Health` varchar(200) NOT NULL,
  `Camera` varchar(200) NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_ping`
--

LOCK TABLES `Tollapp_ping` WRITE;
/*!40000 ALTER TABLE `Tollapp_ping` DISABLE KEYS */;
INSERT INTO `Tollapp_ping` VALUES (1,1,'green','green','red','red','red','red','NA','red','venkat','In',0,'2017-03-24 11:35:18'),(2,2,'red','green','red','red','green','green','NA','green','vishnu','In',0,'2017-03-24 11:35:18'),(3,3,'red','red','red','red','red','red','NA','red','hari','In',0,'2017-03-24 11:35:18'),(4,4,'red','red','red','red','red','red','NA','red','dhoni','In',0,'2017-03-24 11:35:18'),(5,5,'red','red','red','red','red','red','NA','red','rohit','In',0,'2017-03-24 11:35:18'),(6,6,'green','red','red','red','red','red','NA','red','ashwin','In',0,'2017-03-24 11:35:18'),(7,7,'red','red','red','red','red','red','NA','red','pandia','In',0,'2017-03-24 11:35:18'),(8,8,'red','red','red','red','red','red','NA','red','yuvraj','In',0,'2017-03-24 11:35:18'),(9,9,'red','red','green','red','red','red','NA','red','virat','In',0,'2017-03-24 11:35:18'),(10,10,'red','red','red','red','green','red','NA','red','sachin','In',0,'2017-03-24 11:35:18'),(11,11,'red','red','red','red','red','green','NA','green','raina','out',0,'2017-03-24 11:35:18'),(12,12,'red','red','red','red','red','red','NA','red','jadeja','out',0,'2017-03-24 11:35:18'),(13,13,'red','red','green','red','red','red','NA','red','rahul','out',0,'2017-03-24 11:35:18'),(14,14,'red','red','red','red','red','red','NA','red','vijay','out',0,'2017-03-24 11:35:18'),(15,15,'red','red','red','red','green','red','NA','red','mishra','out',0,'2017-03-24 11:35:18'),(16,16,'red','red','red','red','red','red','NA','red','viru','out',0,'2017-03-24 11:35:18');
/*!40000 ALTER TABLE `Tollapp_ping` ENABLE KEYS */;
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
  `Lane_13` tinyint(1) NOT NULL,
  `Lane_14` tinyint(1) NOT NULL,
  `Lane_15` tinyint(1) NOT NULL,
  `Lane_16` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_relay_panel`
--

LOCK TABLES `Tollapp_relay_panel` WRITE;
/*!40000 ALTER TABLE `Tollapp_relay_panel` DISABLE KEYS */;
INSERT INTO `Tollapp_relay_panel` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
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
  `Dimension_Length` int(11) DEFAULT NULL,
  `Dimension_Height` int(11) DEFAULT NULL,
  `Dimension_Breadth` int(11) DEFAULT NULL,
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
  `Dimension_Height` float DEFAULT NULL,
  `Dimension_Breadth` float DEFAULT NULL,
  `Dimension_Length` float DEFAULT NULL,
  `Timestamp` datetime,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_sensor_details`
--

LOCK TABLES `Tollapp_sensor_details` WRITE;
/*!40000 ALTER TABLE `Tollapp_sensor_details` DISABLE KEYS */;
INSERT INTO `Tollapp_sensor_details` VALUES (1,1,169,28,0,'2017-03-23 17:11:19',1),(2,1,167.126,27.1059,0,'2017-03-23 17:13:57',0),(3,1,167,-15,0,'2017-03-23 17:13:18',1),(4,1,168,21,0,'2017-03-23 17:13:24',1),(5,1,173,15,0,'2017-03-23 17:13:52',1),(6,1,166.074,23.3249,0,'2017-03-23 17:19:12',0),(7,1,169.675,21.9842,0,'2017-03-23 17:18:58',1),(8,1,166.074,-15.1311,0,'2017-03-23 17:18:59',1),(9,1,166.074,28.3888,0,'2017-03-23 17:19:10',1),(10,1,166.074,21.9842,0,'2017-03-23 17:19:25',0),(11,1,167.071,29.0629,0,'2017-03-23 17:24:52',0),(12,1,166.074,26.7459,0,'2017-03-23 17:25:48',0),(13,1,168,26.0537,0,'2017-03-23 17:26:06',0),(14,1,172.446,-15.1834,0,'2017-03-23 17:35:41',0),(15,1,172.446,-16.7279,0,'2017-03-23 17:35:45',0),(16,1,168.121,-15.8379,0,'2017-03-23 17:35:47',0),(17,1,168.751,-16.7017,0,'2017-03-23 17:35:49',0),(18,1,166.074,-15.262,0,'2017-03-23 17:35:54',0),(19,1,165.077,17.4329,0,'2017-03-23 17:35:56',0),(20,1,164.142,3.3636,0,'2017-03-23 17:36:04',0),(21,1,173.37,10.5064,0,'2017-03-23 17:54:41',0),(22,1,167.071,-9.98097,0,'2017-03-23 17:54:56',0),(23,1,165.727,1.78413,0,'2017-03-23 17:55:02',0),(24,1,153.114,25.2627,0,'2017-03-23 18:21:18',0),(25,1,166.903,11.0095,0,'2017-03-23 18:22:09',0),(26,1,167.071,27.3874,0,'2017-03-23 17:26:34',1),(27,1,169.065,-15.262,0,'2017-03-23 18:21:28',1),(28,1,167.071,-15.262,0,'2017-03-23 18:21:31',1),(29,1,168.068,-16.309,0,'2017-03-23 18:21:39',1),(30,1,171.522,-14.974,0,'2017-03-23 18:21:47',1),(31,1,172.446,-15.8117,0,'2017-03-23 18:21:54',1),(32,1,173.37,-16.0996,0,'2017-03-23 18:21:58',1),(33,1,167.071,-15.4452,0,'2017-03-23 18:22:30',0),(34,1,166.074,-15.1311,0,'2017-03-23 18:22:33',0),(35,10,8,19,14,'2017-03-09 10:58:53',0),(36,10,9,10,17,'2017-03-09 05:07:46',0),(37,10,8,11,12,'2017-03-09 07:56:51',0),(38,8,9,4,19,'2017-03-09 13:03:37',0),(39,10,7,13,13,'2017-03-09 13:50:33',0),(40,8,4,13,10,'2017-03-09 09:12:18',0),(41,6,10,11,10,'2017-03-09 05:40:40',0),(42,7,10,6,19,'2017-03-09 11:53:31',0),(43,9,5,15,9,'2017-03-09 09:57:44',0),(44,5,9,18,20,'2017-03-09 18:07:25',0),(45,7,4,9,12,'2017-03-09 17:54:10',0),(46,9,4,19,18,'2017-03-09 06:10:31',0),(47,7,8,15,12,'2017-03-09 17:00:19',0),(48,7,7,6,18,'2017-03-09 11:48:47',0),(49,5,9,17,13,'2017-03-09 18:13:14',0),(50,9,8,8,8,'2017-03-09 11:05:50',0),(51,9,4,6,19,'2017-03-09 11:21:21',0),(52,6,8,6,16,'2017-03-09 16:11:45',0),(53,5,10,10,7,'2017-03-09 09:54:52',0),(54,9,8,19,16,'2017-03-09 09:58:33',0),(55,9,10,16,14,'2017-03-09 13:48:54',0),(56,7,4,7,13,'2017-03-09 08:57:47',0),(57,7,8,5,19,'2017-03-09 10:12:41',0),(58,6,10,15,13,'2017-03-09 08:43:19',0),(59,9,8,15,12,'2017-03-09 07:04:29',0),(60,10,5,17,16,'2017-03-09 18:26:53',0),(61,9,7,11,18,'2017-03-09 12:05:50',0),(62,10,10,8,15,'2017-03-09 09:04:27',0),(63,5,4,14,14,'2017-03-09 10:06:39',0),(64,9,10,16,13,'2017-03-09 06:02:40',0);
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
  `Password` varchar(100) NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Create_Time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tollapp_signup`
--

LOCK TABLES `Tollapp_signup` WRITE;
/*!40000 ALTER TABLE `Tollapp_signup` DISABLE KEYS */;
INSERT INTO `Tollapp_signup` VALUES (1,'user','naanal','venkat','NA',0,'NA','2017-03-23 10:43:42'),(2,'user','naanal','vishnu','NA',0,'NA','2017-03-23 10:43:42'),(3,'officer','naanal123','raja','NA',0,'NA','2017-03-23 10:43:42'),(4,'officer','naanal123','ravi','NA',0,'NA','2017-03-23 10:43:42'),(5,'transport','p@ssw0rd','vishal','NA',0,'NA','2017-03-23 10:43:42'),(6,'transport','p@ssw0rd','yuvraj','NA',0,'NA','2017-03-23 10:43:42'),(7,'admin','admin123','mani','NA',0,'NA','2017-03-23 10:43:42'),(8,'admin','admin123','babu','NA',0,'NA','2017-03-23 10:43:42'),(9,'monitor','monitor123','krishna','NA',0,'NA','2017-03-23 10:43:42'),(10,'USER','vishnu','viru','vishnu',10,'k','2017-03-23 12:04:58');
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
  `Timestamp` datetime,
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
INSERT INTO `Tollapp_weigh_bridge` VALUES (1,'2017-03-01 15:41:42',3,6100,0),(2,'2017-03-01 17:36:11',1,4600,1),(3,'2017-03-01 15:50:12',1,3400,1),(4,'2017-03-01 15:29:31',2,1300,0),(5,'2017-03-01 10:25:13',4,1600,0),(6,'2017-03-01 12:39:16',4,4300,0),(7,'2017-03-01 13:47:33',3,2200,0),(8,'2017-03-01 12:30:58',1,4600,1),(9,'2017-03-01 19:46:54',5,2200,0),(10,'2017-03-01 18:12:45',4,6100,0),(11,'2017-03-01 15:49:39',4,4300,0),(12,'2017-03-01 10:48:10',2,1900,0),(13,'2017-03-01 16:13:43',2,3700,0),(14,'2017-03-01 17:15:35',1,3700,1),(15,'2017-03-01 18:21:42',3,1300,0),(16,'2017-03-01 15:17:27',3,1000,0),(17,'2017-03-01 16:27:29',4,5500,0),(18,'2017-03-01 15:34:14',2,1000,0),(19,'2017-03-01 17:52:24',2,4000,0),(20,'2017-03-01 18:44:17',5,3100,0),(21,'2017-03-01 10:47:51',2,3400,0),(22,'2017-03-01 14:38:16',5,2500,0),(23,'2017-03-01 14:50:21',3,6700,0),(24,'2017-03-01 14:29:28',2,5500,0),(25,'2017-03-01 18:39:44',4,3400,0),(26,'2017-03-01 14:29:58',2,3400,0),(27,'2017-03-01 14:51:22',2,1300,0),(28,'2017-03-01 15:52:33',4,2500,0),(29,'2017-03-01 20:49:55',2,1900,0),(30,'2017-03-01 13:12:23',4,1000,0),(31,'2017-03-01 14:28:29',6,2300,0),(32,'2017-03-01 16:30:38',7,5500,0),(33,'2017-03-01 11:30:18',8,900,0),(34,'2017-03-01 17:19:22',8,3500,0),(35,'2017-03-01 12:17:31',9,1100,0),(36,'2017-03-01 11:54:54',10,900,0),(37,'2017-03-01 20:25:24',10,3300,0),(38,'2017-03-01 12:56:24',10,3500,0),(39,'2017-03-01 11:40:36',9,6500,1),(40,'2017-03-01 14:14:18',6,1900,0),(41,'2017-03-01 16:46:32',7,7700,0),(42,'2017-03-01 10:19:15',8,500,0),(43,'2017-03-01 18:56:57',10,3500,0),(44,'2017-03-01 15:47:51',8,4500,0),(45,'2017-03-01 11:50:45',9,4500,0),(46,'2017-03-01 18:26:52',6,900,0),(47,'2017-03-01 12:31:23',6,3500,0),(48,'2017-03-01 16:57:32',7,1100,0),(49,'2017-03-01 20:20:43',8,1700,0),(50,'2017-03-01 20:20:26',8,900,0),(51,'2017-03-01 17:47:29',10,7700,0),(52,'2017-03-01 20:34:32',8,7300,0),(53,'2017-03-01 12:15:28',9,4300,0),(54,'2017-03-01 15:18:10',10,6300,0),(55,'2017-03-01 14:31:31',8,4300,0),(56,'2017-03-01 17:22:22',7,5900,0),(57,'2017-03-01 10:25:22',8,4900,0),(58,'2017-03-01 17:30:40',7,4900,0),(59,'2017-03-01 18:27:37',9,4300,0),(60,'2017-03-01 18:40:40',9,1100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add main',7,'add_main'),(20,'Can change main',7,'change_main'),(21,'Can delete main',7,'delete_main'),(22,'Can add signup',8,'add_signup'),(23,'Can change signup',8,'change_signup'),(24,'Can delete signup',8,'delete_signup'),(25,'Can add toll_ lane',9,'add_toll_lane'),(26,'Can change toll_ lane',9,'change_toll_lane'),(27,'Can delete toll_ lane',9,'delete_toll_lane'),(28,'Can add anpr',10,'add_anpr'),(29,'Can change anpr',10,'change_anpr'),(30,'Can delete anpr',10,'delete_anpr'),(31,'Can add officer',11,'add_officer'),(32,'Can change officer',11,'change_officer'),(33,'Can delete officer',11,'delete_officer'),(34,'Can add log_ details',12,'add_log_details'),(35,'Can change log_ details',12,'change_log_details'),(36,'Can delete log_ details',12,'delete_log_details'),(37,'Can add sensor_ details',13,'add_sensor_details'),(38,'Can change sensor_ details',13,'change_sensor_details'),(39,'Can delete sensor_ details',13,'delete_sensor_details'),(40,'Can add rto',14,'add_rto'),(41,'Can change rto',14,'change_rto'),(42,'Can delete rto',14,'delete_rto'),(43,'Can add relay_ panel',15,'add_relay_panel'),(44,'Can change relay_ panel',15,'change_relay_panel'),(45,'Can delete relay_ panel',15,'delete_relay_panel'),(46,'Can add anpr_ camera',16,'add_anpr_camera'),(47,'Can change anpr_ camera',16,'change_anpr_camera'),(48,'Can delete anpr_ camera',16,'delete_anpr_camera'),(49,'Can add weigh_ bridge',17,'add_weigh_bridge'),(50,'Can change weigh_ bridge',17,'change_weigh_bridge'),(51,'Can delete weigh_ bridge',17,'delete_weigh_bridge'),(52,'Can add axle_ count',18,'add_axle_count'),(53,'Can change axle_ count',18,'change_axle_count'),(54,'Can delete axle_ count',18,'delete_axle_count'),(55,'Can add edit_ lane',19,'add_edit_lane'),(56,'Can change edit_ lane',19,'change_edit_lane'),(57,'Can delete edit_ lane',19,'delete_edit_lane'),(58,'Can add monitor',20,'add_monitor'),(59,'Can change monitor',20,'change_monitor'),(60,'Can delete monitor',20,'delete_monitor'),(61,'Can add ping',21,'add_ping'),(62,'Can change ping',21,'change_ping'),(63,'Can delete ping',21,'delete_ping');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(10,'Tollapp','anpr'),(16,'Tollapp','anpr_camera'),(18,'Tollapp','axle_count'),(19,'Tollapp','edit_lane'),(12,'Tollapp','log_details'),(7,'Tollapp','main'),(20,'Tollapp','monitor'),(11,'Tollapp','officer'),(21,'Tollapp','ping'),(15,'Tollapp','relay_panel'),(14,'Tollapp','rto'),(13,'Tollapp','sensor_details'),(8,'Tollapp','signup'),(9,'Tollapp','toll_lane'),(17,'Tollapp','weigh_bridge');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-17 08:02:27'),(2,'auth','0001_initial','2017-03-17 08:02:27'),(3,'admin','0001_initial','2017-03-17 08:02:27'),(4,'contenttypes','0002_remove_content_type_name','2017-03-17 08:02:28'),(5,'auth','0002_alter_permission_name_max_length','2017-03-17 08:02:28'),(6,'auth','0003_alter_user_email_max_length','2017-03-17 08:02:28'),(7,'auth','0004_alter_user_username_opts','2017-03-17 08:02:28'),(8,'auth','0005_alter_user_last_login_null','2017-03-17 08:02:28'),(9,'auth','0006_require_contenttypes_0002','2017-03-17 08:02:28'),(10,'sessions','0001_initial','2017-03-17 08:02:28'),(11,'Tollapp','0001_initial','2017-03-17 08:03:19'),(12,'Tollapp','0002_auto_20170318_0704','2017-03-18 07:04:46'),(13,'Tollapp','0003_auto_20170318_0709','2017-03-18 07:09:31'),(14,'Tollapp','0004_auto_20170318_0712','2017-03-18 07:12:43'),(15,'Tollapp','0005_auto_20170318_0740','2017-03-18 07:40:32'),(16,'Tollapp','0006_auto_20170318_0750','2017-03-18 07:50:10'),(17,'Tollapp','0007_auto_20170318_0752','2017-03-18 07:52:57'),(18,'Tollapp','0008_auto_20170318_0819','2017-03-18 08:19:23'),(19,'Tollapp','0002_auto_20170318_0822','2017-03-18 08:22:38'),(20,'Tollapp','0003_auto_20170318_1603','2017-03-18 10:33:36'),(21,'Tollapp','0004_auto_20170318_1700','2017-03-18 11:30:39'),(22,'Tollapp','0005_auto_20170320_1128','2017-03-20 05:58:12'),(23,'Tollapp','0006_auto_20170320_1231','2017-03-20 07:01:31'),(24,'Tollapp','0007_auto_20170320_1835','2017-03-20 13:05:08'),(25,'Tollapp','0008_auto_20170321_1741','2017-03-21 12:11:59'),(26,'Tollapp','0009_auto_20170321_1829','2017-03-21 12:59:30'),(27,'Tollapp','0010_auto_20170322_1054','2017-03-22 05:24:20'),(28,'Tollapp','0011_auto_20170322_1151','2017-03-22 06:21:19'),(29,'Tollapp','0008_auto_20170321_1651','2017-03-22 11:23:39'),(30,'Tollapp','0009_auto_20170321_1720','2017-03-22 11:23:39'),(31,'Tollapp','0010_auto_20170321_1745','2017-03-22 11:23:40'),(32,'Tollapp','0002_auto_20170322_1655','2017-03-22 11:25:21'),(33,'Tollapp','0003_auto_20170323_1500','2017-03-23 09:30:45'),(34,'Tollapp','0004_auto_20170323_1608','2017-03-23 10:38:31'),(35,'Tollapp','0005_auto_20170323_1613','2017-03-23 10:43:47'),(36,'Tollapp','0006_auto_20170323_1732','2017-03-23 12:02:16'),(37,'Tollapp','0007_auto_20170324_1207','2017-03-24 06:37:49'),(38,'Tollapp','0008_auto_20170324_1445','2017-03-24 09:15:51');
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
INSERT INTO `django_session` VALUES ('2pco23vjswj1y1ze5a926aqy3gvx66td','ZDZlZDhlMjU2MmY1ZGE3ZWM3NDFiYTAwMWRiOWJjZDFiNjI4NTEzOTp7IlVzZXJfTmFtZSI6InZpc2hudSJ9','2017-04-07 07:30:23'),('o2d6wul5z82wtxv3cw88z5vaqz45bhca','ZWI5ZGZmNTEzMDUyNjg5YmMzNDRkMTBlOTcxZDBkOGFkNmQ3YmIxNzp7InVzZXJuYW1lIjoidmVua2F0IiwiVXNlcl9OYW1lIjoidmVua2F0In0=','2017-04-07 12:01:45'),('wxdpo8j50acpuiis2lfnjas1ki5basid','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-04-04 06:19:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `name` varchar(20) DEFAULT NULL,
  `age` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('8',35.407),('8',46.012),('8',31.138),('3',8.614),('2',47.493),('3',47.049),('3',46.175),('1',22.833),('5',21.992),('4',28.749),('3',30.199),('3',2.761),('9',2.316),('5',25.991),('5',15.476),('6',12.563),('2',11.161),('5',2.36),('6',22.698),('9',32.136);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-24 17:37:15
