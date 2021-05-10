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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_Name` varchar(50) NOT NULL,
  `company_DNC` tinyint(1) DEFAULT '0',
  `company_PhoneNumber` varchar(15) DEFAULT NULL,
  `company_Email` varchar(50) DEFAULT NULL,
  `company_Address` varchar(50) DEFAULT NULL,
  `company_City` varchar(50) DEFAULT NULL,
  `company_State` varchar(25) DEFAULT NULL,
  `company_Zipcode` varchar(10) DEFAULT NULL,
  `company_Description` varchar(250) DEFAULT NULL,
  `company_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_ID`),
  UNIQUE KEY `company_Name` (`company_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'WellCare',0,'1-800-960-2530','main@wellcare.com','7700 Forsyth Blvd','St. Louis','Missouri','63105','American health insurance company that provides managed care services primarily through Medicaid','2021-03-17 21:20:09','2021-03-17 21:20:09'),(2,'Saddle Creek',0,'(863)576-1435','contact@saddlecreek.com','8054 State Rd 33 N','Lakeland','Florida','33805','Seamlessly synchronize inventory and distribution across every purchasing channel.','2021-03-17 21:20:10','2021-03-17 21:20:10'),(3,'Duracast',0,'(123)456-7890','us@duracast.com','1234 Example Lane','San Diego','California','90210','','2021-03-17 21:20:11','2021-03-17 21:20:11'),(4,'Raymond James',0,'(222)111-8822','raymond@james.com','4536 Raymond Road','Miami','Florida','55641','Company of Raymond James','2021-03-17 21:20:11','2021-03-17 21:20:11'),(5,'MacDil AFB',0,'(999)272-0802','macdil@adb.com','2929 Macdil Ave','Columbus','Ohio','11111','','2021-03-17 21:20:12','2021-03-17 21:20:12'),(6,'Universal Studios',0,'(333)111-4444','studios@universal.com','6000 Universal Blvd','Orlando','Florida','32819','American theme park and entertainment resort complex based in Orlando, Florida','2021-03-17 21:20:13','2021-03-17 21:20:13'),(7,'Catamount Machine Works',0,'789-190-0239','works@catamount.com','1237 Machine Lane','Las Vegas','Nevada','78954','','2021-03-17 21:20:14','2021-03-17 21:20:14'),(8,'L3 (Harris)',0,'273-929-1234','L3@harris.com','3497 Sample St','Jacksonville','Florida','88505','','2021-03-17 21:20:14','2021-03-17 21:20:14'),(9,'Publix',0,'863-929-1029','contact@publix.com','4520 Socrum Rd','Lakeland','Florida','33805','','2021-03-17 21:20:15','2021-03-17 21:20:15'),(10,'JL Marine',0,'349-213-2139','jl@marine.gov','1230 Marine Lane','Fort Pierce','Florida','33905','','2021-03-17 21:20:16','2021-03-17 21:20:16');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:35
