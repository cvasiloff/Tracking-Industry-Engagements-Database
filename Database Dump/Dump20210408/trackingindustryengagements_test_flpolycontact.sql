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
-- Table structure for table `flpolycontact`
--

DROP TABLE IF EXISTS `flpolycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flpolycontact` (
  `flPolyContact_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `flPolyContact_FirstName` varchar(50) NOT NULL,
  `flPolyContact_MiddleName` varchar(20) DEFAULT NULL,
  `flPolyContact_LastName` varchar(50) NOT NULL,
  `flPolyContact_PrimaryContactMethod` enum('Email','Call','Text','In-Person','No Preference') DEFAULT 'No Preference',
  `flPolyContact_PhoneNumber` varchar(15) DEFAULT NULL,
  `flPolyContact_Email` varchar(50) DEFAULT NULL,
  `flPolyContact_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flPolyContact_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flPolyContact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flpolycontact`
--

LOCK TABLES `flpolycontact` WRITE;
/*!40000 ALTER TABLE `flpolycontact` DISABLE KEYS */;
INSERT INTO `flpolycontact` VALUES (1,'Matt',NULL,'Bohm','Email','123-456-7890','mbohm@floridapoly.edu','2021-03-17 21:21:05','2021-03-17 21:21:05'),(2,'Lidia',NULL,'Vigil','Call','111-111-1111','lvigil@floridapoly.edu','2021-03-17 21:21:05','2021-03-17 21:21:05'),(3,'Erica',NULL,'Johnson','Text','222-222-2222','ejohnson@floridapoly.edu','2021-03-17 21:21:06','2021-03-17 21:21:06'),(4,'Kathy',NULL,'Bowman','In-Person','333-333-3333','kbowman@floridapoly.edu','2021-03-17 21:21:06','2021-03-17 21:21:06'),(5,'Pairris',NULL,'Jones','','444-444-4444','pjones@floridapoly.edu','2021-03-17 21:21:06','2021-03-17 21:21:06'),(6,'Maggie',NULL,'Mariucci','','555-555-5555','mmariucci@floridapoly.edu','2021-03-17 21:21:07','2021-03-17 21:21:07'),(7,'Kristen',NULL,'Spiker','Email','098-765-4321','kspiker@floridapoly.edu','2021-03-17 21:21:07','2021-03-17 21:21:07'),(8,'Grisselle',NULL,'Centeno','','465-777-7854','gcenteno@floridapoly.edu','2021-03-17 21:21:08','2021-03-17 21:21:08'),(9,'Mary',NULL,'Vollaro','Email','213-132-1351','mvollaro@floridapoly.edu','2021-03-17 21:21:08','2021-03-17 21:21:08');
/*!40000 ALTER TABLE `flpolycontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:27
