-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: condon
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id_chat` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `apartament` int NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id_chat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise_condon`
--

DROP TABLE IF EXISTS `enterprise_condon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprise_condon` (
  `id_enterprise` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise_condon`
--

LOCK TABLES `enterprise_condon` WRITE;
/*!40000 ALTER TABLE `enterprise_condon` DISABLE KEYS */;
INSERT INTO `enterprise_condon` VALUES ('ddc23104-c356-4efe-92a1-4ada0f3b363d','Park Royale');
/*!40000 ALTER TABLE `enterprise_condon` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id_mural`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mural`
--

LOCK TABLES `mural` WRITE;
/*!40000 ALTER TABLE `mural` DISABLE KEYS */;
/*!40000 ALTER TABLE `mural` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler` (
  `id_scheduler` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `apartament` int NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `date_reserve` date NOT NULL,
  `hours_reserve` varchar(45) NOT NULL,
  `date_created` datetime NOT NULL,
  `id_enterprise` varchar(255) NOT NULL,
  PRIMARY KEY (`id_scheduler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler`
--

LOCK TABLES `scheduler` WRITE;
/*!40000 ALTER TABLE `scheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `apartament` int NOT NULL,
  `bloc` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `priority` varchar(255) NOT NULL,
  `enterprise` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('591d88c5-db72-496d-94cb-d523e5b9a158','Bruno Czeck','123',NULL,612,'C','brunoczeck@hotmail.com','2023-10-02 23:28:58','1','Park Royale'),('5ccc4796-31e5-4787-aa62-16626a59108c','Bruno Czeck','123',NULL,612,'C','brunoczeck@hotmail.com','2023-10-02 23:11:01','1','Park Royale'),('66ee823d-86e9-4bec-a9d7-0b1d54fdddc4','Bruno Czeck','123',NULL,612,'C','brunoczeck@hotmail.com','2023-10-02 23:11:32','1','Park Royale'),('9283658d-92f0-4826-95aa-7f78664a0b53','Bruno Czeck','123',NULL,612,'C','brunoczeck@hotmail.com','2023-10-02 23:29:04','1','Park Royale'),('ddc23104-c356-4efe-92a1-4ada0f3b363d','Bruno Czeck','123',NULL,612,'C','brunoczeck@hotmail.com','2023-10-02 23:11:58','1','Park Royale');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'condon'
--

--
-- Dumping routines for database 'condon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-02 23:31:39
