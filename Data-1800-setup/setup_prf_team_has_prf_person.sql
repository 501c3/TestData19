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
-- Dumping data for table `prf_team_has_prf_person`
--

LOCK TABLES `prf_team_has_prf_person` WRITE;
/*!40000 ALTER TABLE `prf_team_has_prf_person` DISABLE KEYS */;
INSERT INTO `prf_team_has_prf_person` VALUES (1,1),(35,1),(286,1),(558,1),(559,1),(561,1),(563,1),(565,1),(567,1),(569,1),(571,1),(573,1),(575,1),(577,1),(579,1),(580,1),(581,1),(582,1),(583,1),(584,1),(585,1),(586,1),(587,1),(588,1),(589,1),(286,2),(579,2),(646,2),(648,2),(650,2),(652,2),(781,2),(782,2),(783,2),(784,2),(2,3),(36,3),(287,3),(38,4),(41,4),(51,4),(60,4),(287,4),(288,4),(290,4),(296,4),(301,4),(654,4),(656,4),(658,4),(660,4),(785,4),(786,4),(787,4),(788,4),(918,4),(920,4),(989,4),(990,4),(3,5),(37,5),(39,5),(288,5),(289,5),(43,6),(46,6),(53,6),(62,6),(71,6),(82,6),(95,6),(110,6),(127,6),(289,6),(291,6),(293,6),(297,6),(302,6),(307,6),(313,6),(320,6),(328,6),(337,6),(560,6),(580,6),(662,6),(664,6),(666,6),(668,6),(789,6),(790,6),(791,6),(792,6),(922,6),(924,6),(991,6),(992,6),(4,7),(40,7),(42,7),(44,7),(290,7),(291,7),(292,7),(48,8),(55,8),(64,8),(73,8),(84,8),(97,8),(112,8),(129,8),(292,8),(294,8),(298,8),(303,8),(308,8),(314,8),(321,8),(329,8),(338,8),(562,8),(581,8),(670,8),(672,8),(674,8),(676,8),(793,8),(794,8),(795,8),(796,8),(926,8),(928,8),(993,8),(994,8),(5,9),(45,9),(47,9),(49,9),(293,9),(294,9),(295,9),(57,10),(66,10),(75,10),(86,10),(99,10),(114,10),(131,10),(295,10),(299,10),(304,10),(309,10),(315,10),(322,10),(330,10),(339,10),(564,10),(582,10),(678,10),(680,10),(682,10),(684,10),(797,10),(798,10),(799,10),(800,10),(930,10),(932,10),(995,10),(996,10),(6,11),(50,11),(52,11),(54,11),(56,11),(58,11),(296,11),(297,11),(298,11),(299,11),(300,11),(68,12),(77,12),(88,12),(101,12),(116,12),(133,12),(300,12),(305,12),(310,12),(316,12),(323,12),(331,12),(340,12),(566,12),(583,12),(686,12),(688,12),(690,12),(692,12),(801,12),(802,12),(803,12),(804,12),(934,12),(936,12),(997,12),(998,12),(7,13),(59,13),(61,13),(63,13),(65,13),(67,13),(69,13),(301,13),(302,13),(303,13),(304,13),(305,13),(306,13),(79,14),(90,14),(103,14),(118,14),(135,14),(306,14),(311,14),(317,14),(324,14),(332,14),(341,14),(568,14),(584,14),(694,14),(696,14),(698,14),(700,14),(805,14),(806,14),(807,14),(808,14),(938,14),(940,14),(999,14),(1000,14),(8,15),(70,15),(72,15),(74,15),(76,15),(78,15),(80,15),(307,15),(308,15),(309,15),(310,15),(311,15),(312,15),(92,16),(105,16),(120,16),(137,16),(146,16),(157,16),(170,16),(185,16),(202,16),(221,16),(312,16),(318,16),(325,16),(333,16),(342,16),(347,16),(353,16),(360,16),(368,16),(377,16),(387,16),(570,16),(585,16),(702,16),(704,16),(706,16),(708,16),(809,16),(810,16),(811,16),(812,16),(942,16),(944,16),(1001,16),(1002,16),(9,17),(81,17),(83,17),(85,17),(87,17),(89,17),(91,17),(93,17),(313,17),(314,17),(315,17),(316,17),(317,17),(318,17),(319,17),(107,18),(122,18),(139,18),(148,18),(159,18),(172,18),(187,18),(204,18),(223,18),(319,18),(326,18),(334,18),(343,18),(348,18),(354,18),(361,18),(369,18),(378,18),(388,18),(572,18),(586,18),(710,18),(712,18),(714,18),(716,18),(813,18),(814,18),(815,18),(816,18),(946,18),(948,18),(1003,18),(1004,18),(10,19),(94,19),(96,19),(98,19),(100,19),(102,19),(104,19),(106,19),(108,19),(320,19),(321,19),(322,19),(323,19),(324,19),(325,19),(326,19),(327,19),(124,20),(141,20),(150,20),(161,20),(174,20),(189,20),(206,20),(225,20),(327,20),(335,20),(344,20),(349,20),(355,20),(362,20),(370,20),(379,20),(389,20),(574,20),(587,20),(718,20),(720,20),(722,20),(724,20),(817,20),(818,20),(819,20),(820,20),(950,20),(952,20),(1005,20),(1006,20),(11,21),(109,21),(111,21),(113,21),(115,21),(117,21),(119,21),(121,21),(123,21),(125,21),(328,21),(329,21),(330,21),(331,21),(332,21),(333,21),(334,21),(335,21),(336,21),(143,22),(152,22),(163,22),(176,22),(191,22),(208,22),(227,22),(336,22),(345,22),(350,22),(356,22),(363,22),(371,22),(380,22),(390,22),(576,22),(588,22),(726,22),(728,22),(730,22),(732,22),(821,22),(822,22),(823,22),(824,22),(954,22),(956,22),(1007,22),(1008,22),(12,23),(126,23),(128,23),(130,23),(132,23),(134,23),(136,23),(138,23),(140,23),(142,23),(144,23),(337,23),(338,23),(339,23),(340,23),(341,23),(342,23),(343,23),(344,23),(345,23),(346,23),(154,24),(165,24),(178,24),(193,24),(210,24),(229,24),(346,24),(351,24),(357,24),(364,24),(372,24),(381,24),(391,24),(578,24),(589,24),(734,24),(736,24),(738,24),(740,24),(825,24),(826,24),(827,24),(828,24),(958,24),(960,24),(1009,24),(1010,24),(13,25),(145,25),(147,25),(149,25),(151,25),(153,25),(155,25),(347,25),(348,25),(349,25),(350,25),(351,25),(352,25),(167,26),(180,26),(195,26),(212,26),(231,26),(242,26),(257,26),(352,26),(358,26),(365,26),(373,26),(382,26),(392,26),(398,26),(406,26),(742,26),(744,26),(746,26),(748,26),(829,26),(830,26),(831,26),(832,26),(962,26),(964,26),(1011,26),(1012,26),(14,27),(156,27),(158,27),(160,27),(162,27),(164,27),(166,27),(168,27),(353,27),(354,27),(355,27),(356,27),(357,27),(358,27),(359,27),(182,28),(197,28),(214,28),(233,28),(244,28),(259,28),(359,28),(366,28),(374,28),(383,28),(393,28),(399,28),(407,28),(750,28),(752,28),(754,28),(756,28),(833,28),(834,28),(835,28),(836,28),(966,28),(968,28),(1013,28),(1014,28),(15,29),(169,29),(171,29),(173,29),(175,29),(177,29),(179,29),(181,29),(183,29),(360,29),(361,29),(362,29),(363,29),(364,29),(365,29),(366,29),(367,29),(199,30),(216,30),(235,30),(246,30),(261,30),(367,30),(375,30),(384,30),(394,30),(400,30),(408,30),(758,30),(760,30),(762,30),(764,30),(837,30),(838,30),(839,30),(840,30),(970,30),(972,30),(1015,30),(1016,30),(16,31),(184,31),(186,31),(188,31),(190,31),(192,31),(194,31),(196,31),(198,31),(200,31),(368,31),(369,31),(370,31),(371,31),(372,31),(373,31),(374,31),(375,31),(376,31),(218,32),(237,32),(248,32),(263,32),(376,32),(385,32),(395,32),(401,32),(409,32),(766,32),(768,32),(770,32),(772,32),(841,32),(842,32),(843,32),(844,32),(974,32),(976,32),(1017,32),(1018,32),(17,33),(201,33),(203,33),(205,33),(207,33),(209,33),(211,33),(213,33),(215,33),(217,33),(219,33),(377,33),(378,33),(379,33),(380,33),(381,33),(382,33),(383,33),(384,33),(385,33),(386,33),(239,34),(250,34),(265,34),(386,34),(396,34),(402,34),(410,34),(774,34),(776,34),(778,34),(780,34),(845,34),(846,34),(847,34),(848,34),(978,34),(980,34),(1019,34),(1020,34),(18,35),(422,35),(560,35),(562,35),(564,35),(566,35),(568,35),(570,35),(572,35),(574,35),(576,35),(578,35),(590,35),(591,35),(592,35),(593,35),(594,35),(595,35),(596,35),(597,35),(598,35),(599,35),(600,35),(35,36),(422,36),(558,36),(590,36),(645,36),(647,36),(649,36),(651,36),(849,36),(850,36),(851,36),(852,36),(19,37),(423,37),(36,38),(37,38),(40,38),(50,38),(59,38),(423,38),(424,38),(426,38),(432,38),(437,38),(653,38),(655,38),(657,38),(659,38),(853,38),(854,38),(855,38),(856,38),(917,38),(919,38),(1025,38),(1026,38),(20,39),(38,39),(424,39),(425,39),(39,40),(42,40),(45,40),(52,40),(61,40),(70,40),(81,40),(94,40),(109,40),(126,40),(425,40),(427,40),(429,40),(433,40),(438,40),(443,40),(449,40),(456,40),(464,40),(473,40),(559,40),(591,40),(661,40),(663,40),(665,40),(667,40),(857,40),(858,40),(859,40),(860,40),(921,40),(923,40),(1027,40),(1028,40),(21,41),(41,41),(43,41),(426,41),(427,41),(428,41),(44,42),(47,42),(54,42),(63,42),(72,42),(83,42),(96,42),(111,42),(128,42),(428,42),(430,42),(434,42),(439,42),(444,42),(450,42),(457,42),(465,42),(474,42),(561,42),(592,42),(669,42),(671,42),(673,42),(675,42),(861,42),(862,42),(863,42),(864,42),(925,42),(927,42),(1029,42),(1030,42),(22,43),(46,43),(48,43),(429,43),(430,43),(431,43),(49,44),(56,44),(65,44),(74,44),(85,44),(98,44),(113,44),(130,44),(431,44),(435,44),(440,44),(445,44),(451,44),(458,44),(466,44),(475,44),(563,44),(593,44),(677,44),(679,44),(681,44),(683,44),(865,44),(866,44),(867,44),(868,44),(929,44),(931,44),(1031,44),(1032,44),(23,45),(51,45),(53,45),(55,45),(57,45),(432,45),(433,45),(434,45),(435,45),(436,45),(58,46),(67,46),(76,46),(87,46),(100,46),(115,46),(132,46),(436,46),(441,46),(446,46),(452,46),(459,46),(467,46),(476,46),(565,46),(594,46),(685,46),(687,46),(689,46),(691,46),(869,46),(870,46),(871,46),(872,46),(933,46),(935,46),(1033,46),(1034,46),(24,47),(60,47),(62,47),(64,47),(66,47),(68,47),(437,47),(438,47),(439,47),(440,47),(441,47),(442,47),(69,48),(78,48),(89,48),(102,48),(117,48),(134,48),(442,48),(447,48),(453,48),(460,48),(468,48),(477,48),(567,48),(595,48),(693,48),(695,48),(697,48),(699,48),(873,48),(874,48),(875,48),(876,48),(937,48),(939,48),(1035,48),(1036,48),(25,49),(71,49),(73,49),(75,49),(77,49),(79,49),(443,49),(444,49),(445,49),(446,49),(447,49),(448,49),(80,50),(91,50),(104,50),(119,50),(136,50),(145,50),(156,50),(169,50),(184,50),(201,50),(220,50),(448,50),(454,50),(461,50),(469,50),(478,50),(483,50),(489,50),(496,50),(504,50),(513,50),(523,50),(569,50),(596,50),(701,50),(703,50),(705,50),(707,50),(877,50),(878,50),(879,50),(880,50),(941,50),(943,50),(1037,50),(1038,50),(26,51),(82,51),(84,51),(86,51),(88,51),(90,51),(92,51),(449,51),(450,51),(451,51),(452,51),(453,51),(454,51),(455,51),(93,52),(106,52),(121,52),(138,52),(147,52),(158,52),(171,52),(186,52),(203,52),(222,52),(455,52),(462,52),(470,52),(479,52),(484,52),(490,52),(497,52),(505,52),(514,52),(524,52),(571,52),(597,52),(709,52),(711,52),(713,52),(715,52),(881,52),(882,52),(883,52),(884,52),(945,52),(947,52),(1039,52),(1040,52),(27,53),(95,53),(97,53),(99,53),(101,53),(103,53),(105,53),(107,53),(456,53),(457,53),(458,53),(459,53),(460,53),(461,53),(462,53),(463,53),(108,54),(123,54),(140,54),(149,54),(160,54),(173,54),(188,54),(205,54),(224,54),(463,54),(471,54),(480,54),(485,54),(491,54),(498,54),(506,54),(515,54),(525,54),(573,54),(598,54),(717,54),(719,54),(721,54),(723,54),(885,54),(886,54),(887,54),(888,54),(949,54),(951,54),(1041,54),(1042,54),(28,55),(110,55),(112,55),(114,55),(116,55),(118,55),(120,55),(122,55),(124,55),(464,55),(465,55),(466,55),(467,55),(468,55),(469,55),(470,55),(471,55),(472,55),(125,56),(142,56),(151,56),(162,56),(175,56),(190,56),(207,56),(226,56),(472,56),(481,56),(486,56),(492,56),(499,56),(507,56),(516,56),(526,56),(575,56),(599,56),(725,56),(727,56),(729,56),(731,56),(889,56),(890,56),(891,56),(892,56),(953,56),(955,56),(1043,56),(1044,56),(29,57),(127,57),(129,57),(131,57),(133,57),(135,57),(137,57),(139,57),(141,57),(143,57),(473,57),(474,57),(475,57),(476,57),(477,57),(478,57),(479,57),(480,57),(481,57),(482,57),(144,58),(153,58),(164,58),(177,58),(192,58),(209,58),(228,58),(482,58),(487,58),(493,58),(500,58),(508,58),(517,58),(527,58),(577,58),(600,58),(733,58),(735,58),(737,58),(739,58),(893,58),(894,58),(895,58),(896,58),(957,58),(959,58),(1045,58),(1046,58),(30,59),(146,59),(148,59),(150,59),(152,59),(154,59),(483,59),(484,59),(485,59),(486,59),(487,59),(488,59),(155,60),(166,60),(179,60),(194,60),(211,60),(230,60),(241,60),(256,60),(488,60),(494,60),(501,60),(509,60),(518,60),(528,60),(534,60),(542,60),(741,60),(743,60),(745,60),(747,60),(897,60),(898,60),(899,60),(900,60),(961,60),(963,60),(1047,60),(1048,60),(31,61),(157,61),(159,61),(161,61),(163,61),(165,61),(167,61),(489,61),(490,61),(491,61),(492,61),(493,61),(494,61),(495,61),(168,62),(181,62),(196,62),(213,62),(232,62),(243,62),(258,62),(495,62),(502,62),(510,62),(519,62),(529,62),(535,62),(543,62),(749,62),(751,62),(753,62),(755,62),(901,62),(902,62),(903,62),(904,62),(965,62),(967,62),(1049,62),(1050,62),(32,63),(170,63),(172,63),(174,63),(176,63),(178,63),(180,63),(182,63),(496,63),(497,63),(498,63),(499,63),(500,63),(501,63),(502,63),(503,63),(183,64),(198,64),(215,64),(234,64),(245,64),(260,64),(503,64),(511,64),(520,64),(530,64),(536,64),(544,64),(757,64),(759,64),(761,64),(763,64),(905,64),(906,64),(907,64),(908,64),(969,64),(971,64),(1051,64),(1052,64),(33,65),(185,65),(187,65),(189,65),(191,65),(193,65),(195,65),(197,65),(199,65),(504,65),(505,65),(506,65),(507,65),(508,65),(509,65),(510,65),(511,65),(512,65),(200,66),(217,66),(236,66),(247,66),(262,66),(512,66),(521,66),(531,66),(537,66),(545,66),(765,66),(767,66),(769,66),(771,66),(909,66),(910,66),(911,66),(912,66),(973,66),(975,66),(1053,66),(1054,66),(34,67),(202,67),(204,67),(206,67),(208,67),(210,67),(212,67),(214,67),(216,67),(218,67),(513,67),(514,67),(515,67),(516,67),(517,67),(518,67),(519,67),(520,67),(521,67),(522,67),(219,68),(238,68),(249,68),(264,68),(522,68),(532,68),(538,68),(546,68),(773,68),(775,68),(777,68),(779,68),(913,68),(914,68),(915,68),(916,68),(977,68),(979,68),(1055,68),(1056,68),(220,69),(222,69),(224,69),(226,69),(228,69),(230,69),(232,69),(234,69),(236,69),(238,69),(240,69),(387,69),(388,69),(389,69),(390,69),(391,69),(392,69),(393,69),(394,69),(395,69),(396,69),(397,69),(252,70),(267,70),(397,70),(403,70),(411,70),(241,71),(243,71),(245,71),(247,71),(249,71),(251,71),(253,71),(255,71),(398,71),(399,71),(400,71),(401,71),(402,71),(403,71),(404,71),(405,71),(270,72),(274,72),(281,72),(405,72),(413,72),(415,72),(419,72),(256,73),(258,73),(260,73),(262,73),(264,73),(266,73),(268,73),(269,73),(406,73),(407,73),(408,73),(409,73),(410,73),(411,73),(412,73),(413,73),(254,74),(272,74),(279,74),(283,74),(404,74),(412,74),(414,74),(418,74),(420,74),(982,74),(984,74),(1021,74),(1022,74),(271,75),(273,75),(275,75),(276,75),(414,75),(415,75),(416,75),(417,75),(285,76),(416,76),(421,76),(278,77),(280,77),(282,77),(284,77),(418,77),(419,77),(420,77),(421,77),(277,78),(417,78),(986,78),(988,78),(1023,78),(1024,78),(221,79),(223,79),(225,79),(227,79),(229,79),(231,79),(233,79),(235,79),(237,79),(239,79),(523,79),(524,79),(525,79),(526,79),(527,79),(528,79),(529,79),(530,79),(531,79),(532,79),(533,79),(240,80),(251,80),(266,80),(533,80),(539,80),(547,80),(242,81),(244,81),(246,81),(248,81),(250,81),(252,81),(254,81),(534,81),(535,81),(536,81),(537,81),(538,81),(539,81),(540,81),(541,81),(255,82),(269,82),(273,82),(280,82),(541,82),(549,82),(551,82),(555,82),(257,83),(259,83),(261,83),(263,83),(265,83),(267,83),(270,83),(542,83),(543,83),(544,83),(545,83),(546,83),(547,83),(548,83),(549,83),(253,84),(268,84),(271,84),(278,84),(282,84),(540,84),(548,84),(550,84),(554,84),(556,84),(981,84),(983,84),(1057,84),(1058,84),(272,85),(274,85),(277,85),(550,85),(551,85),(552,85),(553,85),(275,86),(284,86),(552,86),(557,86),(279,87),(281,87),(283,87),(285,87),(554,87),(555,87),(556,87),(557,87),(276,88),(553,88),(985,88),(987,88),(1059,88),(1060,88),(601,101),(603,101),(621,101),(622,101),(647,101),(655,101),(663,101),(671,101),(679,101),(687,101),(695,101),(703,101),(711,101),(719,101),(727,101),(735,101),(743,101),(751,101),(759,101),(767,101),(775,101),(782,101),(786,101),(790,101),(794,101),(798,101),(802,101),(806,101),(810,101),(814,101),(818,101),(822,101),(826,101),(830,101),(834,101),(838,101),(842,101),(846,101),(606,102),(610,102),(617,102),(622,102),(624,102),(626,102),(630,102),(604,103),(605,103),(623,103),(624,103),(645,103),(653,103),(661,103),(669,103),(677,103),(685,103),(693,103),(701,103),(709,103),(717,103),(725,103),(733,103),(741,103),(749,103),(757,103),(765,103),(773,103),(781,103),(785,103),(789,103),(793,103),(797,103),(801,103),(805,103),(809,103),(813,103),(817,103),(821,103),(825,103),(829,103),(833,103),(837,103),(841,103),(845,103),(602,104),(608,104),(615,104),(621,104),(623,104),(625,104),(629,104),(607,105),(609,105),(611,105),(612,105),(625,105),(626,105),(627,105),(628,105),(651,105),(659,105),(667,105),(675,105),(683,105),(691,105),(699,105),(707,105),(715,105),(723,105),(731,105),(739,105),(747,105),(755,105),(763,105),(771,105),(779,105),(784,105),(788,105),(792,105),(796,105),(800,105),(804,105),(808,105),(812,105),(816,105),(820,105),(824,105),(828,105),(832,105),(836,105),(840,105),(844,105),(848,105),(620,106),(627,106),(632,106),(614,107),(616,107),(618,107),(619,107),(629,107),(630,107),(631,107),(632,107),(649,107),(657,107),(665,107),(673,107),(681,107),(689,107),(697,107),(705,107),(713,107),(721,107),(729,107),(737,107),(745,107),(753,107),(761,107),(769,107),(777,107),(783,107),(787,107),(791,107),(795,107),(799,107),(803,107),(807,107),(811,107),(815,107),(819,107),(823,107),(827,107),(831,107),(835,107),(839,107),(843,107),(847,107),(613,108),(628,108),(631,108),(602,121),(633,121),(634,121),(648,121),(656,121),(664,121),(672,121),(680,121),(688,121),(696,121),(704,121),(712,121),(720,121),(728,121),(736,121),(744,121),(752,121),(760,121),(768,121),(776,121),(850,121),(854,121),(858,121),(862,121),(866,121),(870,121),(874,121),(878,121),(882,121),(886,121),(890,121),(894,121),(898,121),(902,121),(906,121),(910,121),(914,121),(603,122),(605,122),(609,122),(616,122),(634,122),(636,122),(638,122),(642,122),(606,123),(635,123),(636,123),(646,123),(654,123),(662,123),(670,123),(678,123),(686,123),(694,123),(702,123),(710,123),(718,123),(726,123),(734,123),(742,123),(750,123),(758,123),(766,123),(774,123),(849,123),(853,123),(857,123),(861,123),(865,123),(869,123),(873,123),(877,123),(881,123),(885,123),(889,123),(893,123),(897,123),(901,123),(905,123),(909,123),(913,123),(601,124),(604,124),(607,124),(614,124),(633,124),(635,124),(637,124),(641,124),(608,125),(610,125),(613,125),(637,125),(638,125),(639,125),(640,125),(652,125),(660,125),(668,125),(676,125),(684,125),(692,125),(700,125),(708,125),(716,125),(724,125),(732,125),(740,125),(748,125),(756,125),(764,125),(772,125),(780,125),(852,125),(856,125),(860,125),(864,125),(868,125),(872,125),(876,125),(880,125),(884,125),(888,125),(892,125),(896,125),(900,125),(904,125),(908,125),(912,125),(916,125),(611,126),(619,126),(639,126),(644,126),(615,127),(617,127),(620,127),(641,127),(642,127),(643,127),(644,127),(650,127),(658,127),(666,127),(674,127),(682,127),(690,127),(698,127),(706,127),(714,127),(722,127),(730,127),(738,127),(746,127),(754,127),(762,127),(770,127),(778,127),(851,127),(855,127),(859,127),(863,127),(867,127),(871,127),(875,127),(879,127),(883,127),(887,127),(891,127),(895,127),(899,127),(903,127),(907,127),(911,127),(915,127),(612,128),(618,128),(640,128),(643,128),(917,129),(921,129),(925,129),(929,129),(933,129),(937,129),(941,129),(945,129),(949,129),(953,129),(957,129),(961,129),(965,129),(969,129),(973,129),(977,129),(981,129),(985,129),(989,129),(991,129),(993,129),(995,129),(997,129),(999,129),(1001,129),(1003,129),(1005,129),(1007,129),(1009,129),(1011,129),(1013,129),(1015,129),(1017,129),(1019,129),(1021,129),(1023,129),(1061,129),(1063,130),(919,131),(923,131),(927,131),(931,131),(935,131),(939,131),(943,131),(947,131),(951,131),(955,131),(959,131),(963,131),(967,131),(971,131),(975,131),(979,131),(983,131),(987,131),(990,131),(992,131),(994,131),(996,131),(998,131),(1000,131),(1002,131),(1004,131),(1006,131),(1008,131),(1010,131),(1012,131),(1014,131),(1016,131),(1018,131),(1020,131),(1022,131),(1024,131),(1062,131),(1064,131),(918,133),(922,133),(926,133),(930,133),(934,133),(938,133),(942,133),(946,133),(950,133),(954,133),(958,133),(962,133),(966,133),(970,133),(974,133),(978,133),(982,133),(986,133),(1025,133),(1027,133),(1029,133),(1031,133),(1033,133),(1035,133),(1037,133),(1039,133),(1041,133),(1043,133),(1045,133),(1047,133),(1049,133),(1051,133),(1053,133),(1055,133),(1057,133),(1059,133),(1061,134),(1062,134),(920,135),(924,135),(928,135),(932,135),(936,135),(940,135),(944,135),(948,135),(952,135),(956,135),(960,135),(964,135),(968,135),(972,135),(976,135),(980,135),(984,135),(988,135),(1026,135),(1028,135),(1030,135),(1032,135),(1034,135),(1036,135),(1038,135),(1040,135),(1042,135),(1044,135),(1046,135),(1048,135),(1050,135),(1052,135),(1054,135),(1056,135),(1058,135),(1060,135),(1063,135),(1064,136);
/*!40000 ALTER TABLE `prf_team_has_prf_person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 14:57:11
