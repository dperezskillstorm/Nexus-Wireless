CREATE DATABASE  IF NOT EXISTS `nexus-carrier` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nexus-carrier`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: nexus-carrier
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `user_name` varchar(25) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `email_add` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('David99','1234','Perez','David','dperez@skillstorm'),('PaulLee77','23FD','Lee','Paul','plee@skillstorm'),('Regine88','ABCD','Donatien','Regine','Rdonatien@skillstorm');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_model`
--

DROP TABLE IF EXISTS `device_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_model` (
  `device_name` varchar(45) NOT NULL,
  `year` int DEFAULT NULL,
  `processor` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`device_name`),
  UNIQUE KEY `device_name_UNIQUE` (`device_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_model`
--

LOCK TABLES `device_model` WRITE;
/*!40000 ALTER TABLE `device_model` DISABLE KEYS */;
INSERT INTO `device_model` VALUES ('Apple iPhone13',2021,'Apple A15 Bionic','128GB/256GB/1TB storage, no card slot'),('Galaxy S6',2019,'SuperProcessor 5gz','Sleek Profile, Dual Camera'),('Google Pixel 5a',2021,'SnapDragon 765G','128GB storage, no card slot'),('HTC Desire 21 Pro',2021,'SnapDragon 690 5G','128GB storage, microSDX');
/*!40000 ALTER TABLE `device_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_number` (
  `phone_number` varchar(45) NOT NULL,
  `user_name_p` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`phone_number`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`),
  KEY `user_name_idx` (`user_name_p`),
  CONSTRAINT `user_name` FOREIGN KEY (`user_name_p`) REFERENCES `account` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
INSERT INTO `phone_number` VALUES ('1232345432',NULL),('2102234356',NULL),('9569269082','David99');
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_plans`
--

DROP TABLE IF EXISTS `phone_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_plans` (
  `plan_name` varchar(45) NOT NULL,
  `device_limit` int DEFAULT NULL,
  `price_per_line` double DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`plan_name`),
  UNIQUE KEY `plan_name_UNIQUE` (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_plans`
--

LOCK TABLES `phone_plans` WRITE;
/*!40000 ALTER TABLE `phone_plans` DISABLE KEYS */;
INSERT INTO `phone_plans` VALUES ('BASIC',2,30,'Talk and Text, 1GB Data'),('Gold',3,35,'Talk and Text, 10 Data'),('Premium',3,50,'Unlimited Talk, Text, Data, and Netflix');
/*!40000 ALTER TABLE `phone_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device`
--

DROP TABLE IF EXISTS `user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_device` (
  `iduser_device` int NOT NULL DEFAULT '1102039422',
  `device_name_d` varchar(45) DEFAULT NULL,
  `phone_number_d` varchar(45) DEFAULT NULL,
  `plan_name_d` int DEFAULT NULL,
  `user_device_first_name` varchar(45) DEFAULT NULL,
  `user_device_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser_device`),
  KEY `device_name_idx` (`device_name_d`) /*!80000 INVISIBLE */,
  KEY `phone_plan_idx` (`plan_name_d`),
  KEY `phone_number_idx` (`phone_number_d`),
  CONSTRAINT `device_name` FOREIGN KEY (`device_name_d`) REFERENCES `device_model` (`device_name`),
  CONSTRAINT `phonenumber` FOREIGN KEY (`phone_number_d`) REFERENCES `phone_number` (`phone_number`),
  CONSTRAINT `plan_id` FOREIGN KEY (`plan_name_d`) REFERENCES `user_plan` (`iduser_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device`
--

LOCK TABLES `user_device` WRITE;
/*!40000 ALTER TABLE `user_device` DISABLE KEYS */;
INSERT INTO `user_device` VALUES (1102039422,'Apple iPhone13','9569269082',12345676,'Anthony','Perez'),(1102039423,'Apple iPhone13','2102234356',12345676,'Rosie','Anthony');
/*!40000 ALTER TABLE `user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plan`
--

DROP TABLE IF EXISTS `user_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plan` (
  `iduser_plan` int NOT NULL DEFAULT '12345676',
  `user_name_u` varchar(45) DEFAULT NULL,
  `plan_name_u` varchar(45) DEFAULT NULL,
  `num_of_lines` int DEFAULT NULL,
  PRIMARY KEY (`iduser_plan`),
  KEY `username_idx` (`user_name_u`),
  KEY `plan_name_idx` (`plan_name_u`),
  CONSTRAINT `plan_name` FOREIGN KEY (`plan_name_u`) REFERENCES `phone_plans` (`plan_name`),
  CONSTRAINT `username` FOREIGN KEY (`user_name_u`) REFERENCES `account` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plan`
--

LOCK TABLES `user_plan` WRITE;
/*!40000 ALTER TABLE `user_plan` DISABLE KEYS */;
INSERT INTO `user_plan` VALUES (12345676,'David99','BASIC',3);
/*!40000 ALTER TABLE `user_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 16:19:52
