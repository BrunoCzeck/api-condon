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
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_message` (
  `id_message` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_id_send_message` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_message` datetime NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
INSERT INTO `chat_message` VALUES ('0cd0d3f7-a193-4f40-a773-0aa169e4d345','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Vai demorar pra tirar essa caceta!','2024-02-26 23:06:56'),('1126f0c3-57e6-4045-b7a2-1c9e7ccd2d50','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Encomenda ainda esta parada aqui','2024-02-27 23:24:50'),('1ff88e69-2500-40f3-a908-96d17c39afd5','b342e52d-4224-4b07-bc99-90ea64ae2323','4e2a719d-522e-4807-acff-2ff0b01ecffd','Portaria: Ola encomenda para vc','2024-02-27 23:15:53'),('30f9de49-3f50-4f3c-8e42-da5b8b2f2208','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Vai demorar pra tirar essa caceta!','2024-02-26 23:06:57'),('390c5944-55bc-4013-bfff-932b5ba289b7','a390fac7-a9dd-4f97-9429-cf818c9198c2','a390fac7-a9dd-4f97-9429-cf818c9198c2','Morador: To indo','2024-02-29 23:40:28'),('5bc513bd-48de-41ac-a6d7-a66b43b0e938','b342e52d-4224-4b07-bc99-90ea64ae2323','4e2a719d-522e-4807-acff-2ff0b01ecffd','Ola Harry como vai a Hermione ?','2024-02-27 20:05:07'),('65fbb5e5-9b90-4fb4-870d-8e332b498364','a390fac7-a9dd-4f97-9429-cf818c9198c2','a390fac7-a9dd-4f97-9429-cf818c9198c2','Estou indo','2024-02-29 23:41:03'),('670a4fa0-efda-4426-9030-b94367c977f2','b342e52d-4224-4b07-bc99-90ea64ae2323','4e2a719d-522e-4807-acff-2ff0b01ecffd','teste','2024-02-27 23:23:07'),('91a5737b-150a-43ef-b7ac-ed5e19a046bd','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Encomenda ainda esta parada aqui','2024-02-27 23:24:47'),('9e08942b-5012-464c-a3e2-92c37af3d756','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Vai demorar pra tirar essa caceta!','2024-02-26 23:06:55'),('ae3bb32f-523e-4f8d-a51f-b48510cdbea6','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','posso ir buscar ?','2024-02-29 23:41:33'),('b4149d26-bc15-4765-91b2-4c5cfb1fe9c3','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Vai demorar pra tirar essa caceta!','2024-02-26 22:16:01'),('ca18bb6d-9ad0-448e-a543-44031223bb95','a390fac7-a9dd-4f97-9429-cf818c9198c2','4e2a719d-522e-4807-acff-2ff0b01ecffd','Porteiro: Olá tem uma encomenda esperando para ser retirada','2024-02-26 22:10:17'),('f7175df3-82c3-4196-8ea9-8ffde817daf0','a390fac7-a9dd-4f97-9429-cf818c9198c2','a390fac7-a9dd-4f97-9429-cf818c9198c2','Morador: Ok Estou indo Retirar','2024-02-26 22:15:06');
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
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
