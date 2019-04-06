-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: setup
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `setup`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `setup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `setup`;

--
-- Table structure for table `age_person`
--

DROP TABLE IF EXISTS `age_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_person` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_person_has_prf_person`
--

DROP TABLE IF EXISTS `age_person_has_prf_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_person_has_prf_person` (
  `age_person_id` smallint(6) NOT NULL,
  `prf_person_id` smallint(6) NOT NULL,
  PRIMARY KEY (`age_person_id`,`prf_person_id`),
  KEY `fk_age_person_has_prf_person_prf_person1_idx` (`prf_person_id`),
  KEY `fk_age_person_has_prf_person_age_person1_idx` (`age_person_id`),
  CONSTRAINT `fk_age_person_has_prf_person_age_person1` FOREIGN KEY (`age_person_id`) REFERENCES `age_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_age_person_has_prf_person_prf_person1` FOREIGN KEY (`prf_person_id`) REFERENCES `prf_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_person_has_value`
--

DROP TABLE IF EXISTS `age_person_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_person_has_value` (
  `age_person_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`age_person_id`,`value_id`),
  KEY `fk_age_person_has_value_value1_idx` (`value_id`),
  KEY `fk_age_person_has_value_age_person1_idx` (`age_person_id`),
  CONSTRAINT `fk_age_person_has_value_age_person1` FOREIGN KEY (`age_person_id`) REFERENCES `age_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_age_person_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team`
--

DROP TABLE IF EXISTS `age_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_age_team_age_team_class1_idx` (`age_team_class_id`),
  CONSTRAINT `fk_age_team_age_team_class1` FOREIGN KEY (`age_team_class_id`) REFERENCES `age_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9680 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team_class`
--

DROP TABLE IF EXISTS `age_team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team_class` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team_class_has_prf_team_class`
--

DROP TABLE IF EXISTS `age_team_class_has_prf_team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team_class_has_prf_team_class` (
  `age_team_class_id` smallint(6) NOT NULL,
  `prf_team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`age_team_class_id`,`prf_team_class_id`),
  KEY `fk_age_team_class_has_prf_team_class_prf_team_class1_idx` (`prf_team_class_id`),
  KEY `fk_age_team_class_has_prf_team_class_age_team_class1_idx` (`age_team_class_id`),
  CONSTRAINT `fk_age_team_class_has_prf_team_class_age_team_class1` FOREIGN KEY (`age_team_class_id`) REFERENCES `age_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_age_team_class_has_prf_team_class_prf_team_class1` FOREIGN KEY (`prf_team_class_id`) REFERENCES `prf_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team_class_has_value`
--

DROP TABLE IF EXISTS `age_team_class_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team_class_has_value` (
  `age_team_class_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`age_team_class_id`,`value_id`),
  KEY `fk_age_team_class_has_value_value1_idx` (`value_id`),
  KEY `fk_age_team_class_has_value_age_team_class1_idx` (`age_team_class_id`),
  CONSTRAINT `fk_age_team_class_has_value_age_team_class1` FOREIGN KEY (`age_team_class_id`) REFERENCES `age_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_age_team_class_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team_has_age_person`
--

DROP TABLE IF EXISTS `age_team_has_age_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team_has_age_person` (
  `age_team_id` int(11) NOT NULL,
  `age_person_id` smallint(6) NOT NULL,
  PRIMARY KEY (`age_team_id`,`age_person_id`),
  KEY `fk_age_team_has_age_person_age_person1_idx` (`age_person_id`),
  KEY `fk_age_team_has_age_person_age_team1_idx` (`age_team_id`),
  CONSTRAINT `fk_age_team_has_age_person_age_person1` FOREIGN KEY (`age_person_id`) REFERENCES `age_person` (`id`),
  CONSTRAINT `fk_age_team_has_age_person_age_team1` FOREIGN KEY (`age_team_id`) REFERENCES `age_team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `age_team_has_prf_team`
--

DROP TABLE IF EXISTS `age_team_has_prf_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `age_team_has_prf_team` (
  `age_team_id` int(11) NOT NULL,
  `prf_team_id` int(11) NOT NULL,
  PRIMARY KEY (`age_team_id`,`prf_team_id`),
  KEY `fk_age_team_has_prf_team_prf_team1_idx` (`prf_team_id`),
  KEY `fk_age_team_has_prf_team_age_team1_idx` (`age_team_id`),
  CONSTRAINT `fk_age_team_has_prf_team_age_team1` FOREIGN KEY (`age_team_id`) REFERENCES `age_team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_age_team_has_prf_team_prf_team1` FOREIGN KEY (`prf_team_id`) REFERENCES `prf_team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `domain` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` smallint(6) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event_model1_idx` (`model_id`),
  CONSTRAINT `fk_event_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2956 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_has_team_class`
--

DROP TABLE IF EXISTS `event_has_team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_has_team_class` (
  `event_id` int(11) NOT NULL,
  `team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`event_id`,`team_class_id`),
  KEY `fk_event_has_team_class_team_class1_idx` (`team_class_id`),
  KEY `fk_event_has_team_class_event1_idx` (`event_id`),
  CONSTRAINT `fk_event_has_team_class_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `fk_event_has_team_class_team_class1` FOREIGN KEY (`team_class_id`) REFERENCES `team_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_has_value`
--

DROP TABLE IF EXISTS `event_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_has_value` (
  `event_id` int(11) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`event_id`,`value_id`),
  KEY `fk_event_has_value_value1_idx` (`value_id`),
  KEY `fk_event_has_value_event1_idx` (`event_id`),
  CONSTRAINT `fk_event_has_value_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model_has_value`
--

DROP TABLE IF EXISTS `model_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model_has_value` (
  `model_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`model_id`,`value_id`),
  KEY `fk_model_has_value_value1_idx` (`value_id`),
  KEY `fk_model_has_value_model1_idx` (`model_id`),
  CONSTRAINT `fk_model_has_value_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`),
  CONSTRAINT `fk_model_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_person_id` smallint(6) NOT NULL,
  `prf_person_id` smallint(6) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_person_age_person1_idx` (`age_person_id`),
  KEY `fk_person_prf_person1_idx` (`prf_person_id`),
  CONSTRAINT `fk_person_age_person1` FOREIGN KEY (`age_person_id`) REFERENCES `age_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_person_prf_person1` FOREIGN KEY (`prf_person_id`) REFERENCES `prf_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_person`
--

DROP TABLE IF EXISTS `prf_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_person` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_person_has_value`
--

DROP TABLE IF EXISTS `prf_person_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_person_has_value` (
  `prf_person_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`prf_person_id`,`value_id`),
  KEY `fk_prf_person_has_value_value1_idx` (`value_id`),
  KEY `fk_prf_person_has_value_prf_person1_idx` (`prf_person_id`),
  CONSTRAINT `fk_prf_person_has_value_prf_person1` FOREIGN KEY (`prf_person_id`) REFERENCES `prf_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prf_person_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_team`
--

DROP TABLE IF EXISTS `prf_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prf_team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prf_team_prf_team_class1_idx` (`prf_team_class_id`),
  CONSTRAINT `fk_prf_team_prf_team_class1` FOREIGN KEY (`prf_team_class_id`) REFERENCES `prf_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_team_class`
--

DROP TABLE IF EXISTS `prf_team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_team_class` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_team_class_has_value`
--

DROP TABLE IF EXISTS `prf_team_class_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_team_class_has_value` (
  `prf_team_class_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`prf_team_class_id`,`value_id`),
  KEY `fk_prf_team_class_has_value_value1_idx` (`value_id`),
  KEY `fk_prf_team_class_has_value_prf_team_class1_idx` (`prf_team_class_id`),
  CONSTRAINT `fk_prf_team_class_has_value_prf_team_class1` FOREIGN KEY (`prf_team_class_id`) REFERENCES `prf_team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prf_team_class_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prf_team_has_prf_person`
--

DROP TABLE IF EXISTS `prf_team_has_prf_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prf_team_has_prf_person` (
  `prf_team_id` int(11) NOT NULL,
  `prf_person_id` smallint(6) NOT NULL,
  PRIMARY KEY (`prf_team_id`,`prf_person_id`),
  KEY `fk_prf_team_has_prf_person_prf_person1_idx` (`prf_person_id`),
  KEY `fk_prf_team_has_prf_person_prf_team1_idx` (`prf_team_id`),
  CONSTRAINT `fk_prf_team_has_prf_person_prf_person1` FOREIGN KEY (`prf_person_id`) REFERENCES `prf_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prf_team_has_prf_person_prf_team1` FOREIGN KEY (`prf_team_id`) REFERENCES `prf_team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_class_id` smallint(6) NOT NULL,
  `age_team_id` int(11) NOT NULL,
  `prf_team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_team_class1_idx` (`team_class_id`),
  KEY `fk_team_age_team1_idx` (`age_team_id`),
  KEY `fk_team_prf_team1_idx` (`prf_team_id`),
  CONSTRAINT `fk_team_age_team1` FOREIGN KEY (`age_team_id`) REFERENCES `age_team` (`id`),
  CONSTRAINT `fk_team_prf_team1` FOREIGN KEY (`prf_team_id`) REFERENCES `prf_team` (`id`),
  CONSTRAINT `fk_team_team_class1` FOREIGN KEY (`team_class_id`) REFERENCES `team_class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2621401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_class`
--

DROP TABLE IF EXISTS `team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_class` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `age_team_class_id` smallint(6) NOT NULL,
  `prf_team_class_id` smallint(6) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_class_age_team_class1_idx` (`age_team_class_id`),
  KEY `fk_team_class_prf_team_class1_idx` (`prf_team_class_id`),
  CONSTRAINT `fk_team_class_age_team_class1` FOREIGN KEY (`age_team_class_id`) REFERENCES `age_team_class` (`id`),
  CONSTRAINT `fk_team_class_prf_team_class1` FOREIGN KEY (`prf_team_class_id`) REFERENCES `prf_team_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_has_person`
--

DROP TABLE IF EXISTS `team_has_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_has_person` (
  `team_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`,`person_id`),
  KEY `fk_team_has_person_person1_idx` (`person_id`),
  KEY `fk_team_has_person_team1_idx` (`team_id`),
  CONSTRAINT `fk_team_has_person_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `fk_team_has_person_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `value` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `domain_id` smallint(6) NOT NULL,
  `name` varchar(45) NOT NULL,
  `abbr` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_value_domain1_idx` (`domain_id`),
  CONSTRAINT `fk_value_domain1` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `view_person`
--

DROP TABLE IF EXISTS `view_person`;
/*!50001 DROP VIEW IF EXISTS `view_person`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_person` AS SELECT 
 1 AS `age_person_id`,
 1 AS `prf_person_id`,
 1 AS `describe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_team`
--

DROP TABLE IF EXISTS `view_team`;
/*!50001 DROP VIEW IF EXISTS `view_team`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_team` AS SELECT 
 1 AS `team_class_id`,
 1 AS `age_team_id`,
 1 AS `prf_team_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_team_aux`
--

DROP TABLE IF EXISTS `view_team_aux`;
/*!50001 DROP VIEW IF EXISTS `view_team_aux`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_team_aux` AS SELECT 
 1 AS `age_team_id`,
 1 AS `prf_team_id`,
 1 AS `JSON_MERGE_PATCH(atc.describe,ptc.describe)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_team_class`
--

DROP TABLE IF EXISTS `view_team_class`;
/*!50001 DROP VIEW IF EXISTS `view_team_class`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_team_class` AS SELECT 
 1 AS `age_team_class_id`,
 1 AS `prf_team_class_id`,
 1 AS `describe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_team_person`
--

DROP TABLE IF EXISTS `view_team_person`;
/*!50001 DROP VIEW IF EXISTS `view_team_person`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_team_person` AS SELECT 
 1 AS `team_id`,
 1 AS `person_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'setup'
--

--
-- Dumping routines for database 'setup'
--
/*!50003 DROP PROCEDURE IF EXISTS `build_setup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `build_setup`()
BEGIN
  INSERT INTO person(age_person_id,prf_person_id, `describe`)
  SELECT age_person_id, prf_person_id, `describe`
  FROM view_person;
  
  INSERT INTO team_class(age_team_class_id, prf_team_class_id, `describe`)
  SELECT age_team_class_id, prf_team_class_id, `describe`
  FROM view_team_class;
  
  INSERT INTO team(team_class_id, age_team_id, prf_team_id)
  SELECT team_class_id, age_team_id, prf_team_id
  FROM view_team;
  
  INSERT INTO team_has_person(team_id,person_id)
  SELECT team_id,person_id
  FROM view_team_person;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `sales`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sales` /*!40100 DEFAULT CHARACTER SET big5 */;

USE `sales`;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `channel` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `online_at` datetime DEFAULT NULL,
  `offline_at` datetime DEFAULT NULL,
  `live` tinyint(1) NOT NULL DEFAULT '0',
  `heading` json NOT NULL,
  `logo` blob NOT NULL,
  `parameters` json DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `elink` varchar(120) DEFAULT NULL,
  `pin` int(5) unsigned DEFAULT NULL,
  `info` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_send_elink` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_has_workarea`
--

DROP TABLE IF EXISTS `contact_has_workarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact_has_workarea` (
  `contact_id` mediumint(8) unsigned NOT NULL,
  `workarea_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`contact_id`,`workarea_id`),
  KEY `fk_contact_has_workarea_workarea1_idx` (`workarea_id`),
  KEY `fk_contact_has_workarea_contact1_idx` (`contact_id`),
  CONSTRAINT `fk_contact_has_workarea_contact1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_contact_has_workarea_workarea1` FOREIGN KEY (`workarea_id`) REFERENCES `workarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `workarea_id` int(10) unsigned NOT NULL,
  `tag_id` smallint(5) unsigned NOT NULL,
  `content` json NOT NULL,
  `note` tinytext,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_form_tag1_idx` (`tag_id`),
  KEY `fk_form_workarea1_idx` (`workarea_id`),
  CONSTRAINT `fk_form_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_form_workarea1` FOREIGN KEY (`workarea_id`) REFERENCES `workarea` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_has_picture`
--

DROP TABLE IF EXISTS `form_has_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_has_picture` (
  `form_id` int(10) unsigned NOT NULL,
  `picture_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`form_id`,`picture_id`),
  KEY `fk_form_has_picture_picture1_idx` (`picture_id`),
  KEY `fk_form_has_picture_form1_idx` (`form_id`),
  CONSTRAINT `fk_form_has_picture_form1` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`),
  CONSTRAINT `fk_form_has_picture_picture1` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pricing` (
  `channel_id` smallint(5) unsigned NOT NULL,
  `start_at` datetime NOT NULL,
  `inventory` json DEFAULT NULL,
  PRIMARY KEY (`start_at`,`channel_id`),
  KEY `idx_start_at` (`start_at` DESC),
  KEY `fk_pricing_channel1_idx` (`channel_id`),
  CONSTRAINT `fk_pricing_channel1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `processor`
--

DROP TABLE IF EXISTS `processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `processor` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` smallint(5) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `live` json DEFAULT NULL,
  `test` json DEFAULT NULL,
  `is_live` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_processor_channel1_idx` (`channel_id`),
  CONSTRAINT `fk_processor_channel1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workarea_id` int(10) unsigned NOT NULL,
  `processor_id` smallint(5) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_receipts_workarea1_idx` (`workarea_id`),
  KEY `fk_receipts_processor1_idx` (`processor_id`),
  CONSTRAINT `fk_receipts_processor1` FOREIGN KEY (`processor_id`) REFERENCES `processor` (`id`),
  CONSTRAINT `fk_receipts_workarea1` FOREIGN KEY (`workarea_id`) REFERENCES `workarea` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workarea`
--

DROP TABLE IF EXISTS `workarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workarea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` smallint(5) unsigned NOT NULL,
  `tag_id` smallint(5) unsigned NOT NULL,
  `token` tinytext,
  `processed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_workarea_channel1_idx` (`channel_id`),
  KEY `fk_workarea_tag1_idx` (`tag_id`),
  CONSTRAINT `fk_workarea_channel1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_workarea_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'sales'
--

--
-- Dumping routines for database 'sales'
--

--
-- Current Database: `competition`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `competition` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `competition`;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competition` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `status` char(1) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `timing` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `competition_id` mediumint(9) NOT NULL,
  `description` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event_competition1_idx` (`competition_id`),
  CONSTRAINT `fk_event_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_has_team`
--

DROP TABLE IF EXISTS `event_has_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_has_team` (
  `event_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`,`team_id`),
  KEY `fk_event_has_team_team1_idx` (`team_id`),
  KEY `fk_event_has_team_event1_idx` (`event_id`),
  CONSTRAINT `fk_event_has_team_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_team_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `number`
--

DROP TABLE IF EXISTS `number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `number` (
  `competition_id` mediumint(9) NOT NULL,
  `id` smallint(6) NOT NULL,
  `when` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_number_competition1_idx` (`competition_id`),
  CONSTRAINT `fk_number_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `first` varchar(40) NOT NULL,
  `last` varchar(40) NOT NULL,
  `sex` char(1) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `age` smallint(6) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_has_number`
--

DROP TABLE IF EXISTS `person_has_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person_has_number` (
  `person_id` int(11) NOT NULL,
  `number_id` smallint(6) NOT NULL,
  PRIMARY KEY (`person_id`,`number_id`),
  KEY `fk_person_has_number_number1_idx` (`number_id`),
  KEY `fk_person_has_number_person1_idx` (`person_id`),
  CONSTRAINT `fk_person_has_number_number1` FOREIGN KEY (`number_id`) REFERENCES `number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_person_has_number_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_has_event`
--

DROP TABLE IF EXISTS `player_has_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player_has_event` (
  `player_model_id` tinyint(4) NOT NULL,
  `player_id` int(11) NOT NULL,
  `event_model_id` tinyint(4) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`player_model_id`,`player_id`,`event_model_id`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subevent`
--

DROP TABLE IF EXISTS `subevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest` tinyint(1) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `heat` mediumint(9) DEFAULT NULL,
  `description` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subevent_event1_idx` (`event_id`) USING BTREE,
  KEY `idx_heat` (`heat`) USING BTREE,
  CONSTRAINT `fk_subevent_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subevent_has_team`
--

DROP TABLE IF EXISTS `subevent_has_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subevent_has_team` (
  `subevent_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`subevent_id`,`team_id`),
  KEY `fk_subevent_has_team_team1_idx` (`team_id`),
  KEY `fk_subevent_has_team_subevent1_idx` (`subevent_id`),
  CONSTRAINT `fk_subevent_has_team_subevent1` FOREIGN KEY (`subevent_id`) REFERENCES `subevent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subevent_has_team_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subevent_has_timing`
--

DROP TABLE IF EXISTS `subevent_has_timing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subevent_has_timing` (
  `subevent_id` int(11) NOT NULL,
  `timing_id` int(11) NOT NULL,
  `timing_competition_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`subevent_id`,`timing_id`,`timing_competition_id`),
  KEY `fk_subevent_has_timing_timing1_idx` (`timing_id`,`timing_competition_id`),
  KEY `fk_subevent_has_timing_subevent1_idx` (`subevent_id`),
  CONSTRAINT `fk_subevent_has_timing_subevent1` FOREIGN KEY (`subevent_id`) REFERENCES `subevent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subevent_has_timing_timing1` FOREIGN KEY (`timing_id`, `timing_competition_id`) REFERENCES `timing` (`id`, `competition_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_has_person`
--

DROP TABLE IF EXISTS `team_has_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_has_person` (
  `team_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`,`person_id`),
  KEY `fk_team_has_person_person1_idx` (`person_id`),
  KEY `fk_team_has_person_team1_idx` (`team_id`),
  CONSTRAINT `fk_team_has_person_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_team_has_person_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timing`
--

DROP TABLE IF EXISTS `timing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timing` (
  `id` int(11) NOT NULL,
  `competition_id` mediumint(9) NOT NULL,
  `heat` smallint(6) NOT NULL,
  `round` smallint(6) NOT NULL,
  `group` smallint(6) NOT NULL,
  `at` datetime NOT NULL,
  PRIMARY KEY (`id`,`competition_id`),
  KEY `fk_schedule_competition1_idx` (`competition_id`),
  KEY `idx_heat_round` (`heat`,`round` DESC),
  CONSTRAINT `fk_schedule_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'competition'
--

--
-- Dumping routines for database 'competition'
--

--
-- Current Database: `access`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `access` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `access`;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `channel` (
  `id` smallint(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `controller`
--

DROP TABLE IF EXISTS `controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `controller` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `application` varchar(40) NOT NULL,
  `bundle` varchar(40) NOT NULL,
  `controller` varchar(40) NOT NULL,
  `action` varchar(40) NOT NULL,
  `sid` varchar(120) NOT NULL COMMENT 'Session identifier',
  `ip` varchar(20) NOT NULL COMMENT 'Either IPv4 or IPv6',
  `referrer` varchar(255) NOT NULL,
  `info` tinytext,
  `created_at` timestamp NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_activity_controller` (`controller`),
  KEY `IDX_activity_action` (`action`),
  KEY `IDX_activity_ip` (`ip`),
  KEY `fk_log_user1_idx` (`user_id`),
  CONSTRAINT `fk_log_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `suffix` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `home` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `agree_terms` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_person_user` (`user_id`),
  KEY `first_IDX` (`first`,`last`) USING BTREE,
  KEY `last_IDX` (`last`,`first`),
  KEY `country_IDX` (`country`,`state`,`last`,`first`),
  KEY `postal_IDX` (`postal`,`last`,`first`) USING BTREE,
  CONSTRAINT `fk_person_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `sess_id` varbinary(128) NOT NULL,
  `sess_data` blob NOT NULL,
  `sess_time` int(10) unsigned NOT NULL,
  `sess_lifetime` mediumint(8) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sess_id`),
  KEY `fk_sessions_user1_idx` (`user_id`),
  CONSTRAINT `fk_sessions_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(180) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `expire_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `authenticator` varchar(20) DEFAULT NULL,
  `authenticator_id` varchar(80) DEFAULT NULL,
  `confirm_token` varchar(120) DEFAULT NULL,
  `access_token` varchar(120) DEFAULT NULL,
  `refresh_token` varchar(120) DEFAULT NULL,
  `roles` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_has_channel`
--

DROP TABLE IF EXISTS `user_has_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_has_channel` (
  `user_id` int(11) NOT NULL,
  `channel_id` smallint(6) NOT NULL,
  PRIMARY KEY (`user_id`,`channel_id`),
  KEY `fk_user_has_channel_channel1_idx` (`channel_id`),
  KEY `fk_user_has_channel_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_channel_channel1` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_has_channel_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_has_controller`
--

DROP TABLE IF EXISTS `user_has_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_has_controller` (
  `user_id` int(11) NOT NULL,
  `controller_id` smallint(6) NOT NULL,
  PRIMARY KEY (`user_id`,`controller_id`),
  KEY `fk_user_has_controller_controller1_idx` (`controller_id`),
  KEY `fk_user_has_controller_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_controller_controller1` FOREIGN KEY (`controller_id`) REFERENCES `controller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_has_controller_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_has_workarea`
--

DROP TABLE IF EXISTS `user_has_workarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_has_workarea` (
  `user_id` int(11) NOT NULL,
  `workarea_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`workarea_id`),
  KEY `fk_user_has_workarea_workarea1_idx` (`workarea_id`),
  KEY `fk_user_has_workarea_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_workarea_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_has_workarea_workarea1` FOREIGN KEY (`workarea_id`) REFERENCES `workarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workarea`
--

DROP TABLE IF EXISTS `workarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workarea` (
  `id` int(11) NOT NULL,
  `note` tinytext NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'access'
--

--
-- Dumping routines for database 'access'
--

--
-- Current Database: `score`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `score` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `score`;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competition` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dance`
--

DROP TABLE IF EXISTS `dance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dance` (
  `subevent_id` bigint(20) NOT NULL,
  `id` smallint(6) NOT NULL,
  `name` varchar(40) NOT NULL,
  `abbr` varchar(4) NOT NULL,
  `scroresheet` json DEFAULT NULL,
  PRIMARY KEY (`subevent_id`,`id`),
  KEY `fk_dance_subevent1_idx` (`subevent_id`),
  CONSTRAINT `fk_dance_subevent1` FOREIGN KEY (`subevent_id`) REFERENCES `subevent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `competition_id` mediumint(9) NOT NULL,
  `model_id` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `description` json NOT NULL,
  `scoresheet` json DEFAULT NULL,
  PRIMARY KEY (`competition_id`,`id`,`model_id`),
  KEY `fk_event_competition1_idx` (`competition_id`),
  CONSTRAINT `fk_event_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `judge`
--

DROP TABLE IF EXISTS `judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `judge` (
  `competition_id` mediumint(9) NOT NULL,
  `letter` char(1) NOT NULL,
  `official_id` int(11) NOT NULL,
  PRIMARY KEY (`competition_id`,`letter`),
  KEY `fk_judge_competition1_idx` (`competition_id`),
  KEY `fk_judge_official1_idx` (`official_id`),
  CONSTRAINT `fk_judge_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`),
  CONSTRAINT `fk_judge_official1` FOREIGN KEY (`official_id`) REFERENCES `official` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `official`
--

DROP TABLE IF EXISTS `official`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `official` (
  `id` int(11) NOT NULL,
  `first` varchar(45) DEFAULT NULL,
  `last` varchar(45) DEFAULT NULL,
  `credentials` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `placement`
--

DROP TABLE IF EXISTS `placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `placement` (
  `competition_id` mediumint(9) NOT NULL,
  `subevent_id` bigint(20) NOT NULL,
  `dance_id` smallint(6) NOT NULL,
  `official_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `placement` tinyint(4) NOT NULL,
  PRIMARY KEY (`competition_id`,`subevent_id`,`official_id`,`team_id`,`dance_id`),
  KEY `fk_placement_subevent1_idx` (`subevent_id`),
  KEY `fk_placement_official1_idx` (`official_id`),
  KEY `fk_placement_team1_idx` (`team_id`),
  CONSTRAINT `fk_placement_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`),
  CONSTRAINT `fk_placement_official1` FOREIGN KEY (`official_id`) REFERENCES `official` (`id`),
  CONSTRAINT `fk_placement_subevent1` FOREIGN KEY (`subevent_id`) REFERENCES `subevent` (`id`),
  CONSTRAINT `fk_placement_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `result` (
  `team_id` int(11) NOT NULL,
  `competition_id` mediumint(9) NOT NULL,
  `model_id` tinyint(4) NOT NULL,
  `event_id` int(11) NOT NULL,
  `placement` tinyint(4) NOT NULL,
  `round` char(1) NOT NULL,
  PRIMARY KEY (`team_id`),
  CONSTRAINT `fk_result_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subevent`
--

DROP TABLE IF EXISTS `subevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subevent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `competition_id` mediumint(9) NOT NULL,
  `sequence` smallint(6) NOT NULL,
  `model_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `heat` mediumint(9) NOT NULL,
  `round_id` tinyint(4) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `description` json NOT NULL,
  `scoresheet` json DEFAULT NULL,
  `placement` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subevent_competition1_idx` (`competition_id`),
  CONSTRAINT `fk_subevent_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `participants` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'score'
--

--
-- Dumping routines for database 'score'
--

--
-- Current Database: `model`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `model` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `model`;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `domain` (
  `id` smallint(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `model_id` smallint(6) NOT NULL,
  `describe` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event_model1_idx` (`model_id`),
  CONSTRAINT `fk_event_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_has_team_class`
--

DROP TABLE IF EXISTS `event_has_team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_has_team_class` (
  `event_id` int(11) NOT NULL,
  `team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`event_id`,`team_class_id`),
  KEY `fk_event_has_team_class_team_class1_idx` (`team_class_id`),
  KEY `fk_event_has_team_class_event1_idx` (`event_id`),
  CONSTRAINT `fk_event_has_team_class_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_team_class_team_class1` FOREIGN KEY (`team_class_id`) REFERENCES `team_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model` (
  `id` smallint(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model_has_value`
--

DROP TABLE IF EXISTS `model_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model_has_value` (
  `model_id` smallint(6) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`model_id`,`value_id`),
  KEY `fk_model_has_value_value1_idx` (`value_id`),
  KEY `fk_model_has_value_model1_idx` (`model_id`),
  CONSTRAINT `fk_model_has_value_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_model_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `years` smallint(6) NOT NULL,
  `describe` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_has_team`
--

DROP TABLE IF EXISTS `person_has_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person_has_team` (
  `person_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`,`person_id`),
  KEY `fk_person_has_team_team1_idx` (`team_id`),
  KEY `fk_person_has_team_person1_idx` (`person_id`),
  CONSTRAINT `fk_person_has_team_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_person_has_team_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_has_value`
--

DROP TABLE IF EXISTS `person_has_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person_has_value` (
  `person_id` int(11) NOT NULL,
  `value_id` smallint(6) NOT NULL,
  PRIMARY KEY (`person_id`,`value_id`),
  KEY `fk_person_has_value_value1_idx` (`value_id`),
  KEY `fk_person_has_value_person1_idx` (`person_id`),
  CONSTRAINT `fk_person_has_value_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_person_has_value_value1` FOREIGN KEY (`value_id`) REFERENCES `value` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subevent`
--

DROP TABLE IF EXISTS `subevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subevent_event1_idx` (`event_id`),
  CONSTRAINT `fk_subevent_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_class_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_team_class1_idx` (`team_class_id`),
  CONSTRAINT `fk_team_team_class1` FOREIGN KEY (`team_class_id`) REFERENCES `team_class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_class`
--

DROP TABLE IF EXISTS `team_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_class` (
  `id` smallint(6) NOT NULL,
  `describe` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `value` (
  `id` smallint(6) NOT NULL,
  `domain_id` smallint(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `abbr` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Value_domain1_idx` (`domain_id`),
  CONSTRAINT `fk_Value_domain1` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'model'
--

--
-- Dumping routines for database 'model'
--
/*!50003 DROP PROCEDURE IF EXISTS `pull_from_setup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pull_from_setup`()
BEGIN
  INSERT INTO model.model(id,`name`,created,updated)
  SELECT id,`name`,created,updated
  FROM setup.model;
  
  INSERT INTO model.domain(id,`name`)
  SELECT id, `name`
  FROM setup.domain;
  
  INSERT INTO model.`value`(id, domain_id, `name`,abbr)
  SELECT id, domain_id, `name`, abbr
  FROM setup.`value`;
  
  INSERT INTO model.model_has_value(model_id,value_id)
  SELECT model_id,value_id
  FROM setup.model_has_value;
  
  INSERT INTO model.team_class(id,`describe`)
  SELECT id, `describe`
  FROM setup.team_class;
  
  INSERT INTO model.person(id, years, `describe`)
  SELECT id, JSON_EXTRACT(`describe`,'$.years'),`describe`
  FROM setup.person;
  
  INSERT INTO model.team(id,team_class_id)
  SELECT id, team_class_id
  FROM setup.team;
  
  INSERT INTO model.`event`(id, model_id, `describe`)
  SELECT id, model_id, `describe`
  FROM setup.`event`;
    
  INSERT INTO model.person_has_team(person_id,team_id)
  SELECT person_id,team_id
  FROM setup.team_has_person;
  
  INSERT INTO model.event_has_team_class(team_class_id,event_id)
  SELECT team_class_id,event_id
  FROM setup.event_has_team_class;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `truncate_model` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `truncate_model`()
BEGIN
  SET FOREIGN_KEY_CHECKS = 0;
  TRUNCATE model.model;
  TRUNCATE model.domain;
  TRUNCATE model.`value`;
  TRUNCATE model.team_class;
  TRUNCATE model.person;
  TRUNCATE model.team;
  TRUNCATE model.`event`;
  TRUNCATE model.person_has_team;
  TRUNCATE model.event_has_team;
  SET FOREIGN_KEY_CHECKS = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `setup`
--

USE `setup`;

--
-- Final view structure for view `view_person`
--

/*!50001 DROP VIEW IF EXISTS `view_person`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_person` AS select `ap`.`id` AS `age_person_id`,`pp`.`id` AS `prf_person_id`,json_merge_patch(`pp`.`describe`,`ap`.`describe`) AS `describe` from ((`age_person_has_prf_person` `appp` join `age_person` `ap` on((`appp`.`age_person_id` = `ap`.`id`))) join `prf_person` `pp` on((`appp`.`prf_person_id` = `pp`.`id`))) where ((json_extract(`pp`.`describe`,'$.type') = json_extract(`ap`.`describe`,'$.type')) and (json_extract(`pp`.`describe`,'$.status') = json_extract(`ap`.`describe`,'$.status')) and (json_extract(`pp`.`describe`,'$.designate') = json_extract(`ap`.`describe`,'$.designate'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_team`
--

/*!50001 DROP VIEW IF EXISTS `view_team`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_team` AS select `tc`.`id` AS `team_class_id`,`at`.`id` AS `age_team_id`,`pt`.`id` AS `prf_team_id` from ((`team_class` `tc` join `age_team` `at` on((`at`.`age_team_class_id` = `tc`.`age_team_class_id`))) join `prf_team` `pt` on((`pt`.`prf_team_class_id` = `tc`.`prf_team_class_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_team_aux`
--

/*!50001 DROP VIEW IF EXISTS `view_team_aux`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_team_aux` AS select distinct `at`.`id` AS `age_team_id`,`pt`.`id` AS `prf_team_id`,json_merge_patch(`atc`.`describe`,`ptc`.`describe`) AS `JSON_MERGE_PATCH(atc.describe,ptc.describe)` from ((((`age_team_class_has_prf_team_class` `atcptc` join `age_team_class` `atc` on((`atcptc`.`age_team_class_id` = `atc`.`id`))) join `prf_team_class` `ptc` on((`atcptc`.`prf_team_class_id` = `ptc`.`id`))) join `age_team` `at` on((`atc`.`id` = `at`.`age_team_class_id`))) join `prf_team` `pt` on((`ptc`.`id` = `pt`.`prf_team_class_id`))) where ((json_extract(`atc`.`describe`,'$.type') = json_extract(`ptc`.`describe`,'$.type')) and (json_extract(`atc`.`describe`,'$.status') = json_extract(`ptc`.`describe`,'$.status'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_team_class`
--

/*!50001 DROP VIEW IF EXISTS `view_team_class`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_team_class` AS select `atcptc`.`age_team_class_id` AS `age_team_class_id`,`atcptc`.`prf_team_class_id` AS `prf_team_class_id`,json_merge_patch(`atc`.`describe`,`ptc`.`describe`) AS `describe` from ((`age_team_class_has_prf_team_class` `atcptc` join `age_team_class` `atc` on((`atcptc`.`age_team_class_id` = `atc`.`id`))) join `prf_team_class` `ptc` on((`atcptc`.`prf_team_class_id` = `ptc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_team_person`
--

/*!50001 DROP VIEW IF EXISTS `view_team_person`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_team_person` AS select `t`.`id` AS `team_id`,`p`.`id` AS `person_id` from (((`team` `t` join `age_team_has_age_person` `atap` on((`t`.`age_team_id` = `atap`.`age_team_id`))) join `prf_team_has_prf_person` `ptpp` on((`t`.`prf_team_id` = `ptpp`.`prf_team_id`))) join `person` `p` on(((`atap`.`age_person_id` = `p`.`age_person_id`) and (`ptpp`.`prf_person_id` = `p`.`prf_person_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `sales`
--

USE `sales`;

--
-- Current Database: `competition`
--

USE `competition`;

--
-- Current Database: `access`
--

USE `access`;

--
-- Current Database: `score`
--

USE `score`;

--
-- Current Database: `model`
--

USE `model`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 15:00:05
