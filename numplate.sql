-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: numberplate
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `p_details`
--

DROP TABLE IF EXISTS `p_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p_details` (
  `numplate` char(15) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `surname` char(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `mobilenum` bigint DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  PRIMARY KEY (`numplate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_details`
--

LOCK TABLES `p_details` WRITE;
/*!40000 ALTER TABLE `p_details` DISABLE KEYS */;
INSERT INTO `p_details` VALUES ('CHO1ANOOO1','Renu','Kumawat',40,'Jaipur, Raj',9784584471,'dr.renu.kumawat@gmail.com'),('DZI7YXR','Olivia','Davis',25,'NY,US',6377393654,'igoliviadavis@gmail.com'),('HR26DK8337','Anjal','Dev',42,'Haryana',9602946543,'udit.199303209@muj.manipal.edu'),('KL21S8086','Harsh','Dev',42,'Kerela',9602946543,'harsh.199303212@muj.manipal.edu'),('MH20EE7598','Vijay','Sir',40,'Pune, Mah',8963043812,'vijaykumar.sharma@jaipur.manipal.edu'),('MH20EJ0364','Anjal','Mahajan',22,'Mumbai, Mah',9602946543,'anjalmahajan12@gmail.com'),('RJ01CF0069','Udit','Bhargava',22,'Ajmer,Raj',9602947654,'uditbhargava14@gmail.com'),('RJ14CX9386','Harsh','Solanki',22,'jaipur raj',6377393735,'harshsolanki1414@gmail.com'),('YSX213','Aditya','Datta',24,'Delhi',9910380465,'adityadatta2000@gmail.com');
/*!40000 ALTER TABLE `p_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27  3:02:59
