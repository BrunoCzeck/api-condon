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
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler` (
  `id_scheduler` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `apartament` int NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `date_reserve` varchar(45) NOT NULL,
  `date_created` datetime NOT NULL,
  `space` varchar(45) NOT NULL,
  PRIMARY KEY (`id_scheduler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler`
--

LOCK TABLES `scheduler` WRITE;
/*!40000 ALTER TABLE `scheduler` DISABLE KEYS */;
INSERT INTO `scheduler` VALUES ('0d6482ac-5184-4dd9-903a-5882ff36a9f9','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','10/01/2024','2024-01-09 22:14:03','Academia'),('196e201c-8990-4603-934a-3a21d85b9c23','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','31/01/2024','2024-01-09 22:13:28','Piscina'),('495f3f09-38d0-4a61-b136-c6fc55b7b38c','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','01/01/2024','2024-01-06 00:29:12','Piscina'),('53476e0f-de40-480a-8ccb-5e6675d2d0a1','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','20/01/2024','2024-01-09 22:13:15','Piscina'),('541a0809-5cc5-4767-ab11-e8632d97ace5','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','25/01/2024','2024-01-09 22:13:27','Piscina'),('57c9c6e3-31d3-4402-923b-3f0df7d19cef','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Czeck',611,'C','Cancelado','10/12/2023','2023-12-05 23:42:29','Piscina'),('5ea27b9c-bc3c-4630-92da-db05de67662d','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','11/01/2024','2024-01-03 23:33:44','Piscina'),('5fa0e641-f09d-49b4-ab64-2e9511875b89','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','25/01/2024','2024-01-09 22:13:26','Piscina'),('6621a8bc-dfeb-4882-8ce1-4beac49972b9','41949245-0d08-4564-bd12-90b6a2f86618','b342e52d-4224-4b07-bc99-90ea64ae9e45','Eduarda',611,'C','Reservado','09/12/2023','2023-12-05 23:32:49','Academia'),('69689dbb-57b7-4786-9e70-dd902a0ccff7','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Czeck',611,'C','Cancelado','10/12/2023','2023-12-31 02:42:25','Churrasqueira'),('7918a84e-9672-426c-bbf6-82085ba3d818','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','05/01/2024','2024-01-03 22:40:03','Academia'),('84366c43-7bbb-4b93-90ac-96cd7b03fa71','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','04/01/2024','2024-01-03 00:05:22','Academia'),('85b647f1-e1c2-4ef7-99e6-9949ea1f4c54','41949245-0d08-4564-bd12-90b6a2f86618','a390fac7-a9dd-4f97-9429-cf818c9198c2','Edinei',511,'A','Reservado','21/03/2024','2024-03-19 23:00:05','Churrasqueira'),('b9158240-a3cf-4439-995e-54071130c82f','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','13/01/2024','2024-01-03 22:40:06','Piscina'),('c1ca580c-bb00-49ab-aa59-673034f5eaaf','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','20/01/2024','2024-01-05 21:46:56','Academia'),('c2399228-b0a2-4090-831b-6cc199d40838','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','06/01/2024','2024-01-05 22:18:23','Piscina'),('e0942d4a-9317-4bc4-a25b-d9d4a7af2489','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','27/01/2024','2024-01-09 22:13:25','Piscina'),('ebd84fa4-f2ba-41b3-82f3-9821c2cc4307','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Cancelado','04/01/2024','2024-01-03 22:39:59','Academia'),('f7ba3d1e-aa08-4742-8973-bdd4d018d344','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','04/01/2024','2024-01-03 22:18:02','Piscina'),('f911d27f-1d5f-455b-8d4c-47bb11185b97','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Gomes Czeck',611,'C','Reservado','01/02/2024','2024-01-09 22:13:30','Piscina'),('fb6b802e-b6a4-4454-8788-d143baf0f5ab','5fed923e-5722-4df4-850d-763a8e686bf9','febed6b1-12a9-4477-b363-9cf6bf18249b','Bruno Czeck',611,'C','Cancelado','10/12/2023','2023-12-31 03:11:45','Piscina'),('ffb79e56-710b-4177-952f-acaa363ad46f','41949245-0d08-4564-bd12-90b6a2f86618','a390fac7-a9dd-4f97-9429-cf818c9198c2','dasdada',511,'A','Reservado','07/01/2024','2024-01-06 00:57:45','Churrasqueira');
/*!40000 ALTER TABLE `scheduler` ENABLE KEYS */;
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
