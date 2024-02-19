-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: condon
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `voting_users`
--

DROP TABLE IF EXISTS `voting_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voting_users` (
  `id_voting_users` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `apartament` int NOT NULL,
  `bloc` varchar(3) NOT NULL,
  `date_voting` varchar(45) NOT NULL,
  `option_1` int NOT NULL,
  `option_2` int NOT NULL,
  `option_3` int DEFAULT NULL,
  `option_4` int DEFAULT NULL,
  `option_5` int DEFAULT NULL,
  `option_6` int DEFAULT NULL,
  `option_7` int DEFAULT NULL,
  `option_8` int DEFAULT NULL,
  `option_9` int DEFAULT NULL,
  `option_10` int DEFAULT NULL,
  PRIMARY KEY (`id_voting_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_users`
--

LOCK TABLES `voting_users` WRITE;
/*!40000 ALTER TABLE `voting_users` DISABLE KEYS */;
INSERT INTO `voting_users` VALUES ('18762f81-20cb-441e-8e67-8973bda0b9cf','febed6b1-12a9-4477-b363-9cf6bf18249b','5fed923e-5722-4df4-850d-763a8e686bf9','Bruno Gomes Czeck',611,'C','2024-02-07 16:24:30',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5f748f45-6cfc-4266-a8f3-52facad05b6a','30b24a13-bbd5-4191-881d-8b6ec04652dd','5fed923e-5722-4df4-850d-763a8e686bf9','Eduarda Nathaly',612,'C','2024-02-09 12:24:30',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('64be0618-18f7-4dec-83a5-5b3adcb3790a','a390fac7-a9dd-4f97-9429-cf818c9198c2','41949245-0d08-4564-bd12-90b6a2f86618','Edinei',511,'A','2024-02-07 16:24:30',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `voting_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 23:02:16
