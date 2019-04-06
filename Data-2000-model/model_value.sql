-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: model
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
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (1,1,'International','I'),(2,1,'American','A'),(3,1,'Country','C'),(4,1,'Fun Events','F'),(5,2,'Rhythm','AR'),(6,2,'Smooth','AS'),(7,2,'Latin','IL'),(8,2,'Standard','IS'),(9,2,'Theater Arts','TA'),(10,2,'Western','CW'),(11,2,'Caberet','Cab'),(12,2,'Night Club','NC'),(13,2,'Argentine','Ar'),(14,2,'Novelty',''),(15,3,'Teacher','T'),(16,3,'Student','S'),(17,3,'Teacher-Student','TS'),(18,3,'Student-Student','SS'),(19,3,'Teacher-Teacher','TT'),(20,3,'Mixed Status','MS'),(21,3,'Team 8 Person','T8'),(22,4,'Amateur','Am'),(23,4,'Professional','Pro'),(24,4,'Social','Soc'),(25,4,'Amateur-Amateur','Am-Am'),(26,4,'Professional-Amateur','ProAm'),(27,4,'Professional-Professional','ProPro'),(28,4,'Mixed Type','MT'),(29,5,'Male','M'),(30,5,'Female','F'),(31,5,'Male-Male','MM'),(32,5,'Female-Female','FF'),(33,5,'Male-Female','MF'),(34,5,'Same Sex','SS'),(35,5,'Mixed Sex','MS'),(36,6,'Social','S'),(37,6,'Newcomer','NC'),(38,6,'Pre Bronze','PB'),(39,6,'Intermediate Bronze','IB'),(40,6,'Full Bronze','FB'),(41,6,'Open Bronze','OB'),(42,6,'Bronze','B'),(43,6,'Pre Silver','PS'),(44,6,'Intermediate Silver','IS'),(45,6,'Full Silver','FS'),(46,6,'Open Silver','OS'),(47,6,'Silver','S'),(48,6,'Pre Gold','PG'),(49,6,'Intermediate Gold','IG'),(50,6,'Full Gold','FG'),(51,6,'Open Gold','OG'),(52,6,'Gold','G'),(53,6,'Novice',''),(54,6,'Pre Championship','PC'),(55,6,'Gold Star 1','GS1'),(56,6,'Championship','C'),(57,6,'Gold Star 2','GS2'),(58,6,'Rising Star','R'),(59,6,'Professional','Pro'),(60,7,'Y00-00','Pro'),(61,7,'Y01-04','BY'),(62,7,'Y05-05','JV'),(63,7,'Y06-06','JV'),(64,7,'Y07-07','PT1'),(65,7,'Y08-08','PT1'),(66,7,'Y09-09','PT1'),(67,7,'Y10-10','PT2'),(68,7,'Y11-11','PT2'),(69,7,'Y12-12','J1'),(70,7,'Y13-13','J1'),(71,7,'Y14-14','J2'),(72,7,'Y15-15','J2'),(73,7,'Y16-16','1'),(74,7,'Y17-17','1'),(75,7,'Y18-18','1'),(76,7,'Y19-34','A'),(77,7,'Y35-44','S1'),(78,7,'Y45-49','S2'),(79,7,'Y50-54','S2'),(80,7,'Y55-64','S3'),(81,7,'Y65-74','S4'),(82,7,'Y75-99','S5'),(83,7,'Under 6','U6'),(84,7,'Under 8','U8'),(85,7,'Under 12','U12'),(86,7,'Junior 12-16','J12'),(87,7,'Adult 16-50','A'),(88,7,'Senior 50','S50'),(89,7,'Preteen 1','PT1'),(90,7,'Preteen 2','PT2'),(91,7,'Junior 1','J1'),(92,7,'Junior 2','J2'),(93,7,'Youth','1'),(94,7,'Adult','A'),(95,7,'Senior 1','S1'),(96,7,'Senior 2','S2'),(97,7,'Senior 3','S3'),(98,7,'Senior 4','S4'),(99,7,'Senior 5','S5'),(100,7,'Senior','S'),(101,7,'Baby','BY'),(102,7,'Juvenile','JV'),(103,7,'Youth-Senior','YS'),(104,7,'Youth-Senior 5','YS5'),(105,7,'Adult-Senior 2','AS2'),(106,7,'Senior 3-Senior 5','S35'),(107,7,'Adult-Youth','AY'),(108,7,'Senior-Youth','SY'),(109,7,'College-College','C'),(110,7,'Adult-College','AC'),(111,7,'Baby-Preteen 2','BPT'),(112,7,'JV 8','JV'),(113,7,'PT 9-11','PT'),(114,7,'JR 12-15','JR'),(115,7,'Y 16-20','1'),(116,7,'A 21-50','A'),(117,7,'A1 21-35','A1'),(118,7,'A2 36-50','A2'),(119,7,'B 51-70','B'),(120,7,'B1 51-60','B1'),(121,7,'B2 61-70','B2'),(122,7,'C1 71-80','C1'),(123,7,'C2-81-99','C2'),(124,7,'C 71+','C'),(125,7,'Preteen','PT'),(126,7,'Junior','JR'),(127,7,'Under 45','45-'),(128,7,'Over 46','46+'),(129,7,'Senior 65+','65+'),(130,7,'Under 21','21-'),(131,8,'Parent-Child','PC'),(132,8,'Grandparent-Child','GC'),(133,8,'Student-Male','SM'),(134,8,'Student-Female','SF'),(135,8,'Introductory Tests','IT'),(136,8,'One Dance Tests','ODT'),(137,8,'Medal Series','MS'),(138,8,'Opposite','O'),(139,8,'Family','F'),(140,8,'Qualifier','Q'),(141,8,'Scholarship','S'),(142,8,'Jack & Jill','JJ'),(143,9,'Cha Cha','CC'),(144,9,'Samba','Sa'),(145,9,'Rumba','R'),(146,9,'Paso Doble','PD'),(147,9,'Jive','J'),(148,9,'Swing','Sw'),(149,9,'Bolero','B'),(150,9,'Mambo','M'),(151,9,'Salsa','Sal'),(152,9,'West Coast Swing','WCS'),(153,9,'Merengue','Mer'),(154,9,'Night Club','NC'),(155,9,'Hustle','H'),(156,9,'Chicken Dance','CD'),(157,9,'Waltz','W'),(158,9,'Tango','T'),(159,9,'Viennese Waltz','VW'),(160,9,'Foxtrot','F'),(161,9,'Quickstep','QS'),(162,9,'Argentine Tango','AT'),(163,9,'Peabody','PB'),(164,9,'Valtz','V'),(165,9,'Melonga','Mel'),(166,9,'2-Step','2-S'),(167,9,'Nightclub','NC'),(168,9,'Polka','Plka'),(169,9,'Triple Two','TT'),(170,9,'Performance','P'),(171,11,'A','a'),(172,11,'B','b'),(173,10,'International','I'),(174,10,'American','A'),(175,10,'Standard','IS'),(176,10,'Smooth','AS'),(177,10,'Latin','IL'),(178,10,'Rhythm','AR'),(179,10,'Fun Events','F'),(180,10,'Novelty','');
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-05 10:10:46
