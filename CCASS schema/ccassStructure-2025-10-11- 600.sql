-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: ccass
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
-- Current Database: `ccass`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ccass` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ccass`;

--
-- Table structure for table `bigchanges`
--

DROP TABLE IF EXISTS `bigchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bigchanges` (
  `atDate` date NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `partID` smallint unsigned NOT NULL,
  `stkchg` float DEFAULT NULL,
  `prevDate` date DEFAULT NULL,
  PRIMARY KEY (`atDate`,`issueID`,`partID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `tradeDate` date NOT NULL,
  `settleDate` date NOT NULL,
  `deferred` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Settlement date shared with the next trading day due to Xmas/NY/CNY eve having no settlement and half-day trading.',
  PRIMARY KEY (`tradeDate`),
  KEY `settleDate` (`settleDate`,`tradeDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='the HK settlement calendar, after adjustment for typhoons, public holidays etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dailylog`
--

DROP TABLE IF EXISTS `dailylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dailylog` (
  `atDate` date NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `intermedHldg` bigint unsigned NOT NULL DEFAULT '0',
  `intermedCnt` smallint unsigned NOT NULL DEFAULT '0',
  `NCIPhldg` bigint unsigned NOT NULL DEFAULT '0',
  `NCIPcnt` smallint unsigned NOT NULL DEFAULT '0',
  `CIPhldg` bigint unsigned NOT NULL DEFAULT '0',
  `CIPcnt` smallint unsigned NOT NULL DEFAULT '0',
  `c5` bigint unsigned NOT NULL DEFAULT '0',
  `c10` bigint unsigned NOT NULL DEFAULT '0',
  `CustHldg` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Custodian holdings',
  `BrokHldg` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Broker holdings',
  PRIMARY KEY (`issueID`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `holdings`
--

DROP TABLE IF EXISTS `holdings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holdings` (
  `partID` smallint unsigned NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `holding` bigint NOT NULL,
  `atDate` date NOT NULL,
  PRIMARY KEY (`issueID`,`partID`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `holdingsperdate`
--

DROP TABLE IF EXISTS `holdingsperdate`;
/*!50001 DROP VIEW IF EXISTS `holdingsperdate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `holdingsperdate` AS SELECT 
 1 AS `Atdate`,
 1 AS `Count(holding)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latestholdings`
--

DROP TABLE IF EXISTS `latestholdings`;
/*!50001 DROP VIEW IF EXISTS `latestholdings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latestholdings` AS SELECT 
 1 AS `partID`,
 1 AS `issueID`,
 1 AS `holding`,
 1 AS `atDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `maxdate`
--

DROP TABLE IF EXISTS `maxdate`;
/*!50001 DROP VIEW IF EXISTS `maxdate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `maxdate` AS SELECT 
 1 AS `partID`,
 1 AS `issueID`,
 1 AS `Max(atDate)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `missing`
--

DROP TABLE IF EXISTS `missing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missing` (
  `atDate` date NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `stockCode` mediumint unsigned NOT NULL,
  PRIMARY KEY (`atDate`,`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Missing records from daily CCASS run';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldnames`
--

DROP TABLE IF EXISTS `oldnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldnames` (
  `oldNameID` int unsigned NOT NULL AUTO_INCREMENT,
  `oldName` varchar(255) NOT NULL,
  `dateChanged` date NOT NULL,
  `partID` smallint unsigned NOT NULL,
  PRIMARY KEY (`oldNameID`),
  KEY `FK_oldnames_Part` (`partID`),
  CONSTRAINT `FK_oldnames_Part` FOREIGN KEY (`partID`) REFERENCES `participants` (`partID`)
) ENGINE=InnoDB AUTO_INCREMENT=906 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parthold`
--

DROP TABLE IF EXISTS `parthold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parthold` (
  `partID` smallint unsigned NOT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `holding` bigint NOT NULL,
  `atDate` date NOT NULL,
  PRIMARY KEY (`partID`,`issueID`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `partID` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'The Webb-site participant ID for this CCASS Participant',
  `CCASSID` varchar(6) DEFAULT NULL,
  `partName` varchar(255) NOT NULL COMMENT 'The current name of this CCASS Participant as shown on the CCASS pages. Not necessarily the full legal name.',
  `atDate` date NOT NULL,
  `addedDate` date DEFAULT NULL,
  `personID` int unsigned DEFAULT NULL,
  `hadHoldings` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`partID`) USING BTREE,
  KEY `CCASSID` (`CCASSID`),
  KEY `partName` (`partName`)
) ENGINE=InnoDB AUTO_INCREMENT=1746 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pquotes`
--

DROP TABLE IF EXISTS `pquotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pquotes` (
  `issueID` mediumint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `prevClose` float unsigned NOT NULL DEFAULT '0',
  `closing` float unsigned NOT NULL DEFAULT '0',
  `ask` float unsigned NOT NULL DEFAULT '0',
  `bid` float unsigned NOT NULL DEFAULT '0',
  `high` float unsigned NOT NULL DEFAULT '0',
  `low` float unsigned NOT NULL DEFAULT '0',
  `vol` bigint unsigned NOT NULL DEFAULT '0',
  `turn` bigint unsigned NOT NULL DEFAULT '0',
  `susp` bit(1) NOT NULL DEFAULT b'0',
  `newsusp` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether the stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.',
  `noclose` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`issueID`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='quotes for parallel-trading counters on SEHK';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `issueID` mediumint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `prevClose` float unsigned DEFAULT '0',
  `closing` float unsigned NOT NULL DEFAULT '0',
  `ask` float unsigned NOT NULL DEFAULT '0',
  `bid` float unsigned NOT NULL DEFAULT '0',
  `high` float unsigned NOT NULL DEFAULT '0',
  `low` float unsigned NOT NULL DEFAULT '0',
  `vol` bigint unsigned NOT NULL DEFAULT '0',
  `turn` bigint unsigned NOT NULL DEFAULT '0',
  `susp` bit(1) NOT NULL DEFAULT b'0',
  `newsusp` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether the stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.',
  `noclose` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicates no meaningful closing price.For dates up to 30-Jan-2004 (quotes from SEHK CDs): the stock was suspended all day, so the closing price is not meaningful. For dates after 30-Jan-2004: the closing price is zero because the stock was suspended all day.',
  PRIMARY KEY (`issueID`,`atDate`) USING BTREE,
  UNIQUE KEY `nozero` (`issueID`,`noclose`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sehkmonthend`
--

DROP TABLE IF EXISTS `sehkmonthend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sehkmonthend` (
  `monthEnd` date NOT NULL,
  PRIMARY KEY (`monthEnd`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shortnames`
--

DROP TABLE IF EXISTS `shortnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shortnames` (
  `issueID` mediumint unsigned DEFAULT NULL,
  `shortName` varchar(45) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date DEFAULT NULL,
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `stockCode` varchar(5) DEFAULT NULL,
  `useDate` date NOT NULL,
  `stockExID` tinyint unsigned NOT NULL,
  `parallel` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `nameindex` (`shortName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46182 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `specialdays`
--

DROP TABLE IF EXISTS `specialdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialdays` (
  `specialDate` date NOT NULL,
  `pubHol` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether this is a public holiday',
  `partSess` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether there was a partial session of trading with late start or early termination of AM or PM session due to weather',
  `noAM` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether the HK market was shut for the morning session',
  `noPM` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether the market was shut for the afternoon session',
  `noSettle` bit(1) NOT NULL DEFAULT b'0' COMMENT 'for non-holidays, whether there is no settlement today (for example, on Xmas or NY eve with no PM session)',
  PRIMARY KEY (`specialDate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='General holidays, typhoon days etc. Used to generate the calendar entries for HK settlement. Excludes weekends.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unquotes`
--

DROP TABLE IF EXISTS `unquotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unquotes` (
  `stockCode` mediumint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `prevClose` float unsigned DEFAULT '0',
  `closing` float unsigned NOT NULL DEFAULT '0',
  `ask` float unsigned NOT NULL DEFAULT '0',
  `bid` float unsigned NOT NULL DEFAULT '0',
  `high` float unsigned NOT NULL DEFAULT '0',
  `low` float unsigned NOT NULL DEFAULT '0',
  `vol` bigint unsigned NOT NULL DEFAULT '0',
  `turn` bigint unsigned NOT NULL DEFAULT '0',
  `susp` bit(1) NOT NULL DEFAULT b'0',
  `newsusp` bit(1) NOT NULL DEFAULT b'0' COMMENT 'The stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.',
  `noclose` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicates no meaningful closing price.\nFor dates up to 30-Jan-2004 (quotes from SEHK CDs): the stock was suspended all day, so the closing price is not meaningful\nFor dates after 30-Jan-2004: the closing price is zero because the stock was suspended all day',
  PRIMARY KEY (`stockCode`,`atDate`) USING BTREE,
  UNIQUE KEY `nozero` (`stockCode`,`noclose`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'ccass'
--

--
-- Dumping routines for database 'ccass'
--
/*!50003 DROP FUNCTION IF EXISTS `dischold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `dischold`(i INT,d DATE) RETURNS bigint
    READS SQL DATA
RETURN
(SELECT sum(holding) FROM
			ccass.holdings JOIN
            (SELECT partID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings WHERE issueID=i AND atDate<=d GROUP BY MDpartID) AS t2 
        	ON (issueID=i AND partID=MDpartID AND atDate=maxDate)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `settleDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `settleDate`(d DATE) RETURNS date
    READS SQL DATA
RETURN (SELECT settleDate FROM ccass.calendar WHERE tradeDate=d) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sumtoph` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `sumtoph`(i int,d date,n int) RETURNS bigint
    READS SQL DATA
BEGIN
DECLARE total BIGINT;
SELECT Sum(holding) INTO total FROM
(SELECT holdings.holding
FROM ccass.holdings
  JOIN (SELECT PartID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings
  WHERE issueID=i AND atDate<=d GROUP BY MDpartID) AS t2
  ON (issueID=i AND partID=MDpartID AND atDate=maxDate)
  ORDER BY holding DESC limit n) AS t3;
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `tradeDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `tradeDate`(d DATE) RETURNS date
    READS SQL DATA
RETURN (SELECT Max(tradeDate) FROM calendar WHERE settleDate=d) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dailyq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `dailyq`(IN i INT,ob VARCHAR(255))
BEGIN
DECLARE a DOUBLE;
SET @i=i;
SELECT enigma.getAdjust(i,CURDATE()) INTO a;
SET @a=a;
SET @stmt=CONCAT('SELECT atDate,settleDate,IF(susp,1,0) AS susp,closing,bid,ask,low,high,vol,turn,IF(vol>0,turn/vol,0) as VWAP,
closing*f as adjClose,bid*f AS adjBid,ask*f AS adjAsk,low*f AS adjLow,high*f AS adjHigh,
	Round(vol/f,0) AS adjVol,IF(vol>0,turn*f/vol,0) AS adjVWAP
	FROM (SELECT *,?/enigma.getAdjust(?,atDate) AS f
    FROM ccass.quotes WHERE issueID=?) as t1
    JOIN calendar c ON t1.atDate=c.tradeDate ORDER BY ',ob);
PREPARE stmt FROM @stmt;
EXECUTE stmt using @a,@i,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dailyq2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `dailyq2`(IN i INT,ob VARCHAR(255))
BEGIN
DECLARE a DOUBLE;
SET @i=i;
SET @stmt=CONCAT('SELECT atDate,settleDate,IF(susp,1,0) AS susp,closing,bid,ask,low,high,vol,turn,IF(vol>0,turn/vol,0) as VWAP,
closing*f as adjClose,bid*f AS adjBid,ask*f AS adjAsk,low*f AS adjLow,high*f AS adjHigh,
	Round(vol/f,0) AS adjVol,IF(vol>0,turn*f/vol,0) AS adjVWAP
	FROM (SELECT *,enigma.fulladj(?,atDate) AS f
    FROM ccass.quotes WHERE issueID=?) as t1
    JOIN calendar c ON t1.atDate=c.tradeDate ORDER BY ',ob);
PREPARE stmt FROM @stmt;
EXECUTE stmt using @i,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dropLatest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `dropLatest`()
BEGIN
DECLARE d DATE;
SELECT Max(atDate) INTO d FROM ccass.dailylog;
DELETE FROM ccass.dailylog WHERE atDate=d;
DELETE FROM ccass.holdings WHERE atDate=d;
DELETE FROM ccass.parthold WHERE atDate=d;
UPDATE ccass.masterlog SET DateDone=date_sub(d,INTERVAL 1 day);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hldchg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `hldchg`(IN issue smallint,IN fromDate Date,IN toDate Date)
BEGIN
SELECT t1.partID, t1.holding,ifnull(prevhldg,0) AS prevhldg,holding-ifnull(prevhldg,0) AS hldchg,
participants.CCASSID,participants.partName,lastDate
FROM
(SELECT t4.partID, holdings.holding, lastDate FROM
        (SELECT partID, Max(atDate) as lastDate FROM ccass.holdings
        WHERE issueID=issue AND atDate<=toDate GROUP BY partID) as t4 JOIN ccass.holdings
        ON (holdings.issueID=issue AND holdings.partID=t4.partID and holdings.atDate=lastDate)) as t1
LEFT JOIN
        (SELECT t2.partID,holdings.holding as prevhldg,prevDate FROM
        (SELECT partID, Max(atDate) as prevDate FROM ccass.holdings
        WHERE issueID=issue AND atDate<=fromDate GROUP BY partID) as t2 JOIN ccass.holdings
        ON (holdings.issueID=issue AND holdings.partID=t2.partID and holdings.atDate=prevDate)) as t3
ON t1.partID=t3.partID
JOIN CCASS.participants ON (participants.partID=t1.partID)
HAVING hldchg<>0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hldchg3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `hldchg3`(IN i mediumint,IN f Date,IN t Date,s VARCHAR(10))
BEGIN
#THIS IS A TEST to try sortable stored procedure without using a Prepared Statement
DECLARE a DOUBLE;
SELECT ifnull((SELECT adjust FROM enigma.events WHERE issueID=i AND eventType=4 AND exDate=t AND isnull(cancelDate)),1) INTO a;
SELECT t5.partID, holding/a AS holding,prevhldg,CAST(round(holding/a-prevhldg,0) AS SIGNED)hldchg,CCASSID,partName,lastDate FROM
(SELECT t1.partID,lastDate,prevDate,
	t1.holding/
		ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=i AND isnull(cancelDate) AND eventType IN(4,5)
			AND exDate>lastDate AND exDate<=t),1) AS holding,
	if(isnull(prevhldg) Or prevhldg=0,0,prevhldg/
		ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=i AND isnull(cancelDate) AND eventType IN(4,5)
			AND exDate>prevDate AND exDate<=t),1)) AS prevhldg
	FROM
	(SELECT t4.partID,holding,lastDate FROM
		(SELECT partID, Max(atDate) as lastDate FROM holdings WHERE issueID=i AND atDate<=t AND atDate>f GROUP BY partID) as t4
		JOIN holdings h ON h.issueID=i AND h.partID=t4.partID and h.atDate=lastDate) AS t1
		LEFT JOIN
			(SELECT t2.partID,holding/ifnull(e.adjust,1) as prevhldg,prevDate FROM
			(SELECT partID, Max(atDate) as prevDate FROM holdings WHERE issueID=i AND atDate<=f GROUP BY partID) as t2
			JOIN holdings h ON h.issueID=i AND h.partID=t2.partID and h.atDate=prevDate
			LEFT JOIN enigma.events e ON e.issueID=i AND prevDate=e.exDate AND isnull(cancelDate) AND eventType=4) AS t3
		ON t1.partID=t3.partID
	) AS t5
JOIN CCASS.participants ON (participants.partID=t5.partID)
HAVING hldchg<>0 ORDER BY
	#numbers must be sorted separately from dates and strings, otherwise they will be sorted as strings
	CASE s
		WHEN 'chngup' THEN hldchg
		WHEN 'holdup' THEN holding
	END,
    CASE s
        WHEN 'ccidup' THEN CCASSID
        WHEN 'lastup' THEN lastDate
		WHEN 'nameup' THEN partName
    END,
	CASE s
		WHEN 'chngdn' THEN hldchg
		WHEN 'holddn' THEN holding
	END DESC,
	CASE s
		WHEN 'cciddn' THEN CCASSID
		WHEN 'lastdn' THEN lastDate
		WHEN 'namedn' THEN partName
	END DESC,
	CASE s
		WHEN 'ccidup' OR 'holddn' OR 'holdup' OR 'lastdn' OR 'lastup' OR  'chngdn' OR 'chngup' THEN partName
	END,
	CASE s
		WHEN 'cciddn' THEN partName
	END DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hldchgext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `hldchgext`(IN issue smallint,IN f Date,IN t Date,ext VARCHAR(100))
BEGIN
SET @i=issue;
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('SELECT t1.partID, t1.holding,ifnull(prevhldg,0) AS prevhldg,holding-ifnull(prevhldg,0) AS hldchg,
participants.CCASSID,participants.partName,lastDate
FROM
(SELECT t4.partID, holdings.holding, lastDate FROM
        (SELECT partID, Max(atDate) as lastDate FROM ccass.holdings
        WHERE issueID=? AND atDate<=? GROUP BY partID) as t4 JOIN ccass.holdings
        ON (holdings.issueID=? AND holdings.partID=t4.partID and holdings.atDate=lastDate)) as t1
LEFT JOIN
        (SELECT t2.partID,holdings.holding as prevhldg,prevDate FROM
        (SELECT partID, Max(atDate) as prevDate FROM ccass.holdings
        WHERE issueID=? AND atDate<=? GROUP BY partID) as t2 JOIN ccass.holdings
        ON (holdings.issueID=? AND holdings.partID=t2.partID and holdings.atDate=prevDate)) as t3
ON t1.partID=t3.partID
JOIN CCASS.participants ON (participants.partID=t1.partID)
HAVING hldchg<>0
ORDER BY ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @i,@t,@i,@i,@f,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hldchgext2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `hldchgext2`(IN i mediumint,IN f Date,IN t Date,ext VARCHAR(100))
BEGIN
DECLARE a DOUBLE;
SELECT ifnull((SELECT adjust FROM enigma.events WHERE issueID=i AND eventType=4 AND exDate=t AND isnull(cancelDate)),1) INTO a;
SET @a=a;
SET @i=i;
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('
SELECT t5.partID, holding/? AS holding,prevhldg,round(holding/?-prevhldg,0) AS hldchg,CCASSID,partName,lastDate FROM
(SELECT t1.partID,lastDate,prevDate,
	t1.holding/
		ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=? AND isnull(cancelDate) AND eventType IN(4,5)
			AND exDate>lastDate AND exDate<=?),1) AS holding,
	if(isnull(prevhldg) Or prevhldg=0,0,prevhldg/
		ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=? AND isnull(cancelDate) AND eventType IN(4,5)
			AND exDate>prevDate AND exDate<=?),1)) AS prevhldg
	FROM
	(SELECT t4.partID,holding,lastDate FROM
		(SELECT partID, Max(atDate) as lastDate FROM holdings WHERE issueID=? AND atDate<=? AND atDate>? GROUP BY partID) as t4
		JOIN holdings h ON h.issueID=? AND h.partID=t4.partID and h.atDate=lastDate) AS t1
		LEFT JOIN
			(SELECT t2.partID,holding/ifnull(e.adjust,1) as prevhldg,prevDate FROM
			(SELECT partID, Max(atDate) as prevDate FROM holdings WHERE issueID=? AND atDate<=? GROUP BY partID) as t2
			JOIN holdings h ON h.issueID=? AND h.partID=t2.partID and h.atDate=prevDate
			LEFT JOIN enigma.events e ON e.issueID=? AND prevDate=e.exDate AND isnull(cancelDate) AND eventType=4) AS t3
		ON t1.partID=t3.partID
	) AS t5
JOIN CCASS.participants ON (participants.partID=t5.partID)
HAVING hldchg<>0
ORDER BY ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @a,@a,@i,@t,@i,@t,@i,@t,@f,@i,@i,@f,@i,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holder`(IN p1 smallint,IN p2 date,IN ext VARCHAR(100))
BEGIN
SET @p1=p1;
SET @p2=p2;
SET @stmt=CONCAT('SELECT parthold.issueID,enigma.lastcode(parthold.issueID) as lastCode,parthold.holding,parthold.atDate,organisations.Name1,sectypes.typeShort,
t3.outstanding,parthold.holding/t3.outstanding AS stake, susp,parthold.holding*round(
IF(susp,(SELECT closing FROM ccass.quotes WHERE atDate<=? and issueID=parthold.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing)
,3) as valn
FROM ccass.parthold JOIN
((SELECT issueID, Max(atDate) as maxDate FROM ccass.parthold
 WHERE partID=? AND atDate<=?
 GROUP BY IssueID) as t2,
enigma.issue,
enigma.organisations,
enigma.issuedshares AS t3,
(SELECT issueID,Max(atDate) AS maxIssueDate FROM enigma.issuedshares WHERE atDate<=? GROUP BY issueID) as t4,
ccass.quotes,
enigma.sectypes)
ON parthold.issueID=t2.issueID AND parthold.atDate=t2.maxDate
AND parthold.issueID=issue.ID1
AND issue.ID1=t4.issueID
AND issue.issuer=organisations.PersonID
AND t3.issueID=t4.issueID AND t3.atDate=t4.maxIssueDate
AND issue.ID1=quotes.issueID AND quotes.atDate=?
AND issue.typeID=sectypes.typeID
WHERE partID=? ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @p2,@p1,@p2,@p2,@p2,@p1;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holder2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holder2`(IN p1 smallint,IN p2 date,IN ext VARCHAR(100))
BEGIN
SET @p1=p1;
SET @p2=p2;
SET @stmt=CONCAT('SELECT ph.issueID,enigma.lastcode(ph.issueID) as lastCode,holding/IFNULL(adjust,1) AS holding,
ph.atDate,o.Name1,sectypes.typeShort,t3.outstanding,holding/t3.outstanding/IFNULL(adjust,1) AS stake, susp,
ph.holding/IFNULL(adjust,1)*round(
IF(susp,(SELECT closing FROM ccass.quotes WHERE atDate<=? and issueID=ph.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing)
,3) as valn
FROM ccass.parthold ph JOIN
((SELECT issueID, Max(atDate) as maxDate FROM ccass.parthold WHERE partID=? AND atDate<=? GROUP BY IssueID) as t2,
enigma.issue i,
enigma.organisations o,
enigma.issuedshares AS t3,
(SELECT issueID,Max(atDate) AS maxIssueDate FROM enigma.issuedshares WHERE atDate<=? GROUP BY issueID) as t4,
ccass.quotes,
enigma.sectypes)
ON ph.issueID=t2.issueID AND ph.atDate=t2.maxDate
AND ph.issueID=i.ID1
AND i.ID1=t4.issueID
AND i.issuer=o.PersonID
AND t3.issueID=t4.issueID AND t3.atDate=t4.maxIssueDate
AND i.ID1=quotes.issueID AND quotes.atDate=?
AND i.typeID=sectypes.typeID
LEFT JOIN enigma.events e ON t2.issueID=e.issueID AND t2.maxDate=e.exDate AND eventType=4
WHERE partID=? ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @p2,@p1,@p2,@p2,@p2,@p1;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `latestDatesIssue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `latestDatesIssue`(IN p1 INT)
select partID, max(atDate) AS MaxAtDate
 from holdings
 WHERE issueID = p1
 group by partID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `latestHoldingsIssue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `latestHoldingsIssue`(IN p1 INT)
BEGIN
SELECT partID, holding, atDate
FROM (ccass.holdings
JOIN (SELECT PartID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings WHERE issueID=p1
        GROUP BY MDpartID) AS t2
ON (partID=MDpartID AND atDate=maxDate)) WHERE (issueID=p1 AND Holding<>0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `monthq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `monthq`(IN i INT,ob VARCHAR(255))
BEGIN
DECLARE a DOUBLE;
SET @i=i;
SELECT enigma.getAdjust(i,CURDATE()) INTO a;
SET @a=a;
SET @stmt=CONCAT(
'SELECT atDate,settleDate,susp,days,closing,bid,ask,turn,
	IF(noclose,(SELECT closing FROM quotes WHERE issueID=? AND atDate<t4.atDate AND Not noclose ORDER BY atDate DESC LIMIT 1)*
		?/enigma.getAdjust(?,enigma.lastQuoteDate(?,atDate)),closing*f) AS adjClose,
		bid*f AS adjBid,ask*f AS adjAsk,adjLow,adjHigh,adjVol,IF(adjVol<>0,turn/adjVol,0) AS adjVWAP FROM
	(SELECT t3.*,closing,noclose,bid,ask,?/enigma.getAdjust(?,t3.atDate) AS f FROM
		(SELECT Max(atDate) AS atDate,Min(adjLow) AS adjLow,Max(adjHigh) AS adjHigh,
		sum(adjVol) AS adjVol,sum(turn) AS turn,sum(susp) AS susp,count(*) as days FROM
			(SELECT atDate,susp,turn,closing*f as adjClose,
			IF(low<>0,low*f,NULL) AS adjLow,IF(high<>0,high*f,NULL) AS adjHigh,vol/f AS adjVol FROM
				(SELECT *,?/enigma.getAdjust(?,atDate) as f FROM quotes WHERE issueID=?) as t1) as t2
		GROUP BY LAST_DAY(atDate)) as t3
	JOIN quotes q ON t3.atDate=q.atDate AND q.issueID=?) as t4
JOIN calendar c ON t4.atDate=c.tradeDate ORDER BY ',ob);
PREPARE stmt FROM @stmt;
EXECUTE stmt using @i,@a,@i,@i,@a,@i,@a,@i,@i,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NCIPchg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `NCIPchg`(IN f date,t date)
BEGIN
SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,holding,hldchg,cntchg,
	holding/issued as stake,holding/issued-IFNULL(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,susp,hldchg*price as valchg FROM
(SELECT d1.issueID,d1.NCIPhldg AS holding,d1.NCIPcnt,d2.NCIPhldg AS prevhldg,d1.NCIPhldg-IFNULL(d2.NCIPhldg,0) AS hldchg,
	IFNULL(d1.NCIPcnt,0)-IFNULL(d2.NCIPcnt,0) as cntchg,	CONCAT(name1,':',typeShort) as stockName,susp,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=t and issueID=d1.issueID ORDER BY atDate DESC LIMIT 1) as issued,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=f and issueID=d1.issueID ORDER BY atDate DESC LIMIT 1) as oldissued,
	round(IF(susp,(SELECT closing FROM quotes WHERE atDate<=t and issueID=d1.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing),3) as price
    FROM dailylog as d1
	JOIN (enigma.issue,enigma.organisations,enigma.sectypes,quotes)
	ON issue.ID1=d1.issueID and issue.issuer=personID AND issue.typeID=sectypes.typeID AND d1.issueID=quotes.issueID AND quotes.atDate=t
    LEFT JOIN
    dailylog as d2
    ON d1.issueID=d2.issueID
    WHERE d1.atDate=t and d2.atDate=f) AS t5
    WHERE hldchg<>0 ORDER BY valchg DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NCIPchgext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `NCIPchgext`(in f date,t date,ext varchar(100))
BEGIN
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,holding,hldchg,cntchg,
	holding/issued as stake,holding/issued-IFNULL(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,susp,hldchg*price as valchg FROM
(SELECT d1.issueID,d1.NCIPhldg AS holding,d1.NCIPcnt,d2.NCIPhldg AS prevhldg,d1.NCIPhldg-IFNULL(d2.NCIPhldg,0) AS hldchg,
IFNULL(d1.NCIPcnt,0)-IFNULL(d2.NCIPcnt,0) as cntchg,	CONCAT(name1,'':'',typeShort) as stockName,susp,
(SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=d1.issueID ORDER BY atDate DESC LIMIT 1) as issued,
(SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=d1.issueID ORDER BY atDate DESC LIMIT 1) as oldissued,
round(IF(susp,(SELECT closing FROM quotes WHERE atDate<=? and issueID=d1.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing),3) as price
FROM dailylog d1 JOIN (enigma.issue,enigma.organisations,enigma.sectypes,quotes)
ON issue.ID1=d1.issueID and issue.issuer=personID AND issue.typeID=sectypes.typeID AND d1.issueID=quotes.issueID AND quotes.atDate=?
LEFT JOIN dailylog d2
ON d1.issueID=d2.issueID
WHERE d1.atDate=? and d2.atDate=?) AS t5 ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @t,@f,@t,@t,@t,@f;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `portchg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `portchg`(IN part int,f date,t date)
BEGIN
SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,lastDate,holding,hldchg,
	holding/issued as stake,holding/issued-IFNULL(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,susp,hldchg*price as valchg FROM
(SELECT t1.issueID,lastDate,holding,prevhldg,CONCAT(name1,':',typeShort) as stockName,susp,
    (SELECT issuedshares FROM enigma.issuedshareshkex WHERE AsAtDate<=t and issueID=t1.issueID ORDER BY AsAtDate DESC LIMIT 1) as issued,
    (SELECT issuedshares FROM enigma.issuedshareshkex WHERE AsAtDate<=f and issueID=t1.issueID ORDER BY AsAtDate DESC LIMIT 1) as oldissued,
	round(IF(susp,(SELECT closing FROM quotes WHERE atDate<=t and issueID=t1.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing),3) as price,
    holding-ifnull(prevhldg,0) AS hldchg
FROM
	(SELECT issueID, Max(atDate) as lastDate FROM parthold WHERE partID=part AND atDate<=t GROUP BY issueID) as t1
	JOIN (parthold,enigma.issue,enigma.organisations,enigma.sectypes,quotes)
	ON parthold.partID=part AND parthold.issueID=t1.issueID AND parthold.atDate=lastDate
	AND issue.ID1=t1.issueID and issue.issuer=organisations.personID AND issue.typeID=sectypes.typeID AND t1.issueID=quotes.issueID AND quotes.atDate=t
    LEFT JOIN
		(SELECT t3.issueID,parthold.holding as prevhldg,prevDate FROM
			(SELECT issueID, Max(atDate) as prevDate FROM parthold WHERE partID=part AND atDate<=f GROUP BY issueID) as t3
            JOIN parthold
			ON parthold.partID=part AND parthold.issueID=t3.issueID and parthold.atDate=prevDate) as t4
	ON t1.issueID=t4.issueID) AS t5
    WHERE hldchg<>0 ORDER BY valchg DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `portchgext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `portchgext`(IN part int,f date,t date,ext VARCHAR(100))
BEGIN
SET @p=part;
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,lastDate,holding,hldchg,
	holding/issued as stake,holding/issued-IFNULL(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,susp,hldchg*price as valchg FROM
(SELECT t1.issueID,lastDate,holding,prevhldg,CONCAT(name1,'':'',typeShort) as stockName,susp,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as issued,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as oldissued,
	round(IF(susp,(SELECT closing FROM quotes WHERE atDate<=? and issueID=t1.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing),3) as price,
    holding-ifnull(prevhldg,0) AS hldchg
FROM
	(SELECT issueID, Max(atDate) as lastDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) as t1
	JOIN (parthold,enigma.issue,enigma.organisations,enigma.sectypes,quotes)
	ON parthold.partID=? AND parthold.issueID=t1.issueID AND parthold.atDate=lastDate
	AND issue.ID1=t1.issueID and issue.issuer=organisations.personID AND issue.typeID=sectypes.typeID AND t1.issueID=quotes.issueID AND quotes.atDate=?
    LEFT JOIN
		(SELECT t3.issueID,parthold.holding as prevhldg,prevDate FROM
			(SELECT issueID, Max(atDate) as prevDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) as t3
            JOIN parthold
			ON parthold.partID=? AND parthold.issueID=t3.issueID and parthold.atDate=prevDate) as t4
	ON t1.issueID=t4.issueID) AS t5 ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @t,@f,@t,@p,@t,@p,@t,@p,@f,@p;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `portchgext2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `portchgext2`(IN part int,f date,t date,ext VARCHAR(100))
BEGIN
SET @p=part;
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('
SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,lastDate,holding,susp,
holding-ifnull(prevhldg/scripAdj,0) AS hldchg,
	holding/issued as stake,holding/issued-ifnull(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,
    (holding-ifnull(prevhldg/scripAdj,0))*price as valchg FROM
(SELECT t1.issueID,lastDate,ph.holding/ifnull(e.adjust,1) AS holding,prevhldg,CONCAT(name1,'':'',typeShort) as stockName,susp,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as issued,
    (SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as oldissued,
    ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=t1.issueID AND isnull(cancelDate) AND eventType IN(4,5)
		AND exDate>prevDate AND exDate<=lastDate),1) AS scripAdj,
	round(IF(noclose,(SELECT closing FROM quotes WHERE atDate<=? and issueID=t1.issueID AND Not noclose ORDER BY atDate DESC LIMIT 1),closing),3) as price
FROM
	(SELECT issueID, Max(atDate) as lastDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) as t1
	JOIN (parthold ph,enigma.issue i,enigma.organisations o,enigma.sectypes st,quotes q)
	ON ph.partID=? AND ph.issueID=t1.issueID AND ph.atDate=lastDate
	AND i.ID1=t1.issueID and i.issuer=o.personID AND i.typeID=st.typeID AND t1.issueID=q.issueID AND q.atDate=?
    LEFT JOIN enigma.events e ON t1.issueID=e.issueID AND t1.lastDate=e.exDate AND isnull(cancelDate) AND eventType=4
    LEFT JOIN (SELECT t3.issueID,holding/ifnull(e.adjust,1) as prevhldg,prevDate FROM
			(SELECT issueID, Max(atDate) as prevDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) as t3
            JOIN parthold ph
			ON ph.partID=? AND ph.issueID=t3.issueID and ph.atDate=prevDate
            LEFT JOIN enigma.events e ON t3.issueID=e.issueID AND t3.prevDate=e.exDate AND isnull(cancelDate) AND eventType=4) as t4
	ON t1.issueID=t4.issueID) AS t5 ',ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @t,@f,@t,@p,@t,@p,@t,@p,@f,@p;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `portchgext3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `portchgext3`(IN part int,f date,t date,ext VARCHAR(100))
BEGIN
SET @p=part;
SET @f=f;
SET @t=t;
SET @stmt=CONCAT('
SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,lastDate,holding,susp,
	holding-ifnull(prevhldg/scripAdj,0) AS hldchg,
	holding/issued as stake,holding/issued-ifnull(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,
    (holding-ifnull(prevhldg/scripAdj,0))*price as valchg,
    IF(lqd=?,price,price*ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE
			issueID=t5.issueID AND eventType IN(4,5) AND isnull(cancelDate) AND	exDate>lqd AND exDate<=?),1)) AS price
	FROM
		((SELECT susp,t1.issueID,lastDate,ph.holding/ifnull(e.adjust,1) AS holding,prevhldg,CONCAT(name1,'':'',typeShort) as stockName,
		(SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as issued,
		(SELECT outstanding FROM enigma.issuedshares WHERE atDate<=? and issueID=t1.issueID ORDER BY atDate DESC LIMIT 1) as oldissued,
		ifnull((SELECT EXP(SUM(LOG(adjust))) FROM enigma.events WHERE issueID=t1.issueID AND isnull(cancelDate) AND eventType IN(4,5)
			AND exDate>prevDate AND exDate<=lastDate),1) AS scripAdj,
		round(IF(noclose,(SELECT closing FROM quotes WHERE atDate<=? and issueID=t1.issueID AND Not noclose ORDER BY atDate DESC LIMIT 1),closing),3) as price,
		IF(noclose,(SELECT Max(atDate) FROM quotes WHERE atDate<=? AND issueID=t1.issueID AND Not noclose),q.atDate) AS lqd
		FROM
			(SELECT issueID, Max(atDate) as lastDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) as t1
			JOIN (parthold ph,enigma.issue i,enigma.organisations o,enigma.sectypes st,quotes q)
			ON ph.partID=? AND ph.issueID=t1.issueID AND ph.atDate=lastDate
			AND i.ID1=t1.issueID and i.issuer=o.personID AND i.typeID=st.typeID AND t1.issueID=q.issueID AND q.atDate=?
			LEFT JOIN enigma.events e ON t1.issueID=e.issueID AND t1.lastDate=e.exDate AND isnull(cancelDate) AND eventType=4
			LEFT JOIN (SELECT t3.issueID,holding/ifnull(e.adjust,1) as prevhldg,prevDate FROM
				(SELECT issueID, Max(atDate) as prevDate FROM parthold WHERE partID=? AND atDate<=? GROUP BY issueID) AS t3
				JOIN parthold ph ON ph.partID=? AND ph.issueID=t3.issueID and ph.atDate=prevDate
				LEFT JOIN enigma.events e ON t3.issueID=e.issueID AND t3.prevDate=e.exDate AND isnull(cancelDate) AND eventType=4) AS t4
			ON t1.issueID=t4.issueID)
		)AS t5 '
,ext);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @t,@t,@t,@f,@t,@t,@p,@t,@p,@t,@p,@f,@p;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top10holdings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `top10holdings`(IN i smallint,d date)
BEGIN
SELECT Sum(holding) as total FROM
(SELECT holdings.holding
FROM ccass.holdings
  JOIN (SELECT PartID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings
  WHERE issueID=i AND atDate<=d GROUP BY MDpartID) AS t2
  ON (issueID=i AND partID=MDpartID AND atDate=maxDate)
  ORDER BY holding DESC limit 10) AS t3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top5holdings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `top5holdings`(IN i smallint,d date)
BEGIN
SELECT Sum(holding) as total FROM
(SELECT holdings.holding
FROM ccass.holdings
  JOIN (SELECT PartID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings
  WHERE issueID=i AND atDate<=d GROUP BY MDpartID) AS t2
  ON (issueID=i AND partID=MDpartID AND atDate=maxDate)
  ORDER BY holding DESC limit 5) AS t3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `topholdings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `topholdings`(IN i int,d date)
BEGIN
UPDATE dailylog SET c5=sumtoph(i,d,5),c10=sumtoph(i,d,10) WHERE issueID=i AND atDate=d;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `weekq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `weekq`(IN i INT,wd INT,ob VARCHAR(255))
BEGIN
DECLARE a DOUBLE;
SELECT enigma.getAdjust(i,CURDATE()) INTO a;
SET @a=a;
SET @i=i;
SET @wd=wd;
SET @stmt=CONCAT(
'SELECT atDate,settleDate,susp,days,closing,bid,ask,turn,
	IF(noclose,(SELECT closing FROM quotes WHERE issueID=? AND atDate<t4.atDate AND Not noclose ORDER BY atDate DESC LIMIT 1)*
	?/enigma.getAdjust(?,enigma.lastQuoteDate(?,atDate)),closing*f) AS adjClose,
	bid*f AS adjBid,ask*f AS adjAsk,adjLow,adjHigh,adjVol,IF(adjVol<>0,turn/adjVol,0) AS adjVWAP FROM
	(SELECT t3.*,closing,noclose,bid,ask,?/enigma.getAdjust(?,t3.atDate) AS f FROM
		(SELECT Max(atDate) AS atDate,Min(adjLow) AS adjLow,Max(adjHigh) AS adjHigh,
		sum(adjVol) AS adjVol,sum(turn) AS turn,sum(susp) AS susp,count(*) as days FROM
			(SELECT atDate,susp,turn,closing*f as adjClose,
			IF(low<>0,low*f,NULL) AS adjLow,IF(high<>0,high*f,NULL) AS adjHigh,vol/f AS adjVol FROM
				(SELECT *,?/enigma.getAdjust(?,atDate) as f FROM quotes WHERE issueID=?) as t1) as t2
		GROUP BY YEARWEEK(atDate+INTERVAL 7-? DAY)) as t3
	JOIN quotes q ON t3.atDate=q.atDate AND q.issueID=?) as t4
JOIN calendar c ON t4.atDate=c.tradeDate ORDER BY ',ob);
PREPARE stmt FROM @stmt;
EXECUTE stmt using @i,@a,@i,@i,@a,@i,@a,@i,@i,@wd,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `yearq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `yearq`(IN i INT,ob VARCHAR(255))
BEGIN
DECLARE a DOUBLE;
SET @i=i;
SELECT enigma.getAdjust(i,CURDATE()) INTO a;
SET @a=a;
SET @stmt=CONCAT(
'SELECT atDate,settleDate,susp,days,closing,bid,ask,turn,
	IF(noclose,(SELECT closing FROM quotes WHERE issueID=? AND atDate<t4.atDate AND Not noclose ORDER BY atDate DESC LIMIT 1)*
		?/enigma.getAdjust(?,enigma.lastQuoteDate(?,atDate)),closing*f) AS adjClose,
    bid*f AS adjBid,ask*f AS adjAsk,adjLow,adjHigh,adjVol,IF(adjVol<>0,turn/adjVol,0) AS adjVWAP FROM
	(SELECT t3.*,closing,noclose,bid,ask,?/enigma.getAdjust(?,t3.atDate) AS f FROM
		(SELECT Max(atDate) AS atDate,Min(adjLow) AS adjLow,Max(adjHigh) AS adjHigh,
		sum(adjVol) AS adjVol,sum(turn) AS turn,sum(susp) AS susp,count(*) as days FROM
			(SELECT atDate,susp,turn,closing*f as adjClose,
			IF(low<>0,low*f,NULL) AS adjLow,IF(high<>0,high*f,NULL) AS adjHigh,vol/f AS adjVol FROM
				(SELECT *,?/enigma.getAdjust(?,atDate) as f FROM quotes WHERE issueID=?) as t1) as t2
		GROUP BY YEAR(atDate)) as t3
	JOIN quotes q ON t3.atDate=q.atDate AND q.issueID=?) as t4
JOIN calendar c ON t4.atDate=c.tradeDate ORDER BY ',ob);
PREPARE stmt FROM @stmt;
EXECUTE stmt using @i,@a,@i,@i,@a,@i,@a,@i,@i,@i;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `zerostock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `zerostock`(IN i INT,d DATE)
BEGIN
INSERT INTO holdings(partID,issueID,atDate,holding)
SELECT h.partID,i,d,0
FROM holdings h
JOIN (SELECT partID, Max(atDate) AS maxDate FROM ccass.holdings WHERE issueID=i GROUP BY partID) AS t2
ON h.partID=t2.partID AND h.atDate=t2.maxDate
WHERE (issueID=i AND holding<>0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `ccass`
--

USE `ccass`;

--
-- Final view structure for view `holdingsperdate`
--

/*!50001 DROP VIEW IF EXISTS `holdingsperdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `holdingsperdate` AS select `holdings`.`atDate` AS `Atdate`,count(`holdings`.`holding`) AS `Count(holding)` from `holdings` group by `holdings`.`atDate` order by `holdings`.`atDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latestholdings`
--

/*!50001 DROP VIEW IF EXISTS `latestholdings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `latestholdings` AS select `holdings`.`partID` AS `partID`,`holdings`.`issueID` AS `issueID`,`holdings`.`holding` AS `holding`,`holdings`.`atDate` AS `atDate` from (`maxdate` join `holdings` on(((`maxdate`.`Max(atDate)` = `holdings`.`atDate`) and (`maxdate`.`issueID` = `holdings`.`issueID`) and (`maxdate`.`partID` = `holdings`.`partID`)))) where (`holdings`.`holding` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maxdate`
--

/*!50001 DROP VIEW IF EXISTS `maxdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maxdate` AS select `holdings`.`partID` AS `partID`,`holdings`.`issueID` AS `issueID`,max(`holdings`.`atDate`) AS `Max(atDate)` from `holdings` group by `holdings`.`partID`,`holdings`.`issueID` order by NULL */;
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

-- Dump completed on 2025-10-11  6:00:01
