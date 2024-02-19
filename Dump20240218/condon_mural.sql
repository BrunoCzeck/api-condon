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
-- Table structure for table `mural`
--

DROP TABLE IF EXISTS `mural`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mural` (
  `id_mural` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `id_enterprise` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mural`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mural`
--

LOCK TABLES `mural` WRITE;
/*!40000 ALTER TABLE `mural` DISABLE KEYS */;
INSERT INTO `mural` VALUES ('23ec311e-a218-4dad-a0f9-f46eb99f35f0','[Instalação de Telas]','Boa noite moradores, venho por meio desse post informar que no dia 05/10/2023 teremos a nossa reunião de condominio para estabelecer o fechamento da sacada, lembrando que precisamos de no minimo 180 votos para que seja efetivado a mudança','2023-11-26 20:51:46','a56f0dc1-3b19-4132-90b6-172ec9eb946e','41949245-0d08-4564-bd12-90b6a2f86618'),('3650be35-2c66-4211-a294-a029dcd562f3','Bruno','Alo vc','2023-11-26 22:54:25','2','41949245-0d08-4564-bd12-90b6a2f86618'),('6bb5b7f6-7685-4e04-858a-a92665ec2d49','[Instalação de Telas]','Boa noite moradores, venho por meio desse post informar que no dia 05/10/2023 teremos a nossa reunião de condominio para estabelecer o fechamento da sacada, lembrando que precisamos de no minimo 180 votos para que seja efetivado a mudança','2023-11-26 21:01:51','a56f0dc1-3b19-4132-90b6-172ec9eb946e','41949245-0d08-4564-bd12-90b6a2f86618'),('7729f8a9-5e05-4835-a2de-ac9cfedf8beb','alo vc','teste23','2023-11-26 22:58:16','b342e52d-4224-4b07-bc99-90ea64ae9e45','41949245-0d08-4564-bd12-90b6a2f86618'),('9a78603c-bd8e-41fa-9fae-af8305a577b7','Alo você','Teste','2023-11-26 22:57:53','b342e52d-4224-4b07-bc99-90ea64ae9e45','41949245-0d08-4564-bd12-90b6a2f86618'),('d59b3062-1265-40f7-943d-f8e9592306b8','[Instalação de Telas]','Boa noite moradores, venho por meio desse post informar que no dia 05/10/2023 teremos a nossa reunião de condominio para estabelecer o fechamento da sacada, lembrando que precisamos de no minimo 180 votos para que seja efetivado a mudança','2023-11-26 21:01:17','a56f0dc1-3b19-4132-90b6-172ec9eb946e','5fed923e-5722-4df4-850d-763a8e686bf9'),('f840695c-d6eb-4825-920b-667bb39bcfde','[Fechamento de Sacada]','Boa noite moradores, venho por meio desse post informar que no dia 05/10/2023 teremos a nossa reunião de condominio para estabelecer o fechamento da sacada, lembrando que precisamos de no minimo 180 votos para que seja efetivado a mudança','2023-11-26 20:51:16','a56f0dc1-3b19-4132-90b6-172ec9eb946e','5fed923e-5722-4df4-850d-763a8e686bf9');
/*!40000 ALTER TABLE `mural` ENABLE KEYS */;
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
