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
-- Table structure for table `voting`
--

DROP TABLE IF EXISTS `voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voting` (
  `id_voting` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `votacao_change` int NOT NULL,
  `date_init` varchar(45) NOT NULL,
  `date_end` varchar(45) NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) DEFAULT NULL,
  `option_4` varchar(45) DEFAULT NULL,
  `option_5` varchar(45) DEFAULT NULL,
  `option_6` varchar(45) DEFAULT NULL,
  `option_7` varchar(45) DEFAULT NULL,
  `option_8` varchar(45) DEFAULT NULL,
  `option_9` varchar(45) DEFAULT NULL,
  `option_10` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_voting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting`
--

LOCK TABLES `voting` WRITE;
/*!40000 ALTER TABLE `voting` DISABLE KEYS */;
INSERT INTO `voting` VALUES ('5a3fd5b2-7550-487e-9b8c-ab4ddb8da19c','41949245-0d08-4564-bd12-90b6a2f86618','Fechamento de Sacada','Reunião para discutirmos sobre o fechamento da sacada',1,'2024-02-05 00:00:00','2024-02-10 00:00:00','Mão Amiga','Padrão','Janela',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7b36694f-43b8-4bbd-9925-30ce6413222f','5fed923e-5722-4df4-850d-763a8e686bf9','Fechamento de Sacada','Reunião para discutirmos sobre o fechamento da sacada',1,'2024-02-05 00:00:00','2024-02-10 00:00:00','Mão Amiga','Padrão','Janela',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `voting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 23:02:17
