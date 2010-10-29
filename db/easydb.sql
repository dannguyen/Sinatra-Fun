-- MySQL dump 10.11
--
-- Host: localhost    Database: easydb
-- ------------------------------------------------------
-- Server version	5.0.67

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
-- Table structure for table `_seed_receive`
--

DROP TABLE IF EXISTS `_seed_receive`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_seed_receive` (
  `id` int(11) NOT NULL auto_increment,
  `field1` text,
  `field2` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_seed_receive`
--

LOCK TABLES `_seed_receive` WRITE;
/*!40000 ALTER TABLE `_seed_receive` DISABLE KEYS */;
/*!40000 ALTER TABLE `_seed_receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_seed_send`
--

DROP TABLE IF EXISTS `_seed_send`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_seed_send` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(26) default NULL,
  `ab` varchar(3) default NULL,
  `fips` varchar(9) default NULL,
  `ap` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_seed_send`
--

LOCK TABLES `_seed_send` WRITE;
/*!40000 ALTER TABLE `_seed_send` DISABLE KEYS */;
INSERT INTO `_seed_send` VALUES (1,'Alabama','AL','01','Ala.'),(2,'Alaska','AK','02','Alaska'),(3,'Arizona','AZ','04','Ariz.'),(4,'Arkansas','AR','05','Ark.'),(5,'California','CA','06','Calif.'),(6,'Colorado','CO','08','Colo.'),(7,'Connecticut','CT','09','Conn.'),(8,'Delaware','DE','10','Del.'),(9,'District of Columbia','DC','11','D.C.'),(10,'Florida','FL','12','Fla.'),(11,'Georgia','GA','13','Ga.'),(12,'Hawaii','HI','15','Hawaii'),(13,'Idaho','ID','16','Idaho'),(14,'Illinois','IL','17','Ill.'),(15,'Indiana','IN','18','Ind.'),(16,'Iowa','IA','19','Iowa'),(17,'Kansas','KS','20','Kan.'),(18,'Kentucky','KY','21','Ky.'),(19,'Louisiana','LA','22','La.'),(20,'Maine','ME','23','Maine'),(21,'Maryland','MD','24','Md.'),(22,'Massachusetts','MA','25','Mass.'),(23,'Michigan','MI','26','Mich.'),(24,'Minnesota','MN','27','Minn.'),(25,'Mississippi','MS','28','Miss.'),(26,'Missouri','MO','29','Mo.'),(27,'Montana','MT','30','Mont.'),(28,'Nebraska','NE','31','Neb.'),(29,'Nevada','NV','32','Nev.'),(30,'New Hampshire','NH','33','N.H.'),(31,'New Jersey','NJ','34','N.J.'),(32,'New Mexico','NM','35','N.M.'),(33,'New York','NY','36','N.Y.'),(34,'North Carolina','NC','37','N.C.'),(35,'North Dakota','ND','38','N.D.'),(36,'Ohio','OH','39','Ohio'),(37,'Oklahoma','OK','40','Okla.'),(38,'Oregon','OR','41','Ore.'),(39,'Pennsylvania','PA','42','Pa.'),(40,'Rhode Island','RI','44','R.I.'),(41,'South Carolina','SC','45','S.C.'),(42,'South Dakota','SD','46','S.D.'),(43,'Tennessee','TN','47','Tenn.'),(44,'Texas','TX','48','Texas'),(45,'Utah','UT','49','Utah'),(46,'Vermont','VT','50','Vt.'),(47,'Virginia','VA','51','Va.'),(48,'Washington','WA','53','Wash.'),(49,'West Virginia','WV','54','W.Va.'),(50,'Wisconsin','WI','55','Wis.'),(51,'Wyoming','WY','56','Wyo.'),(52,'American Samoa','AS','60','Am. Samoa'),(53,'Guam','GU','66','Guam'),(54,'Northern Mariana Islands','MP','69','N. Mariana'),(55,'Puerto Rico','PR','72','P.R.'),(57,'Virgin Islands','VI','78','V.i.');
/*!40000 ALTER TABLE `_seed_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive_records`
--

DROP TABLE IF EXISTS `receive_records`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `receive_records` (
  `id` int(11) NOT NULL auto_increment,
  `request_record_id` int(11) default NULL,
  `database_store` varchar(255) default NULL,
  `table_store` varchar(255) default NULL,
  `data` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `record_store_id` int(15) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `record_store_id` (`record_store_id`),
  KEY `request_record_id` (`request_record_id`),
  KEY `database_store` (`database_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `receive_records`
--

LOCK TABLES `receive_records` WRITE;
/*!40000 ALTER TABLE `receive_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_records`
--

DROP TABLE IF EXISTS `request_records`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `request_records` (
  `id` int(11) NOT NULL auto_increment,
  `database_name` varchar(255) default NULL,
  `table_name` varchar(255) default NULL,
  `requester_ip` varchar(255) default NULL,
  `requester_project` varchar(255) default NULL,
  `query_conditions` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `request_records`
--

LOCK TABLES `request_records` WRITE;
/*!40000 ALTER TABLE `request_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_records`
--

DROP TABLE IF EXISTS `send_records`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `send_records` (
  `id` int(11) NOT NULL auto_increment,
  `request_record_id` int(11) default NULL,
  `data` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `send_records`
--

LOCK TABLES `send_records` WRITE;
/*!40000 ALTER TABLE `send_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-29  0:51:00
