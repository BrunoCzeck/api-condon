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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` varchar(255) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `apartament` int NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `priority` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('30b24a13-bbd5-4191-881d-8b6ec04652dd','Eduarda Nathaly','123',NULL,612,'C','duda@outlook.com.br','2024-01-03 22:52:24','1','5fed923e-5722-4df4-850d-763a8e686bf9'),('4e2a719d-522e-4807-acff-2ff0b01ecffd','admin_arara_azul','123',NULL,612,'D','2@2.com.br','2024-01-27 12:26:56','2','41949245-0d08-4564-bd12-90b6a2f86618'),('a390fac7-a9dd-4f97-9429-cf818c9198c2','Edinei','123',NULL,511,'A','asd@asd.com.br','2024-01-06 00:57:28','1','41949245-0d08-4564-bd12-90b6a2f86618'),('b342e52d-4224-4b07-bc99-90ea64ae2323','Harry','123',NULL,102,'C','LLL@asd.com.br','2024-01-06 00:57:28','1','41949245-0d08-4564-bd12-90b6a2f86618'),('b342e52d-4224-4b07-bc99-90ea64ae9e45','Morata','123',NULL,611,'A','123@hotmail.com','2023-11-20 23:38:59','1','41949245-0d08-4564-bd12-90b6a2f86618'),('f33eb89d-76af-4362-9305-b586da45dc25','admin_park_royale','123',NULL,610,'C','1@1.com.br','2024-01-27 12:23:35','2','5fed923e-5722-4df4-850d-763a8e686bf9'),('febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck','123',NULL,611,'C','brunoczeck@hotmail.com','2023-11-20 23:15:52','1','5fed923e-5722-4df4-850d-763a8e686bf9');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 21:30:49
