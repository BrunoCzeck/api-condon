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
-- Table structure for table `correspondence_type`
--

DROP TABLE IF EXISTS `correspondence_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correspondence_type` (
  `id` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondence_type`
--

LOCK TABLES `correspondence_type` WRITE;
/*!40000 ALTER TABLE `correspondence_type` DISABLE KEYS */;
INSERT INTO `correspondence_type` VALUES ('59160feb-2611-4057-943d-e8ae958fc804','41949245-0d08-4564-bd12-90b6a2f86618','Palete'),('a946888f-aa09-4778-ad7f-93a37fcbbb9a','5fed923e-5722-4df4-850d-763a8e686bf9','Caixa'),('b1557cd7-4ada-49c9-98c3-054f874eea9f','5fed923e-5722-4df4-850d-763a8e686bf9','Sacola'),('beeebc4d-b603-4a56-a96d-a98646d1028b','41949245-0d08-4564-bd12-90b6a2f86618','Caixa'),('d191c17c-d0ae-40c4-a3af-23d227f6922d','5fed923e-5722-4df4-850d-763a8e686bf9','Correio'),('e6dbc41a-dada-4ac2-870f-5210d63ac135','5fed923e-5722-4df4-850d-763a8e686bf9','Carta');
/*!40000 ALTER TABLE `correspondence_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 18:28:17
