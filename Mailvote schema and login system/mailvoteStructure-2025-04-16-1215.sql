-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: webb-site.com    Database: mailvote
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mailvote`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mailvote` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mailvote`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `AID` int unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `echanges`
--

DROP TABLE IF EXISTS `echanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `echanges` (
  `userID` int unsigned NOT NULL,
  `olde` varchar(255) NOT NULL,
  `until` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FKechange_userID_idx` (`userID`),
  CONSTRAINT `FKechange_userID` FOREIGN KEY (`userID`) REFERENCES `livelist` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keys` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table for holding keys on server side, not included in the Webb-site dumps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `listtypes`
--

DROP TABLE IF EXISTS `listtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listtypes` (
  `listTypeID` tinyint unsigned NOT NULL DEFAULT '0',
  `listType` varchar(50) NOT NULL,
  PRIMARY KEY (`listTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `livelist`
--

DROP TABLE IF EXISTS `livelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livelist` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `mailAddr` varchar(255) NOT NULL,
  `JoinIP` varchar(50) DEFAULT NULL,
  `JoinTime` datetime DEFAULT NULL,
  `LeaveIP` varchar(50) DEFAULT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `MailOn` bit(1) DEFAULT NULL,
  `BounceType` tinyint DEFAULT NULL,
  `retry` bit(1) NOT NULL DEFAULT b'0',
  `hash` binary(32) NOT NULL,
  `salt` binary(16) NOT NULL,
  `tokHash` varbinary(32) DEFAULT NULL,
  `tokTime` timestamp NULL DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL,
  `pwdChanged` timestamp NULL DEFAULT NULL,
  `eVerified` bit(1) NOT NULL DEFAULT b'0',
  `newaddr` varchar(255) DEFAULT NULL,
  `eTokHash` varbinary(32) DEFAULT NULL COMMENT 'a hashed token for changing email address within a fixed time limit after eTokTime',
  `eTokTime` timestamp NULL DEFAULT NULL COMMENT 'the time at which a token was generated for verifying a change of email address',
  `badCnt` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `index_mailAddr` (`mailAddr`)
) ENGINE=InnoDB AUTO_INCREMENT=98998 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mystocks`
--

DROP TABLE IF EXISTS `mystocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mystocks` (
  `user` int unsigned NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persist`
--

DROP TABLE IF EXISTS `persist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persist` (
  `tokhash` binary(32) NOT NULL,
  `tokTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` int NOT NULL,
  `cred` blob NOT NULL,
  PRIMARY KEY (`tokhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pollqanda`
--

DROP TABLE IF EXISTS `pollqanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollqanda` (
  `PQID` int unsigned NOT NULL DEFAULT '0',
  `AID` int unsigned NOT NULL DEFAULT '0',
  `aOrder` tinyint unsigned NOT NULL,
  PRIMARY KEY (`PQID`,`AID`),
  KEY `FK_pollqanda_Answers` (`AID`),
  CONSTRAINT `FK_pollqanda_Answers` FOREIGN KEY (`AID`) REFERENCES `answers` (`aid`),
  CONSTRAINT `FK_pollqanda_PQ` FOREIGN KEY (`PQID`) REFERENCES `pollquestions` (`PQID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pollquestions`
--

DROP TABLE IF EXISTS `pollquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollquestions` (
  `PQID` int unsigned NOT NULL AUTO_INCREMENT,
  `PID` int unsigned NOT NULL,
  `QID` int unsigned NOT NULL,
  `qOrder` tinyint unsigned NOT NULL,
  `minInt` smallint DEFAULT NULL,
  `maxInt` smallint DEFAULT NULL,
  `listTypeID` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`PQID`),
  KEY `FK_pollquestions_Q` (`QID`),
  KEY `FK_pollquestions_Type` (`listTypeID`),
  KEY `FK_pollquestions_P` (`PID`),
  CONSTRAINT `FK_pollquestions_P` FOREIGN KEY (`PID`) REFERENCES `polls` (`pid`) ON DELETE CASCADE,
  CONSTRAINT `FK_pollquestions_Q` FOREIGN KEY (`QID`) REFERENCES `questions` (`qid`),
  CONSTRAINT `FK_pollquestions_Type` FOREIGN KEY (`listTypeID`) REFERENCES `listtypes` (`listTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls` (
  `PID` int unsigned NOT NULL AUTO_INCREMENT,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `pollName` varchar(100) NOT NULL,
  `pollIntro` mediumtext,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `QID` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`QID`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `UserID` int unsigned NOT NULL DEFAULT '0',
  `PQID` int unsigned NOT NULL DEFAULT '0',
  `AID` int unsigned NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`,`PQID`),
  KEY `FK_responses_PQ` (`PQID`),
  CONSTRAINT `FK_responses_PQ` FOREIGN KEY (`PQID`) REFERENCES `pollquestions` (`pqid`) ON DELETE CASCADE,
  CONSTRAINT `FK_responses_Users` FOREIGN KEY (`UserID`) REFERENCES `livelist` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `orgID` int unsigned NOT NULL,
  `userID` int unsigned NOT NULL,
  `score` tinyint unsigned DEFAULT NULL,
  `atDate` date NOT NULL,
  `scoreTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orgID`,`userID`,`atDate`),
  KEY `FKscore_user_idx` (`userID`),
  CONSTRAINT `FKscore_user` FOREIGN KEY (`userID`) REFERENCES `livelist` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `webanswers`
--

DROP TABLE IF EXISTS `webanswers`;
/*!50001 DROP VIEW IF EXISTS `webanswers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webanswers` AS SELECT 
 1 AS `PQID`,
 1 AS `AID`,
 1 AS `Answer`,
 1 AS `AOrder`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webquestions`
--

DROP TABLE IF EXISTS `webquestions`;
/*!50001 DROP VIEW IF EXISTS `webquestions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webquestions` AS SELECT 
 1 AS `PQID`,
 1 AS `PID`,
 1 AS `QID`,
 1 AS `QOrder`,
 1 AS `MinInt`,
 1 AS `MaxInt`,
 1 AS `ListTypeID`,
 1 AS `Question`,
 1 AS `ListType`,
 1 AS `PollName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'mailvote'
--

--
-- Dumping routines for database 'mailvote'
--
/*!50003 DROP FUNCTION IF EXISTS `genToken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `genToken`() RETURNS varchar(22) CHARSET utf8mb3
    NO SQL
RETURN left(URLencode(UNHEX(MD5(RAND()))),22) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `URLdecode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `URLdecode`(s TEXT) RETURNS blob
    NO SQL
    DETERMINISTIC
RETURN FROM_BASE64(REPLACE(REPLACE(s,'-','+'),'_','/')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `URLencode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `URLencode`(s blob) RETURNS text CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
RETURN REPLACE(REPLACE(TO_BASE64(s),'+','-'),'/','_') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crosstab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `crosstab`(IN q1 integer, IN q2 integer)
BEGIN
SELECT IFNULL(score,0) AS score FROM
(SELECT t1.AID AS AID1,t2.AID AS AID2 FROM
(SELECT pollqanda.AID, AOrder FROM mailvote.pollqanda JOIN mailvote.Answers
ON pollqanda.AID=Answers.AID WHERE pqid=q1 UNION SELECT 0,0) AS t1
JOIN
(SELECT pollqanda.AID, AOrder FROM mailvote.pollqanda JOIN mailvote.Answers
ON pollqanda.AID=Answers.AID WHERE pqid=q2 UNION SELECT 0,0) AS t2
ORDER BY t2.AOrder,t1.AOrder) AS t3
LEFT JOIN
(SELECT count(t1.userID) AS score, AID1 AS AID10, IFNULL(AID2,0) AS AID20 FROM
  (SELECT userid,aid AS AID1 from mailvote.responses where pqid=q1) As t1
  LEFT JOIN
  (SELECT userid,aid AS AID2 from mailvote.responses where pqid=q2) As t2
  ON t1.userid=t2.userid
  GROUP BY AID10,AID20
UNION
SELECT count(t2.userID) As score, IFNULL(AID1,0) AS AID10, AID2 AS AID20 FROM
  (SELECT userid,aid AS AID2 from mailvote.responses where pqid=q2) As t2
  LEFT JOIN
  (SELECT userid,aid AS AID1 from mailvote.responses where pqid=q1) As t1
  ON t2.userid=t1.userid
  GROUP BY AID10,AID20) as t4
ON t3.AID1=t4.AID10 AND t3.AID2=t4.AID20;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PQIDAnswerCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `PQIDAnswerCount`(IN PQIDInput Integer)
BEGIN
SELECT PollQanda.AOrder, Answers.Answer, Count(Responses.UserID) AS CountOfUserID
FROM Answers INNER JOIN (PollQanda LEFT JOIN Responses
 ON (PollQanda.AID = Responses.AID) AND (PollQanda.PQID = Responses.PQID)) ON Answers.AID = PollQanda.AID
WHERE (PollQanda.PQID=PQIDInput)
GROUP BY PollQanda.AOrder, Answers.Answer
ORDER BY PollQanda.Aorder ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `mailvote`
--

USE `mailvote`;

--
-- Final view structure for view `webanswers`
--

/*!50001 DROP VIEW IF EXISTS `webanswers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webanswers` AS select `pollqanda`.`PQID` AS `PQID`,`pollqanda`.`AID` AS `AID`,`answers`.`answer` AS `Answer`,`pollqanda`.`aOrder` AS `AOrder` from (`answers` join `pollqanda` on((`answers`.`AID` = `pollqanda`.`AID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webquestions`
--

/*!50001 DROP VIEW IF EXISTS `webquestions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webquestions` AS select `pollquestions`.`PQID` AS `PQID`,`pollquestions`.`PID` AS `PID`,`pollquestions`.`QID` AS `QID`,`pollquestions`.`qOrder` AS `QOrder`,`pollquestions`.`minInt` AS `MinInt`,`pollquestions`.`maxInt` AS `MaxInt`,`pollquestions`.`listTypeID` AS `ListTypeID`,`questions`.`question` AS `Question`,`listtypes`.`listType` AS `ListType`,`polls`.`pollName` AS `PollName` from (`questions` join (`polls` join (`listtypes` join `pollquestions` on((`listtypes`.`listTypeID` = `pollquestions`.`listTypeID`))) on((`polls`.`PID` = `pollquestions`.`PID`))) on((`questions`.`QID` = `pollquestions`.`QID`))) */;
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

-- Dump completed on 2025-04-16 12:16:48
