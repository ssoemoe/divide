-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: divide
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  `developerRequesting` varchar(50) NOT NULL,
  `developerRequested` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'cannot update the dependency','Complete','jmiller','adavis');
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(30) NOT NULL,
  `officePhoneNumber` varchar(15) NOT NULL,
  `position` varchar(30) NOT NULL,
  `team` varchar(30) NOT NULL,
  `joinedDate` date NOT NULL,
  `currentTasks` varchar(30) NOT NULL,
  `currentProjects` varchar(30) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `firstName` (`firstName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('Ava','Davis','adavis','avadavis@divide.com','./Images/avatarImages/avatar1.PNG','applepie','123-456-0987','Technical Consultant','Software Development','2018-04-23','',''),('Benjamin','Taylor','btaylor','benjamintaylor@divide.com','','applepie','123-456-0192','Systems Analyst','Systems Management','2017-04-24','',''),('Emma','Johnson','ejohnson','emmajohnson@divide.com','','applepie','123-456-8765','Junior Developer','Software Development','2017-10-23','',''),('Isabella','Wilson','iwilson','isabellawilson@divide.com','','applepie','123-456-7654','Network Engineer','Network Management','2018-01-29','',''),('James','Miller','jmiller','jamesmiller@divide.com','','applepie','123-456-9876','Technical Consultant','Software Development','2017-09-25','',''),('John','Wick','jwick','jwick@divide.com','','applepie','345-345-4567','Project Manager','Testing','2018-07-04','',''),('Logan','Moore','lmoore','loganmoore@divide.com','','applepie','123-456-6543','Technical Support','Systems Management','2017-11-27','',''),('Liam','Smith','lsmith','liamsmith@divide.com','','applepie','123-456-4321','Senior Developer','Software Development','2016-08-29','',''),('Noah','Williams','nwilliams','noahwilliams@divide.com','','applepie','123-456-3210','Systems Engineer','Systems Management','2016-10-10','',''),('Olivia','Brown','obrown','oliviabrown@divide.com','','applepie','123-456-1098','Software Tester','Testing','2017-08-14','',''),('William','Jones','wjones','williamjones@divide.com','','applepie','123-456-2109','Project Manager','Software Development','2015-11-16','','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `manager` varchar(256) NOT NULL,
  `members` varchar(256) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Blackbox Web Scraper','wjones','adavis, jmiller','Incomplete');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprint`
--

DROP TABLE IF EXISTS `sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `tasks` varchar(200) NOT NULL,
  `notes` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprint`
--

LOCK TABLES `sprint` WRITE;
/*!40000 ALTER TABLE `sprint` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  `createdDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `assignedMembers` varchar(300) NOT NULL,
  `assigner` varchar(256) NOT NULL,
  `relatedProject` varchar(200) NOT NULL,
  `issues` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Update SHA-256 to SHA-512','Incomplete','2018-11-01','2018-12-08','jmiller','wjones','',''),(2,'Integrated testing for the web scraper','Incomplete','2018-11-25','2018-12-04','obrown','jwick','1',''),(3,'update dependencies on Gradle','Complete','2018-09-01','2018-09-07','jmiller','wjones','1','1');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `manager` varchar(256) NOT NULL,
  `members` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Network Management','This team will be responsible for installing and maintaining the computer networks and train staff to give technical support','',''),(3,'Software Development','This team is responsible for researching, designing, implementing and managing software ','wjones','adavis,jmiller,ejohnson'),(4,'Systems Management','This team is responsible for managing a team of programmers, analysts and support specialists.','0',''),(5,'Testing','This team is responsible for the quality of software development and deployment as well as automated and manual tests.','jwick','obrown');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 23:58:54
