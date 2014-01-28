-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vbx
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_from` varchar(16) DEFAULT NULL,
  `logged_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'+14199574216','2013-11-24 19:55:40'),(2,'+14199574216','2013-11-24 20:50:57'),(3,'+14199574216','2013-11-24 21:06:10'),(4,'+14199574216','2013-11-24 21:08:49'),(5,'+14199574216','2013-11-24 21:09:04'),(6,'+14199574216','2013-11-24 21:11:37'),(7,'+14199574216','2013-11-24 21:22:06'),(8,'+14199574216','2013-11-24 23:21:32'),(9,'+14199574216','2013-11-24 23:30:47'),(10,'+14199574216','2013-11-24 18:36:23'),(11,'+14196191000','2013-11-24 20:34:59'),(12,'+14199574216','2013-11-24 22:01:48'),(13,'+14199574216','2013-11-24 22:07:36'),(14,'+14199574216','2013-11-24 22:09:00'),(15,'+14199574216','2013-11-24 22:15:37'),(16,'+14199574216','2013-11-24 22:16:17'),(17,'+14199666788','2013-11-25 12:13:26'),(18,'+14199666788','2013-11-25 12:13:49'),(19,'+14199574216','2013-11-25 12:18:51'),(20,'+14199574216','2013-11-25 20:37:52'),(21,'+14193703662','2013-11-29 12:48:33'),(22,'+15197450811','2013-11-29 12:51:48'),(23,'+15197450811','2013-11-29 12:52:02'),(24,'+18777722253','2013-12-13 19:25:09'),(25,'+18006174311','2013-12-16 13:45:58'),(26,'+18008489380','2013-12-16 17:50:44'),(27,'+18006174311','2013-12-16 18:55:44'),(28,'+18008489380','2013-12-18 16:09:35'),(29,'+18008489380','2013-12-20 12:17:28'),(30,'+18004802265','2013-12-21 12:10:16'),(31,'+14195562025','2013-12-23 19:19:17'),(32,'+18008489380','2013-12-26 11:47:50'),(33,'+18008489380','2013-12-28 16:21:03'),(34,'+14196191000','2013-12-28 22:11:47'),(35,'+14196191000','2013-12-28 22:14:46'),(36,'+12604848551','2014-01-02 09:02:00'),(37,'+13105193107','2014-01-09 18:30:00'),(38,'+266696687','2014-01-17 13:31:22'),(39,'+266696687','2014-01-17 16:00:59'),(40,'+14075152844','2014-01-17 20:09:48'),(41,'+14199662102','2014-01-18 08:03:12'),(42,'+266696687','2014-01-18 11:58:14'),(43,'+266696687','2014-01-19 12:43:06'),(44,'+14075152844','2014-01-22 13:19:14'),(45,'+18008489380','2014-01-24 11:52:20'),(46,'+18008489380','2014-01-27 15:49:45');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_frn_vmb_extension` varchar(8) NOT NULL,
  `message_date` datetime NOT NULL,
  `message_from` varchar(16) DEFAULT NULL,
  `message_audio_url` varchar(1024) DEFAULT NULL,
  `message_flag` int(1) DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'1234','2013-11-24 19:35:45','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REd82e4f9b01f426de8c7a3c0849f43e34',1),(2,'1234','2013-11-24 19:45:49','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REb3695396022c6b7a66c57594998ac317',1),(3,'1234','2013-11-24 19:55:40','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REca210c96be68b6e863aa9a7963493e6c',1),(4,'1234','2013-11-24 20:50:42','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE991611deb460695100bcaa76205ddf91',1),(5,'1234','2013-11-24 21:11:37','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REc109e5d8825f40c946056fd7ba3302c4',1),(6,'1234','2013-11-24 21:21:51','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REb581ce5abc26d6b35cc743a285d7736f',1),(7,'1234','2013-11-24 23:21:17','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE98d075df67f8657ab8ac653fa58258a3',1),(8,'1234','2013-11-24 23:30:32','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REa9f16821b336a0cdfaea191758cfe3e9',1),(9,'1234','2013-11-24 18:36:07','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE89f6e34bebe21e9edfd7b31c434b290c',1),(10,'1001','2013-11-24 22:15:22','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE8541d2549b7c76d5596969bedab41896',1),(11,'1000','2013-11-24 22:16:02','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE471e097fd81198c49eb0fbec8e7eeaa9',1),(12,'1000','2013-11-25 12:13:11','+14199666788','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE1c9839930c69f622dcfef9591fe028b2',1),(13,'1000','2013-11-25 12:13:34','+14199666788','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REec8ed01df94933e76e299837f9a298c9',1),(14,'1234','2013-11-25 20:37:37','+14199574216','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/RE8734952fb519592e8f5f26a0153d7de2',1),(15,'1000','2014-01-18 08:02:57','+14199662102','http://api.twilio.com/2010-04-01/Accounts/ACfda6c083baf9a42bcf97dd1b1f49d8d7/Recordings/REe39416769275c3ffeeab2dbdf0ac17e7',1);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemailbox`
--

DROP TABLE IF EXISTS `voicemailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicemailbox` (
  `vmb_extension` varchar(8) NOT NULL,
  `vmb_description` varchar(32) NOT NULL,
  `vmb_passcode` varchar(8) NOT NULL,
  `vmb_last_checked` datetime DEFAULT NULL,
  `vmb_email` varchar(70) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`vmb_extension`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemailbox`
--

LOCK TABLES `voicemailbox` WRITE;
/*!40000 ALTER TABLE `voicemailbox` DISABLE KEYS */;
INSERT INTO `voicemailbox` VALUES ('1000','Mark Myers','2202',NULL,'marcusmyers@gmail.com','dmJ4bWFtMjExMmxlaQ=='),('1001','Jodi Myers','3357',NULL,'hovestj@gmail.com','dmJ4c3BpZGV5MjE='),('1234','The Myers','9411',NULL,'hovestj@gmail.com, marcusmyers@gmail.com',NULL);
/*!40000 ALTER TABLE `voicemailbox` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-28 15:21:04
