-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: sensordb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `act_sensor`
--

DROP TABLE IF EXISTS `act_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_sensor` (
  `ID` int(11) NOT NULL,
  `Timestamp` varchar(45) DEFAULT NULL,
  `Active_sensor` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_sensor`
--

LOCK TABLES `act_sensor` WRITE;
/*!40000 ALTER TABLE `act_sensor` DISABLE KEYS */;
INSERT INTO `act_sensor` VALUES (1,'Tue_12-01-16_2:00pm',30),(2,'Wed_12-02-16_3:00pm',50),(3,'Thurs_12-03-16_4:00pm',70),(4,'Fri_12-04-16_5:00pm',60),(5,'Sat_12-05-16_6:00pm',45);
/*!40000 ALTER TABLE `act_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_revenue`
--

DROP TABLE IF EXISTS `daily_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_revenue` (
  `Day` varchar(45) NOT NULL,
  `Revenue` int(11) DEFAULT NULL,
  PRIMARY KEY (`Day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_revenue`
--

LOCK TABLES `daily_revenue` WRITE;
/*!40000 ALTER TABLE `daily_revenue` DISABLE KEYS */;
INSERT INTO `daily_revenue` VALUES ('Dec1',3200),('Dec2',4200),('Dec3',4000),('Dec4',3000),('Dec5',4500),('Dec6',2500),('Dec7',3860);
/*!40000 ALTER TABLE `daily_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driversafetyinfo`
--

DROP TABLE IF EXISTS `driversafetyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driversafetyinfo` (
  `Driver` varchar(45) DEFAULT NULL,
  `MilesTravelled` int(11) DEFAULT NULL,
  `AvgOverSpeed` int(11) DEFAULT NULL,
  `SuddenAccelerationTimes` int(11) DEFAULT NULL,
  `SuddenBrakeTimes` int(11) DEFAULT NULL,
  `DistractedTimes` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driversafetyinfo`
--

LOCK TABLES `driversafetyinfo` WRITE;
/*!40000 ALTER TABLE `driversafetyinfo` DISABLE KEYS */;
INSERT INTO `driversafetyinfo` VALUES ('Sam',30,20,15,10,5,1),('John',10,15,20,0,10,2),('Smith',5,25,5,5,20,3),('Tim',45,25,15,25,20,4),('Tim',45,25,15,25,20,5),('Jack',75,95,25,15,20,6),('Jack',75,95,25,15,20,7);
/*!40000 ALTER TABLE `driversafetyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `Day_of_month` varchar(45) DEFAULT NULL,
  `expenses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (' Dec 1',7000),(' Dec 2',12000),(' Dec 3',18000),(' Dec 4',19000),(' Dec 5',26000),(' Dec 6',30000),(' Dec 7',35000),(' Dec 8',27000),(' Dec 9',32000);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `customerName` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`customerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Preethi','2343434943','hshdk kasjkdhjash k ks kha dhka hdas khk asdhka sdkhakshd kas dkhskhlas');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hub_master`
--

DROP TABLE IF EXISTS `hub_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hub_master` (
  `hub_id` int(11) NOT NULL,
  `no_of_server` int(11) DEFAULT NULL,
  `hub_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hub_master`
--

LOCK TABLES `hub_master` WRITE;
/*!40000 ALTER TABLE `hub_master` DISABLE KEYS */;
INSERT INTO `hub_master` VALUES (1,2,'enabled'),(2,3,'disabled');
/*!40000 ALTER TABLE `hub_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_revenue`
--

DROP TABLE IF EXISTS `monthly_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_revenue` (
  `Month` varchar(45) NOT NULL,
  `Monthly_Revenue` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_revenue`
--

LOCK TABLES `monthly_revenue` WRITE;
/*!40000 ALTER TABLE `monthly_revenue` DISABLE KEYS */;
INSERT INTO `monthly_revenue` VALUES ('April',75000,4),('August',60000,8),('February',30000,2),('January',80000,1),('July',86000,7),('June',75000,6),('March',60000,3),('May',80000,5),('November',98000,11),('October',50000,10),('September',92000,9);
/*!40000 ALTER TABLE `monthly_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_of_trips`
--

DROP TABLE IF EXISTS `no_of_trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `no_of_trips` (
  `Day` varchar(45) NOT NULL,
  `Trips` int(11) DEFAULT NULL,
  PRIMARY KEY (`Day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_of_trips`
--

LOCK TABLES `no_of_trips` WRITE;
/*!40000 ALTER TABLE `no_of_trips` DISABLE KEYS */;
INSERT INTO `no_of_trips` VALUES ('Dec1',6),('Dec2',4),('Dec3',7),('Dec4',3),('Dec5',8),('Dec6',3),('Dec7',5);
/*!40000 ALTER TABLE `no_of_trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_details`
--

DROP TABLE IF EXISTS `sensor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_details` (
  `sensor_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_name` varchar(45) DEFAULT NULL,
  `sensor_desc` varchar(45) DEFAULT NULL,
  `sensor_type` varchar(45) DEFAULT NULL,
  `sensor_cluster` int(11) DEFAULT NULL,
  `sensor_status` varchar(10) DEFAULT NULL,
  `zipcode` int(8) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `lastUpdated` timestamp(6) NULL DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sensor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_details`
--

LOCK TABLES `sensor_details` WRITE;
/*!40000 ALTER TABLE `sensor_details` DISABLE KEYS */;
INSERT INTO `sensor_details` VALUES (24,'CA-98745','description','Audi, ',101,'Active',NULL,NULL,NULL,'San Jose','CA','USA',NULL,37.33191445008786,121.90009117126466,NULL,'2016-12-10 02:21:15');
/*!40000 ALTER TABLE `sensor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_master`
--

DROP TABLE IF EXISTS `sensor_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_master` (
  `user_id` int(11) NOT NULL,
  `sensor_id` varchar(45) DEFAULT NULL,
  `up_time` varchar(45) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `sensor_tag_value` varchar(45) DEFAULT NULL,
  `sensor_status` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `creation_date` timestamp(6) NULL DEFAULT NULL,
  `public_ip` varchar(45) DEFAULT NULL,
  `private_ip` varchar(45) DEFAULT NULL,
  `sensor_tag_key` varchar(45) DEFAULT NULL,
  `sensor_tag_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_master`
--

LOCK TABLES `sensor_master` WRITE;
/*!40000 ALTER TABLE `sensor_master` DISABLE KEYS */;
INSERT INTO `sensor_master` VALUES (1,'sensor_1','asd','25$','asd','up','37.4224764','-122.0842499','2015-01-19 11:14:07.000000','24.6.121.170','wqe','wqe','qwe'),(2,'sensor_2','dsfsd','22$','ds','down','37.4224764','-122.0842499','2015-01-19 11:14:07.000000','24.6.121.170','sdf','dsf','fddfs'),(3,'sensor_3','qwe','55$','qwe','up','37.4224764','-122.0842499','2015-01-19 11:14:07.000000','24.6.121.170','jklj','dg','fds'),(4,'sensor_4','gd','43$','fds','up','37.336541','-121.906502','2015-01-19 11:14:07.000000','24.6.121.170','fs','sef','ewr');
/*!40000 ALTER TABLE `sensor_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_data`
--

DROP TABLE IF EXISTS `temp_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_data` (
  `temp` int(11) NOT NULL,
  `time_stamp` timestamp(6) NULL DEFAULT NULL,
  `sensor_id` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`temp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_data`
--

LOCK TABLES `temp_data` WRITE;
/*!40000 ALTER TABLE `temp_data` DISABLE KEYS */;
INSERT INTO `temp_data` VALUES (1,'2008-01-19 11:14:07.000000','sensor_1',1),(2,'2015-01-19 11:14:07.000000','sensor_2',2),(3,'2016-01-19 11:14:07.000000','sensor_3',3),(4,'2010-01-19 11:14:07.000000','sensor_4',4);
/*!40000 ALTER TABLE `temp_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_details`
--

DROP TABLE IF EXISTS `trip_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_details` (
  `tripID` int(11) NOT NULL AUTO_INCREMENT,
  `dateOfTravel` timestamp(6) NULL DEFAULT NULL,
  `tripSource` double DEFAULT NULL,
  `tripDest` double DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `carType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tripID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_details`
--

LOCK TABLES `trip_details` WRITE;
/*!40000 ALTER TABLE `trip_details` DISABLE KEYS */;
INSERT INTO `trip_details` VALUES (1,'2016-11-29 08:00:00.000000',37.331962,37.329887,301.782,603.564,'Audi'),(2,'2016-11-30 04:42:40.457000',37.331962,37.329887,301.782,603.564,'Limousine'),(3,'2016-11-30 04:46:43.403000',37.331962,37.329887,301.782,603.564,'Lamborghini'),(4,'2016-11-30 04:49:06.691000',37.331962,37.329887,301.782,603.564,'Audi'),(5,'2016-11-30 06:21:12.175000',37.331962,37.335282,724.204,1448.41,'Limousine'),(6,'2016-12-09 19:43:55.003000',37.335026,37.392384,9133.57,18267.1,'Lamborghini'),(7,'2016-12-10 00:16:56.902000',37.335026,37.390722,9011.84,18023.7,'Volkswagen Beetle'),(8,'2016-12-10 02:22:30.509000',37.344798,28.336186,11530000,23060000,'Volkswagen Beetle');
/*!40000 ALTER TABLE `trip_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(45) DEFAULT NULL,
  `user_lname` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_status` varchar(45) DEFAULT NULL,
  `NUMBER_SENSORS` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `creation_date` varchar(45) DEFAULT NULL,
  `last_login_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (8,'Sachin','Tendulkar','sachini@gmail.com','active',NULL,'root','1234','san jose','san jose','HR','Sat Dec 03 00:47:01 PST 2016',''),(10,'Viru','Sewagh','viru@gmail.com','active',NULL,'root','1234','san jose','san jose','HR','Sat Dec 03 00:48:18 PST 2016',''),(19,'Sandesh','Alse','sande@gmail.com','active',NULL,'123','4089178549','383 Stockton Ave','San Jose','Employee','Wed Apr 26 14:55:29 PDT 2017',''),(20,'Sandesh','Alse','sande.user@gmail.com','active',NULL,'123','4089178549','383 Stockton Ave','San Jose','Employee','Wed Apr 26 15:19:37 PDT 2017',''),(21,'kjhjk','jhkjh','jkhjkh@jhj.com','active',NULL,'4534','45465','vhghjg','hghjgjh','Employee','Wed Apr 26 16:26:25 PDT 2017',''),(23,'Virat','Kohli','virat@gmail.com','active',NULL,'123','4584555555','ghghjghj','hghjgjh','HR','Thu Apr 27 13:40:52 PDT 2017',''),(24,'Suhas2','S','suhas2@gmail.com','active',NULL,'123','4089478549','383 Stockton Ave','kjhkj','HR','Thu Apr 27 13:47:05 PDT 2017',''),(25,'Sandesh888','Alse','sandesh88@gmail.com','active',NULL,'123','null','null','bvbnv','HR','Thu Apr 27 13:48:37 PDT 2017',''),(27,'Virat45454','kjkj','virat45454@gmail.com','active',NULL,'123','4845487845','ghj','nkjn','HR','Thu Apr 27 13:52:12 PDT 2017',''),(29,'Sharan','Hiremath','sharan@gmail.com','active',NULL,'123','4089547855','Address to be provided','asdf','HR','Thu Apr 27 14:18:52 PDT 2017',''),(30,'Suresh','Raina','raina@gmail.com','active',NULL,'123','4089547855','Address to be provided','asd','HR','Thu Apr 27 14:44:38 PDT 2017',''),(34,'MS','Dhoni','msd@gmail.com','active',NULL,'123','4089547855','Address to be provided','qwert','HR','Thu Apr 27 15:46:22 PDT 2017',''),(35,'Robin','Utthappa','robin@gmail.com','active',NULL,'123','4089547855','Address to be provided','asdf','Employee','Thu Apr 27 15:47:57 PDT 2017','');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilization`
--

DROP TABLE IF EXISTS `utilization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilization` (
  `sensor_id` varchar(45) NOT NULL,
  `avgutil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sensor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilization`
--

LOCK TABLES `utilization` WRITE;
/*!40000 ALTER TABLE `utilization` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-27 21:15:05
