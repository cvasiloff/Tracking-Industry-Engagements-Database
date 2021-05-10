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
-- Table structure for table `engagementscontacts`
--

DROP TABLE IF EXISTS `engagementscontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engagementscontacts` (
  `engagementsContacts_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `engagementsContacts_engagements_ID` bigint(20) NOT NULL,
  `engagementsContacts_companyContact_ID` bigint(20) NOT NULL,
  `engagementsContacts_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engagementsContacts_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`engagementsContacts_ID`),
  KEY `fk_engagementsContacts_engagements` (`engagementsContacts_engagements_ID`),
  KEY `fk_engagementsContacts_companyContact` (`engagementsContacts_companyContact_ID`),
  CONSTRAINT `fk_engagementsContacts_companyContact` FOREIGN KEY (`engagementsContacts_companyContact_ID`) REFERENCES `companycontact` (`companyContact_ID`),
  CONSTRAINT `fk_engagementsContacts_engagements` FOREIGN KEY (`engagementsContacts_engagements_ID`) REFERENCES `engagements` (`engagements_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engagementscontacts`
--

LOCK TABLES `engagementscontacts` WRITE;
/*!40000 ALTER TABLE `engagementscontacts` DISABLE KEYS */;
INSERT INTO `engagementscontacts` VALUES (1,1,1,'2021-03-17 22:27:28','2021-03-17 22:27:28'),(2,2,2,'2021-03-17 22:27:28','2021-03-17 22:27:28'),(3,3,3,'2021-03-17 22:27:29','2021-03-17 22:27:29'),(4,4,1,'2021-03-17 22:27:29','2021-03-17 22:27:29'),(5,5,5,'2021-03-17 22:27:29','2021-03-17 22:27:29'),(6,5,1,'2021-03-17 22:27:30','2021-03-17 22:27:30'),(7,6,7,'2021-03-17 22:27:30','2021-03-17 22:27:30'),(8,7,1,'2021-03-17 22:27:30','2021-03-17 22:27:30'),(9,8,5,'2021-03-17 22:27:30','2021-03-17 22:27:30'),(10,9,3,'2021-03-17 22:27:31','2021-03-17 22:27:31'),(11,10,9,'2021-03-17 22:27:31','2021-03-17 22:27:31'),(12,10,10,'2021-03-17 22:27:31','2021-03-17 22:27:31');
/*!40000 ALTER TABLE `engagementscontacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:29
