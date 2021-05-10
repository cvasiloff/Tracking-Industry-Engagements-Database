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
-- Table structure for table `companycontact`
--

DROP TABLE IF EXISTS `companycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companycontact` (
  `companyContact_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `companyContact_FirstName` varchar(50) NOT NULL,
  `companyContact_MiddleName` varchar(20) NOT NULL,
  `companyContact_LastName` varchar(50) NOT NULL,
  `companyContact_Title` varchar(25) DEFAULT NULL,
  `companyContact_DNC` tinyint(1) DEFAULT '0',
  `companyContact_PrimaryContactMethod` enum('Email','Call','Text','In-Person','No Preference') DEFAULT 'No Preference',
  `companyContact_PhoneNumber` varchar(15) DEFAULT NULL,
  `companyContact_Email` varchar(50) DEFAULT NULL,
  `companyContact_Address` varchar(50) DEFAULT NULL,
  `companyContact_City` varchar(50) DEFAULT NULL,
  `companyContact_State` varchar(25) DEFAULT NULL,
  `companyContact_Zipcode` varchar(10) DEFAULT NULL,
  `companyContact_Company_ID` bigint(20) NOT NULL,
  `companyContact_IsPrimaryContact` tinyint(1) DEFAULT '0',
  `companyContact_DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `companyContact_DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`companyContact_ID`),
  KEY `fk_companyContact_company` (`companyContact_Company_ID`),
  CONSTRAINT `fk_companyContact_company` FOREIGN KEY (`companyContact_Company_ID`) REFERENCES `company` (`company_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companycontact`
--

LOCK TABLES `companycontact` WRITE;
/*!40000 ALTER TABLE `companycontact` DISABLE KEYS */;
INSERT INTO `companycontact` VALUES (1,'Sam','','Adams','CEO',0,'','345-123-3456','sadams@wellcare.com',NULL,'Lakeland','Florida','11111',1,0,'2021-03-17 21:20:33','2021-03-17 21:20:33'),(2,'John','','Smith','Technician',0,'','123-423-2352','jsmith@email.com',NULL,'Miami','Florida','22222',2,0,'2021-03-17 21:20:34','2021-03-17 21:20:34'),(3,'Mickey','','Mouse','Head Mouse',0,'','546-345-2345','mmouse@disney.gov',NULL,'Orlando','Florida','33333',3,0,'2021-03-17 21:20:35','2021-03-17 21:20:35'),(4,'Johnson','','Johnson','Department Chair',0,'','235-456-2385','jjohnson@johnson.com',NULL,'San Diego','California','44444',4,0,'2021-03-17 21:20:36','2021-03-17 21:20:36'),(5,'Princess','','Diana','Princess',0,'Text','843-235-6783','pdiana@london.co.eu',NULL,'Columbus','Ohio','55555',5,0,'2021-03-17 21:20:36','2021-03-17 21:20:36'),(6,'King','','George','King',0,'Call','239-123-6523','kgeorge@london.co.eu',NULL,'Orlando','Florida','66666',6,0,'2021-03-17 21:20:37','2021-03-17 21:20:37'),(7,'Chris','','Basgall','Employee',0,'','895-123-5224','cbasgall@company.edu',NULL,'Lakeland','Florida','77777',7,0,'2021-03-17 21:20:38','2021-03-17 21:20:38'),(8,'Harry','','Potter','Wizard',0,'Email','739-812-4122','hpotter@hogwarts.edu',NULL,'London','Mississippi','88888',8,0,'2021-03-17 21:20:39','2021-03-17 21:20:39'),(9,'Test','','User','Debugging Expert',0,'','843-235-6783','tuser@null.null',NULL,'Lakeland','Florida','99999',9,0,'2021-03-17 21:20:40','2021-03-17 21:20:40'),(10,'John','','Legend','Singer',0,'In-Person','739-812-4122','jlegend@legend.com',NULL,'Lakeland','Florida','55556',10,0,'2021-03-17 21:20:40','2021-03-17 21:20:40');
/*!40000 ALTER TABLE `companycontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 15:37:37
