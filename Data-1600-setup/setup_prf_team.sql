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
-- Dumping data for table `prf_team`
--

LOCK TABLES `prf_team` WRITE;
/*!40000 ALTER TABLE `prf_team` DISABLE KEYS */;
INSERT INTO `prf_team` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(558,35),(559,35),(560,35),(561,35),(562,35),(563,35),(564,35),(565,35),(566,35),(567,35),(568,35),(569,35),(570,35),(571,35),(572,35),(573,35),(574,35),(575,35),(576,35),(577,35),(578,35),(36,36),(37,37),(38,37),(39,37),(40,38),(41,38),(42,38),(43,38),(44,38),(45,39),(46,39),(47,39),(48,39),(49,39),(50,40),(51,40),(52,40),(53,40),(54,40),(55,40),(56,40),(57,40),(58,40),(59,41),(60,41),(61,41),(62,41),(63,41),(64,41),(65,41),(66,41),(67,41),(68,41),(69,41),(70,42),(71,42),(72,42),(73,42),(74,42),(75,42),(76,42),(77,42),(78,42),(79,42),(80,42),(81,43),(82,43),(83,43),(84,43),(85,43),(86,43),(87,43),(88,43),(89,43),(90,43),(91,43),(92,43),(93,43),(94,44),(95,44),(96,44),(97,44),(98,44),(99,44),(100,44),(101,44),(102,44),(103,44),(104,44),(105,44),(106,44),(107,44),(108,44),(109,45),(110,45),(111,45),(112,45),(113,45),(114,45),(115,45),(116,45),(117,45),(118,45),(119,45),(120,45),(121,45),(122,45),(123,45),(124,45),(125,45),(126,46),(127,46),(128,46),(129,46),(130,46),(131,46),(132,46),(133,46),(134,46),(135,46),(136,46),(137,46),(138,46),(139,46),(140,46),(141,46),(142,46),(143,46),(144,46),(145,47),(146,47),(147,47),(148,47),(149,47),(150,47),(151,47),(152,47),(153,47),(154,47),(155,47),(156,48),(157,48),(158,48),(159,48),(160,48),(161,48),(162,48),(163,48),(164,48),(165,48),(166,48),(167,48),(168,48),(169,49),(170,49),(171,49),(172,49),(173,49),(174,49),(175,49),(176,49),(177,49),(178,49),(179,49),(180,49),(181,49),(182,49),(183,49),(184,50),(185,50),(186,50),(187,50),(188,50),(189,50),(190,50),(191,50),(192,50),(193,50),(194,50),(195,50),(196,50),(197,50),(198,50),(199,50),(200,50),(201,51),(202,51),(203,51),(204,51),(205,51),(206,51),(207,51),(208,51),(209,51),(210,51),(211,51),(212,51),(213,51),(214,51),(215,51),(216,51),(217,51),(218,51),(219,51),(220,52),(221,52),(222,52),(223,52),(224,52),(225,52),(226,52),(227,52),(228,52),(229,52),(230,52),(231,52),(232,52),(233,52),(234,52),(235,52),(236,52),(237,52),(238,52),(239,52),(240,52),(241,53),(242,53),(243,53),(244,53),(245,53),(246,53),(247,53),(248,53),(249,53),(250,53),(251,53),(252,53),(253,53),(254,53),(255,53),(256,54),(257,54),(258,54),(259,54),(260,54),(261,54),(262,54),(263,54),(264,54),(265,54),(266,54),(267,54),(268,54),(269,54),(270,54),(271,55),(272,55),(273,55),(274,55),(275,55),(276,55),(277,55),(278,56),(279,56),(280,56),(281,56),(282,56),(283,56),(284,56),(285,56),(286,57),(579,57),(580,57),(581,57),(582,57),(583,57),(584,57),(585,57),(586,57),(587,57),(588,57),(589,57),(287,58),(288,59),(289,59),(290,60),(291,60),(292,60),(293,61),(294,61),(295,61),(296,62),(297,62),(298,62),(299,62),(300,62),(301,63),(302,63),(303,63),(304,63),(305,63),(306,63),(307,64),(308,64),(309,64),(310,64),(311,64),(312,64),(313,65),(314,65),(315,65),(316,65),(317,65),(318,65),(319,65),(320,66),(321,66),(322,66),(323,66),(324,66),(325,66),(326,66),(327,66),(328,67),(329,67),(330,67),(331,67),(332,67),(333,67),(334,67),(335,67),(336,67),(337,68),(338,68),(339,68),(340,68),(341,68),(342,68),(343,68),(344,68),(345,68),(346,68),(347,69),(348,69),(349,69),(350,69),(351,69),(352,69),(353,70),(354,70),(355,70),(356,70),(357,70),(358,70),(359,70),(360,71),(361,71),(362,71),(363,71),(364,71),(365,71),(366,71),(367,71),(368,72),(369,72),(370,72),(371,72),(372,72),(373,72),(374,72),(375,72),(376,72),(377,73),(378,73),(379,73),(380,73),(381,73),(382,73),(383,73),(384,73),(385,73),(386,73),(387,74),(388,74),(389,74),(390,74),(391,74),(392,74),(393,74),(394,74),(395,74),(396,74),(397,74),(398,75),(399,75),(400,75),(401,75),(402,75),(403,75),(404,75),(405,75),(406,76),(407,76),(408,76),(409,76),(410,76),(411,76),(412,76),(413,76),(414,77),(415,77),(416,77),(417,77),(418,78),(419,78),(420,78),(421,78),(422,79),(590,79),(591,79),(592,79),(593,79),(594,79),(595,79),(596,79),(597,79),(598,79),(599,79),(600,79),(423,80),(424,81),(425,81),(426,82),(427,82),(428,82),(429,83),(430,83),(431,83),(432,84),(433,84),(434,84),(435,84),(436,84),(437,85),(438,85),(439,85),(440,85),(441,85),(442,85),(443,86),(444,86),(445,86),(446,86),(447,86),(448,86),(449,87),(450,87),(451,87),(452,87),(453,87),(454,87),(455,87),(456,88),(457,88),(458,88),(459,88),(460,88),(461,88),(462,88),(463,88),(464,89),(465,89),(466,89),(467,89),(468,89),(469,89),(470,89),(471,89),(472,89),(473,90),(474,90),(475,90),(476,90),(477,90),(478,90),(479,90),(480,90),(481,90),(482,90),(483,91),(484,91),(485,91),(486,91),(487,91),(488,91),(489,92),(490,92),(491,92),(492,92),(493,92),(494,92),(495,92),(496,93),(497,93),(498,93),(499,93),(500,93),(501,93),(502,93),(503,93),(504,94),(505,94),(506,94),(507,94),(508,94),(509,94),(510,94),(511,94),(512,94),(513,95),(514,95),(515,95),(516,95),(517,95),(518,95),(519,95),(520,95),(521,95),(522,95),(523,96),(524,96),(525,96),(526,96),(527,96),(528,96),(529,96),(530,96),(531,96),(532,96),(533,96),(534,97),(535,97),(536,97),(537,97),(538,97),(539,97),(540,97),(541,97),(542,98),(543,98),(544,98),(545,98),(546,98),(547,98),(548,98),(549,98),(550,99),(551,99),(552,99),(553,99),(554,100),(555,100),(556,100),(557,100),(601,101),(602,101),(603,101),(604,102),(605,102),(606,102),(607,103),(608,103),(609,103),(610,103),(611,103),(612,103),(613,103),(614,104),(615,104),(616,104),(617,104),(618,104),(619,104),(620,104),(621,105),(622,105),(623,106),(624,106),(625,107),(626,107),(627,107),(628,107),(629,108),(630,108),(631,108),(632,108),(633,109),(634,109),(635,110),(636,110),(637,111),(638,111),(639,111),(640,111),(641,112),(642,112),(643,112),(644,112),(645,113),(646,113),(647,113),(648,113),(649,113),(650,113),(651,113),(652,113),(653,114),(654,114),(655,114),(656,114),(657,114),(658,114),(659,114),(660,114),(661,115),(662,115),(663,115),(664,115),(665,115),(666,115),(667,115),(668,115),(669,116),(670,116),(671,116),(672,116),(673,116),(674,116),(675,116),(676,116),(677,117),(678,117),(679,117),(680,117),(681,117),(682,117),(683,117),(684,117),(685,118),(686,118),(687,118),(688,118),(689,118),(690,118),(691,118),(692,118),(693,119),(694,119),(695,119),(696,119),(697,119),(698,119),(699,119),(700,119),(701,120),(702,120),(703,120),(704,120),(705,120),(706,120),(707,120),(708,120),(709,121),(710,121),(711,121),(712,121),(713,121),(714,121),(715,121),(716,121),(717,122),(718,122),(719,122),(720,122),(721,122),(722,122),(723,122),(724,122),(725,123),(726,123),(727,123),(728,123),(729,123),(730,123),(731,123),(732,123),(733,124),(734,124),(735,124),(736,124),(737,124),(738,124),(739,124),(740,124),(741,125),(742,125),(743,125),(744,125),(745,125),(746,125),(747,125),(748,125),(749,126),(750,126),(751,126),(752,126),(753,126),(754,126),(755,126),(756,126),(757,127),(758,127),(759,127),(760,127),(761,127),(762,127),(763,127),(764,127),(765,128),(766,128),(767,128),(768,128),(769,128),(770,128),(771,128),(772,128),(773,129),(774,129),(775,129),(776,129),(777,129),(778,129),(779,129),(780,129),(781,130),(782,130),(783,130),(784,130),(785,131),(786,131),(787,131),(788,131),(789,132),(790,132),(791,132),(792,132),(793,133),(794,133),(795,133),(796,133),(797,134),(798,134),(799,134),(800,134),(801,135),(802,135),(803,135),(804,135),(805,136),(806,136),(807,136),(808,136),(809,137),(810,137),(811,137),(812,137),(813,138),(814,138),(815,138),(816,138),(817,139),(818,139),(819,139),(820,139),(821,140),(822,140),(823,140),(824,140),(825,141),(826,141),(827,141),(828,141),(829,142),(830,142),(831,142),(832,142),(833,143),(834,143),(835,143),(836,143),(837,144),(838,144),(839,144),(840,144),(841,145),(842,145),(843,145),(844,145),(845,146),(846,146),(847,146),(848,146),(849,147),(850,147),(851,147),(852,147),(853,148),(854,148),(855,148),(856,148),(857,149),(858,149),(859,149),(860,149),(861,150),(862,150),(863,150),(864,150),(865,151),(866,151),(867,151),(868,151),(869,152),(870,152),(871,152),(872,152),(873,153),(874,153),(875,153),(876,153),(877,154),(878,154),(879,154),(880,154),(881,155),(882,155),(883,155),(884,155),(885,156),(886,156),(887,156),(888,156),(889,157),(890,157),(891,157),(892,157),(893,158),(894,158),(895,158),(896,158),(897,159),(898,159),(899,159),(900,159),(901,160),(902,160),(903,160),(904,160),(905,161),(906,161),(907,161),(908,161),(909,162),(910,162),(911,162),(912,162),(913,163),(914,163),(915,163),(916,163),(917,164),(918,164),(919,164),(920,164),(921,165),(922,165),(923,165),(924,165),(925,166),(926,166),(927,166),(928,166),(929,167),(930,167),(931,167),(932,167),(933,168),(934,168),(935,168),(936,168),(937,169),(938,169),(939,169),(940,169),(941,170),(942,170),(943,170),(944,170),(945,171),(946,171),(947,171),(948,171),(949,172),(950,172),(951,172),(952,172),(953,173),(954,173),(955,173),(956,173),(957,174),(958,174),(959,174),(960,174),(961,175),(962,175),(963,175),(964,175),(965,176),(966,176),(967,176),(968,176),(969,177),(970,177),(971,177),(972,177),(973,178),(974,178),(975,178),(976,178),(977,179),(978,179),(979,179),(980,179),(981,180),(982,180),(983,180),(984,180),(985,181),(986,181),(987,181),(988,181),(989,182),(990,182),(991,183),(992,183),(993,184),(994,184),(995,185),(996,185),(997,186),(998,186),(999,187),(1000,187),(1001,188),(1002,188),(1003,189),(1004,189),(1005,190),(1006,190),(1007,191),(1008,191),(1009,192),(1010,192),(1011,193),(1012,193),(1013,194),(1014,194),(1015,195),(1016,195),(1017,196),(1018,196),(1019,197),(1020,197),(1021,198),(1022,198),(1023,199),(1024,199),(1025,200),(1026,200),(1027,201),(1028,201),(1029,202),(1030,202),(1031,203),(1032,203),(1033,204),(1034,204),(1035,205),(1036,205),(1037,206),(1038,206),(1039,207),(1040,207),(1041,208),(1042,208),(1043,209),(1044,209),(1045,210),(1046,210),(1047,211),(1048,211),(1049,212),(1050,212),(1051,213),(1052,213),(1053,214),(1054,214),(1055,215),(1056,215),(1057,216),(1058,216),(1059,217),(1060,217),(1061,218),(1062,219),(1063,219),(1064,219);
/*!40000 ALTER TABLE `prf_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-31 18:20:32
