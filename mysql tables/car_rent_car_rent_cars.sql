-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: car_rent
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `car_rent_cars`
--

DROP TABLE IF EXISTS `car_rent_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rent_cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `site_url` varchar(200) NOT NULL,
  `year` varchar(20) NOT NULL,
  `engine` varchar(200) NOT NULL,
  `power` varchar(20) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rent_cars`
--

LOCK TABLES `car_rent_cars` WRITE;
/*!40000 ALTER TABLE `car_rent_cars` DISABLE KEYS */;
INSERT INTO `car_rent_cars` VALUES (4,'Seat','Leon FR','399 zł/day','2021-08-19 15:25:31.000000',1,'daily','2017','Petrol 2.0l TSI','280 HP','images/used/seat_leon.jpg'),(5,'BMW','G20','499 zł/day','2021-08-19 15:26:40.000000',1,'daily','2019','Diesel 2.0d xDrive','150 HP','images/used/bmw_g20.jpg'),(6,'Mazda','3','399 zł/day','2021-08-19 15:27:16.000000',1,'daily','2018','Petrol 2.5l','186 HP','images/used/mazda3.jpg'),(8,'Fiat','124 GT','499 zł/day','2021-08-19 16:41:25.000000',1,'sport','2019','Petrol 1.4l','168 HP','images/used/fiat124.jpg'),(9,'Porsche','911 GT3','899 zł/day','2021-08-19 16:43:42.000000',1,'sport','2007','Petrol 3.8l','435 HP','images/used/porsche_gt3.jpg'),(10,'BMW','M4','699 zł/day','2021-08-19 16:44:52.000000',1,'sport','2017','Petrol 3.0l','431 HP','images/used/bmw_m4.jpg'),(11,'Audi','RS3','599 zł/day','2021-08-19 16:45:36.000000',1,'sport','2018','Petrol 2.5l','400 HP','images/used/audi_rs3.jpg'),(12,'Dodge','Charger','1099 zł/day','2021-08-19 16:55:23.000000',1,'muscle','1969','Petrol 6.3l V8','294 HP','images/used/charger.jpg'),(13,'Ford','Mustang','1299 zł/day','2021-08-19 16:56:13.000000',1,'muscle','1968','Petrol 5.8l V8','250 HP','images/used/mustang68.jpg'),(14,'Ford','Galaxie','1599 zł/day','2021-08-19 17:00:00.000000',1,'muscle','1964','Petrol 7.5l V8','217 HP','images/used/galaxy.jpg'),(15,'Plymouth','Belvedere','1099 zł/day','2021-08-19 17:13:00.000000',1,'muscle','1966','Petrol 4.5l V8','180 HP','images/used/belvedere.jpg'),(16,'Volvo','S60','299 zł/day','2021-08-31 17:56:31.000000',0,'daily','2016','Petrol 2.0T','203','images/used/volvo_s60.jpg');
/*!40000 ALTER TABLE `car_rent_cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 20:08:13
