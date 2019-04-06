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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-31 18:20:33
