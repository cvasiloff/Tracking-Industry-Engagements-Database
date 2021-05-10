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
-- Table structure for table `engagementscompanies`
--

DROP TABLE IF EXISTS `engagementscompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engagementscompanies` (
  `engagementsCompanies_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `engagementsCompanies_engagements_ID` bigint(20) NOT NULL,
  `engagementsCompanies_company_ID` bigint(20) NOT NULL,
  `engagementsOthers_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engagementsOthers_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`engagementsCompanies_ID`),
  KEY `fk_engagementsCompanies_engagements` (`engagementsCompanies_engagements_ID`),
  KEY `fk_engagementsCompanies_company` (`engagementsCompanies_company_ID`),
  CONSTRAINT `fk_engagementsCompanies_company` FOREIGN KEY (`engagementsCompanies_company_ID`) REFERENCES `company` (`company_ID`) ON DELETE CASCADE,
  CONSTRAINT `fk_engagementsCompanies_engagements` FOREIGN KEY (`engagementsCompanies_engagements_ID`) REFERENCES `engagements` (`engagements_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engagementscompanies`
--

LOCK TABLES `engagementscompanies` WRITE;
/*!40000 ALTER TABLE `engagementscompanies` DISABLE KEYS */;
INSERT INTO `engagementscompanies` VALUES (12,1,1,'2021-03-17 21:22:20','2021-03-17 21:22:20'),(13,2,2,'2021-03-17 21:22:20','2021-03-17 21:22:20'),(14,3,3,'2021-03-17 21:22:21','2021-03-17 21:22:21'),(15,4,4,'2021-03-17 21:22:21','2021-03-17 21:22:21'),(16,5,5,'2021-03-17 21:22:21','2021-03-17 21:22:21'),(17,5,6,'2021-03-17 21:22:22','2021-03-17 21:22:22'),(18,6,7,'2021-03-17 21:22:22','2021-03-17 21:22:22'),(19,7,1,'2021-03-17 21:22:22','2021-03-17 21:22:22'),(20,8,8,'2021-03-17 21:22:23','2021-03-17 21:22:23'),(21,9,9,'2021-03-17 21:22:23','2021-03-17 21:22:23'),(22,10,10,'2021-03-17 21:22:23','2021-03-17 21:22:23');
/*!40000 ALTER TABLE `engagementscompanies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:28
