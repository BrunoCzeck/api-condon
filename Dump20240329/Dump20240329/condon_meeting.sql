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
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting` (
  `id_meeting` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date_meeting` varchar(45) NOT NULL,
  `date_created` datetime NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  PRIMARY KEY (`id_meeting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES ('302cca83-f194-4559-8aa2-5e10b750eb14','Persiana','https://www.youtube.com/watch?v=6BaCNYU2YR0','07/02/2024','2024-02-07 22:12:14','5fed923e-5722-4df4-850d-763a8e686bf9'),('572ac227-7bd5-4f12-b3bc-2fcf3818f52b','Limpeza das Lixeiras','https://www.youtube.com/watch?v=jxUdcNlVjWo&list=RDGMEMFDHdtbQF5jLxlUZMleBN_wVMjxUdcNlVjWo&start_radio=1','09/02/2024','2024-02-07 22:18:31','41949245-0d08-4564-bd12-90b6a2f86618'),('bc42b7d4-07d9-4135-89f7-6d32a6b77c88','Fechamento de Sacada','https://support.microsoft.com/pt-br/office/criar-um-link-ou-um-c%C3%B3digo-para-ingressar-em-uma-equipe-no-microsoft-teams-11b0de3b-9288-4cb4-bc49-795e7028296f','2024/01/31','2024-01-31 22:00:20','123'),('f4528a74-b609-4801-bf8d-643130417308','Fechamento de Sacada','https://support.microsoft.com/pt-br/office/criar-um-link-ou-um-c%C3%B3digo-para-ingressar-em-uma-equipe-no-microsoft-teams-11b0de3b-9288-4cb4-bc49-795e7028296f','2024/01/31','2024-01-31 21:59:52','5fed923e-5722-4df4-850d-763a8e686bf9');
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
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
