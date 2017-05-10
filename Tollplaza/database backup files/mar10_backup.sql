-- MySQL dump 10.13  Distrib 5.5.50, for Win32 (x86)
--
-- Host: localhost    Database: naanaltech
-- ------------------------------------------------------
-- Server version	5.5.50

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
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(25,'Can add officer',9,'add_officer'),(26,'Can change officer',9,'change_officer'),(27,'Can delete officer',9,'delete_officer'),(28,'Can add log_details',10,'add_log_details'),(29,'Can change log_details',10,'change_log_details'),(30,'Can delete log_details',10,'delete_log_details'),(31,'Can add temp_details',11,'add_temp_details'),(32,'Can change temp_details',11,'change_temp_details'),(33,'Can delete temp_details',11,'delete_temp_details'),(37,'Can add rto',13,'add_rto'),(38,'Can change rto',13,'change_rto'),(39,'Can delete rto',13,'delete_rto'),(40,'Can add toll_lane',14,'add_toll_lane'),(41,'Can change toll_lane',14,'change_toll_lane'),(42,'Can delete toll_lane',14,'delete_toll_lane'),(43,'Can add anpr',15,'add_anpr'),(44,'Can change anpr',15,'change_anpr'),(45,'Can delete anpr',15,'delete_anpr'),(46,'Can add main',16,'add_main'),(47,'Can change main',16,'change_main'),(48,'Can delete main',16,'delete_main'),(49,'Can add relay_panel',17,'add_relay_panel'),(50,'Can change relay_panel',17,'change_relay_panel'),(51,'Can delete relay_panel',17,'delete_relay_panel'),(52,'Can add reports',18,'add_reports'),(53,'Can change reports',18,'change_reports'),(54,'Can delete reports',18,'delete_reports'),(55,'Can add repo_officer',19,'add_repo_officer'),(56,'Can change repo_officer',19,'change_repo_officer'),(57,'Can delete repo_officer',19,'delete_repo_officer'),(58,'Can add anpr_camera',20,'add_anpr_camera'),(59,'Can change anpr_camera',20,'change_anpr_camera'),(60,'Can delete anpr_camera',20,'delete_anpr_camera'),(64,'Can add weigh_bridge',22,'add_weigh_bridge'),(65,'Can change weigh_bridge',22,'change_weigh_bridge'),(66,'Can delete weigh_bridge',22,'delete_weigh_bridge'),(70,'Can add signup',24,'add_signup'),(71,'Can change signup',24,'change_signup'),(72,'Can delete signup',24,'delete_signup'),(73,'Can add axle_count',25,'add_axle_count'),(74,'Can change axle_count',25,'change_axle_count'),(75,'Can delete axle_count',25,'delete_axle_count');
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
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
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
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'reports','reports'),(19,'reports','repo_officer'),(6,'sessions','session'),(15,'Tollapp','anpr'),(20,'Tollapp','anpr_camera'),(25,'Tollapp','axle_count'),(10,'Tollapp','log_details'),(16,'Tollapp','main'),(9,'Tollapp','officer'),(17,'Tollapp','relay_panel'),(13,'Tollapp','rto'),(24,'Tollapp','signup'),(11,'Tollapp','temp_details'),(14,'Tollapp','toll_lane'),(22,'Tollapp','weigh_bridge');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Tollapp','0001_initial','2016-12-30 10:54:18'),(2,'contenttypes','0001_initial','2016-12-30 10:54:18'),(3,'auth','0001_initial','2016-12-30 10:54:20'),(4,'admin','0001_initial','2016-12-30 10:54:20'),(5,'contenttypes','0002_remove_content_type_name','2016-12-30 10:54:21'),(6,'auth','0002_alter_permission_name_max_length','2016-12-30 10:54:21'),(7,'auth','0003_alter_user_email_max_length','2016-12-30 10:54:22'),(8,'auth','0004_alter_user_username_opts','2016-12-30 10:54:22'),(9,'auth','0005_alter_user_last_login_null','2016-12-30 10:54:22'),(10,'auth','0006_require_contenttypes_0002','2016-12-30 10:54:22'),(11,'sessions','0001_initial','2016-12-30 10:54:22'),(12,'Tollapp','0002_auto_20161230_1624','2016-12-30 10:54:56'),(13,'Tollapp','0003_auto_20161231_1649','2016-12-31 11:19:27'),(14,'Tollapp','0004_auto_20170103_1233','2017-01-03 07:04:06'),(15,'Tollapp','0005_auto_20170103_1241','2017-01-03 07:11:13'),(16,'Tollapp','0006_auto_20170103_1438','2017-01-03 11:42:02'),(17,'Tollapp','0007_auto_20170103_1439','2017-01-03 11:42:02'),(18,'Tollapp','0008_auto_20170103_1635','2017-01-03 11:42:02'),(19,'Tollapp','0009_auto_20170103_1636','2017-01-03 11:42:02'),(20,'Tollapp','0010_auto_20170103_1637','2017-01-03 11:42:02'),(21,'Tollapp','0011_auto_20170103_1639','2017-01-03 11:42:02'),(22,'Tollapp','0012_auto_20170103_1639','2017-01-03 11:42:02'),(23,'Tollapp','0013_auto_20170103_1643','2017-01-03 11:42:02'),(24,'Tollapp','0014_auto_20170103_1646','2017-01-03 11:42:02'),(25,'Tollapp','0015_auto_20170103_1648','2017-01-03 11:42:02'),(26,'Tollapp','0016_auto_20170103_1648','2017-01-03 11:42:02'),(27,'Tollapp','0017_auto_20170103_1651','2017-01-03 11:42:02'),(28,'Tollapp','0018_auto_20170103_1651','2017-01-03 11:42:02'),(29,'Tollapp','0019_auto_20170103_1704','2017-01-03 11:42:02'),(30,'Tollapp','0020_auto_20170103_1704','2017-01-03 11:42:02'),(31,'Tollapp','0021_auto_20170103_1707','2017-01-03 11:42:02'),(32,'Tollapp','0022_auto_20170103_1707','2017-01-03 11:42:02'),(33,'Tollapp','0023_auto_20170103_1707','2017-01-03 11:42:03'),(34,'Tollapp','0024_auto_20170103_1710','2017-01-03 11:42:03'),(35,'Tollapp','0025_auto_20170103_1710','2017-01-03 11:42:03'),(36,'Tollapp','0026_auto_20170103_1711','2017-01-03 11:42:03'),(37,'Tollapp','0027_auto_20170103_1711','2017-01-03 11:42:03'),(38,'Tollapp','0028_auto_20170103_1712','2017-01-03 11:42:34'),(39,'Tollapp','0029_auto_20170103_1719','2017-01-03 11:49:51'),(40,'Tollapp','0030_auto_20170103_1720','2017-01-03 11:50:12'),(41,'Tollapp','0031_auto_20170105_1038','2017-01-05 05:08:29'),(42,'Tollapp','0032_auto_20170105_1101','2017-01-05 05:32:23'),(43,'Tollapp','0033_auto_20170105_1102','2017-01-05 05:32:42'),(44,'Tollapp','0034_auto_20170105_1312','2017-01-05 07:42:45'),(45,'Tollapp','0035_auto_20170106_1812','2017-01-06 12:42:57'),(46,'Tollapp','0036_auto_20170106_1814','2017-01-06 12:44:52'),(47,'Tollapp','0037_auto_20170107_1030','2017-01-07 05:00:45'),(48,'Tollapp','0038_auto_20170107_1030','2017-01-07 05:01:03'),(49,'Tollapp','0039_auto_20170107_1844','2017-01-07 13:15:01'),(50,'Tollapp','0040_auto_20170107_1845','2017-01-07 13:15:20'),(51,'Tollapp','0041_auto_20170107_1846','2017-01-07 13:16:45'),(52,'Tollapp','0042_auto_20170107_1846','2017-01-07 13:16:46'),(53,'Tollapp','0043_auto_20170107_1847','2017-01-07 13:26:30'),(54,'Tollapp','0044_auto_20170107_1855','2017-01-07 13:26:30'),(55,'Tollapp','0045_auto_20170107_1856','2017-01-07 13:27:25'),(56,'Tollapp','0046_auto_20170107_1858','2017-01-09 05:13:37'),(57,'Tollapp','0047_auto_20170109_1040','2017-01-09 05:13:37'),(58,'Tollapp','0048_auto_20170109_1043','2017-01-09 05:14:04'),(59,'Tollapp','0049_auto_20170109_1044','2017-01-09 05:14:55'),(60,'Tollapp','0050_auto_20170109_1046','2017-01-09 05:17:03'),(61,'Tollapp','0051_auto_20170109_1047','2017-01-09 05:18:14'),(62,'Tollapp','0052_auto_20170109_1047','2017-01-09 05:18:15'),(63,'Tollapp','0053_auto_20170109_1111','2017-01-09 05:41:54'),(64,'Tollapp','0054_auto_20170109_1112','2017-01-09 05:43:07'),(65,'Tollapp','0055_auto_20170109_1112','2017-01-09 05:54:41'),(66,'Tollapp','0056_auto_20170109_1124','2017-01-09 05:54:41'),(67,'Tollapp','0057_auto_20170109_1124','2017-01-09 05:54:59'),(68,'Tollapp','0058_auto_20170109_1244','2017-01-09 07:16:32'),(69,'Tollapp','0059_auto_20170109_1246','2017-01-09 07:16:32'),(70,'Tollapp','0060_auto_20170110_1031','2017-01-10 05:02:12'),(71,'Tollapp','0061_auto_20170110_1032','2017-01-10 05:02:13'),(72,'Tollapp','0062_auto_20170110_1211','2017-01-10 06:41:38'),(73,'Tollapp','0063_auto_20170110_1217','2017-01-10 06:47:43'),(74,'Tollapp','0064_auto_20170110_1459','2017-01-10 09:30:07'),(75,'Tollapp','0065_auto_20170110_1507','2017-01-10 09:39:52'),(76,'Tollapp','0066_auto_20170110_1508','2017-01-10 09:39:52'),(77,'Tollapp','0067_auto_20170110_1509','2017-01-10 09:39:52'),(78,'Tollapp','0068_auto_20170111_1050','2017-01-11 05:21:02'),(79,'Tollapp','0069_auto_20170111_1129','2017-01-11 05:59:59'),(80,'Tollapp','0070_auto_20170111_1206','2017-01-11 06:36:17'),(81,'Tollapp','0071_auto_20170111_1253','2017-01-11 07:23:50'),(82,'Tollapp','0072_auto_20170111_1814','2017-01-11 12:45:29'),(83,'Tollapp','0073_auto_20170111_1815','2017-01-11 12:45:30'),(84,'Tollapp','0074_auto_20170117_1126','2017-01-17 05:57:11'),(85,'Tollapp','0075_auto_20170117_1133','2017-01-17 06:04:34'),(86,'Tollapp','0076_auto_20170117_1134','2017-01-17 06:04:35'),(87,'Tollapp','0077_auto_20170117_1741','2017-01-17 12:11:32'),(88,'Tollapp','0078_auto_20170118_1054','2017-01-18 05:24:47'),(89,'Tollapp','0079_auto_20170119_0529','2017-01-19 05:29:27'),(90,'Tollapp','0080_auto_20170119_0529','2017-01-19 05:29:29'),(91,'Tollapp','0081_auto_20170119_0530','2017-01-19 05:30:41'),(92,'Tollapp','0082_auto_20170119_0536','2017-01-19 05:37:05'),(93,'Tollapp','0083_auto_20170119_0543','2017-01-19 06:03:23'),(94,'Tollapp','0084_auto_20170119_0544','2017-01-19 06:03:24'),(95,'Tollapp','0085_auto_20170119_0545','2017-01-19 06:03:25'),(96,'Tollapp','0086_auto_20170119_0545','2017-01-19 06:03:25'),(97,'Tollapp','0087_auto_20170119_0554','2017-01-19 06:03:26'),(98,'Tollapp','0088_auto_20170119_0600','2017-01-19 06:03:27'),(99,'Tollapp','0089_auto_20170119_0600','2017-01-19 06:03:28'),(100,'Tollapp','0079_auto_20170119_1513','2017-01-19 09:43:10'),(101,'Tollapp','0079_auto_20170119_1622','2017-01-19 10:52:53'),(102,'Tollapp','0080_auto_20170119_1629','2017-01-19 10:59:30'),(103,'Tollapp','0090_auto_20170119_1636','2017-01-19 11:06:31'),(104,'Tollapp','0091_auto_20170120_1133','2017-01-20 06:03:57'),(105,'Tollapp','0090_auto_20170120_1615','2017-01-20 10:47:46'),(106,'Tollapp','0091_auto_20170123_1248','2017-01-23 07:18:33'),(107,'Tollapp','0092_auto_20170123_1452','2017-01-23 09:22:27'),(108,'Tollapp','0090_auto_20170124_0555','2017-01-24 05:58:45'),(109,'Tollapp','0091_auto_20170125_0446','2017-01-25 04:46:16'),(110,'Tollapp','0092_auto_20170125_0450','2017-01-25 04:50:44'),(111,'Tollapp','0093_auto_20170125_0454','2017-01-25 04:54:07'),(112,'Tollapp','0094_auto_20170125_0705','2017-01-25 07:05:36'),(113,'Tollapp','0094_auto_20170125_0729','2017-01-25 07:29:40'),(114,'Tollapp','0095_auto_20170125_0801','2017-01-25 08:01:59'),(115,'Tollapp','0095_auto_20170125_0933','2017-01-25 09:33:51'),(116,'Tollapp','0096_auto_20170125_1011','2017-01-25 10:11:56'),(117,'Tollapp','0097_auto_20170125_1221','2017-01-25 12:21:10'),(118,'Tollapp','0098_auto_20170127_1255','2017-01-27 12:55:26'),(119,'Tollapp','0090_auto_20170124_1045','2017-01-30 07:24:13'),(120,'Tollapp','0091_auto_20170124_1517','2017-01-30 07:24:15'),(121,'Tollapp','0099_auto_20170201_1418','2017-02-01 08:49:08'),(122,'Tollapp','0100_auto_20170206_1156','2017-02-06 06:26:35'),(123,'Tollapp','0101_auto_20170206_1755','2017-02-06 12:25:44'),(124,'reports','0001_initial','2017-02-13 08:05:52'),(125,'reports','0002_auto_20170213_1327','2017-02-13 08:05:52'),(126,'reports','0003_auto_20170213_1336','2017-02-13 09:35:51'),(127,'Tollapp','0102_auto_20170213_1504','2017-02-13 09:47:04'),(128,'Tollapp','0103_auto_20170213_1517','2017-02-13 09:48:07'),(129,'Tollapp','0104_auto_20170213_1518','2017-02-14 07:46:19'),(130,'Tollapp','0105_auto_20170214_1319','2017-02-14 07:50:38'),(131,'Tollapp','0106_auto_20170214_1701','2017-02-14 11:31:38'),(132,'Tollapp','0107_auto_20170215_1145','2017-02-15 06:15:32'),(133,'Tollapp','0108_auto_20170216_1210','2017-02-21 05:49:00'),(134,'Tollapp','0109_auto_20170216_1220','2017-02-21 05:49:01'),(135,'Tollapp','0110_auto_20170216_1514','2017-02-21 05:49:17'),(136,'Tollapp','0111_auto_20170216_1516','2017-02-21 05:49:17'),(137,'Tollapp','0112_auto_20170216_1518','2017-02-21 05:49:17'),(138,'Tollapp','0113_auto_20170216_1520','2017-02-21 05:49:17'),(139,'Tollapp','0114_auto_20170216_1521','2017-02-21 05:49:17'),(140,'Tollapp','0115_auto_20170216_1555','2017-02-21 05:49:17'),(141,'Tollapp','0116_auto_20170216_1621','2017-02-21 05:49:17'),(142,'Tollapp','0117_auto_20170216_1621','2017-02-21 05:49:18'),(143,'Tollapp','0118_auto_20170216_1622','2017-02-21 05:49:18'),(144,'Tollapp','0119_auto_20170221_1118','2017-02-21 05:49:18'),(145,'Tollapp','0120_auto_20170221_1126','2017-02-21 05:56:19'),(146,'Tollapp','0121_auto_20170221_1128','2017-02-21 05:59:00'),(147,'Tollapp','0122_auto_20170221_1133','2017-02-21 06:09:41'),(148,'Tollapp','0123_auto_20170221_1137','2017-02-21 06:09:41'),(149,'Tollapp','0124_auto_20170221_1138','2017-02-21 06:09:41'),(150,'Tollapp','0125_auto_20170221_1139','2017-02-21 06:13:34'),(151,'Tollapp','0126_auto_20170221_1143','2017-02-21 06:13:34'),(152,'Tollapp','0127_auto_20170221_1143','2017-02-21 06:14:03'),(153,'Tollapp','0128_auto_20170221_1144','2017-02-21 06:14:32'),(154,'Tollapp','0129_auto_20170221_1144','2017-02-21 06:14:53'),(155,'Tollapp','0130_auto_20170221_1437','2017-02-21 09:07:11'),(156,'Tollapp','0131_auto_20170221_1438','2017-02-21 09:08:20'),(157,'Tollapp','0132_auto_20170228_1146','2017-02-28 06:16:16'),(158,'Tollapp','0133_auto_20170228_1700','2017-02-28 11:30:59'),(159,'Tollapp','0134_auto_20170228_1724','2017-02-28 11:54:32'),(160,'Tollapp','0135_auto_20170228_1727','2017-02-28 11:57:43'),(161,'Tollapp','0136_auto_20170228_1727','2017-02-28 11:57:45'),(162,'Tollapp','0137_auto_20170228_1731','2017-02-28 12:01:22'),(163,'Tollapp','0138_auto_20170301_1433','2017-03-01 09:03:17'),(164,'Tollapp','0139_auto_20170302_1156','2017-03-02 06:26:14'),(165,'Tollapp','0140_auto_20170306_1558','2017-03-06 10:28:31'),(166,'Tollapp','0141_auto_20170308_1634','2017-03-08 11:05:19'),(167,'Tollapp','0142_auto_20170308_1635','2017-03-08 11:05:20');
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
INSERT INTO `django_session` VALUES ('36bhkeqofk6zphgk7dgy7akhkzpfhjov','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-03-24 05:35:30'),('dq54e2y5jvmet2y6hxzyestquy11136o','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-03-24 05:31:33'),('fzydup4w4catd8iu3lawkbyyenmzx5oj','NzY4MTg4N2E5ZjE2ZDM2YzNhZDkxODM4NzM4ZDU3ZGZmMTk1M2FmODp7InVzZXJuYW1lIjoicHJhdmVlbiJ9','2017-03-24 10:06:03'),('kmz2158b9f3415q7s7jzlyoo5583mv5t','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-03-24 05:30:41'),('m9meira22dauuf2sb4raiwpr84u5dtzn','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-03-24 05:29:59'),('qwmkhksu3f7b9sd3ruf74e75qy9mdlqb','NDY2ZDU1MDc0ZTE4NGNhNTc2MGM5NTg5NmY3ZTU0OTM2MzQ1NDQ5NTp7fQ==','2017-03-24 08:47:26');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relaypanel`
--

DROP TABLE IF EXISTS `relaypanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relaypanel` (
  `relay_no` int(11) NOT NULL,
  `lane1` tinyint(1) NOT NULL DEFAULT '1',
  `lane2` tinyint(1) NOT NULL DEFAULT '1',
  `lane3` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relaypanel`
--

LOCK TABLES `relaypanel` WRITE;
/*!40000 ALTER TABLE `relaypanel` DISABLE KEYS */;
INSERT INTO `relaypanel` VALUES (1,1,1,1),(2,1,1,1),(3,1,1,1),(4,1,1,1),(5,1,1,1),(6,1,1,1),(7,1,1,1),(8,1,1,1),(9,1,1,1),(10,1,1,1),(11,1,1,1),(12,1,1,1);
/*!40000 ALTER TABLE `relaypanel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_anpr`
--

DROP TABLE IF EXISTS `tollapp_anpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_anpr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_Timestamp` datetime NOT NULL,
  `vehicle_number` varchar(200) NOT NULL,
  `lane_Number` int(11) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `ip_address` char(39) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_anpr`
--

LOCK TABLES `tollapp_anpr` WRITE;
/*!40000 ALTER TABLE `tollapp_anpr` DISABLE KEYS */;
INSERT INTO `tollapp_anpr` VALUES (1,'2017-01-10 05:09:09','TN38BL1617',3,0,'static/0/image1.jpg','192.168.30.9'),(2,'2017-01-10 05:11:04','KA05MD4943',6,1,'static/0/image2.jpg','192.168.30.9'),(3,'2017-01-10 05:13:10','DL1YA3550',1,0,'static/0/image4.jpg','192.168.30.9'),(4,'2017-01-10 05:14:10','TN39AQ8227',4,0,'static/0/image5.jpg','192.168.30.9'),(5,'2017-01-27 09:13:16','MH12DE1433',5,0,'static/0/image6.jpg','192.168.30.9'),(6,'2017-01-27 09:14:16','MH01AE8017',6,1,'static/0/image7.jpg','192.168.30.9'),(7,'2017-01-27 09:15:01','KA05MG1909',7,0,'static/0/image10.jpg','192.168.30.9'),(12,'2017-01-29 05:45:15','TN60R5559',8,0,'static/0/image11.jpg','192.168.30.9'),(13,'2017-01-29 05:58:44','KA09EU9294',8,0,'static/0/image12.jpg','192.168.30.9'),(14,'2017-02-27 09:50:02','TN30AW1890',8,0,'ND','192.168.30.9'),(15,'2017-02-27 09:50:22','CK30AW1890',8,0,'ND','192.168.30.9'),(16,'2017-02-27 09:50:34','QW30AE1900',8,0,'ND','192.168.30.9'),(17,'2017-02-27 09:50:37','WQ30AE1900',2,0,'ND','192.168.30.9'),(18,'2017-02-27 09:51:23','QS30AE1900',3,0,'ND','192.168.30.9'),(19,'2017-02-27 09:51:28','SR30AE1900',8,0,'ND','192.168.30.9'),(20,'2017-02-27 09:51:33','ML30AW1878',5,0,'ND','192.168.30.9'),(21,'2017-02-27 09:51:35','AZ30AW1878',6,0,'ND','192.168.30.9'),(22,'2017-02-27 09:51:38','RO30AW1878',6,0,'ND','192.168.30.9'),(23,'2017-02-27 09:51:40','PQ30AW1878',3,0,'ND','192.168.30.9'),(24,'2017-02-27 09:51:42','MZ30AE1900',6,0,'ND','192.168.30.9'),(25,'2017-02-27 09:51:44','LO30AE1900',9,0,'ND','192.168.30.9'),(26,'2017-02-27 09:51:46','AO30AE1900',9,0,'ND','192.168.30.9'),(27,'2017-02-27 09:51:49','OQ30AE1900',9,0,'ND','192.168.30.9');
/*!40000 ALTER TABLE `tollapp_anpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_anpr_camera`
--

DROP TABLE IF EXISTS `tollapp_anpr_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_anpr_camera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `anpr_address` char(39) DEFAULT NULL,
  `lane_no` int(11) NOT NULL,
  `normal_address` char(39) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_anpr_camera`
--

LOCK TABLES `tollapp_anpr_camera` WRITE;
/*!40000 ALTER TABLE `tollapp_anpr_camera` DISABLE KEYS */;
INSERT INTO `tollapp_anpr_camera` VALUES (1,'2017-02-15 06:17:27','192.168.30.98',6,'192.168.30.15','ND'),(2,'2017-02-15 07:30:56','192.168.30.29',2,'192.168.30.59','ND'),(3,'2017-02-15 07:31:06','192.168.30.46',9,'192.168.30.36','ND'),(4,'2017-02-15 07:31:22','192.168.30.59',-1,'192.168.30.96','ND'),(5,'2017-02-15 07:31:30','192.168.1.19',-1,'192.168.30.76','ND'),(6,'2017-02-22 11:42:28','192.168.30.89',1,'192.168.30.89','subbireddy'),(7,'2017-03-10 09:47:07','192.168.30.89',4,'192.168.30.89','narashim');
/*!40000 ALTER TABLE `tollapp_anpr_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_axle_count`
--

DROP TABLE IF EXISTS `tollapp_axle_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_axle_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(100) NOT NULL,
  `lane_Number` int(11) NOT NULL,
  `axle` int(11) NOT NULL,
  `Flag` tinyint(1),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_axle_count`
--

LOCK TABLES `tollapp_axle_count` WRITE;
/*!40000 ALTER TABLE `tollapp_axle_count` DISABLE KEYS */;
INSERT INTO `tollapp_axle_count` VALUES (1,'2017-03-08 15:50:49.066000',6,8,1),(2,'2017-03-08 15:51:09.711000',6,6,1),(3,'2017-03-08 15:51:20.505000',6,5,0),(4,'2017-03-08 15:51:29.986000',6,4,0);
/*!40000 ALTER TABLE `tollapp_axle_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_log_details`
--

DROP TABLE IF EXISTS `tollapp_log_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_log_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Transaction_id` varchar(200) NOT NULL,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Officer_name` varchar(100) NOT NULL,
  `Permit_validity` date NOT NULL,
  `Penaulty_Paid_amount` int(11) NOT NULL,
  `vehicletype` varchar(200) NOT NULL,
  `weight` int(11) NOT NULL,
  `Lane_number` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `vehicle_class` varchar(100) NOT NULL,
  `vehicle_status` varchar(100) NOT NULL,
  `vehicle_axle` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_log_details`
--

LOCK TABLES `tollapp_log_details` WRITE;
/*!40000 ALTER TABLE `tollapp_log_details` DISABLE KEYS */;
INSERT INTO `tollapp_log_details` VALUES (1,'','','2017-02-21 06:17:30','','2017-02-21',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(2,'','','2017-02-21 06:21:24','','2017-02-21',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(3,'','','2017-02-21 07:06:05','','2017-02-21',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(4,'1373','KA05MD4943','2017-02-21 07:06:46','','2017-08-19',-1,'ND',200,6,'TADA','ND','MCHV','Not Ok',6),(5,'','','2017-02-21 08:44:36','','2017-02-21',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(6,'','','2017-02-23 05:29:57','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(7,'','','2017-02-23 05:31:07','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(8,'1377','DL1YA3550','2017-02-23 05:32:24','','2017-08-19',-1,'ND',100,8,'TADA','ND','HRHV','Not Ok',4),(9,'','','2017-02-23 05:33:42','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(10,'1379','TN39AQ8227','2017-02-23 05:51:59','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','ND',6),(11,'1380','TN39AQ8227','2017-02-23 05:53:21','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','ND',6),(12,'1381','TN39AQ8227','2017-02-23 05:55:51','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','Not Ok',6),(13,'','','2017-02-23 06:25:40','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(14,'','','2017-02-23 06:28:33','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(15,'1384','KA05MG1909','2017-02-23 07:17:31','','2018-04-18',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',7),(16,'1385','TN60R5559','2017-02-23 07:18:22','','2017-01-27',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',5),(17,'','','2017-02-23 07:48:53','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(18,'1387','KA09EU9294','2017-02-23 09:28:05','','2016-09-16',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(19,'1388','TN38BL1617','2017-02-23 09:29:17','','2016-01-19',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(20,'','','2017-02-23 09:29:22','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(21,'','','2017-02-23 09:29:49','','2017-02-23',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(22,'','','2017-02-24 07:24:30','','2017-02-24',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(23,'1392','TN39AQ8227','2017-02-24 12:14:58','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','Not Ok',6),(24,'1393','MH12DE1433','2017-02-24 12:15:31','','2019-04-18',-1,'ND',200,8,'TADA','ND','MHCV','Not Ok',7),(25,'1394','MH01AE8017','2017-02-26 06:43:03','','2018-04-18',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',7),(26,'1395','KA05MG1909','2017-02-26 06:43:44','','2018-04-18',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',7),(27,'','','2017-02-26 08:04:11','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(28,'1397','TN60R5559','2017-02-26 08:05:31','','2017-01-27',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',5),(29,'1398','KA09EU9294','2017-02-26 09:41:44','','2016-09-16',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(30,'1399','TN38BL1617','2017-02-26 09:44:37','','2016-01-19',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(31,'1400','KA05MD4943','2017-02-26 09:50:55','','2017-08-19',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(32,'1401','DL1YA3550','2017-02-26 10:25:01','','2017-08-19',-1,'ND',100,8,'TADA','ND','HRHV','Not Ok',4),(33,'','','2017-02-26 10:29:12','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(34,'1403','TN39AQ8227','2017-02-26 10:29:33','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','Not Ok',6),(35,'1404','MH12DE1433','2017-02-26 10:32:44','','2019-04-18',-1,'ND',200,8,'TADA','ND','MHCV','Not Ok',7),(36,'','','2017-02-26 10:32:58','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(37,'','','2017-02-26 10:42:44','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(38,'','','2017-02-26 10:43:07','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(39,'','','2017-02-26 10:46:48','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(40,'','','2017-02-26 10:47:29','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(41,'','','2017-02-26 11:30:03','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(42,'','','2017-02-26 11:38:59','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(43,'','','2017-02-26 11:40:16','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(44,'','','2017-02-26 11:41:50','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(45,'','','2017-02-26 11:43:15','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(46,'','','2017-02-26 11:44:26','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(47,'','','2017-02-26 12:01:59','','2017-02-26',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(48,'','','2017-02-27 04:43:24','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(49,'','','2017-02-27 04:48:12','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(50,'1419','MH01AE8017','2017-02-27 04:51:10','','2018-04-18',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',7),(51,'','','2017-02-27 05:16:28','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(52,'1421','KA05MG1909','2017-02-27 05:26:16','','2018-04-18',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',7),(53,'1422','TN60R5559','2017-02-27 05:37:55','','2017-01-27',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',5),(54,'1423','KA09EU9294','2017-02-27 05:44:14','','2016-09-16',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(55,'','','2017-02-27 06:19:36','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(56,'1425','TN38BL1617','2017-02-27 06:20:19','','2016-01-19',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(57,'','','2017-02-27 06:56:15','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(58,'','','2017-02-27 07:11:49','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(59,'','','2017-02-27 07:29:16','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(60,'','','2017-02-27 07:41:37','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(61,'','','2017-02-27 07:51:49','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(62,'','','2017-02-27 08:20:13','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(63,'','','2017-02-27 08:26:58','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(64,'','','2017-02-27 08:50:43','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(65,'1434','DL1YA3550','2017-02-27 08:53:19','','2017-08-19',-1,'ND',100,8,'TADA','ND','HRHV','Not Ok',4),(66,'','','2017-02-27 09:06:45','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(67,'1436','TN39AQ8227','2017-02-27 09:08:35','','2016-01-19',-1,'ND',300,8,'TADA','ND','MCHV','Not Ok',6),(68,'','','2017-02-27 09:08:54','','2017-02-27',-1,'ND',-1,9,'TADA','ND','ND','ND',-1),(69,'','','2017-02-27 09:10:33','','2017-02-27',-1,'ND',-1,9,'TADA','ND','ND','ND',-1),(70,'','','2017-02-27 10:06:03','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(71,'','','2017-02-27 10:11:14','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(72,'','','2017-02-27 10:14:14','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(73,'','','2017-02-27 10:15:54','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(74,'','','2017-02-27 10:19:35','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(75,'','','2017-02-27 10:26:19','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(76,'1445','TN60R5559','2017-02-27 10:27:36','','2017-01-27',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',5),(77,'','','2017-02-27 10:45:38','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(78,'1447','KA09EU9294','2017-02-27 10:53:24','','2016-09-16',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(79,'','','2017-02-27 11:09:57','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(80,'','','2017-02-27 11:10:16','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(81,'1450','TN60R5559','2017-02-27 11:38:40','','2017-01-27',-1,'ND',200,8,'TADA','ND','HCHV','Not Ok',5),(82,'1451','KA09EU9294','2017-02-27 11:41:41','','2016-09-16',-1,'ND',200,8,'TADA','ND','MCHV','Not Ok',6),(83,'','','2017-02-27 13:09:30','','2017-02-27',-1,'ND',-1,8,'TADA','ND','ND','ND',-1),(84,'','','2017-02-28 05:44:06','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(85,'','','2017-02-28 05:46:36','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(86,'','','2017-02-28 05:47:42','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(87,'','','2017-02-28 06:02:14','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(88,'','','2017-02-28 06:21:24','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(89,'','','2017-02-28 06:21:43','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(90,'1459','MH01AE8017','2017-02-28 06:22:02','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(91,'1460','AZ30AW1878','2017-02-28 06:23:38','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(92,'1461','MH01AE8017','2017-02-28 07:06:56','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(93,'','','2017-02-28 07:08:14','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(94,'','','2017-02-28 07:44:09','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(95,'','','2017-02-28 07:46:54','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(96,'','','2017-02-28 07:47:54','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(97,'','','2017-02-28 08:17:18','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(98,'1467','AZ30AW1878','2017-02-28 09:29:40','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(99,'1468','MH01AE8017','2017-02-28 09:31:19','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(100,'1469','AZ30AW1878','2017-02-28 09:31:26','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(101,'1470','MH01AE8017','2017-02-28 09:39:53','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(102,'1471','AZ30AW1878','2017-02-28 09:41:45','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(103,'1472','MH01AE8017','2017-02-28 12:55:21','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(104,'1473','AZ30AW1878','2017-02-28 12:55:56','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(105,'1474','MH01AE8017','2017-02-28 12:57:47','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(106,'1475','MH01AE8017','2017-02-28 13:01:34','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(107,'1476','AZ30AW1878','2017-02-28 13:02:13','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(108,'','','2017-02-28 13:06:56','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(109,'','','2017-02-28 13:12:45','','2017-02-28',-1,'ND',-1,6,'TADA','ND','ND','ND',-1),(110,'1479','MH01AE8017','2017-03-01 05:41:25','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(111,'1480','MH01AE8017','2017-03-01 06:19:29','','2018-04-18',-1,'ND',200,6,'TADA','ND','HCHV','Not Ok',7),(112,'1481','AZ30AW1878','2017-03-01 07:44:29','','2016-08-09',-1,'ND',200,6,'TADA','ND','MHCV','Not Ok',8),(113,'1426','KA05MD4943','2017-03-01 09:05:51','ram','2017-08-19',134,'ND',-1,-1,'ND','overweightttt.','ND','Denied',-1),(114,'1605','AZ30AW1878','2017-03-06 06:14:11','ram','2017-08-09',3000,'ND',-1,-1,'ND','overweighteddd vehicle are to be come....','ND','Denied',-1),(115,'1605','AZ30AW1878','2017-03-06 06:20:29','ram','2017-08-09',4000,'ND',-1,-1,'ND','overweeightttt.','ND','Denied',-1),(116,'1605','AZ30AW1878','2017-03-06 06:22:08','ram','2018-08-09',5901,'ND',-1,-1,'ND','over loadeddddd..','ND','Denied',-1);
/*!40000 ALTER TABLE `tollapp_log_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_main`
--

DROP TABLE IF EXISTS `tollapp_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_main` (
  `Transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclenum` varchar(200) NOT NULL,
  `die_height` int(11) NOT NULL,
  `die_length` int(11) NOT NULL,
  `die_breadth` int(11) NOT NULL,
  `pollution` date NOT NULL,
  `fitness` date NOT NULL,
  `permit` date NOT NULL,
  `tollboothusername` varchar(200) NOT NULL,
  `officername` varchar(200) NOT NULL,
  `AXLE` int(11) NOT NULL,
  `vehicletype` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `lanenumber` int(11) NOT NULL,
  `direction` varchar(200) NOT NULL,
  `weight` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `Registration_date` date NOT NULL,
  `chassisno` varchar(200) NOT NULL,
  `enginecubic_capacity` varchar(200) NOT NULL,
  `engineno` varchar(200) NOT NULL,
  `vehiclefueltype` varchar(200) NOT NULL,
  `authorization` date NOT NULL,
  `insuranceval` date NOT NULL,
  `nationalpermit` date NOT NULL,
  `taxval` date NOT NULL,
  `fineamount` int(11) NOT NULL,
  `ladden` int(11) NOT NULL,
  `unladden` int(11) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `sen_b` int(11) NOT NULL,
  `sen_h` int(11) NOT NULL,
  `sen_l` int(11) NOT NULL,
  `vehicle_class` varchar(100) NOT NULL,
  `vehicle_status` varchar(100) NOT NULL,
  `Transa` varchar(100) NOT NULL,
  PRIMARY KEY (`Transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1658 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_main`
--

LOCK TABLES `tollapp_main` WRITE;
/*!40000 ALTER TABLE `tollapp_main` DISABLE KEYS */;
INSERT INTO `tollapp_main` VALUES (1555,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 06:35:24','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1556,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 06:42:34','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1557,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 06:54:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1558,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 06:57:30','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1559,'LO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-03 07:07:07','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','ND'),(1560,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 07:07:21','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1561,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 07:50:55','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1562,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 08:06:36','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1563,'LO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-03 08:20:42','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','ND'),(1564,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 08:34:43','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1565,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 08:35:19','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1566,'LO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-03 09:20:49','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','ND'),(1567,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 09:30:57','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1568,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 09:38:41','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1569,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 09:40:50','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1570,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 09:41:42','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1571,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 09:46:00','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1572,'AO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-03 09:47:59','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','ND','ND'),(1573,'OQ30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-03 09:49:08','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','ND','ND'),(1574,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:52:18','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1575,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:53:13','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1576,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:53:17','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1577,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:53:33','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1578,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:53:45','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1579,'ND',-1,-1,-1,'2017-03-03','2017-03-03','2017-03-03','ankith','ND',-1,'ND','TADA',9,'outgoing',300,'2017-03-03 09:54:06','2017-03-03','ND','ND','ND','ND','2017-03-03','2017-03-03','2017-03-03','2017-03-03',0,-1,-1,'ND',28,33,29,'ND','ND','ND'),(1580,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:26:21','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1581,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:27:29','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1582,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:30:09','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1583,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:31:14','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1584,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:31:55','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1585,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:31:55','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1586,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 10:34:35','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1587,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 11:14:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1588,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 11:56:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1589,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 11:56:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1590,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 11:56:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1591,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 11:56:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1592,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 12:28:05','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1593,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-03 13:16:51','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1594,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 05:14:31','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1595,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 05:51:56','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1596,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 06:12:49','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1597,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 06:13:34','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1598,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 08:10:39','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1599,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 08:15:55','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1600,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 08:21:15','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1601,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 08:21:15','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1602,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 11:49:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',3000,260,40,'overweighteddd vehicle are to be come....',50,35,60,'MCHV','Denied','ND'),(1603,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 11:49:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',3000,260,40,'overweighteddd vehicle are to be come....',50,35,60,'MCHV','Denied','ND'),(1604,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 11:49:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',3000,260,40,'overweighteddd vehicle are to be come....',50,35,60,'MCHV','Denied','ND'),(1605,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ram',8,'ND','TADA',6,'Outgoing',300,'2017-03-04 11:49:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',5901,260,40,'over loadeddddd..',50,35,60,'MCHV','Denied','ND'),(1606,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 04:58:25','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1607,'LO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-06 04:58:25','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','ND'),(1608,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 04:58:25','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1609,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 08:06:43','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','ND'),(1610,'LO30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','ankith','ND',8,'ND','TADA',9,'outgoing',300,'2017-03-06 08:06:43','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','ND'),(1611,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:35:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','TRXNT1611'),(1612,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:35:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','TRXNT1612'),(1613,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:40:24','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1614,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:42:07','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1615,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:43:06','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1616,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:43:40','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','ND'),(1617,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 10:44:58','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','06-03-171617'),(1618,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 11:04:24','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','06-03-171618'),(1619,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-06 11:24:01','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0603171619'),(1620,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ram',8,'ND','TADA',6,'Outgoing',300,'2017-03-07 16:03:48','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0703171620'),(1621,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 07:02:41','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171621'),(1622,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 09:01:03','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171622'),(1623,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:06:21','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171623'),(1624,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:08:47','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171624'),(1625,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:08:47','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171625'),(1626,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:23:34','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171626'),(1627,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:41:00','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171627'),(1628,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:41:00','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','0803171628'),(1629,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:41:00','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','0803171629'),(1630,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:52:30','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','ND','0803171630'),(1631,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:52:58','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171631'),(1632,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:55:47','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',30,40,35,'ND','ND','0803171632'),(1633,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:55:51','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',30,40,35,'ND','ND','0803171633'),(1634,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-08 11:56:06','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',30,40,35,'ND','ND','0803171634'),(1635,'MH01AE8017',10,30,20,'2014-12-31','2017-12-05','2018-04-18','venkat','ND',5,'ND','TADA',6,'Outgoing',300,'2017-03-08 12:02:59','2011-10-10','SFZ067114','ND','SFH6711','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',0,270,30,'ND',28,33,29,'HCHV','Not Ok','0803171635'),(1636,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',200,'2017-03-08 12:08:11','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',28,33,29,'ND','ND','0803171636'),(1637,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-08 12:11:08','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','0803171637'),(1638,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-08 12:13:29','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',28,33,29,'ND','ND','0803171638'),(1639,'ND',-1,-1,-1,'2017-03-08','2017-03-08','2017-03-08','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-08 12:25:54','2017-03-08','ND','ND','ND','ND','2017-03-08','2017-03-08','2017-03-08','2017-03-08',0,-1,-1,'ND',28,33,29,'ND','ND','0803171639'),(1640,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:24:27','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171640'),(1641,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:27:51','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171641'),(1642,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:28:08','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171642'),(1643,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:29:59','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171643'),(1644,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:30:41','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171644'),(1645,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:31:33','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171645'),(1646,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:35:31','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171646'),(1647,'RO30AW1878',200,100,15,'2016-08-09','2017-12-23','2016-08-09','venkat','ram',6,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:35:51','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','1003171647'),(1648,'MZ30AE1900',200,100,15,'2016-08-09','2017-12-23','2016-08-09','venkat','ND',5,'ND','TADA',6,'Outgoing',300,'2017-03-10 05:46:23','2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',0,301,-1,'ND',28,33,29,'MHCV','Not Ok','1003171648'),(1649,'KA05MD4943',20,30,10,'2017-10-26','2017-12-30','2017-08-19','venkat','ND',8,'ND','TADA',6,'Outgoing',300,'2017-03-10 07:40:29','2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',0,260,40,'ND',50,35,60,'MCHV','Not Ok','1003171649'),(1650,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 07:54:16','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',30,40,35,'ND','ND','1003171650'),(1651,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 07:56:57','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',30,40,35,'ND','ND','1003171651'),(1652,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 07:57:00','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',30,40,35,'ND','ND','1003171652'),(1653,'MH01AE8017',10,30,20,'2014-12-31','2017-12-05','2018-04-18','venkat','ND',6,'ND','TADA',6,'Outgoing',300,'2017-03-10 07:57:32','2011-10-10','SFZ067114','ND','SFH6711','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',0,270,30,'ND',30,40,35,'HCHV','Not Ok','1003171653'),(1654,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 08:08:59','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171654'),(1655,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 08:46:50','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171655'),(1656,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 08:47:22','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171656'),(1657,'ND',-1,-1,-1,'2017-03-10','2017-03-10','2017-03-10','venkat','ND',-1,'ND','TADA',6,'Outgoing',300,'2017-03-10 10:05:54','2017-03-10','ND','ND','ND','ND','2017-03-10','2017-03-10','2017-03-10','2017-03-10',0,-1,-1,'ND',28,33,29,'ND','ND','1003171657');
/*!40000 ALTER TABLE `tollapp_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_officer`
--

DROP TABLE IF EXISTS `tollapp_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_officer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_Number` varchar(200) DEFAULT NULL,
  `Transaction_id` varchar(200) DEFAULT NULL,
  `Permit_validity` date NOT NULL,
  `Lane_Number` int(11) NOT NULL,
  `officer_id` int(11) NOT NULL,
  `officer_Name` varchar(100) NOT NULL,
  `Amount` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `Penaulty_Paid_amount` int(11) NOT NULL,
  `Refund_amount` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `Location_of_chekpost` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_officer`
--

LOCK TABLES `tollapp_officer` WRITE;
/*!40000 ALTER TABLE `tollapp_officer` DISABLE KEYS */;
INSERT INTO `tollapp_officer` VALUES (1,'AP04AF3542','TN01','2017-09-12',3,2,'ankith',100,'2017-01-05 07:58:22',0,0,'josh','CMBT'),(2,'DH08AP6512','TN02','2018-09-12',3,2,'raja',100,'2017-01-05 08:00:00',0,0,'josh','CMBT'),(3,'TN47CK5648','TN03','2016-09-12',3,2,'raja',100,'2017-01-05 08:00:50',0,0,'josh','CMBT'),(4,'KA01AQ2357','TN04','2015-09-12',5,3,'raja',100,'2017-01-05 08:01:52',0,0,'raki','CMBT');
/*!40000 ALTER TABLE `tollapp_officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_relay_panel`
--

DROP TABLE IF EXISTS `tollapp_relay_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_relay_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relay_no` tinyint(1) DEFAULT NULL,
  `lane_1` tinyint(1) DEFAULT NULL,
  `lane_2` tinyint(1) DEFAULT NULL,
  `lane_3` tinyint(1) DEFAULT NULL,
  `lane_10` tinyint(1) NOT NULL,
  `lane_11` tinyint(1) NOT NULL,
  `lane_12` tinyint(1) NOT NULL,
  `lane_4` tinyint(1) NOT NULL,
  `lane_5` tinyint(1) NOT NULL,
  `lane_6` tinyint(1) NOT NULL,
  `lane_7` tinyint(1) NOT NULL,
  `lane_8` tinyint(1) NOT NULL,
  `lane_9` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_relay_panel`
--

LOCK TABLES `tollapp_relay_panel` WRITE;
/*!40000 ALTER TABLE `tollapp_relay_panel` DISABLE KEYS */;
INSERT INTO `tollapp_relay_panel` VALUES (1,1,0,0,1,1,1,1,1,1,0,1,1,1),(2,2,1,1,1,1,1,1,1,1,1,1,1,1),(3,3,1,1,1,1,1,1,1,1,1,1,1,1),(4,4,1,1,1,1,1,1,1,1,1,1,1,1),(5,5,1,1,1,1,1,1,1,1,1,1,1,1),(6,6,1,1,1,1,1,1,1,1,1,1,1,1),(7,7,1,1,1,1,1,1,1,1,1,1,1,1),(8,8,1,1,1,1,1,1,1,1,1,1,1,1),(9,9,1,1,1,1,1,1,1,1,1,1,1,1),(10,10,1,1,1,1,1,1,1,1,1,1,1,1),(11,11,1,1,1,1,1,1,1,1,1,1,1,1),(12,12,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tollapp_relay_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_rto`
--

DROP TABLE IF EXISTS `tollapp_rto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_rto` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_id` int(11) NOT NULL,
  `Vehicle_Number` varchar(200) NOT NULL,
  `Diemension_length` int(11) NOT NULL,
  `Diemension_height` int(11) NOT NULL,
  `Diemension_Breadth` int(11) NOT NULL,
  `Fitness_Validity` date NOT NULL,
  `Permit_validity` date NOT NULL,
  `Pollution_Validity` date NOT NULL,
  `Weight` int(11) NOT NULL,
  `tollbooth_username` varchar(100) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `AXLE_Count` int(11) NOT NULL,
  `Vehicle_ClassType` varchar(100) NOT NULL,
  `Location_of_chekpost` varchar(100) NOT NULL,
  `Vehicle_status` varchar(100) NOT NULL,
  `officer_name` varchar(100) NOT NULL,
  `lane_Number` int(11) NOT NULL,
  `Registration_date` date NOT NULL,
  `chassisno` varchar(200) DEFAULT NULL,
  `enginecubic_capacity` varchar(200) NOT NULL,
  `engineno` varchar(200) DEFAULT NULL,
  `vehiclefueltype` varchar(200) NOT NULL,
  `authorization` date NOT NULL,
  `insuranceval` date NOT NULL,
  `nationalpermit` date NOT NULL,
  `taxval` date NOT NULL,
  `unladden` int(11) NOT NULL,
  `fineamount` int(11) NOT NULL,
  `vehicletype` varchar(100) NOT NULL,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_rto`
--

LOCK TABLES `tollapp_rto` WRITE;
/*!40000 ALTER TABLE `tollapp_rto` DISABLE KEYS */;
INSERT INTO `tollapp_rto` VALUES (1,101,'DL1YA3550',30,20,10,'2016-12-30','2017-08-19','2016-10-26',100,'ankith','2017-01-05 06:28:12',4,'HRHV','TADA','NOT OK','raja',2,'2007-05-12','SFZ067113','ND','SFH67116','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',30,0,'ND'),(2,102,'KA05MD4943',30,20,10,'2017-12-30','2017-08-19','2017-10-26',200,'ankith','2017-01-05 06:30:38',6,'MCHV','TADA','NOT OK','raja',3,'2003-07-12','SFZ067114','ND','SFH67117','Diesel','2017-01-18','2017-01-18','2017-01-18','2017-01-18',40,0,'ND'),(3,103,'TN38BL1617',30,20,10,'2017-12-30','2016-01-19','2017-10-26',200,'venkat','2017-01-05 06:31:54',6,'MCHV','TADA','NOT OK','raja',4,'2004-08-12','SFZ067115','ND','SFH67118','Petrol','2017-01-18','2017-01-18','2017-01-18','2017-01-18',20,0,'ND'),(4,104,'TN39AQ8227',30,20,10,'2017-12-30','2016-01-19','2017-10-26',300,'venkat','2017-01-05 06:32:35',6,'MCHV','TADA','NOT OK','raja',5,'2005-08-12','SFZ067116','ND','SFH67119','Petrol','2017-01-18','2017-01-18','2017-01-18','2017-01-18',10,0,'ND'),(5,105,'MH12DE1433',30,10,20,'2017-12-05','2019-04-18','2014-12-31',200,'ram','2017-01-27 09:39:34',7,'MHCV','TADA','Not Ok','vishnu',5,'2011-10-10','SFZ067114','ND','SFH6711','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',30,0,'ND'),(6,106,'MH01AE8017',30,10,20,'2017-12-05','2018-04-18','2014-12-31',200,'ram','2017-01-27 09:40:57',7,'HCHV','TADA','Not Ok','vishnu',6,'2011-10-10','SFZ067114','ND','SFH6711','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',30,0,'ND'),(7,106,'KA05MG1909',30,10,20,'2017-12-05','2018-04-18','2014-12-31',200,'ram','2017-01-27 09:41:18',7,'HCHV','TADA','Not Ok','vishnu',6,'2011-10-10','SFZ067114','ND','SFH6711','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',30,0,'ND'),(8,107,'TN60R5559',30,10,20,'2017-01-27','2017-01-27','2017-01-27',200,'vignesh','2017-01-27 14:17:31',5,'HCHV','TADA','NOT OK','gokul',3,'1999-12-24','SFZ07115','ND','SFH671134','DIESEL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',100,100,'ND'),(9,108,'KA09EU9294',30,10,20,'2017-01-27','2016-09-16','2013-12-31',200,'praveen','2017-01-27 14:20:17',6,'MCHV','TADA','NOT OK','gokul',4,'2012-12-24','SFZ07138','ND','SFH671334','DIESEL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',100,100,'ND'),(10,108,'TN37CK9663',30,10,20,'2017-12-12','2012-09-16','2010-12-31',200,'praveen','2017-01-27 14:22:36',6,'MCHV','TADA','NOT OK','gokul',5,'2002-12-24','SFZ07158','ND','SFI671394','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',100,100,'ND'),(11,109,'MH01AV8866',30,10,20,'2016-05-12','2012-09-16','2018-12-31',200,'praveen','2017-01-27 14:25:14',6,'LRHV','TADA','NOT OK','gokul',6,'2005-12-24','SFR07158','ND','KFI671394','PETROL','2017-01-27','2017-01-27','2017-01-27','2017-01-27',100,100,'ND'),(12,-1,'AZ30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:44:33',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(13,-1,'AZ30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:47:40',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(14,-1,'TN30AW1890',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:48:07',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(15,-1,'CK30AW1890',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:48:43',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(16,-1,'QW30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:49:18',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(17,-1,'WQ30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:50:04',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(18,-1,'QS30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:50:28',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(19,-1,'SR30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:50:47',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(20,-1,'ML30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:51:26',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(21,-1,'AZ30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:51:47',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(22,-1,'RO30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:52:07',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(23,-1,'PQ30AW1878',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:52:22',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(24,-1,'MZ30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:52:46',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(25,-1,'LO30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:53:11',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(26,-1,'AO30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:53:23',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND'),(27,-1,'OQ30AE1900',100,200,15,'2017-12-23','2016-08-09','2016-08-09',200,'venkat','2017-02-28 06:53:34',8,'MHCV','TADA','ND','gokul',4,'2017-02-28','2017-04-09','ND','2016-02-03','ND','2019-05-17','2016-01-19','2017-12-31','2015-03-06',-1,-1,'ND');
/*!40000 ALTER TABLE `tollapp_rto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_signup`
--

DROP TABLE IF EXISTS `tollapp_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_signup`
--

LOCK TABLES `tollapp_signup` WRITE;
/*!40000 ALTER TABLE `tollapp_signup` DISABLE KEYS */;
INSERT INTO `tollapp_signup` VALUES (1,'USER','2017-02-28 12:03:56','Naanal','venkat'),(2,'officer','2017-02-28 12:04:16','Naanal1','ram'),(3,'Transport','2017-02-28 12:04:41','Naanal','ramireddy'),(4,'admin','2017-03-02 06:22:41','Naanal123','praveen'),(5,'USER','2017-03-02 08:53:43','Naanal','ankith'),(6,'USER','2017-03-03 12:30:43','Naanal12','prakash'),(7,'USER','2017-03-10 09:52:11','srini','narashim');
/*!40000 ALTER TABLE `tollapp_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_temp_details`
--

DROP TABLE IF EXISTS `tollapp_temp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_temp_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lane_Number` int(11) NOT NULL,
  `Diemension_height` int(11) NOT NULL,
  `Diemension_breadth` int(11) NOT NULL,
  `Diemension_length` int(11) DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  `exmp` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_temp_details`
--

LOCK TABLES `tollapp_temp_details` WRITE;
/*!40000 ALTER TABLE `tollapp_temp_details` DISABLE KEYS */;
INSERT INTO `tollapp_temp_details` VALUES (1,3,20,10,5,'2016-12-30 11:17:15',0,''),(2,2,30,10,5,'2016-12-30 11:17:56',0,''),(3,1,10,10,5,'2016-12-30 11:18:52',0,''),(4,4,40,10,5,'2016-12-30 11:19:23',0,''),(5,5,25,40,50,'2017-01-27 09:19:16',0,''),(6,6,35,50,60,'2017-01-27 09:19:46',1,''),(7,7,45,10,20,'2017-01-27 09:20:12',0,''),(8,5,20,30,35,'2017-01-27 13:57:24',0,''),(9,6,40,30,35,'2017-01-27 13:57:44',1,''),(10,5,34,23,28,'2017-02-27 09:46:26',0,''),(11,6,33,28,29,'2017-02-27 09:46:53',0,''),(12,8,33,28,29,'2017-02-27 09:47:15',0,''),(13,8,33,28,29,'2017-02-27 09:47:21',0,''),(14,5,33,28,29,'2017-02-27 09:47:34',0,''),(15,5,33,28,29,'2017-02-27 09:48:03',0,''),(16,8,33,28,29,'2017-02-27 09:48:07',0,''),(17,8,33,28,29,'2017-02-27 09:48:10',0,''),(18,6,33,28,29,'2017-02-27 09:48:18',0,''),(19,6,33,28,29,'2017-02-27 09:50:39',0,''),(20,9,33,28,29,'2017-02-27 09:50:41',0,''),(21,9,33,28,29,'2017-02-27 09:50:43',0,''),(22,5,33,28,29,'2017-02-27 09:50:45',0,''),(23,5,33,28,29,'2017-02-27 09:50:52',0,''),(24,9,33,28,29,'2017-02-27 09:50:54',0,'');
/*!40000 ALTER TABLE `tollapp_temp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_toll_lane`
--

DROP TABLE IF EXISTS `tollapp_toll_lane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_toll_lane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(200) NOT NULL,
  `lane_Number` int(11) NOT NULL,
  `toll_username` varchar(200) NOT NULL,
  `Direction` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_toll_lane`
--

LOCK TABLES `tollapp_toll_lane` WRITE;
/*!40000 ALTER TABLE `tollapp_toll_lane` DISABLE KEYS */;
INSERT INTO `tollapp_toll_lane` VALUES (8,'TADA',6,'venkat','Outgoing'),(9,'TADA',9,'ankith','outgoing'),(10,'TADA',3,'raja','Incoming'),(11,'TADA',7,'ram','Outgoing'),(12,'TADA',5,'rakesh','Outgoing'),(13,'TADA',6,'mani','Incoming'),(14,'TADA',1,'subbireddy','Outgoing'),(15,'TADA',4,'narashim','Incoming');
/*!40000 ALTER TABLE `tollapp_toll_lane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tollapp_weigh_bridge`
--

DROP TABLE IF EXISTS `tollapp_weigh_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tollapp_weigh_bridge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(100) NOT NULL,
  `lane_Number` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tollapp_weigh_bridge`
--

LOCK TABLES `tollapp_weigh_bridge` WRITE;
/*!40000 ALTER TABLE `tollapp_weigh_bridge` DISABLE KEYS */;
INSERT INTO `tollapp_weigh_bridge` VALUES (1,'2017-02-28 11:48:27.620000',6,300,1),(2,'2017-02-28 11:48:40.371000',6,300,1),(3,'2017-02-28 11:48:49.234000',6,300,0),(4,'2017-02-28 11:49:00.612000',6,200,0);
/*!40000 ALTER TABLE `tollapp_weigh_bridge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-10 16:07:43
