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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `firstName` varchar(256) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `position` varchar(30) NOT NULL,
  `team` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('Ada','Davis','adavis','avadavis@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-456-0987','Technical Consultant','Software Development'),('Another','User','auser','auser@divide.com','/View/Images/avatarImages/avatar3.png','applepie','987-654-3210','Software Developer','Testing'),('Benjamin','Taylor','btaylor','benjamintaylor@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-456-0192','Systems Analyst','Systems Management'),('Emma','Johnson','ejohnson','emmajohnson@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-456-8765','Junior Developer','Software Development'),('Isabella','Wilson','iwilson','isabellawilson@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-456-7654','Network Engineer','Network Management'),('Jerome','Boteng','jboteng','jboteng@divide.com','/View/Images/avatarImages/avatar6.png','applepie','301-502-2543','Architecture Analyst','Systems Management'),('John','Cena','jcena','jcena@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-345-6767','Network Engineer','Network Management'),('James','Miller','jmiller','jamesmiller@divide.com','/View/Images/avatarImages/avatar3.png','applepie','123-456-9876','Technical Consultant','Software Development'),('Jolly','Molly','jmolly','jmolly@divide.com','/View/Images/avatarImages/avatar2.png','applepie','301-502-2543','Junior Software Developer','Software Development'),('Jaqueline','Perry','jperry','jperry@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-345-6767','Database Developer','Software Development'),('John','Wick','jwick','jwick@divide.com','/View/Images/avatarImages/avatar4.png','applepie','345-345-4567','Project Manager','Testing'),('Logan','Moore','lmoore','loganmoore@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-456-6543','Technical Support','Systems Management'),('Liam','Smith','lsmith','liamsmith@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-456-4321','Senior Developer','Software Development'),('Megan','Kee','mkee','mkee@divide.com','/View/Images/avatarImages/avatar5.png','applepie','301-502-2543','Software Tester','Testing'),('Noah','Williams','nwilliams','noahwilliams@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-456-3210','Systems Engineer','Systems Management'),('Olivia','Brown','obrown','oliviabrown@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-456-1098','Software Tester','Testing'),('Richard','Do','rdo','rdo@divide.com','/View/Images/avatarImages/avatar8.png','applepie','301-502-2543','Database Developer','Divide'),('Sarah','Joel','sj','sj@divide.com','/View/Images/avatarImages/avatar9.png','applepie','123-345-6767','Network Administrator','Network Management'),('Sarah','Jones','sjones','sjones@divide.com','/View/Images/avatarImages/avatar2.png','applepie','301-502-2543','Network Engineer','Network Management'),('Susan','Ngo','sngo','sngo@divide.com','/View/Images/avatarImages/avatar6.png','applepie','123-345-6767','Junior Software Developer','Divide'),('Shane','Moe','ssoemoe','ssoemoe@divide.com','/View/Images/avatarImages/avatar6.png','applepie','301-502-2543','Project Manager','Software Development'),('Tyler','Jones','tjones','tjones@divide.com','/View/Images/avatarImages/avatar5.png','applepie','123-345-6767','Network Engineer','Network Management'),('William','James','wjames','wjames@divide.com','/View/Images/avatarImages/avatar3.png','applepie','301-502-2543','Systems Analyst','Systems Management'),('William','Jones','wjones','williamjones@divide.com','/View/Images/avatarImages/avatar4.png','applepie','123-456-2109','Project Manager','Software Development'),('Yared','Tsheaye','yt','yt@divide.com','/View/Images/avatarImages/avatar8.png','applepie','301-502-2543','Software Tester','Testing');
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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Blackbox Web Scraper','wjones','adavis, jmiller',0),(3,'Penetration Testing','jwick','obrown',0),(8,'Sonarqube installation and config','jwick','btaylor,mkee',0),(12,'REST api','jwick','obrown,mkee',0),(16,'Divide','ssoemoe','mkee,rdo,sngo',0),(18,'NP','jwick','adavis,auser,btaylor',0);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
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
  `status` int(11) NOT NULL,
  `created` varchar(256) NOT NULL,
  `due` varchar(256) NOT NULL,
  `members` varchar(300) NOT NULL,
  `manager` varchar(256) NOT NULL,
  `project` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Update SHA-256 to SHA-512',0,'11-01-2018','12-08-2018','jmiller','wjones','1'),(2,'Integrated testing for the web scraper',1,'11-25-2018','12-04-2018','obrown,nwilliams','jwick','3'),(3,'update dependencies on Gradle',1,'09-01-2018','09-07-2018','jmiller','wjones','1'),(4,'Install Kali Linux on VM',1,'12-03-2018','12-10-2018','obrown','jwick','3'),(14,'Design Database',1,'11-04-2018','11-12-2018','rdo','ssoemoe','16'),(15,'Finish presentation',0,'12-04-2018','12-04-2018','mkee,rdo,sngo,ssoemoe','ssoemoe','16'),(17,'Add nav bar',1,'11-04-2018','11-12-2018','mkee,sngo','ssoemoe','16'),(20,'Update the current directory',1,'12-04-2018','12-31-2018','jboteng','jwick','8');
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
INSERT INTO `team` VALUES (1,'Network Management','This team will be responsible for installing and maintaining the computer networks and train staff to give technical support','wjones','jcenar'),(3,'Software Development','This team is responsible for researching, designing, implementing and managing software ','wjones','jmolly,jmiller'),(4,'Systems Management','This team is responsible for managing a team of programmers, analysts and support specialists.','jwick',',wjames,jboteng'),(5,'Testing','This team is responsible for the quality of software development and deployment as well as automated and manual tests.','wjones','obrown,btaylor,mkee,auser,yt'),(6,'Divide','Scrum Management Application','ssoemoe','rdo,sngo,mkee');
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

-- Dump completed on 2018-12-04 14:55:27
