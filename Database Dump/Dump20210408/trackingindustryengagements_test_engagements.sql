-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: engagements-mysql.mysql.database.azure.com    Database: trackingindustryengagements_test
-- ------------------------------------------------------
-- Server version	5.6.47.0

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
-- Table structure for table `engagements`
--

DROP TABLE IF EXISTS `engagements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engagements` (
  `engagements_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `engagements_Title` varchar(50) NOT NULL,
  `engagements_DateOccurred` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engagements_FLPOLYContact_ID` bigint(20) NOT NULL,
  `engagements_Status` enum('Started','In Progress','Action Completed','No Action Required') DEFAULT 'No Action Required',
  `engagements_Notes` varchar(500) DEFAULT NULL,
  `engagements_Action` varchar(500) DEFAULT NULL,
  `engagements_FollowUp` varchar(500) DEFAULT NULL,
  `engagements_Attatchments` blob,
  `engagements_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engagements_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`engagements_ID`),
  KEY `fk_engagements_floridaPolyContact` (`engagements_FLPOLYContact_ID`),
  CONSTRAINT `fk_engagements_floridaPolyContact` FOREIGN KEY (`engagements_FLPOLYContact_ID`) REFERENCES `flpolycontact` (`flPolyContact_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engagements`
--

LOCK TABLES `engagements` WRITE;
/*!40000 ALTER TABLE `engagements` DISABLE KEYS */;
INSERT INTO `engagements` VALUES (1,'Wellcare CareerFair Opprotunity','2021-03-17 21:21:54',1,'In Progress','Wants to hire some full time students.  Also have a scholarship Opportunity for Health Systems Engineering','Reroute to Pairris for full time hires.  Talk to Grisselle about some things.','',NULL,'2021-03-17 21:21:54','2021-03-17 21:21:54'),(2,'SaddleCreek Internship Story','2021-03-17 21:21:54',3,'In Progress','Wants to do a story about their intern','Think about this later.  Check about student academic standing.','',NULL,'2021-03-17 21:21:54','2021-03-17 21:21:54'),(3,'Duracast capstone projects','2021-03-17 21:21:55',4,'Action Completed','Wants to do some capstone projects','Reroute to Matt','Matt set up a capstone project',NULL,'2021-03-17 21:21:55','2021-03-17 21:21:55'),(4,'Raymond','2021-03-17 21:21:55',5,'No Action Required','','','',NULL,'2021-03-17 21:21:55','2021-03-17 21:21:55'),(5,'MacDill & Universal','2021-03-17 21:21:56',6,'In Progress','','','',NULL,'2021-03-17 21:21:56','2021-03-17 21:21:56'),(6,'Internship Program','2021-03-17 21:21:56',1,'In Progress','Thinking about starting an internship program.  Runs a machine shop.  Could use some engineers and also machinist.  Connected him with Mori Toosi at Polk State.','Follow-Up with him in a month','Need to follow up with Matt in 30 days ',NULL,'2021-03-17 21:21:56','2021-03-17 21:21:56'),(7,'Test Title','2021-03-17 21:21:57',7,'In Progress','test','need to follow up with Matt','',NULL,'2021-03-17 21:21:57','2021-03-17 21:21:57'),(8,'To the moon!','2021-03-17 21:21:57',2,'In Progress','They want to fly us all to the moon and back!','Connect the with all our friends','',NULL,'2021-03-17 21:21:57','2021-03-17 21:21:57'),(9,'Good Interaction','2021-03-17 21:21:58',2,'In Progress','Positive interaction. Discussed many things.','Connect with decision makers and advance the conversation','',NULL,'2021-03-17 21:21:58','2021-03-17 21:21:58'),(10,'Marine Sample','2021-03-17 21:21:58',6,'No Action Required','46646464','45445','',NULL,'2021-03-17 21:21:58','2021-03-17 21:21:58');
/*!40000 ALTER TABLE `engagements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:32
