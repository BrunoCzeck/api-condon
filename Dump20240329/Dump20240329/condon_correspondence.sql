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
-- Table structure for table `correspondence`
--

DROP TABLE IF EXISTS `correspondence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correspondence` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `apartament` varchar(45) NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_correspondence` varchar(45) NOT NULL,
  `id_enterprise` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondence`
--

LOCK TABLES `correspondence` WRITE;
/*!40000 ALTER TABLE `correspondence` DISABLE KEYS */;
INSERT INTO `correspondence` VALUES ('33026a72-cf2b-455c-a0fd-3840605a2569','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck','611','C','Sacola','2024-01-27 12:57:17','04/01/2024','5fed923e-5722-4df4-850d-763a8e686bf9'),('7f582919-49be-4f49-a388-b9dcd82b7925','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck','611','C','Correio','2024-01-27 13:55:15','28/01/2024','5fed923e-5722-4df4-850d-763a8e686bf9'),('8433c142-d4ca-46d3-be82-19960e75543b','a390fac7-a9dd-4f97-9429-cf818c9198c2','Edinei','511','A','Caixa','2024-01-27 13:03:52','01/01/2024','41949245-0d08-4564-bd12-90b6a2f86618'),('85c3cfab-dc55-4641-87b7-d45e1a335e8f','30b24a13-bbd5-4191-881d-8b6ec04652dd','Eduarda Nathaly','612','C','Sacola','2024-01-27 13:22:01','27/01/2024','5fed923e-5722-4df4-850d-763a8e686bf9'),('e3c317d2-0975-4b68-b4d8-43ecc252555f','30b24a13-bbd5-4191-881d-8b6ec04652dd','Eduarda Nathaly','612','C','Carta','2024-01-27 13:20:11','03/01/2024','5fed923e-5722-4df4-850d-763a8e686bf9');
/*!40000 ALTER TABLE `correspondence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 18:28:16
