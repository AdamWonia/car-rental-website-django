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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-08-15 14:58:16.245138'),(2,'auth','0001_initial','2021-08-15 14:58:30.304506'),(3,'admin','0001_initial','2021-08-15 14:58:33.600465'),(4,'admin','0002_logentry_remove_auto_add','2021-08-15 14:58:33.678531'),(5,'admin','0003_logentry_add_action_flag_choices','2021-08-15 14:58:33.772301'),(6,'contenttypes','0002_remove_content_type_name','2021-08-15 14:58:36.037394'),(7,'auth','0002_alter_permission_name_max_length','2021-08-15 14:58:37.365163'),(8,'auth','0003_alter_user_email_max_length','2021-08-15 14:58:37.693255'),(9,'auth','0004_alter_user_username_opts','2021-08-15 14:58:37.786949'),(10,'auth','0005_alter_user_last_login_null','2021-08-15 14:58:38.974158'),(11,'auth','0006_require_contenttypes_0002','2021-08-15 14:58:39.036641'),(12,'auth','0007_alter_validators_add_error_messages','2021-08-15 14:58:39.177235'),(13,'auth','0008_alter_user_username_max_length','2021-08-15 14:58:41.504852'),(14,'auth','0009_alter_user_last_name_max_length','2021-08-15 14:58:42.707697'),(15,'auth','0010_alter_group_name_max_length','2021-08-15 14:58:43.004455'),(16,'auth','0011_update_proxy_permissions','2021-08-15 14:58:43.098184'),(17,'auth','0012_alter_user_first_name_max_length','2021-08-15 14:58:44.191725'),(18,'sessions','0001_initial','2021-08-15 14:58:44.941682'),(19,'car_rent','0001_initial','2021-08-15 15:31:25.801808'),(20,'car_rent','0002_alter_cars_id','2021-08-16 13:38:16.041881'),(21,'car_rent','0003_main_menu_sub_menu','2021-08-16 13:45:23.645771'),(22,'car_rent','0004_auto_20210816_1601','2021-08-16 14:01:41.515122'),(23,'car_rent','0005_rename_title_category_category','2021-08-16 14:21:44.872188'),(24,'car_rent','0006_popularcars','2021-08-17 13:57:56.125709'),(25,'car_rent','0007_alter_popularcars_year','2021-08-17 15:58:08.301469'),(26,'car_rent','0008_auto_20210819_1507','2021-08-19 13:07:50.041121'),(27,'car_rent','0009_auto_20210819_1516','2021-08-19 13:16:10.860658'),(28,'car_rent','0010_alter_cars_image','2021-08-19 13:31:21.626141'),(29,'car_rent','0011_auto_20210819_1538','2021-08-19 13:38:18.516807'),(30,'car_rent','0012_auto_20210819_1716','2021-08-19 15:24:42.649697'),(31,'car_rent','0013_auto_20210819_1717','2021-08-19 15:24:43.268964'),(32,'car_rent','0014_auto_20210819_1733','2021-08-19 15:33:35.739661'),(33,'car_rent','0015_auto_20210819_1854','2021-08-19 16:54:36.096593'),(34,'car_rent','0016_alter_category_url','2021-08-19 17:15:39.006042'),(35,'car_rent','0017_alter_category_url','2021-08-19 17:16:17.056039'),(36,'car_rent','0018_comments','2021-08-20 13:25:00.157235'),(37,'car_rent','0019_comments_created_date','2021-08-20 14:15:34.580464'),(38,'car_rent','0020_alter_comments_created_date','2021-08-20 14:15:34.627318'),(39,'car_rent','0021_comments_user','2021-08-24 17:43:55.049483'),(40,'car_rent','0022_remove_comments_user','2021-08-24 17:50:27.873078'),(41,'car_rent','0023_comments_author','2021-08-24 18:00:52.240906'),(42,'car_rent','0002_alter_comments_created_by','2021-08-24 18:44:50.200134'),(43,'car_rent','0002_comments_author','2021-08-24 18:49:44.262304'),(44,'car_rent','0003_alter_comments_author','2021-08-24 18:53:01.748368'),(45,'car_rent','0004_rename_author_comments_created_by','2021-08-25 15:27:37.105771'),(46,'car_rent','0005_alter_category_url','2021-08-29 19:11:14.632597'),(47,'car_rent','0006_rename_make_popularcars_brand','2021-08-30 16:15:53.784144'),(48,'car_rent','0007_rename_url_popularcars_image_url','2021-08-30 16:17:18.915667'),(49,'car_rent','0008_alter_popularcars_image_url','2021-08-30 16:18:22.413565'),(50,'car_rent','0009_popularcars_site','2021-08-30 16:32:18.964843'),(51,'car_rent','0010_auto_20210830_1833','2021-08-30 16:34:01.411428'),(52,'car_rent','0011_popularcars_active','2021-08-30 16:38:28.878495'),(53,'car_rent','0012_alter_cars_image_url','2021-09-03 15:41:43.114510');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 20:08:10
