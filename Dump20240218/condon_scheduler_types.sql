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
-- Table structure for table `scheduler_types`
--

DROP TABLE IF EXISTS `scheduler_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_types` (
  `id_scheduler` varchar(255) NOT NULL,
  `id_enterprise` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `hours` json NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id_scheduler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_types`
--

LOCK TABLES `scheduler_types` WRITE;
/*!40000 ALTER TABLE `scheduler_types` DISABLE KEYS */;
INSERT INTO `scheduler_types` VALUES ('563a22f9-0b3f-4887-8802-b94219a5d388','41949245-0d08-4564-bd12-90b6a2f86618','Churrasqueira','{\"hours\": [\"06:00\", \"07:00\", \"08:00\", \"09:00\", \"10:00\", \"11:00\", \"12:00\", \"13:00\", \"14:00\", \"15:00\", \"16:00\", \"17:00\", \"18:00\", \"19:00\", \"20:00\", \"21:00\", \"22:00\"]}','2023-12-26 23:24:34'),('6621a8bc-dfeb-4882-8ce1-4beac49972b9','41949245-0d08-4564-bd12-90b6a2f86618','Piscina','{\"hours\": [\"06:00\", \"07:00\", \"08:00\", \"09:00\", \"10:00\", \"11:00\", \"12:00\", \"13:00\", \"14:00\", \"15:00\", \"16:00\", \"17:00\", \"18:00\", \"19:00\", \"20:00\", \"21:00\", \"22:00\", \"23:00\", \"00:00\"]}','2023-12-21 18:08:12'),('67ea65a5-00c9-44f0-b5e7-beaed6d8a7e0','123','academia','{\"hours\": [\"09:00\", \"08:00\", \"07:00\", \"05:00\"]}','2023-12-29 22:56:49'),('70ff9aa9-d230-40a6-b684-5d1e62be073a','5fed923e-5722-4df4-850d-763a8e686bf9','Piscina','{\"hours\": [\"01:00\"]}','2024-01-02 22:46:43'),('96917d14-9ae6-454e-a2bb-d93ac1889ec6','41949245-0d08-4564-bd12-90b6a2f86618','Academia','{\"hours\": [\"06:00\", \"07:00\", \"08:00\", \"09:00\", \"10:00\", \"11:00\", \"12:00\", \"13:00\", \"14:00\", \"15:00\", \"16:00\", \"17:00\", \"18:00\", \"19:00\", \"20:00\", \"21:00\", \"22:00\", \"23:00\", \"00:00\"]}','2023-12-26 22:14:30'),('ab6d605c-5199-416a-9de2-f401c006fb53','123','academia','{\"hours\": [\"09:00\", \"08:00\", \"07:00\", \"06:00\"]}','2023-12-29 22:56:34'),('eb06fbd8-7f3e-4509-b905-d181966e973a','41949245-0d08-4564-bd12-90b6a2f86618','Espaço novo','{\"hours\": [\"01:00\", \"04:00\", \"05:00\"]}','2023-12-29 22:58:20'),('f5add54c-4bc3-465a-9582-fa6ca8a1799b','5fed923e-5722-4df4-850d-763a8e686bf9','Academia','{\"hours\": [\"06:00\", \"07:00\", \"08:00\", \"09:00\", \"10:00\", \"11:00\", \"12:00\", \"13:00\", \"14:00\", \"15:00\", \"16:00\", \"17:00\", \"18:00\", \"19:00\", \"20:00\", \"21:00\", \"22:00\", \"23:00\", \"00:00\"]}','2023-12-21 18:08:12');
/*!40000 ALTER TABLE `scheduler_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 23:02:18
