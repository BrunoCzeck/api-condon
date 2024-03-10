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
  `id_voting` varchar(255) NOT NULL,
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
  PRIMARY KEY (`id_voting_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_users`
--

LOCK TABLES `voting_users` WRITE;
/*!40000 ALTER TABLE `voting_users` DISABLE KEYS */;
INSERT INTO `voting_users` VALUES ('a6b04967-be59-4245-b244-58f01021ccb8','349b8c58-ef28-4ffb-ad80-885bbce7931a','a390fac7-a9dd-4f97-9429-cf818c9198c2','41949245-0d08-4564-bd12-90b6a2f86618','Edinei',511,'A','2024-03-09 17:22:30',1,0,0,0,0,0),('c2047117-ccd3-41ae-a124-9bc16902da1e','f3bbfd24-e0d0-4afd-b1bf-055a910da218','a390fac7-a9dd-4f97-9429-cf818c9198c2','41949245-0d08-4564-bd12-90b6a2f86618','Edinei',511,'A','2024-03-09',1,0,0,0,0,0),('e12dbeff-72ee-4a70-83a1-07e6e0eca4d9','349b8c58-ef28-4ffb-ad80-885bbce7931a','b342e52d-4224-4b07-bc99-90ea64ae2323','41949245-0d08-4564-bd12-90b6a2f86618','Harry',102,'C','2024-03-09 17:22:30',1,0,0,0,0,0);
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

-- Dump completed on 2024-03-09 21:30:50
