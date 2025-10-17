-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: enigma
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
-- Current Database: `enigma`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `enigma` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `enigma`;

--
-- Table structure for table `acdata`
--

DROP TABLE IF EXISTS `acdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acdata` (
  `acItem` int unsigned NOT NULL COMMENT 'Table for accounting data, starting with HKMA Exchange Fund Balance Sheet',
  `atDate` date NOT NULL,
  `acVal` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`acItem`,`atDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acitems`
--

DROP TABLE IF EXISTS `acitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acitems` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `datasource` int unsigned NOT NULL,
  `sourceName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refDate` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `sourceName` (`datasource`,`sourceName`),
  CONSTRAINT `datasource` FOREIGN KEY (`datasource`) REFERENCES `datasource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `ID` tinyint unsigned NOT NULL,
  `actName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adjustments`
--

DROP TABLE IF EXISTS `adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adjustments` (
  `issueID` int unsigned NOT NULL,
  `exDate` date NOT NULL,
  `cumAdjust` double unsigned NOT NULL,
  PRIMARY KEY (`issueID`,`exDate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advisers`
--

DROP TABLE IF EXISTS `advisers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisers` (
  `PersonID` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FK_advisers_orgs` FOREIGN KEY (`PersonID`) REFERENCES `organisations` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adviserships`
--

DROP TABLE IF EXISTS `adviserships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adviserships` (
  `Company` int unsigned NOT NULL,
  `Adviser` int unsigned NOT NULL,
  `Role` tinyint NOT NULL,
  `AddDate` date DEFAULT NULL,
  `AddAcc` tinyint unsigned DEFAULT NULL,
  `RemDate` date DEFAULT NULL,
  `RemAcc` tinyint unsigned DEFAULT NULL,
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_adviserships_role` (`Role`),
  KEY `FK_adviserships_adviser` (`Adviser`),
  KEY `FK_adviserships_orgs` (`Company`),
  CONSTRAINT `FK_adviserships_adviser` FOREIGN KEY (`Adviser`) REFERENCES `advisers` (`PersonID`),
  CONSTRAINT `FK_adviserships_orgs` FOREIGN KEY (`Company`) REFERENCES `organisations` (`PersonID`),
  CONSTRAINT `FK_adviserships_role` FOREIGN KEY (`Role`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=135226 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `ICAO` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tcName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ICAO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Airlines table from HK Airport';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `IATA` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enName` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcName` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scName` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IATA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alias`
--

DROP TABLE IF EXISTS `alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `personID` int unsigned NOT NULL,
  `n1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n2` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` bit(1) NOT NULL DEFAULT b'0',
  `dn1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dn2` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `alias` (`n1`,`n2`,`cn`,`personID`),
  KEY `alias-people_idx` (`personID`),
  FULLTEXT KEY `ftalias` (`dn1`,`dn2`),
  FULLTEXT KEY `ftadn1` (`dn1`),
  FULLTEXT KEY `ftadn2` (`dn2`),
  CONSTRAINT `alias-people` FOREIGN KEY (`personID`) REFERENCES `people` (`PersonID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3910 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='For alternate and former names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `auditorchanges`
--

DROP TABLE IF EXISTS `auditorchanges`;
/*!50001 DROP VIEW IF EXISTS `auditorchanges`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `auditorchanges` AS SELECT 
 1 AS `Company`,
 1 AS `Adviser`,
 1 AS `add`,
 1 AS `rem`,
 1 AS `SortDate`,
 1 AS `CoName`,
 1 AS `AdvName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bbexch`
--

DROP TABLE IF EXISTS `bbexch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbexch` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `des` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The description SEHK uses',
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The name we use',
  `fileDate` date DEFAULT NULL,
  `mapTo` tinyint unsigned DEFAULT NULL COMMENT 'for description typos, map to a different ID in this table',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `des` (`des`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A list of buyback methods seen in SEHK buyback reports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bodytype`
--

DROP TABLE IF EXISTS `bodytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodytype` (
  `ID` tinyint unsigned NOT NULL,
  `des` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Body types for Transport Department tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buybacklog`
--

DROP TABLE IF EXISTS `buybacklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buybacklog` (
  `LastRun` datetime NOT NULL,
  `mainBoardDate` date NOT NULL,
  `GEMDate` date NOT NULL,
  PRIMARY KEY (`LastRun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `buybacksadj`
--

DROP TABLE IF EXISTS `buybacksadj`;
/*!50001 DROP VIEW IF EXISTS `buybacksadj`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `buybacksadj` AS SELECT 
 1 AS `stockCode`,
 1 AS `IssueID`,
 1 AS `EffDate`,
 1 AS `exchID`,
 1 AS `exchName`,
 1 AS `shares`,
 1 AS `Value`,
 1 AS `Currency`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `CampID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `CampText` varchar(50) NOT NULL,
  `Recipient` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CampID`),
  KEY `FK_campaign_recip` (`Recipient`),
  CONSTRAINT `FK_campaign_recip` FOREIGN KEY (`Recipient`) REFERENCES `people` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `capacity`
--

DROP TABLE IF EXISTS `capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacity` (
  `ID` smallint unsigned NOT NULL,
  `capShort` varchar(11) NOT NULL,
  `capLong` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `capchanges`
--

DROP TABLE IF EXISTS `capchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capchanges` (
  `CCID` int unsigned NOT NULL AUTO_INCREMENT,
  `IssueID` mediumint unsigned NOT NULL DEFAULT '0',
  `EffDate` date NOT NULL,
  `CapChangeType` tinyint unsigned NOT NULL,
  `exchID` tinyint unsigned DEFAULT NULL COMMENT 'ID from bbexch for buybacks',
  `shares` int DEFAULT NULL,
  `Value` double DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Currency` tinyint DEFAULT NULL,
  `Descrip` varchar(50) DEFAULT NULL,
  `fileDate` date DEFAULT NULL,
  PRIMARY KEY (`CCID`),
  UNIQUE KEY `unique` (`IssueID`,`EffDate`,`CapChangeType`,`exchID`),
  KEY `FK_capchanges_type` (`CapChangeType`),
  KEY `capchanges_issue_idx` (`IssueID`),
  CONSTRAINT `capchanges_issue` FOREIGN KEY (`IssueID`) REFERENCES `issue` (`ID1`),
  CONSTRAINT `FK_capchanges_type` FOREIGN KEY (`CapChangeType`) REFERENCES `capchangetypes` (`CapChangeType`)
) ENGINE=InnoDB AUTO_INCREMENT=118608 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `capchangetypes`
--

DROP TABLE IF EXISTS `capchangetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capchangetypes` (
  `CapChangeType` tinyint unsigned NOT NULL DEFAULT '0',
  `Change` varchar(30) DEFAULT NULL,
  `NegDescrip` varchar(50) DEFAULT NULL,
  `Descrip` varchar(50) DEFAULT NULL,
  `dist` bit(1) NOT NULL DEFAULT b'0',
  `likestr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CapChangeType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `casetypes`
--

DROP TABLE IF EXISTS `casetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casetypes` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `prefix` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courtID` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `caseTypesCourt_idx` (`courtID`),
  CONSTRAINT `caseTypesCourt` FOREIGN KEY (`courtID`) REFERENCES `courts` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cattree`
--

DROP TABLE IF EXISTS `cattree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cattree` (
  `ChildCat` smallint unsigned NOT NULL,
  `ParentCat` smallint unsigned NOT NULL,
  PRIMARY KEY (`ChildCat`,`ParentCat`),
  KEY `FK_cattree_parent` (`ParentCat`),
  CONSTRAINT `FK_cattree_child` FOREIGN KEY (`ChildCat`) REFERENCES `categories` (`ID`),
  CONSTRAINT `FK_cattree_parent` FOREIGN KEY (`ParentCat`) REFERENCES `categories` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chartitems`
--

DROP TABLE IF EXISTS `chartitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chartitems` (
  `chartID` smallint unsigned NOT NULL,
  `dataitem` smallint unsigned NOT NULL,
  `typeID` tinyint unsigned NOT NULL DEFAULT '2',
  `negate` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`chartID`,`dataitem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='dataitems to be included in a chart';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charts` (
  `ID` smallint unsigned NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quant` bit(1) NOT NULL DEFAULT b'1' COMMENT 'whether the chart is of quantity per period or a point-in-time value such as a price or temperature',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `charttypes`
--

DROP TABLE IF EXISTS `charttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charttypes` (
  `ID` tinyint unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `classifications`
--

DROP TABLE IF EXISTS `classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classifications` (
  `Company` int unsigned NOT NULL,
  `Category` smallint unsigned NOT NULL,
  PRIMARY KEY (`Company`,`Category`),
  KEY `FK_classifications_cats` (`Category`),
  CONSTRAINT `FK_classifications_cats` FOREIGN KEY (`Category`) REFERENCES `categories` (`ID`),
  CONSTRAINT `FK_classifications_org` FOREIGN KEY (`Company`) REFERENCES `organisations` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `codeshare`
--

DROP TABLE IF EXISTS `codeshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeshare` (
  `flightID` int NOT NULL,
  `flightNo` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`flightID`,`flightNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Other flight numbers for the same flight';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comeets`
--

DROP TABLE IF EXISTS `comeets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comeets` (
  `orgID` int unsigned NOT NULL,
  `comID` tinyint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `mtngs` tinyint unsigned NOT NULL COMMENT 'Number of committee meetings during the financial year',
  `userID` mediumint unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orgID`,`comID`,`atDate`),
  CONSTRAINT `comeetsOrg` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comex`
--

DROP TABLE IF EXISTS `comex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comex` (
  `orgID` int unsigned NOT NULL,
  `atDate` date NOT NULL,
  `comID` tinyint unsigned NOT NULL,
  PRIMARY KEY (`orgID`,`atDate`,`comID`),
  CONSTRAINT `comexOrg` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table of orgs without committees on the snapshot date';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `compos`
--

DROP TABLE IF EXISTS `compos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compos` (
  `orgID` int unsigned NOT NULL,
  `dirID` int unsigned NOT NULL,
  `comID` tinyint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `posn` tinyint unsigned DEFAULT NULL,
  `userID` mediumint unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attend` tinyint unsigned DEFAULT NULL,
  `mtngs` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`orgID`,`dirID`,`comID`,`atDate`),
  KEY `composPeople_idx` (`dirID`),
  CONSTRAINT `composOrg` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `composPeople` FOREIGN KEY (`dirID`) REFERENCES `people` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coms`
--

DROP TABLE IF EXISTS `coms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coms` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `comName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corpwords`
--

DROP TABLE IF EXISTS `corpwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corpwords` (
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `courts`
--

DROP TABLE IF EXISTS `courts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courts` (
  `ID` tinyint unsigned NOT NULL,
  `des` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ncPref` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `ID` tinyint unsigned NOT NULL DEFAULT '0',
  `currency` varchar(3) DEFAULT NULL,
  `HKEXcurr` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `curr` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `currentlistedshareshk`
--

DROP TABLE IF EXISTS `currentlistedshareshk`;
/*!50001 DROP VIEW IF EXISTS `currentlistedshareshk`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `currentlistedshareshk` AS SELECT 
 1 AS `StockCode`,
 1 AS `Type`,
 1 AS `issuer`,
 1 AS `FirstTradeDate`,
 1 AS `StockExID`,
 1 AS `issueID`,
 1 AS `outstanding`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `currpair`
--

DROP TABLE IF EXISTS `currpair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currpair` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `curr1` tinyint unsigned NOT NULL,
  `curr2` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Currency pairs for forexrates table. Rates are one unit of curr1 expressed in curr2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `item` smallint unsigned NOT NULL,
  `d` date NOT NULL,
  `v` float NOT NULL,
  PRIMARY KEY (`item`,`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataitems`
--

DROP TABLE IF EXISTS `dataitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataitems` (
  `ID` smallint unsigned NOT NULL,
  `ddes` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp` tinyint unsigned NOT NULL DEFAULT '2' COMMENT 'number of decimal places to display',
  `sv` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The variable name used in source data',
  `units` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freq` tinyint unsigned NOT NULL COMMENT 'Frequency of data. 1=monthly 2=quarterly 3=annual',
  `shortname` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datasource`
--

DROP TABLE IF EXISTS `datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datasource` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swagger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'URL to swagger data dictionary',
  `fieldlist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dateaccuracy`
--

DROP TABLE IF EXISTS `dateaccuracy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dateaccuracy` (
  `AccID` tinyint unsigned NOT NULL DEFAULT '0',
  `AccText` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`AccID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `destor`
--

DROP TABLE IF EXISTS `destor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destor` (
  `flightID` int NOT NULL,
  `seq` tinyint unsigned NOT NULL,
  `IATA` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`flightID`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='destination or origin cities (in visit order)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `directorships`
--

DROP TABLE IF EXISTS `directorships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directorships` (
  `ID1` int unsigned NOT NULL AUTO_INCREMENT,
  `Company` int unsigned NOT NULL,
  `Director` int unsigned NOT NULL,
  `JoinedY` smallint DEFAULT NULL,
  `ApptDate` date DEFAULT NULL,
  `ApptAcc` tinyint DEFAULT NULL,
  `ResDate` date DEFAULT NULL,
  `ResAcc` tinyint DEFAULT NULL,
  `positionID` smallint unsigned NOT NULL,
  `source` tinyint unsigned DEFAULT NULL COMMENT '1=HKlawSoc law firms (lsposts), 2=HKlawSoc non-law (lsjobs), 3=UKCH',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID1`),
  KEY `FK_directorships_org` (`Company`),
  KEY `FK_directorships_posn_idx` (`positionID`),
  KEY `FK_directorships_persons_idx` (`Director`),
  CONSTRAINT `FK_directorships_orgs` FOREIGN KEY (`Company`) REFERENCES `organisations` (`PersonID`),
  CONSTRAINT `FK_directorships_persons` FOREIGN KEY (`Director`) REFERENCES `persons` (`PersonID`),
  CONSTRAINT `FK_directorships_posn` FOREIGN KEY (`positionID`) REFERENCES `positions` (`positionID`)
) ENGINE=InnoDB AUTO_INCREMENT=31855351 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `dirnocname`
--

DROP TABLE IF EXISTS `dirnocname`;
/*!50001 DROP VIEW IF EXISTS `dirnocname`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dirnocname` AS SELECT 
 1 AS `orgID`,
 1 AS `director`,
 1 AS `orgName`,
 1 AS `pplname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dismodes`
--

DROP TABLE IF EXISTS `dismodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dismodes` (
  `ID` tinyint unsigned NOT NULL,
  `disModeTxt` varchar(45) NOT NULL,
  `UKuri` varchar(45) DEFAULT NULL,
  `UKapi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dlreasons`
--

DROP TABLE IF EXISTS `dlreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlreasons` (
  `ReasonID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `Reason` varchar(45) NOT NULL,
  PRIMARY KEY (`ReasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctypes`
--

DROP TABLE IF EXISTS `doctypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctypes` (
  `DocTypeID` tinyint NOT NULL,
  `DocShort` varchar(50) DEFAULT NULL,
  `DocLong` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DocTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `OrgID` int unsigned NOT NULL DEFAULT '0',
  `DocTypeID` tinyint NOT NULL,
  `RecordDate` date NOT NULL,
  `MidDay` bit(1) DEFAULT b'0',
  `ReportDate` date DEFAULT NULL,
  `Adv` bit(1) DEFAULT b'0',
  `Dir` bit(1) DEFAULT b'0',
  `pay` bit(1) DEFAULT b'0',
  `SAI` bit(1) DEFAULT b'0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `repID` mediumint unsigned DEFAULT NULL,
  `resID` mediumint unsigned DEFAULT NULL,
  `payPage` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_docs_doctypes` (`DocTypeID`),
  KEY `FK_docs_orgs` (`OrgID`),
  KEY `docs_repfilings_idx` (`repID`) /*!80000 INVISIBLE */,
  KEY `docOrgDate` (`OrgID`,`DocTypeID`,`RecordDate` DESC),
  CONSTRAINT `docs_repfilings` FOREIGN KEY (`repID`) REFERENCES `repfilings` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_docs_doctypes` FOREIGN KEY (`DocTypeID`) REFERENCES `doctypes` (`DocTypeID`),
  CONSTRAINT `FK_documents_orgs` FOREIGN KEY (`OrgID`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=123504 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `domchanges`
--

DROP TABLE IF EXISTS `domchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domchanges` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `orgID` int unsigned NOT NULL,
  `dateChanged` date NOT NULL,
  `dateAcc` tinyint unsigned DEFAULT NULL,
  `oldDom` smallint unsigned NOT NULL,
  `oldIncID` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `org-dc` (`orgID`,`dateChanged`),
  KEY `domchanges_org_idx` (`orgID`),
  KEY `domchanges_dom_idx` (`oldDom`),
  CONSTRAINT `domchanges_dom` FOREIGN KEY (`oldDom`) REFERENCES `domiciles` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `domchanges_org` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `domiciles`
--

DROP TABLE IF EXISTS `domiciles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domiciles` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `ShortName` varchar(6) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `HKExDomicile` varchar(50) DEFAULT NULL,
  `A2` varchar(4) NOT NULL COMMENT 'ISO 3166-1 Alpha 2 code',
  `friendly` varchar(30) NOT NULL,
  `HKCR` varchar(45) DEFAULT NULL COMMENT 'name used by HK Companies Registry for non-HK companies',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `Campaign` tinyint unsigned NOT NULL,
  `Donor` int unsigned NOT NULL,
  `DonCurr` tinyint unsigned NOT NULL DEFAULT '0',
  `DonAmnt` int unsigned NOT NULL,
  `Receipt` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`Campaign`,`Donor`),
  KEY `FK_donations_donor` (`Donor`),
  KEY `FK_donations_currency` (`DonCurr`),
  CONSTRAINT `FK_donations_campaign` FOREIGN KEY (`Campaign`) REFERENCES `campaign` (`CampID`),
  CONSTRAINT `FK_donations_currency` FOREIGN KEY (`DonCurr`) REFERENCES `currencies` (`ID`),
  CONSTRAINT `FK_donations_donor` FOREIGN KEY (`Donor`) REFERENCES `persons` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtsquotes`
--

DROP TABLE IF EXISTS `dtsquotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtsquotes` (
  `stockCode` int unsigned NOT NULL,
  `stockID` int unsigned DEFAULT NULL,
  `date` date NOT NULL,
  `high` float unsigned NOT NULL,
  `low` float unsigned NOT NULL,
  `closing` float unsigned NOT NULL,
  `vol` bigint unsigned NOT NULL,
  `turn` bigint unsigned NOT NULL,
  `deals` int unsigned NOT NULL,
  `bid` float unsigned NOT NULL,
  `ask` float unsigned NOT NULL,
  `susp` bit(1) NOT NULL,
  `last` float unsigned DEFAULT NULL,
  PRIMARY KEY (`stockCode`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enginesize`
--

DROP TABLE IF EXISTS `enginesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enginesize` (
  `ID` tinyint unsigned NOT NULL,
  `des` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ENGINE_SIZE column from table 4.2',
  `TD2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'New TD description for 2022-07 onwards',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Engine sizes for Transport Dept Private Cars table 4.2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `entall`
--

DROP TABLE IF EXISTS `entall`;
/*!50001 DROP VIEW IF EXISTS `entall`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entall` AS SELECT 
 1 AS `importID`,
 1 AS `daily`,
 1 AS `AutoProcess`,
 1 AS `IgnoreRow`,
 1 AS `STOCK`,
 1 AS `SEHKID`,
 1 AS `IssueID`,
 1 AS `STK_NAME`,
 1 AS `TYPE`,
 1 AS `Announced`,
 1 AS `YearEnd`,
 1 AS `DETAILS_1`,
 1 AS `DETAILS_2`,
 1 AS `DETAILS_3`,
 1 AS `DETAILS_4`,
 1 AS `DETAILS_5`,
 1 AS `DETAILS_6`,
 1 AS `BookCloseFr`,
 1 AS `BookCloseTo`,
 1 AS `PayDate`,
 1 AS `ExDate`,
 1 AS `CapChangeType1`,
 1 AS `Curr1`,
 1 AS `Price1`,
 1 AS `PriceHKD1`,
 1 AS `Old1`,
 1 AS `New1`,
 1 AS `Date1`,
 1 AS `IssueID1`,
 1 AS `Descrip1`,
 1 AS `CapChangeType2`,
 1 AS `Curr2`,
 1 AS `Price2`,
 1 AS `PriceHKD2`,
 1 AS `Old2`,
 1 AS `New2`,
 1 AS `Date2`,
 1 AS `IssueID2`,
 1 AS `Descrip2`,
 1 AS `CapChangeType3`,
 1 AS `Curr3`,
 1 AS `Price3`,
 1 AS `PriceHKD3`,
 1 AS `Old3`,
 1 AS `New3`,
 1 AS `Date3`,
 1 AS `IssueID3`,
 1 AS `Descrip3`,
 1 AS `CapChangeType4`,
 1 AS `Curr4`,
 1 AS `Price4`,
 1 AS `PriceHKD4`,
 1 AS `Old4`,
 1 AS `New4`,
 1 AS `Date4`,
 1 AS `IssueID4`,
 1 AS `Descrip4`,
 1 AS `Event1`,
 1 AS `Event2`,
 1 AS `Event3`,
 1 AS `Event4`,
 1 AS `modified`,
 1 AS `details`,
 1 AS `col1`,
 1 AS `col2`,
 1 AS `col3`,
 1 AS `col4`,
 1 AS `col5`,
 1 AS `col6`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `entdetails`
--

DROP TABLE IF EXISTS `entdetails`;
/*!50001 DROP VIEW IF EXISTS `entdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entdetails` AS SELECT 
 1 AS `importID`,
 1 AS `AutoProcess`,
 1 AS `IgnoreRow`,
 1 AS `STOCK`,
 1 AS `SEHKID`,
 1 AS `IssueID`,
 1 AS `STK_NAME`,
 1 AS `TYPE`,
 1 AS `Announced`,
 1 AS `YearEnd`,
 1 AS `DETAILS_1`,
 1 AS `DETAILS_2`,
 1 AS `DETAILS_3`,
 1 AS `DETAILS_4`,
 1 AS `DETAILS_5`,
 1 AS `DETAILS_6`,
 1 AS `BookCloseFr`,
 1 AS `BookCloseTo`,
 1 AS `PayDate`,
 1 AS `ExDate`,
 1 AS `CapChangeType1`,
 1 AS `Curr1`,
 1 AS `Price1`,
 1 AS `PriceHKD1`,
 1 AS `Old1`,
 1 AS `New1`,
 1 AS `Date1`,
 1 AS `IssueID1`,
 1 AS `Descrip1`,
 1 AS `CapChangeType2`,
 1 AS `Curr2`,
 1 AS `Price2`,
 1 AS `PriceHKD2`,
 1 AS `Old2`,
 1 AS `New2`,
 1 AS `Date2`,
 1 AS `IssueID2`,
 1 AS `Descrip2`,
 1 AS `CapChangeType3`,
 1 AS `Curr3`,
 1 AS `Price3`,
 1 AS `PriceHKD3`,
 1 AS `Old3`,
 1 AS `New3`,
 1 AS `Date3`,
 1 AS `IssueID3`,
 1 AS `Descrip3`,
 1 AS `CapChangeType4`,
 1 AS `Curr4`,
 1 AS `Price4`,
 1 AS `PriceHKD4`,
 1 AS `Old4`,
 1 AS `New4`,
 1 AS `Date4`,
 1 AS `IssueID4`,
 1 AS `Descrip4`,
 1 AS `Event1`,
 1 AS `Event2`,
 1 AS `Event3`,
 1 AS `Event4`,
 1 AS `modified`,
 1 AS `details`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `entitlements`
--

DROP TABLE IF EXISTS `entitlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitlements` (
  `importID` int unsigned NOT NULL AUTO_INCREMENT,
  `daily` bit(1) NOT NULL DEFAULT b'0',
  `AutoProcess` bit(1) DEFAULT b'0',
  `IgnoreRow` bit(1) DEFAULT b'0',
  `STOCK` varchar(5) DEFAULT NULL,
  `SEHKID` int unsigned DEFAULT NULL,
  `IssueID` mediumint unsigned DEFAULT NULL,
  `STK_NAME` varchar(60) DEFAULT NULL,
  `TYPE` varchar(4) DEFAULT NULL,
  `Announced` date DEFAULT NULL,
  `YearEnd` date DEFAULT NULL,
  `DETAILS_1` varchar(63) DEFAULT NULL,
  `DETAILS_2` varchar(63) DEFAULT NULL,
  `DETAILS_3` varchar(63) DEFAULT NULL,
  `DETAILS_4` varchar(63) DEFAULT NULL,
  `DETAILS_5` varchar(63) DEFAULT NULL,
  `DETAILS_6` varchar(63) DEFAULT NULL,
  `BookCloseFr` date DEFAULT NULL,
  `BookCloseTo` date DEFAULT NULL,
  `PayDate` date DEFAULT NULL,
  `ExDate` date DEFAULT NULL,
  `CapChangeType1` tinyint unsigned DEFAULT NULL,
  `Curr1` tinyint unsigned DEFAULT NULL,
  `Price1` double unsigned DEFAULT NULL,
  `PriceHKD1` double unsigned DEFAULT NULL,
  `Old1` double unsigned DEFAULT NULL,
  `New1` double unsigned DEFAULT NULL,
  `Date1` date DEFAULT NULL,
  `IssueID1` int unsigned DEFAULT NULL,
  `Descrip1` varchar(255) DEFAULT NULL,
  `CapChangeType2` tinyint unsigned DEFAULT NULL,
  `Curr2` tinyint unsigned DEFAULT NULL,
  `Price2` double DEFAULT NULL,
  `PriceHKD2` double DEFAULT NULL,
  `Old2` double unsigned DEFAULT NULL,
  `New2` double unsigned DEFAULT NULL,
  `Date2` date DEFAULT NULL,
  `IssueID2` int unsigned DEFAULT NULL,
  `Descrip2` varchar(255) DEFAULT NULL,
  `CapChangeType3` tinyint unsigned DEFAULT NULL,
  `Curr3` tinyint unsigned DEFAULT NULL,
  `Price3` double DEFAULT NULL,
  `PriceHKD3` double DEFAULT NULL,
  `Old3` double unsigned DEFAULT NULL,
  `New3` double unsigned DEFAULT NULL,
  `Date3` date DEFAULT NULL,
  `IssueID3` int unsigned DEFAULT NULL,
  `Descrip3` varchar(255) DEFAULT NULL,
  `CapChangeType4` tinyint unsigned DEFAULT NULL,
  `Curr4` tinyint unsigned DEFAULT NULL,
  `Price4` double DEFAULT NULL,
  `PriceHKD4` double DEFAULT NULL,
  `Old4` double unsigned DEFAULT NULL,
  `New4` double unsigned DEFAULT NULL,
  `Date4` date DEFAULT NULL,
  `IssueID4` int unsigned DEFAULT NULL,
  `Descrip4` varchar(255) DEFAULT NULL,
  `Event1` int unsigned DEFAULT NULL,
  `Event2` int unsigned DEFAULT NULL,
  `Event3` int unsigned DEFAULT NULL,
  `Event4` int unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `col1` bit(1) NOT NULL DEFAULT b'0',
  `col2` bit(1) NOT NULL DEFAULT b'0',
  `col3` bit(1) NOT NULL DEFAULT b'0',
  `col4` bit(1) NOT NULL DEFAULT b'0',
  `col5` bit(1) NOT NULL DEFAULT b'0',
  `col6` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`importID`) USING BTREE,
  KEY `FK_entitlements_event1` (`Event1`),
  KEY `FK_entitlements_event2` (`Event2`),
  KEY `FK_entitlements_event3` (`Event3`),
  KEY `FK_entitlements_event4` (`Event4`),
  KEY `FK_entitlements_type1` (`CapChangeType1`),
  KEY `FK_entitlements_type2` (`CapChangeType2`),
  KEY `FK_entitlements_type3` (`CapChangeType3`),
  KEY `FK_entitlements_type4` (`CapChangeType4`),
  KEY `entitlements_issue_idx` (`IssueID`),
  CONSTRAINT `entitlements_issue` FOREIGN KEY (`IssueID`) REFERENCES `issue` (`ID1`),
  CONSTRAINT `FK_entitlements_event1` FOREIGN KEY (`Event1`) REFERENCES `events` (`eventID`) ON DELETE SET NULL,
  CONSTRAINT `FK_entitlements_event2` FOREIGN KEY (`Event2`) REFERENCES `events` (`eventID`) ON DELETE SET NULL,
  CONSTRAINT `FK_entitlements_event3` FOREIGN KEY (`Event3`) REFERENCES `events` (`eventID`) ON DELETE SET NULL,
  CONSTRAINT `FK_entitlements_event4` FOREIGN KEY (`Event4`) REFERENCES `events` (`eventID`) ON DELETE SET NULL,
  CONSTRAINT `FK_entitlements_type1` FOREIGN KEY (`CapChangeType1`) REFERENCES `capchangetypes` (`CapChangeType`),
  CONSTRAINT `FK_entitlements_type2` FOREIGN KEY (`CapChangeType2`) REFERENCES `capchangetypes` (`CapChangeType`),
  CONSTRAINT `FK_entitlements_type3` FOREIGN KEY (`CapChangeType3`) REFERENCES `capchangetypes` (`CapChangeType`),
  CONSTRAINT `FK_entitlements_type4` FOREIGN KEY (`CapChangeType4`) REFERENCES `capchangetypes` (`CapChangeType`)
) ENGINE=InnoDB AUTO_INCREMENT=122095 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `entlive`
--

DROP TABLE IF EXISTS `entlive`;
/*!50001 DROP VIEW IF EXISTS `entlive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entlive` AS SELECT 
 1 AS `importID`,
 1 AS `daily`,
 1 AS `AutoProcess`,
 1 AS `IgnoreRow`,
 1 AS `STOCK`,
 1 AS `SEHKID`,
 1 AS `IssueID`,
 1 AS `STK_NAME`,
 1 AS `TYPE`,
 1 AS `Announced`,
 1 AS `YearEnd`,
 1 AS `DETAILS_1`,
 1 AS `DETAILS_2`,
 1 AS `DETAILS_3`,
 1 AS `DETAILS_4`,
 1 AS `DETAILS_5`,
 1 AS `DETAILS_6`,
 1 AS `BookCloseFr`,
 1 AS `BookCloseTo`,
 1 AS `PayDate`,
 1 AS `ExDate`,
 1 AS `CapChangeType1`,
 1 AS `Curr1`,
 1 AS `Price1`,
 1 AS `PriceHKD1`,
 1 AS `Old1`,
 1 AS `New1`,
 1 AS `Date1`,
 1 AS `IssueID1`,
 1 AS `Descrip1`,
 1 AS `CapChangeType2`,
 1 AS `Curr2`,
 1 AS `Price2`,
 1 AS `PriceHKD2`,
 1 AS `Old2`,
 1 AS `New2`,
 1 AS `Date2`,
 1 AS `IssueID2`,
 1 AS `Descrip2`,
 1 AS `CapChangeType3`,
 1 AS `Curr3`,
 1 AS `Price3`,
 1 AS `PriceHKD3`,
 1 AS `Old3`,
 1 AS `New3`,
 1 AS `Date3`,
 1 AS `IssueID3`,
 1 AS `Descrip3`,
 1 AS `CapChangeType4`,
 1 AS `Curr4`,
 1 AS `Price4`,
 1 AS `PriceHKD4`,
 1 AS `Old4`,
 1 AS `New4`,
 1 AS `Date4`,
 1 AS `IssueID4`,
 1 AS `Descrip4`,
 1 AS `Event1`,
 1 AS `Event2`,
 1 AS `Event3`,
 1 AS `Event4`,
 1 AS `modified`,
 1 AS `col1`,
 1 AS `col2`,
 1 AS `col3`,
 1 AS `col4`,
 1 AS `col5`,
 1 AS `col6`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `errorlog`
--

DROP TABLE IF EXISTS `errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `errorlog` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `proc` varchar(45) DEFAULT NULL,
  `descrip` varchar(1000) DEFAULT NULL,
  `errTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ess`
--

DROP TABLE IF EXISTS `ess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ess` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `eName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phase` tinyint unsigned NOT NULL DEFAULT '1',
  `amt` int NOT NULL,
  `heads` int NOT NULL,
  `orgID` int unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `name` (`eName`,`cName`),
  KEY `ESSpersons_idx` (`orgID`),
  FULLTEXT KEY `ftn` (`eName`)
) ENGINE=InnoDB AUTO_INCREMENT=304606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Employment Support Subsidy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `eventID` int unsigned NOT NULL AUTO_INCREMENT,
  `importID` int unsigned DEFAULT NULL,
  `subEnt` tinyint unsigned DEFAULT NULL,
  `issueID` mediumint unsigned NOT NULL,
  `announced` date DEFAULT NULL,
  `eventType` tinyint unsigned NOT NULL,
  `yearEnd` date DEFAULT NULL,
  `exDate` date DEFAULT NULL,
  `bookCloseFr` date DEFAULT NULL,
  `bookCloseTo` date DEFAULT NULL,
  `acceptDate` date DEFAULT NULL,
  `distDate` date DEFAULT NULL,
  `new` double unsigned DEFAULT NULL,
  `old` double unsigned DEFAULT NULL,
  `currID` tinyint unsigned DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `priceHKD` double unsigned DEFAULT NULL,
  `issue2` mediumint unsigned DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cumDate` date DEFAULT NULL,
  `cumPrice` float unsigned DEFAULT NULL,
  `afterEvent` int unsigned DEFAULT NULL,
  `adjust` double unsigned DEFAULT NULL,
  `cancelDate` date DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FXdate` date DEFAULT NULL COMMENT 'date for FX estimate',
  `tempEntry` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`eventID`) USING BTREE,
  KEY `issue2_issue_idx` (`issue2`),
  KEY `issueCum` (`issueID`,`cumDate`,`eventType`),
  KEY `issueEx` (`issueID`,`exDate`,`eventType`),
  KEY `importCol` (`importID`,`subEnt`),
  KEY `capChangeType_idx` (`eventType`),
  CONSTRAINT `capChangeType` FOREIGN KEY (`eventType`) REFERENCES `capchangetypes` (`CapChangeType`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_events_entit` FOREIGN KEY (`importID`) REFERENCES `entitlements` (`importID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `issue1_issue` FOREIGN KEY (`issueID`) REFERENCES `issue` (`ID1`),
  CONSTRAINT `issue2_issue` FOREIGN KEY (`issue2`) REFERENCES `issue` (`ID1`)
) ENGINE=InnoDB AUTO_INCREMENT=173040 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filingcodes`
--

DROP TABLE IF EXISTS `filingcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filingcodes` (
  `repID` mediumint unsigned NOT NULL,
  `sc` mediumint unsigned NOT NULL,
  PRIMARY KEY (`repID`,`sc`),
  CONSTRAINT `filingcodes_reps` FOREIGN KEY (`repID`) REFERENCES `repfilings` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='one or more stock codes for each filing in repfilings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `sched` datetime NOT NULL,
  `flightNo` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual` datetime DEFAULT NULL,
  `terminal` tinyint unsigned DEFAULT NULL,
  `aisle` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gate` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stand` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baggage` tinyint unsigned DEFAULT NULL,
  `hall` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival` bit(1) NOT NULL,
  `cargo` bit(1) NOT NULL DEFAULT b'0',
  `cancelled` bit(1) NOT NULL DEFAULT b'0',
  `lastSeen` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `schedFNarr` (`sched`,`flightNo`,`arrival`)
) ENGINE=InnoDB AUTO_INCREMENT=1164518 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forexrates`
--

DROP TABLE IF EXISTS `forexrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forexrates` (
  `currpair` tinyint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `rate` float unsigned NOT NULL,
  PRIMARY KEY (`currpair`,`atDate`) USING BTREE,
  CONSTRAINT `FK_currpair` FOREIGN KEY (`currpair`) REFERENCES `currpair` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `freg`
--

DROP TABLE IF EXISTS `freg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freg` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `orgID` int unsigned NOT NULL,
  `hostDom` smallint unsigned NOT NULL,
  `regID` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `regDate` date DEFAULT NULL,
  `cesDate` date DEFAULT NULL,
  `regUpd` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `freg-2` (`hostDom`,`regID`),
  KEY `freg-org_idx` (`orgID`),
  CONSTRAINT `freg-dom` FOREIGN KEY (`hostDom`) REFERENCES `domiciles` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `freg-org` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=37132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='overseas registrations of companies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `freq`
--

DROP TABLE IF EXISTS `freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freq` (
  `ID` tinyint unsigned NOT NULL,
  `fdes` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frstatus`
--

DROP TABLE IF EXISTS `frstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frstatus` (
  `ID` tinyint unsigned NOT NULL,
  `des` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transport Dept FIRST_REG_STATUS (up to 2018-12-31) and FIRST_REG_STATUS_REV thereafter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fueltype`
--

DROP TABLE IF EXISTS `fueltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fueltype` (
  `ID` tinyint unsigned NOT NULL,
  `des` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `friendly` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Fuel type for Transport Department tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `govac`
--

DROP TABLE IF EXISTS `govac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `govac` (
  `d` date NOT NULL,
  `govItem` smallint unsigned NOT NULL,
  `ann` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Annual (true) or quarterly (false)',
  `est` int NOT NULL DEFAULT '0',
  `act` int NOT NULL DEFAULT '0',
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`d`,`govItem`,`ann`),
  KEY `govac_idx` (`govItem`),
  CONSTRAINT `govac` FOREIGN KEY (`govItem`) REFERENCES `govitems` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Accounts of the HKSAR Government';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `govadopt`
--

DROP TABLE IF EXISTS `govadopt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `govadopt` (
  `tree` smallint unsigned NOT NULL COMMENT 'The ID of the tree. Will be specified with a govitem when calling for a presentation. One govitem can be in multiple trees, but each govitem has a default parentID if not in this table.',
  `govitem` smallint unsigned NOT NULL,
  `parentID` smallint unsigned NOT NULL COMMENT 'The govitem of the adoptive parent',
  `txt` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'alternative text to display in this context',
  `short` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'alternative description for graphs in this tree',
  `priority` tinyint DEFAULT NULL,
  PRIMARY KEY (`tree`,`govitem`),
  KEY `FKadoptitems` (`govitem`),
  CONSTRAINT `FKadoptitems` FOREIGN KEY (`govitem`) REFERENCES `govitems` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Record alternative groupings of govitems with adoptive parentID for different trees';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `govitems`
--

DROP TABLE IF EXISTS `govitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `govitems` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `parentID` smallint unsigned DEFAULT NULL,
  `h1` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h3` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `govtxt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The text used by Govt in its files. Do not amend even for typos, as we often use it for matching when no head-numbers are provided. Use txt field for our version.',
  `txt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstd` date NOT NULL COMMENT 'First date for which records under this heading are complete (e.g. Stamp Duty may go back longer than all Internal Revenue).',
  `priority` tinyint NOT NULL DEFAULT '0' COMMENT 'The priority for display. Typically 0 but -1 for "Other" items. Allows ordered layouts.',
  `approved` int unsigned DEFAULT NULL COMMENT 'Approved amount of budget for capital project',
  `rev` bit(1) NOT NULL DEFAULT b'0' COMMENT '0=expenditure 1=revenue',
  `reimb` bit(1) NOT NULL DEFAULT b'0' COMMENT 'In expenditure, whether this is a reimbursed lineitem ',
  `head` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this is just a heading (1) or has data(0)',
  `transfer` bit(1) NOT NULL DEFAULT b'0' COMMENT 'The item is a transfer between funds, or an "additional commitment" line which is only used in estimates, not actual accounts. Hide from display.',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `heads` (`rev`,`h1`,`h2`,`h3`) /*!80000 INVISIBLE */,
  KEY `parentID` (`parentID`),
  KEY `tranferReimburse` (`transfer`,`reimb`),
  FULLTEXT KEY `search` (`txt`)
) ENGINE=InnoDB AUTO_INCREMENT=6639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Items in government accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `heldas`
--

DROP TABLE IF EXISTS `heldas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heldas` (
  `ID` tinyint unsigned NOT NULL,
  `heldAsTxt` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkcrtypes`
--

DROP TABLE IF EXISTS `hkcrtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkcrtypes` (
  `prefix` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRtype` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgType` tinyint unsigned NOT NULL,
  PRIMARY KEY (`prefix`),
  KEY `orgType_idx` (`orgType`),
  CONSTRAINT `orgType` FOREIGN KEY (`orgType`) REFERENCES `orgtypes` (`orgType`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Org types based on Companies Registry prefix';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `hkdelisted`
--

DROP TABLE IF EXISTS `hkdelisted`;
/*!50001 DROP VIEW IF EXISTS `hkdelisted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hkdelisted` AS SELECT 
 1 AS `Name`,
 1 AS `DelistDate`,
 1 AS `PersonID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hkdistrict`
--

DROP TABLE IF EXISTS `hkdistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkdistrict` (
  `ID` tinyint unsigned NOT NULL,
  `en` varchar(17) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cn` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regionID` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `en_UNIQUE` (`en`),
  KEY `district_region_idx` (`regionID`),
  CONSTRAINT `district_region` FOREIGN KEY (`regionID`) REFERENCES `hkregion` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='HK districts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkexdata`
--

DROP TABLE IF EXISTS `hkexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkexdata` (
  `StockCode` varchar(5) NOT NULL,
  `Domicile` varchar(50) DEFAULT NULL,
  `BoardLot` int unsigned DEFAULT NULL,
  `NomPrice` double DEFAULT NULL,
  `PriceDate` datetime DEFAULT NULL,
  `IssueID` mediumint unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IssueID`),
  KEY `FK_hkexdata_issue` (`IssueID`),
  CONSTRAINT `hkexdata_issue` FOREIGN KEY (`IssueID`) REFERENCES `issue` (`ID1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `hklistedordsever`
--

DROP TABLE IF EXISTS `hklistedordsever`;
/*!50001 DROP VIEW IF EXISTS `hklistedordsever`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hklistedordsever` AS SELECT 
 1 AS `issueID`,
 1 AS `issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hklistedordsnow`
--

DROP TABLE IF EXISTS `hklistedordsnow`;
/*!50001 DROP VIEW IF EXISTS `hklistedordsnow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hklistedordsnow` AS SELECT 
 1 AS `issueID`,
 1 AS `issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hkmarketcapperstock`
--

DROP TABLE IF EXISTS `hkmarketcapperstock`;
/*!50001 DROP VIEW IF EXISTS `hkmarketcapperstock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hkmarketcapperstock` AS SELECT 
 1 AS `Issuer`,
 1 AS `StockCode`,
 1 AS `Outstanding`,
 1 AS `NomPrice`,
 1 AS `BoardLot`,
 1 AS `MarketCap`,
 1 AS `LotValue`,
 1 AS `Name`,
 1 AS `StockExID`,
 1 AS `Type`,
 1 AS `PriceDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hkports`
--

DROP TABLE IF EXISTS `hkports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkports` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='HK immigration control points';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkpx`
--

DROP TABLE IF EXISTS `hkpx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkpx` (
  `d` date NOT NULL,
  `port` tinyint unsigned NOT NULL,
  `pxType` tinyint unsigned NOT NULL,
  `arrivals` int NOT NULL DEFAULT '0' COMMENT '0=departure, 1=arrival',
  `departures` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`d`,`port`,`pxType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Passenger traffic at HK control points';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkpxtypes`
--

DROP TABLE IF EXISTS `hkpxtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkpxtypes` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Types of passenger in HK immigration statistics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hkregion`
--

DROP TABLE IF EXISTS `hkregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hkregion` (
  `ID` tinyint unsigned NOT NULL,
  `en` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cn` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `en_UNIQUE` (`en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The 3 regions of HK';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `hkstocksbyboardlot`
--

DROP TABLE IF EXISTS `hkstocksbyboardlot`;
/*!50001 DROP VIEW IF EXISTS `hkstocksbyboardlot`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hkstocksbyboardlot` AS SELECT 
 1 AS `BoardLot`,
 1 AS `Stocks`,
 1 AS `mcapM`,
 1 AS `shares`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inedhk`
--

DROP TABLE IF EXISTS `inedhk`;
/*!50001 DROP VIEW IF EXISTS `inedhk`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inedhk` AS SELECT 
 1 AS `Director`,
 1 AS `Company`,
 1 AS `ApptDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inedhkdistncos`
--

DROP TABLE IF EXISTS `inedhkdistncos`;
/*!50001 DROP VIEW IF EXISTS `inedhkdistncos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inedhkdistncos` AS SELECT 
 1 AS `NumberOfSeats`,
 1 AS `NumberOfCos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inedhkdistnpeople`
--

DROP TABLE IF EXISTS `inedhkdistnpeople`;
/*!50001 DROP VIEW IF EXISTS `inedhkdistnpeople`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inedhkdistnpeople` AS SELECT 
 1 AS `NumberOfSeats`,
 1 AS `NumberOfPeople`,
 1 AS `Female`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inedhkperco`
--

DROP TABLE IF EXISTS `inedhkperco`;
/*!50001 DROP VIEW IF EXISTS `inedhkperco`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inedhkperco` AS SELECT 
 1 AS `PersonID`,
 1 AS `NumberOfSeats`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inedhkperperson`
--

DROP TABLE IF EXISTS `inedhkperperson`;
/*!50001 DROP VIEW IF EXISTS `inedhkperperson`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inedhkperperson` AS SELECT 
 1 AS `NumberOfSeats`,
 1 AS `Director`,
 1 AS `Name`,
 1 AS `Sex`,
 1 AS `YOB`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inednow`
--

DROP TABLE IF EXISTS `inednow`;
/*!50001 DROP VIEW IF EXISTS `inednow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inednow` AS SELECT 
 1 AS `Director`,
 1 AS `Company`,
 1 AS `ApptDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `ID1` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `issuer` int unsigned NOT NULL,
  `SEHKID` int DEFAULT NULL,
  `typeID` tinyint unsigned NOT NULL,
  `expmat` date DEFAULT NULL,
  `expAcc` tinyint unsigned DEFAULT NULL,
  `SEHKcurr` tinyint unsigned DEFAULT NULL COMMENT 'currency on SEHK if not HKD',
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  `coupon` float DEFAULT NULL,
  `floating` bit(1) DEFAULT b'0',
  `HKEXwvr` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this is the "class carrying weighted voting rights" not listed but outstanding shares are disclosed in HKEXdata as either class_A or class_B',
  PRIMARY KEY (`ID1`),
  KEY `FK_issue_orgs` (`issuer`),
  CONSTRAINT `FK_issue_orgs` FOREIGN KEY (`issuer`) REFERENCES `organisations` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36612 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `issuedlatest`
--

DROP TABLE IF EXISTS `issuedlatest`;
/*!50001 DROP VIEW IF EXISTS `issuedlatest`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issuedlatest` AS SELECT 
 1 AS `issueID`,
 1 AS `outstanding`,
 1 AS `atDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `issuedlatestdate`
--

DROP TABLE IF EXISTS `issuedlatestdate`;
/*!50001 DROP VIEW IF EXISTS `issuedlatestdate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issuedlatestdate` AS SELECT 
 1 AS `issueID`,
 1 AS `maxDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `issuedshares`
--

DROP TABLE IF EXISTS `issuedshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuedshares` (
  `issueID` mediumint unsigned NOT NULL DEFAULT '0',
  `atDate` date NOT NULL,
  `outstanding` double DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`issueID`,`atDate`),
  CONSTRAINT `issuedshares_issue` FOREIGN KEY (`issueID`) REFERENCES `issue` (`ID1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `issuers2003`
--

DROP TABLE IF EXISTS `issuers2003`;
/*!50001 DROP VIEW IF EXISTS `issuers2003`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issuers2003` AS SELECT 
 1 AS `personID`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `issues2003`
--

DROP TABLE IF EXISTS `issues2003`;
/*!50001 DROP VIEW IF EXISTS `issues2003`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issues2003` AS SELECT 
 1 AS `personID`,
 1 AS `issueID`,
 1 AS `name`,
 1 AS `typeShort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `issuesforhku`
--

DROP TABLE IF EXISTS `issuesforhku`;
/*!50001 DROP VIEW IF EXISTS `issuesforhku`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issuesforhku` AS SELECT 
 1 AS `personID`,
 1 AS `name`,
 1 AS `issueID`,
 1 AS `typeShort`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jails`
--

DROP TABLE IF EXISTS `jails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jails` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jailtypes`
--

DROP TABLE IF EXISTS `jailtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jailtypes` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `txt` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `txt` (`txt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `judgments`
--

DROP TABLE IF EXISTS `judgments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judgments` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `uploaded` date DEFAULT NULL,
  `jDate` date DEFAULT NULL,
  `DIS` int unsigned NOT NULL COMMENT 'page number for link to web page of the case',
  `caseNum` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caseType` tinyint unsigned DEFAULT NULL,
  `neutCit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parties` varchar(511) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rep` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` bit(1) NOT NULL DEFAULT b'0',
  `RV` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this judgment is a Reasons for Verdict',
  `RS` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this judgment is a Reasons for Sentence',
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `caseYear` smallint unsigned DEFAULT NULL,
  `caseSeq` mediumint unsigned DEFAULT NULL,
  `ncYear` smallint unsigned DEFAULT NULL,
  `ncSeq` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DIS` (`DIS`),
  KEY `judgmentsCaseType_idx` (`caseType`),
  KEY `caseNum` (`caseType`,`caseYear`,`caseSeq`),
  CONSTRAINT `judgmentsCaseType` FOREIGN KEY (`caseType`) REFERENCES `casetypes` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=156863 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Details captured from Judiciary Newly Added Judgments page';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `landreg`
--

DROP TABLE IF EXISTS `landreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landreg` (
  `statID` smallint unsigned NOT NULL,
  `d` date NOT NULL,
  `units` int NOT NULL,
  `consid` int DEFAULT NULL,
  PRIMARY KEY (`statID`,`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `lasthlddate`
--

DROP TABLE IF EXISTS `lasthlddate`;
/*!50001 DROP VIEW IF EXISTS `lasthlddate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lasthlddate` AS SELECT 
 1 AS `maxDate`,
 1 AS `issueID`,
 1 AS `holderID`,
 1 AS `heldAs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lastmreturn`
--

DROP TABLE IF EXISTS `lastmreturn`;
/*!50001 DROP VIEW IF EXISTS `lastmreturn`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lastmreturn` AS SELECT 
 1 AS `stockcode`,
 1 AS `name`,
 1 AS `typeShort`,
 1 AS `maxDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licrec`
--

DROP TABLE IF EXISTS `licrec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licrec` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `staffID` int unsigned NOT NULL,
  `orgID` int unsigned NOT NULL,
  `role` tinyint unsigned NOT NULL COMMENT '0=rep, 1=RO',
  `actType` tinyint unsigned NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `licrecOrgs_idx` (`orgID`),
  KEY `licrecPeople_idx` (`staffID`),
  KEY `licrecActs_idx` (`actType`) /*!80000 INVISIBLE */,
  CONSTRAINT `licrecActs` FOREIGN KEY (`actType`) REFERENCES `activity` (`ID`),
  CONSTRAINT `licrecOrgs` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`),
  CONSTRAINT `licrecPeople` FOREIGN KEY (`staffID`) REFERENCES `people` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=858221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='detailed SFC licence records for staff';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licrecsum`
--

DROP TABLE IF EXISTS `licrecsum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licrecsum` (
  `actType` tinyint unsigned NOT NULL COMMENT 'activity type',
  `d` date NOT NULL,
  `total` mediumint unsigned NOT NULL COMMENT 'DISTINCT licensees',
  `RO` mediumint unsigned NOT NULL COMMENT 'DISTINCT responsible officers',
  PRIMARY KEY (`actType`,`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Summary table of licensees to speed up the all-firms page SFChistall';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lirorgteam`
--

DROP TABLE IF EXISTS `lirorgteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lirorgteam` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `orgID` int unsigned NOT NULL,
  `teamID` tinyint unsigned NOT NULL,
  `firstseen` date NOT NULL,
  `lastseen` date NOT NULL,
  `dead` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Team number for each HK-listed company.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lirroles`
--

DROP TABLE IF EXISTS `lirroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lirroles` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lirstaff`
--

DROP TABLE IF EXISTS `lirstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lirstaff` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `n1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` int unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lirteams`
--

DROP TABLE IF EXISTS `lirteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lirteams` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `teamno` smallint unsigned NOT NULL COMMENT 'the number used by the Listing Division',
  `firstseen` date DEFAULT NULL,
  `lastseen` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `teamno` (`teamno`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The teams of the Listing Division';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lirteamstaff`
--

DROP TABLE IF EXISTS `lirteamstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lirteamstaff` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `teamID` tinyint unsigned NOT NULL,
  `staffID` smallint unsigned NOT NULL,
  `posID` tinyint unsigned NOT NULL,
  `firstSeen` date NOT NULL,
  `lastSeen` date NOT NULL,
  `dead` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `FKlirteams` (`teamID`),
  KEY `FKlirstaff_idx` (`staffID`),
  CONSTRAINT `FKlirstaff` FOREIGN KEY (`staffID`) REFERENCES `lirstaff` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKlirteams` FOREIGN KEY (`teamID`) REFERENCES `lirteams` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The staff members of each Listing team. They may change rank without changing team';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `listedcoshk`
--

DROP TABLE IF EXISTS `listedcoshk`;
/*!50001 DROP VIEW IF EXISTS `listedcoshk`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listedcoshk` AS SELECT 
 1 AS `issuer`,
 1 AS `stockExID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listedcoshkadv`
--

DROP TABLE IF EXISTS `listedcoshkadv`;
/*!50001 DROP VIEW IF EXISTS `listedcoshkadv`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listedcoshkadv` AS SELECT 
 1 AS `orgID`,
 1 AS `name`,
 1 AS `advDone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listedcoshkall`
--

DROP TABLE IF EXISTS `listedcoshkall`;
/*!50001 DROP VIEW IF EXISTS `listedcoshkall`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listedcoshkall` AS SELECT 
 1 AS `personID`,
 1 AS `domicile`,
 1 AS `incDate`,
 1 AS `stockExID`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listedcoshkever`
--

DROP TABLE IF EXISTS `listedcoshkever`;
/*!50001 DROP VIEW IF EXISTS `listedcoshkever`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listedcoshkever` AS SELECT 
 1 AS `issuer`,
 1 AS `firstTrade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listedfirsttrade`
--

DROP TABLE IF EXISTS `listedfirsttrade`;
/*!50001 DROP VIEW IF EXISTS `listedfirsttrade`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listedfirsttrade` AS SELECT 
 1 AS `PersonID`,
 1 AS `FirstTradeDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `stockExID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `shortName` varchar(10) DEFAULT NULL,
  `longName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stockExID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `listingsforhku`
--

DROP TABLE IF EXISTS `listingsforhku`;
/*!50001 DROP VIEW IF EXISTS `listingsforhku`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listingsforhku` AS SELECT 
 1 AS `personID`,
 1 AS `name`,
 1 AS `typeShort`,
 1 AS `issueID`,
 1 AS `stockCode`,
 1 AS `FirstTradeDate`,
 1 AS `DelistDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='For storing locations and logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `lookupadviser`
--

DROP TABLE IF EXISTS `lookupadviser`;
/*!50001 DROP VIEW IF EXISTS `lookupadviser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lookupadviser` AS SELECT 
 1 AS `PersonID`,
 1 AS `Name1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lookupposition`
--

DROP TABLE IF EXISTS `lookupposition`;
/*!50001 DROP VIEW IF EXISTS `lookupposition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lookupposition` AS SELECT 
 1 AS `PositionID`,
 1 AS `PosShort`,
 1 AS `PosLong`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lookuprelationship`
--

DROP TABLE IF EXISTS `lookuprelationship`;
/*!50001 DROP VIEW IF EXISTS `lookuprelationship`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lookuprelationship` AS SELECT 
 1 AS `ID`,
 1 AS `Relation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lookuprole`
--

DROP TABLE IF EXISTS `lookuprole`;
/*!50001 DROP VIEW IF EXISTS `lookuprole`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lookuprole` AS SELECT 
 1 AS `RoleID`,
 1 AS `Role`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lsadm`
--

DROP TABLE IF EXISTS `lsadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsadm` (
  `lsid` int unsigned NOT NULL,
  `lsdom` tinyint unsigned NOT NULL,
  `adm` date NOT NULL,
  `admAcc` tinyint unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lsid`,`lsdom`),
  KEY `lsadm-lsdom_idx` (`lsdom`),
  CONSTRAINT `lsadm-lsdom` FOREIGN KEY (`lsdom`) REFERENCES `lsdoms` (`lsdom`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='LawSoc admissions in other jurisdictions ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsalias`
--

DROP TABLE IF EXISTS `lsalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsalias` (
  `lsid` int unsigned NOT NULL,
  `aliase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aliasc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstSeen` datetime DEFAULT NULL,
  PRIMARY KEY (`lsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsdoms`
--

DROP TABLE IF EXISTS `lsdoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsdoms` (
  `lsdom` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `domName` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domID` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`lsdom`),
  UNIQUE KEY `domName_UNIQUE` (`domName`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Domiciles for Law Society admission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsemps`
--

DROP TABLE IF EXISTS `lsemps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsemps` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `empName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personID` int unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `lsemps-orgs_idx` (`personID`),
  CONSTRAINT `lsemps-orgs` FOREIGN KEY (`personID`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=2259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Non-law firms named as employers by Law Soc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsjobs`
--

DROP TABLE IF EXISTS `lsjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsjobs` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `lsppl` int unsigned NOT NULL,
  `empID` int unsigned NOT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `lsjobs-emps_idx` (`empID`),
  KEY `lsjobs-lsppl_idx` (`lsppl`),
  CONSTRAINT `lsjobs-emps` FOREIGN KEY (`empID`) REFERENCES `lsemps` (`ID`),
  CONSTRAINT `lsjobs-lsppl` FOREIGN KEY (`lsppl`) REFERENCES `lsppl` (`lsid`)
) ENGINE=InnoDB AUTO_INCREMENT=14205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Jobs of Law Society solicitors not in law firms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsorgs`
--

DROP TABLE IF EXISTS `lsorgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsorgs` (
  `lsid` int unsigned NOT NULL,
  `lsename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lscname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use as a matching device when a firm name changes',
  `name1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orgType` tinyint unsigned DEFAULT NULL,
  `personID` int unsigned DEFAULT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`lsid`),
  KEY `lsorgs-orgs_idx` (`personID`),
  CONSTRAINT `lsorgs-orgs` FOREIGN KEY (`personID`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Law Society member firms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsposts`
--

DROP TABLE IF EXISTS `lsposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsposts` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `lsorg` int unsigned NOT NULL,
  `lsppl` int unsigned NOT NULL,
  `post` tinyint unsigned NOT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `posts-ppl_idx` (`lsppl`),
  KEY `posts-orgs_idx` (`lsorg`),
  CONSTRAINT `lsposts-lsorgs` FOREIGN KEY (`lsorg`) REFERENCES `lsorgs` (`lsid`),
  CONSTRAINT `lsposts-lsppl` FOREIGN KEY (`lsppl`) REFERENCES `lsppl` (`lsid`)
) ENGINE=InnoDB AUTO_INCREMENT=50084 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Positions of people in Law Society member firms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsppl`
--

DROP TABLE IF EXISTS `lsppl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsppl` (
  `lsid` int unsigned NOT NULL,
  `lsename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lscname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admHK` date DEFAULT NULL,
  `admAcc` tinyint DEFAULT NULL,
  `name1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personID` int unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`lsid`),
  KEY `lsppl-people_idx` (`personID`),
  KEY `lsppl-name` (`name1`,`name2`,`admHK`),
  CONSTRAINT `lsppl-people` FOREIGN KEY (`personID`) REFERENCES `people` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Law Society people';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsroles`
--

DROP TABLE IF EXISTS `lsroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lsroles` (
  `ID` tinyint NOT NULL,
  `posID` smallint unsigned NOT NULL,
  `LStxt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketsforweb`
--

DROP TABLE IF EXISTS `marketsforweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketsforweb` (
  `StockExID` tinyint unsigned NOT NULL DEFAULT '0',
  `Order` tinyint DEFAULT NULL,
  PRIMARY KEY (`StockExID`),
  CONSTRAINT `FK_marketsforweb_listings` FOREIGN KEY (`StockExID`) REFERENCES `listings` (`stockExID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mergedpersons`
--

DROP TABLE IF EXISTS `mergedpersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mergedpersons` (
  `oldp` int unsigned NOT NULL,
  `newp` int unsigned NOT NULL,
  `merged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oldp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Map persons who have been merged from their old personID to the new one. Can be chained. Used to forward web pages from old links.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `missingage`
--

DROP TABLE IF EXISTS `missingage`;
/*!50001 DROP VIEW IF EXISTS `missingage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `missingage` AS SELECT 
 1 AS `name`,
 1 AS `name1`,
 1 AS `name2`,
 1 AS `apptDate`,
 1 AS `resDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `missingcr`
--

DROP TABLE IF EXISTS `missingcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missingcr` (
  `CR` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BRN` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Temporary table to record missing entities from the CR mapping CSV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `missingdistdate`
--

DROP TABLE IF EXISTS `missingdistdate`;
/*!50001 DROP VIEW IF EXISTS `missingdistdate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `missingdistdate` AS SELECT 
 1 AS `eventID`,
 1 AS `announced`,
 1 AS `name1`,
 1 AS `change`,
 1 AS `exDate`,
 1 AS `StockCode`,
 1 AS `distDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `missingexent`
--

DROP TABLE IF EXISTS `missingexent`;
/*!50001 DROP VIEW IF EXISTS `missingexent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `missingexent` AS SELECT 
 1 AS `eventID`,
 1 AS `announced`,
 1 AS `name1`,
 1 AS `change`,
 1 AS `StockCode`,
 1 AS `exDate`,
 1 AS `bookCloseFr`,
 1 AS `bookCloseTo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `missingorg`
--

DROP TABLE IF EXISTS `missingorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missingorg` (
  `orgID` int unsigned NOT NULL,
  `added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Orgs discovered when reading CR changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `months` (
  `MonthID` tinyint NOT NULL,
  `ShortName` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`MonthID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `namechanges`
--

DROP TABLE IF EXISTS `namechanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `namechanges` (
  `ID1` int unsigned NOT NULL AUTO_INCREMENT,
  `personID` int unsigned NOT NULL DEFAULT '0',
  `oldName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `oldcName` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dateChanged` date DEFAULT NULL,
  `dateAcc` tinyint DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nameHash` bigint unsigned DEFAULT NULL,
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID1`),
  KEY `oldName` (`oldName`) USING BTREE,
  KEY `dateName` (`dateChanged`,`oldName`) USING BTREE,
  KEY `FK_namechanges_org` (`personID`) USING BTREE,
  KEY `nameHash` (`nameHash`),
  FULLTEXT KEY `ftoldname` (`oldName`),
  CONSTRAINT `FK_namechanges_orgs` FOREIGN KEY (`personID`) REFERENCES `organisations` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59669047 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `namesex`
--

DROP TABLE IF EXISTS `namesex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `namesex` (
  `ID` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dsex` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=571609 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `personID` int unsigned NOT NULL,
  `UKCHnat` smallint unsigned NOT NULL,
  `latest` date NOT NULL,
  PRIMARY KEY (`personID`,`UKCHnat`),
  KEY `FK_nats_UKCHnats_idx` (`UKCHnat`),
  CONSTRAINT `FK_nats_people` FOREIGN KEY (`personID`) REFERENCES `people` (`PersonID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_nats_UKCHnats` FOREIGN KEY (`UKCHnat`) REFERENCES `ukchnats` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldcr`
--

DROP TABLE IF EXISTS `oldcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldcr` (
  `personID` int unsigned NOT NULL,
  `crn` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brn` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`personID`),
  UNIQUE KEY `CRn` (`crn`),
  CONSTRAINT `oldcr-org` FOREIGN KEY (`personID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The old company number for each entity in the Companies Registry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldcrf`
--

DROP TABLE IF EXISTS `oldcrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldcrf` (
  `fregID` int unsigned NOT NULL,
  `crn` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brn` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fregID`),
  UNIQUE KEY `CRn` (`crn`),
  CONSTRAINT `oldcrf-freg` FOREIGN KEY (`fregID`) REFERENCES `freg` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The old registry F- number for each foreign entity in the Companies Registry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldlots`
--

DROP TABLE IF EXISTS `oldlots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldlots` (
  `issueID` int unsigned NOT NULL,
  `until` date NOT NULL COMMENT 'first date of new board lot size',
  `lot` int unsigned NOT NULL,
  PRIMARY KEY (`issueID`,`until`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Old board lot sizes on HKEX, based on issueID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldlsjobs`
--

DROP TABLE IF EXISTS `oldlsjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldlsjobs` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `lsppl` int unsigned NOT NULL,
  `empID` int unsigned NOT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `lsjobs-emps_idx` (`empID`),
  KEY `lsjobs-lsppl_idx` (`lsppl`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Jobs of Law Society solicitors not in law firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldlsorgs`
--

DROP TABLE IF EXISTS `oldlsorgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldlsorgs` (
  `lsid` int unsigned NOT NULL,
  `lsename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lscname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use as a matching device when a firm name changes',
  `name1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orgType` tinyint unsigned DEFAULT NULL,
  `personID` int unsigned DEFAULT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`lsid`),
  KEY `lsorgs-orgs_idx` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Law Society member firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldlsposts`
--

DROP TABLE IF EXISTS `oldlsposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldlsposts` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `lsorg` int unsigned NOT NULL,
  `lsppl` int unsigned NOT NULL,
  `post` tinyint unsigned NOT NULL,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `posts-ppl_idx` (`lsppl`),
  KEY `posts-orgs_idx` (`lsorg`)
) ENGINE=InnoDB AUTO_INCREMENT=32768 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Positions of people in Law Society law firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldlsppl`
--

DROP TABLE IF EXISTS `oldlsppl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldlsppl` (
  `lsid` int unsigned NOT NULL,
  `lsename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lscname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admHK` date DEFAULT NULL,
  `admAcc` tinyint DEFAULT NULL,
  `name1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personID` int unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firstSeen` datetime DEFAULT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`lsid`),
  KEY `lsppl-people_idx` (`personID`),
  KEY `lsppl-name` (`name1`,`name2`,`admHK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Law Society people seen prior to renumbering on 2021-07-22. Retained for historical record only.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldsfcids`
--

DROP TABLE IF EXISTS `oldsfcids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldsfcids` (
  `SFCID` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SFCri` bit(1) NOT NULL DEFAULT b'0',
  `until` date DEFAULT NULL,
  `orgID` int unsigned NOT NULL,
  PRIMARY KEY (`SFCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Old SFCID of amalgamated company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olicrec`
--

DROP TABLE IF EXISTS `olicrec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olicrec` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `orgID` int unsigned NOT NULL,
  `ri` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether it was a registered institution (true) or licensed corp (false)',
  `actType` tinyint unsigned NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `licrecOrgs_idx` (`orgID`),
  KEY `licrecActs_idx` (`actType`),
  CONSTRAINT `olicrec_acts` FOREIGN KEY (`actType`) REFERENCES `activity` (`ID`),
  CONSTRAINT `olicrec_org` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=21217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='detailed SFC licence records for orgs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organisations`
--

DROP TABLE IF EXISTS `organisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisations` (
  `PersonID` int unsigned NOT NULL DEFAULT '0',
  `Domicile` smallint unsigned DEFAULT NULL,
  `Name1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgType` tinyint unsigned DEFAULT NULL,
  `SFCID` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cName` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SFCupd` datetime DEFAULT NULL,
  `incDate` date DEFAULT NULL,
  `disDate` date DEFAULT NULL,
  `disMode` tinyint unsigned DEFAULT NULL,
  `incAcc` tinyint unsigned DEFAULT NULL,
  `incID` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'incorporation number',
  `incUpd` datetime DEFAULT NULL COMMENT 'last update from place of incorporation',
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  `incName` bit(1) NOT NULL DEFAULT b'0' COMMENT 'true if name history from place of incorporation overrides ICRIS. Use when UK name is out of sync',
  `SFCri` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether the org is a registered institution',
  `UKURI` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether the UK company has been archived to the URI system in Companies House',
  `nameHash` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`PersonID`),
  UNIQUE KEY `Name` (`Name1`),
  UNIQUE KEY `SFCID` (`SFCID`),
  UNIQUE KEY `domincID` (`Domicile`,`incID`),
  KEY `FK_organisations_dom` (`Domicile`),
  KEY `FK_orgs_disMode` (`disMode`),
  KEY `nameHash` (`nameHash`),
  KEY `FK_orgs_orgtype_idx` (`orgType`),
  KEY `disdate_idx` (`disDate`),
  KEY `incDate_idx` (`incDate`),
  FULLTEXT KEY `ftn` (`Name1`),
  CONSTRAINT `FK_organisations_dom` FOREIGN KEY (`Domicile`) REFERENCES `domiciles` (`ID`),
  CONSTRAINT `FK_organisations_persons` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `FK_orgs_disMode` FOREIGN KEY (`disMode`) REFERENCES `dismodes` (`ID`),
  CONSTRAINT `FK_orgs_orgtype` FOREIGN KEY (`orgType`) REFERENCES `orgtypes` (`orgType`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgdata`
--

DROP TABLE IF EXISTS `orgdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgdata` (
  `PersonID` int unsigned NOT NULL DEFAULT '0',
  `YearEndDate` tinyint DEFAULT NULL,
  `YearEndMonth` tinyint DEFAULT NULL,
  `Addr1` varchar(255) DEFAULT NULL,
  `Addr2` varchar(127) DEFAULT NULL,
  `Addr3` varchar(127) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Territory` smallint unsigned DEFAULT NULL,
  `AddrDate` date DEFAULT NULL,
  `Notes` mediumtext,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `D&Afinal` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`PersonID`),
  KEY `FK_orgdata_terr` (`Territory`),
  CONSTRAINT `FK_orgdata_dom` FOREIGN KEY (`Territory`) REFERENCES `domiciles` (`ID`),
  CONSTRAINT `FK_orgdata_orgs` FOREIGN KEY (`PersonID`) REFERENCES `organisations` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgtypes`
--

DROP TABLE IF EXISTS `orgtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgtypes` (
  `orgType` tinyint unsigned NOT NULL,
  `typeName` varchar(45) NOT NULL,
  `HKCRname` varchar(45) DEFAULT NULL COMMENT 'name used in HK Companies Registry',
  PRIMARY KEY (`orgType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ownerprof`
--

DROP TABLE IF EXISTS `ownerprof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownerprof` (
  `orgID` int unsigned NOT NULL,
  `atDate` date NOT NULL,
  `dirStake` double NOT NULL DEFAULT '0',
  `famStake` double NOT NULL DEFAULT '0',
  `amStake` double NOT NULL DEFAULT '0',
  `govStake` double NOT NULL DEFAULT '0',
  `othStake` double NOT NULL DEFAULT '0',
  `OT` tinyint DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orgID`,`atDate`),
  CONSTRAINT `FKorg` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ownership profile of cos on snapshot dates, by voting rights';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ownerstks`
--

DROP TABLE IF EXISTS `ownerstks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownerstks` (
  `orgID` int unsigned NOT NULL,
  `atDate` date NOT NULL COMMENT 'the snapshot date (not necessarily the shareholding date which may be earlier)',
  `ultimID` int NOT NULL COMMENT 'the personID of the ultimate controller of this holding',
  `OT` tinyint unsigned NOT NULL COMMENT 'the owner type of the ultimID, relative to the issuer',
  `shares` double unsigned DEFAULT NULL,
  `stake` float unsigned DEFAULT NULL,
  `econShares` double unsigned DEFAULT NULL COMMENT 'the economic interest in shares of the ultimate controller of this holding',
  `econStake` float unsigned DEFAULT NULL,
  `weakest` float unsigned DEFAULT NULL,
  PRIMARY KEY (`orgID`,`atDate`,`ultimID`,`OT`),
  CONSTRAINT `ownerstksOrgs` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Attributed shares and holdings with economic shares and holdings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ownertype`
--

DROP TABLE IF EXISTS `ownertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownertype` (
  `ID` tinyint unsigned NOT NULL,
  `ownShort` varchar(2) NOT NULL,
  `ownLong` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Types of shareholders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `orgID` int unsigned NOT NULL,
  `pplID` int unsigned NOT NULL,
  `pRank` tinyint unsigned NOT NULL DEFAULT '1',
  `d` date NOT NULL,
  `currID` tinyint unsigned NOT NULL,
  `fees` mediumint DEFAULT NULL,
  `salary` mediumint DEFAULT NULL,
  `bonus` mediumint DEFAULT NULL,
  `retire` mediumint DEFAULT NULL,
  `share` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `userID` mediumint unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uq` (`orgID`,`pplID`,`pRank`,`d`),
  UNIQUE KEY `uq2` (`pplID`,`orgID`,`pRank`,`d`),
  KEY `payPpl_idx` (`pplID`) /*!80000 INVISIBLE */,
  KEY `payCurr_idx` (`currID`),
  KEY `payUser_idx` (`userID`),
  CONSTRAINT `payCurr` FOREIGN KEY (`currID`) REFERENCES `currencies` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `payOrg` FOREIGN KEY (`orgID`) REFERENCES `organisations` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `payPpl` FOREIGN KEY (`pplID`) REFERENCES `people` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `payUser` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=373861 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payerrors`
--

DROP TABLE IF EXISTS `payerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payerrors` (
  `docID` int unsigned NOT NULL,
  `errID` tinyint unsigned NOT NULL,
  `userID` mediumint NOT NULL,
  `reported` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `resolvedBy` mediumint unsigned DEFAULT NULL COMMENT 'userID of editor who cleared the error',
  `resolved` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`docID`,`errID`,`userID`),
  KEY `payErrType_idx` (`errID`),
  CONSTRAINT `payErrType` FOREIGN KEY (`errID`) REFERENCES `payerrtype` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='recording error reports from db editors of the pay table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payerrtype`
--

DROP TABLE IF EXISTS `payerrtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payerrtype` (
  `ID` tinyint unsigned NOT NULL,
  `txt` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Types of errors for pay-years in the pay table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payfx`
--

DROP TABLE IF EXISTS `payfx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payfx` (
  `d` date NOT NULL,
  `repCurr` tinyint unsigned NOT NULL,
  `dispCurr` tinyint unsigned NOT NULL,
  `f` float unsigned NOT NULL,
  PRIMARY KEY (`d`,`repCurr`,`dispCurr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Precomputed table for FX factors used in the pay displays';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paylineerrors`
--

DROP TABLE IF EXISTS `paylineerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paylineerrors` (
  `payID` int unsigned NOT NULL,
  `errID` tinyint unsigned NOT NULL DEFAULT '6',
  `userID` mediumint unsigned NOT NULL,
  `reported` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolvedBy` mediumint unsigned DEFAULT NULL COMMENT 'userID of editor who cleared the error',
  `resolved` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payID`,`errID`,`userID`),
  KEY `errType_idx` (`errID`),
  CONSTRAINT `errType` FOREIGN KEY (`errID`) REFERENCES `paylineerrtype` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pay` FOREIGN KEY (`payID`) REFERENCES `pay` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Report errors with individual paylines';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paylineerrtype`
--

DROP TABLE IF EXISTS `paylineerrtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paylineerrtype` (
  `ID` tinyint unsigned NOT NULL,
  `txt` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Types of errors for paylines in the pay table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payreview`
--

DROP TABLE IF EXISTS `payreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payreview` (
  `docID` int unsigned NOT NULL,
  `userID` mediumint unsigned NOT NULL,
  `submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`docID`,`userID`),
  KEY `userIDusers_idx` (`userID`),
  KEY `submitted` (`submitted` DESC),
  CONSTRAINT `docIDdocs` FOREIGN KEY (`docID`) REFERENCES `documents` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userIDusers` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Log submissions of editors for pay table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `PersonID` int unsigned NOT NULL DEFAULT '0',
  `Sex` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `YOB` smallint unsigned DEFAULT NULL,
  `MOB` tinyint unsigned DEFAULT NULL,
  `DOB` tinyint unsigned DEFAULT NULL,
  `YOD` smallint unsigned DEFAULT NULL,
  `MonD` tinyint unsigned DEFAULT NULL,
  `DOD` tinyint unsigned DEFAULT NULL,
  `TitleID` tinyint unsigned DEFAULT NULL COMMENT 'We don''t disclose this field on Webb-site but have maintained it internally to help find some individuals more easily when entering data in Access.',
  `Name1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name2` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `HKID` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Like all our data, HKIDs are collected from public sources, but we only display them on Webb-site if the HKIDsource column (containing a URL) is not null, and even then only with a "find it yourself" link to the source.',
  `SFCID` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SFCupd` datetime DEFAULT NULL,
  `SFClastDate` date DEFAULT NULL,
  `HKIDsource` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'URL for ID source',
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  `nameStem` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'used for rapid indexing of combined name1<space>name2 to speed up name lookup boxes in Access. This field is maintained by MySQL triggers.',
  `dn1` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'dn1 and dn2 contain stripped versions of name1 and name 2 without distinguishing extensions. These are used for search purposes such as "Find matching names". These fields are maintained by MySQL triggers.',
  `dn2` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'dn1 and dn2 contain stripped versions of name1 and name 2 without distinguishing extensions. These are used for search purposes such as "Find matching names". These fields are maintained by MySQL triggers.',
  `dSex` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`PersonID`),
  UNIQUE KEY `Name` (`Name1`,`Name2`),
  UNIQUE KEY `SFCID` (`SFCID`),
  UNIQUE KEY `HKID` (`HKID`),
  KEY `FK_people_titles` (`TitleID`),
  KEY `nameStem` (`nameStem`),
  KEY `dn` (`dn1`,`dn2`),
  KEY `birthday` (`MOB`,`DOB`),
  KEY `bYMD` (`YOB`,`MOB`,`DOB`),
  FULLTEXT KEY `ftdn` (`dn1`,`dn2`),
  FULLTEXT KEY `ftdn1` (`dn1`),
  FULLTEXT KEY `ftdn2` (`dn2`),
  CONSTRAINT `FK_people_persons` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `FK_people_titles` FOREIGN KEY (`TitleID`) REFERENCES `titles` (`TitleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `PersonID` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=34161205 DEFAULT CHARSET=latin1 COMMENT='A unique identifier assigned to either an entity in the organisations table or a human in the people table but not both. The original reason for this is that shareholders can be either people or orgs, and orgs can be directors, so we want to use the personID in the relevant tables.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personstories`
--

DROP TABLE IF EXISTS `personstories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personstories` (
  `PersonID` int unsigned NOT NULL,
  `StoryID` mediumint unsigned NOT NULL,
  PRIMARY KEY (`PersonID`,`StoryID`),
  KEY `FK_personstories_1` (`StoryID`),
  CONSTRAINT `FK_personstories_1` FOREIGN KEY (`StoryID`) REFERENCES `stories` (`StoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_personstories_persons` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `positionID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `posShort` varchar(21) NOT NULL,
  `posLong` varchar(70) NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `rank` tinyint unsigned NOT NULL,
  `LSrole` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`positionID`),
  KEY `FK_positions_status` (`status`),
  KEY `FK_positions_rank` (`rank`),
  CONSTRAINT `FK_positions_rank` FOREIGN KEY (`rank`) REFERENCES `rank` (`rankID`),
  CONSTRAINT `FK_positions_status` FOREIGN KEY (`status`) REFERENCES `status` (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prhblock`
--

DROP TABLE IF EXISTS `prhblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prhblock` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `en` varchar(127) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cn` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estateID` smallint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `est_block` (`estateID`,`en`),
  KEY `prhblock_estate_idx` (`estateID`),
  CONSTRAINT `prhblock_estate` FOREIGN KEY (`estateID`) REFERENCES `prhestate` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Blocks in HA Public Rental Housing estates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prhestate`
--

DROP TABLE IF EXISTS `prhestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prhestate` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `en` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'English name',
  `cn` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Chinese name',
  `district` tinyint unsigned NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `en_UNIQUE` (`en`),
  KEY `estate_district_idx` (`district`),
  CONSTRAINT `estate_district` FOREIGN KEY (`district`) REFERENCES `hkdistrict` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Housing Authority Public Rental Housing Estates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prhflat`
--

DROP TABLE IF EXISTS `prhflat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prhflat` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `blockID` int unsigned NOT NULL,
  `floor` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `flat` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` float unsigned NOT NULL DEFAULT '0' COMMENT 'internal floor area',
  `elevator` bit(1) NOT NULL DEFAULT b'1',
  `firstSeen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastSeen` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `block_flat` (`blockID`,`flat`),
  KEY `blockID_prhblock_idx` (`blockID`),
  CONSTRAINT `blockID_prhblock` FOREIGN KEY (`blockID`) REFERENCES `prhblock` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1011565 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prisoners`
--

DROP TABLE IF EXISTS `prisoners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prisoners` (
  `jail` tinyint unsigned NOT NULL,
  `d` date NOT NULL,
  `convict` smallint unsigned NOT NULL,
  `remand` smallint unsigned NOT NULL,
  `detain` smallint unsigned NOT NULL,
  PRIMARY KEY (`jail`,`d`),
  CONSTRAINT `prisoners_jail` FOREIGN KEY (`jail`) REFERENCES `jails` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prisorigin`
--

DROP TABLE IF EXISTS `prisorigin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prisorigin` (
  `d` date NOT NULL,
  `local` mediumint unsigned DEFAULT NULL COMMENT 'Persons holding HK Identity Card but excluding imported labour, foreign domestic helpers and consulate staff.',
  `MTM` mediumint unsigned DEFAULT NULL COMMENT 'Mainland Taiwan Macau',
  `nonlocal` mediumint unsigned DEFAULT NULL,
  PRIMARY KEY (`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='prisoners by origin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ptoperators`
--

DROP TABLE IF EXISTS `ptoperators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptoperators` (
  `ID` tinyint unsigned NOT NULL,
  `TDabbrev` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Public Transport Operators';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qt`
--

DROP TABLE IF EXISTS `qt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qt` (
  `qtID` tinyint unsigned NOT NULL,
  `d` date NOT NULL,
  `capUnit` smallint unsigned DEFAULT NULL,
  `useUnit` smallint unsigned DEFAULT NULL,
  `pax` smallint unsigned DEFAULT NULL,
  `availUnit` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`qtID`,`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Quarantine centre data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtbytype`
--

DROP TABLE IF EXISTS `qtbytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qtbytype` (
  `d` date NOT NULL,
  `cumCC` mediumint unsigned NOT NULL COMMENT 'Cumulative Close Contacts',
  `cumNCC` mediumint unsigned NOT NULL COMMENT 'Cumulative Non-Close Contacts',
  `CC` smallint unsigned NOT NULL COMMENT 'Close Contacts',
  `NCC` smallint unsigned NOT NULL COMMENT 'Non-Close Contacts',
  PRIMARY KEY (`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='People in govt quarantine centres';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtcentres`
--

DROP TABLE IF EXISTS `qtcentres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qtcentres` (
  `ID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Quarantine centres';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rank` (
  `rankID` tinyint unsigned NOT NULL DEFAULT '0',
  `rankText` varchar(50) NOT NULL,
  `rankShort` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rankID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `ID` tinyint unsigned NOT NULL DEFAULT '0',
  `relation` varchar(20) NOT NULL,
  `invRel` varchar(20) NOT NULL,
  `level` tinyint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relatives`
--

DROP TABLE IF EXISTS `relatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatives` (
  `Rel1` int unsigned NOT NULL,
  `RelID` tinyint unsigned NOT NULL DEFAULT '0',
  `Rel2` int unsigned NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Rel1`,`Rel2`),
  KEY `FK_relatives_relationships` (`RelID`),
  KEY `FK_rel2_people` (`Rel2`),
  CONSTRAINT `FK_relatives_Rel1` FOREIGN KEY (`Rel1`) REFERENCES `people` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `FK_relatives_Rel2` FOREIGN KEY (`Rel2`) REFERENCES `people` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `FK_relatives_relID` FOREIGN KEY (`RelID`) REFERENCES `relationships` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reorg`
--

DROP TABLE IF EXISTS `reorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reorg` (
  `fromOrg` int unsigned NOT NULL,
  `toOrg` int unsigned NOT NULL,
  `effDate` date DEFAULT NULL,
  `effAcc` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`fromOrg`,`toOrg`) USING BTREE,
  KEY `FK_toOrg` (`toOrg`),
  CONSTRAINT `FK_fromOrg` FOREIGN KEY (`fromOrg`) REFERENCES `organisations` (`PersonID`),
  CONSTRAINT `FK_toOrg` FOREIGN KEY (`toOrg`) REFERENCES `organisations` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `repdocs`
--

DROP TABLE IF EXISTS `repdocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repdocs` (
  `repID` mediumint unsigned NOT NULL,
  `file` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`repID`,`file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Document list from multi-file documents on display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `repfilings`
--

DROP TABLE IF EXISTS `repfilings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repfilings` (
  `ID` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `repFiled` datetime NOT NULL,
  `URL` varchar(255) NOT NULL,
  `descrip` varchar(511) NOT NULL,
  `descrip2` varchar(511) DEFAULT NULL,
  `docType` tinyint unsigned DEFAULT NULL,
  `fsize` mediumint unsigned DEFAULT NULL COMMENT 'file size in KB',
  `newsID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `newsID` (`newsID`),
  KEY `URL` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=157906 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `RoleID` tinyint NOT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `OneTime` bit(1) DEFAULT b'0',
  `roleLong` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdi`
--

DROP TABLE IF EXISTS `sdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdi` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `form` tinyint NOT NULL,
  `filing` int DEFAULT NULL,
  `name1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cName` varchar(40) DEFAULT NULL,
  `ccc` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `stockCode` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `stockName` varchar(255) DEFAULT NULL,
  `relDate` date DEFAULT NULL,
  `awDate` date DEFAULT NULL,
  `issueID` mediumint unsigned DEFAULT NULL,
  `dir` int unsigned DEFAULT NULL,
  `longShs1` double DEFAULT NULL,
  `longStk1` float DEFAULT NULL,
  `shortShs1` double DEFAULT NULL,
  `shortStk1` float DEFAULT NULL,
  `longShs2` double DEFAULT NULL,
  `longStk2` float DEFAULT NULL,
  `shortShs2` double DEFAULT NULL,
  `shortStk2` float DEFAULT NULL,
  `shsOut` double DEFAULT NULL,
  `signDate` date DEFAULT NULL,
  `curr` tinyint unsigned DEFAULT NULL,
  `hiPrice` float DEFAULT NULL,
  `avPrice` float DEFAULT NULL,
  `avCon` float DEFAULT NULL,
  `conCode` tinyint unsigned DEFAULT NULL,
  `serNo` char(16) DEFAULT NULL,
  `serNoAmend` char(16) DEFAULT NULL COMMENT 'this filing replaces the filing with this serial number',
  `serNoSuper` char(16) DEFAULT NULL COMMENT 'this filing is superseded by filing number serNoSuper',
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `formFiling` (`form`,`filing`),
  UNIQUE KEY `serNo_UNIQUE` (`serNo`),
  KEY `sdi_people_idx` (`dir`),
  KEY `nameIndex` (`name1`,`name2`),
  KEY `cName_idx` (`cName`),
  KEY `sdi_currency_idx` (`curr`),
  KEY `relDate` (`relDate`),
  KEY `sdi_issue_idx` (`issueID`),
  CONSTRAINT `sdi_currency` FOREIGN KEY (`curr`) REFERENCES `currencies` (`ID`),
  CONSTRAINT `sdi_issue` FOREIGN KEY (`issueID`) REFERENCES `issue` (`ID1`),
  CONSTRAINT `sdi_persons` FOREIGN KEY (`dir`) REFERENCES `persons` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=337949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdicap`
--

DROP TABLE IF EXISTS `sdicap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdicap` (
  `sdiID` int unsigned NOT NULL COMMENT 'ID of sdi table',
  `capID` smallint unsigned NOT NULL,
  `posType` tinyint unsigned NOT NULL,
  `shares` double NOT NULL,
  PRIMARY KEY (`sdiID`,`capID`,`posType`),
  KEY `sdicap_capacity_idx` (`capID`),
  CONSTRAINT `sdicap_capacity` FOREIGN KEY (`capID`) REFERENCES `capacity` (`ID`),
  CONSTRAINT `sdicap_sdi` FOREIGN KEY (`sdiID`) REFERENCES `sdi` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='box 16 (director) or 20 (substantial) of SDI forms - capacity in which interests are held';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdievent`
--

DROP TABLE IF EXISTS `sdievent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdievent` (
  `sdiID` int unsigned NOT NULL,
  `posType` tinyint NOT NULL,
  `reason` smallint unsigned DEFAULT NULL,
  `capBefore` smallint unsigned DEFAULT NULL,
  `capAfter` smallint unsigned DEFAULT NULL,
  `shsInv` double DEFAULT NULL,
  `probReason` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`sdiID`,`posType`),
  KEY `reason_idx` (`reason`),
  KEY `capbefore_cap_idx` (`capBefore`),
  KEY `capafter_cap_idx` (`capAfter`),
  CONSTRAINT `capafter_cap` FOREIGN KEY (`capAfter`) REFERENCES `capacity` (`ID`),
  CONSTRAINT `capbefore_cap` FOREIGN KEY (`capBefore`) REFERENCES `capacity` (`ID`),
  CONSTRAINT `reason` FOREIGN KEY (`reason`) REFERENCES `sdireason` (`ID`),
  CONSTRAINT `sdievent_sdi` FOREIGN KEY (`sdiID`) REFERENCES `sdi` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='from box 14 on form 3A';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdireason`
--

DROP TABLE IF EXISTS `sdireason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdireason` (
  `ID` smallint unsigned NOT NULL,
  `rsnSht` varchar(12) NOT NULL,
  `rsnLng` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sectypes`
--

DROP TABLE IF EXISTS `sectypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectypes` (
  `typeID` tinyint unsigned NOT NULL,
  `typeShort` varchar(8) NOT NULL,
  `typeLong` varchar(45) NOT NULL,
  `listOrd` tinyint unsigned NOT NULL,
  `canExpire` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`typeID`),
  UNIQUE KEY `typeShort` (`typeShort`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sfcnews`
--

DROP TABLE IF EXISTS `sfcnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sfcnews` (
  `StoryID` mediumint NOT NULL,
  `titleEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlEN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` datetime NOT NULL,
  `modTime` datetime NOT NULL,
  `titleTC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htmlTC` text COLLATE utf8mb4_unicode_ci,
  `SDA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'filename of the statement of disciplinary action stored in codocs folder',
  PRIMARY KEY (`StoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sfcshort`
--

DROP TABLE IF EXISTS `sfcshort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sfcshort` (
  `issueID` int NOT NULL,
  `atDate` date NOT NULL,
  `stockCode` mediumint unsigned NOT NULL,
  `stockName` varchar(20) NOT NULL,
  `shares` double NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`issueID`,`atDate`),
  UNIQUE KEY `dateIssue` (`atDate`,`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sholdings`
--

DROP TABLE IF EXISTS `sholdings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sholdings` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `holderID` int unsigned NOT NULL DEFAULT '0',
  `issueID` mediumint unsigned NOT NULL DEFAULT '0',
  `atDate` date DEFAULT NULL,
  `shares` double unsigned DEFAULT NULL,
  `stake` float DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` mediumint unsigned NOT NULL DEFAULT '0',
  `heldAs` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `quad` (`issueID`,`holderID`,`atDate`,`heldAs`),
  KEY `sholders_holder_idx` (`holderID`),
  KEY `sholders_issue_idx` (`issueID`),
  CONSTRAINT `sholders_holder` FOREIGN KEY (`holderID`) REFERENCES `persons` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `sholders_issue` FOREIGN KEY (`issueID`) REFERENCES `issue` (`ID1`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=172593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snaplog`
--

DROP TABLE IF EXISTS `snaplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snaplog` (
  `orgID` int unsigned NOT NULL,
  `snapDate` date NOT NULL,
  `userID` mediumint unsigned NOT NULL,
  `project` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0=holdings, 1=committees',
  `status` bit(1) NOT NULL DEFAULT b'0',
  `done` bit(1) NOT NULL DEFAULT b'0',
  `entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` text,
  PRIMARY KEY (`orgID`,`snapDate`,`userID`,`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sources` (
  `sourceID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `sourceName` varchar(255) NOT NULL,
  PRIMARY KEY (`sourceID`),
  UNIQUE KEY `sourceName` (`sourceName`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `st1cos`
--

DROP TABLE IF EXISTS `st1cos`;
/*!50001 DROP VIEW IF EXISTS `st1cos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st1cos` AS SELECT 
 1 AS `issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `st1dates`
--

DROP TABLE IF EXISTS `st1dates`;
/*!50001 DROP VIEW IF EXISTS `st1dates`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st1dates` AS SELECT 
 1 AS `issuer`,
 1 AS `befDate`,
 1 AS `aftDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `st2cos`
--

DROP TABLE IF EXISTS `st2cos`;
/*!50001 DROP VIEW IF EXISTS `st2cos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st2cos` AS SELECT 
 1 AS `issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `st2dates`
--

DROP TABLE IF EXISTS `st2dates`;
/*!50001 DROP VIEW IF EXISTS `st2dates`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st2dates` AS SELECT 
 1 AS `issuer`,
 1 AS `befDate`,
 1 AS `aftDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `st4cos`
--

DROP TABLE IF EXISTS `st4cos`;
/*!50001 DROP VIEW IF EXISTS `st4cos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st4cos` AS SELECT 
 1 AS `issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `st4dates`
--

DROP TABLE IF EXISTS `st4dates`;
/*!50001 DROP VIEW IF EXISTS `st4dates`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `st4dates` AS SELECT 
 1 AS `issuer`,
 1 AS `befDate`,
 1 AS `aftDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `statgov`
--

DROP TABLE IF EXISTS `statgov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statgov` (
  `descrip` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statsID` smallint unsigned NOT NULL,
  PRIMARY KEY (`descrip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `statName` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Statistics with our name for them',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusID` tinyint unsigned NOT NULL DEFAULT '0',
  `statusText` varchar(50) NOT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `stockcodes1000`
--

DROP TABLE IF EXISTS `stockcodes1000`;
/*!50001 DROP VIEW IF EXISTS `stockcodes1000`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stockcodes1000` AS SELECT 
 1 AS `StockCode`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stocklistings`
--

DROP TABLE IF EXISTS `stocklistings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocklistings` (
  `IssueID` mediumint unsigned NOT NULL DEFAULT '0',
  `StockCode` varchar(8) DEFAULT NULL,
  `StockExID` tinyint unsigned NOT NULL,
  `FirstTradeDate` date DEFAULT NULL,
  `FinalTradeDate` date DEFAULT NULL,
  `DelistDate` date DEFAULT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReasonID` tinyint unsigned DEFAULT NULL,
  `2ndCtr` bit(1) NOT NULL DEFAULT b'0' COMMENT '2nd counter: if true, this issue should be ignored when looking for total returns for directors, advisers',
  `sedol` varchar(7) DEFAULT NULL,
  `isin` varchar(12) DEFAULT NULL,
  `stockId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_stocklistings_listing` (`StockExID`),
  KEY `FK_stocklistings_dlreason` (`ReasonID`),
  KEY `stocklistings_issue_idx` (`IssueID`),
  CONSTRAINT `FK_stocklistings_dlreason` FOREIGN KEY (`ReasonID`) REFERENCES `dlreasons` (`ReasonID`),
  CONSTRAINT `FK_stocklistings_listing` FOREIGN KEY (`StockExID`) REFERENCES `listings` (`stockExID`),
  CONSTRAINT `stocklistings_issue` FOREIGN KEY (`IssueID`) REFERENCES `issue` (`ID1`)
) ENGINE=InnoDB AUTO_INCREMENT=16632 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `StoryID` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `StoryDate` datetime DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  `SourceID` smallint unsigned DEFAULT NULL,
  `URL2` varchar(255) DEFAULT NULL,
  `URL2text` varchar(255) DEFAULT NULL,
  `pubDate` datetime NOT NULL,
  `tweeted` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StoryID`) USING BTREE,
  UNIQUE KEY `URL` (`URL`),
  KEY `FK_stories_source` (`SourceID`),
  KEY `index_StoryDate` (`StoryDate`),
  CONSTRAINT `FK_stories_source` FOREIGN KEY (`SourceID`) REFERENCES `sources` (`sourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=15818 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `storytags`
--

DROP TABLE IF EXISTS `storytags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storytags` (
  `storyID` mediumint unsigned NOT NULL,
  `catID` smallint unsigned NOT NULL,
  PRIMARY KEY (`storyID`,`catID`),
  KEY `FK_storytags_cats_idx` (`catID`),
  CONSTRAINT `FK_storytags_cats` FOREIGN KEY (`catID`) REFERENCES `categories` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_storytags_stories` FOREIGN KEY (`storyID`) REFERENCES `stories` (`StoryID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdjourneys`
--

DROP TABLE IF EXISTS `tdjourneys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdjourneys` (
  `d` date NOT NULL,
  `vc` tinyint unsigned NOT NULL,
  `j` int unsigned DEFAULT NULL,
  `km` int unsigned DEFAULT NULL,
  `kmCH` int unsigned DEFAULT NULL,
  `paxcap` mediumint unsigned DEFAULT NULL,
  `provJ` bit(1) NOT NULL DEFAULT b'0',
  `provkm` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`d`,`vc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdreglic`
--

DROP TABLE IF EXISTS `tdreglic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdreglic` (
  `d` date NOT NULL,
  `vc` tinyint NOT NULL,
  `FR` smallint unsigned NOT NULL DEFAULT '0',
  `totReg` mediumint unsigned NOT NULL DEFAULT '0',
  `totLic` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`d`,`vc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transport Dept  monthly first registration and total registration and licences by vehicle class from Table 4.1(a)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tempsfc`
--

DROP TABLE IF EXISTS `tempsfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempsfc` (
  `orgID` int unsigned NOT NULL,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL,
  `role` tinyint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `TitleID` tinyint unsigned NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`TitleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tundir`
--

DROP TABLE IF EXISTS `tundir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tundir` (
  `ID` tinyint unsigned NOT NULL,
  `defdir` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altdir` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defTD` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altTD` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunnel directions .Each tunnel, bridge or crossing can be East-West, North-South, or In/Out. Record in tunnel table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tunnels`
--

DROP TABLE IF EXISTS `tunnels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tunnels` (
  `ID` tinyint unsigned NOT NULL,
  `TD` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TUN_BRIDGE_CODE in TD files',
  `name` varchar(37) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tundirID` tinyint unsigned NOT NULL COMMENT 'The pair of tunnel directions in the tundir table',
  `TDtable` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `opened` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunnel IDs and codes for Transport Dept Tables 3.1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuntraff`
--

DROP TABLE IF EXISTS `tuntraff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuntraff` (
  `tunID` tinyint unsigned NOT NULL,
  `vc` tinyint unsigned NOT NULL,
  `d` date NOT NULL,
  `defcnt` mediumint unsigned NOT NULL DEFAULT '0',
  `altcnt` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tunID`,`vc`,`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Traffic via tunnels & bridges from TD tables 3.1, 3.2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ukappres`
--

DROP TABLE IF EXISTS `ukappres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukappres` (
  `orgID` int unsigned NOT NULL,
  `CHID` varchar(27) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appDate` date NOT NULL,
  `resDate` date NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`orgID`,`CHID`,`appDate`,`resDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='UK appointments where the resignation is before the appointment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ukch`
--

DROP TABLE IF EXISTS `ukch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukch` (
  `UKtype` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `api` varchar(127) NOT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `orgType` tinyint unsigned NOT NULL,
  PRIMARY KEY (`UKtype`),
  UNIQUE KEY `api_UNIQUE` (`api`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ukchnats`
--

DROP TABLE IF EXISTS `ukchnats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukchnats` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `descrip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicile` smallint unsigned DEFAULT NULL COMMENT 'nationalities found in UKCH people. Map to domiciles.',
  `UKlist` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `descrip_UNIQUE` (`descrip`)
) ENGINE=InnoDB AUTO_INCREMENT=15264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ukhons`
--

DROP TABLE IF EXISTS `ukhons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukhons` (
  `ukhons` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ukhons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Suffixes used in UKCH honours';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uklog`
--

DROP TABLE IF EXISTS `uklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uklog` (
  `prefix` char(2) NOT NULL DEFAULT '',
  `lastCo` int unsigned DEFAULT NULL,
  `domID` smallint unsigned NOT NULL,
  `lastCoAdded` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uknonhuman`
--

DROP TABLE IF EXISTS `uknonhuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uknonhuman` (
  `CHID` varchar(27) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ukppl`
--

DROP TABLE IF EXISTS `ukppl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukppl` (
  `CHID` varchar(27) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `personID` int unsigned NOT NULL,
  PRIMARY KEY (`CHID`),
  KEY `ukppl-people_idx` (`personID`),
  CONSTRAINT `ukppl-people` FOREIGN KEY (`personID`) REFERENCES `people` (`PersonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='People in UK Companies House';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` mediumint unsigned NOT NULL,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `userName_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vax`
--

DROP TABLE IF EXISTS `vax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vax` (
  `d` date NOT NULL,
  `cohort` tinyint unsigned NOT NULL,
  `male` bit(1) NOT NULL,
  `prov` bit(1) NOT NULL DEFAULT b'0',
  `sino1` smallint unsigned NOT NULL DEFAULT '0',
  `sino2` smallint unsigned NOT NULL DEFAULT '0',
  `sino3` smallint unsigned NOT NULL DEFAULT '0',
  `sino4` smallint unsigned NOT NULL DEFAULT '0',
  `sino5` smallint unsigned NOT NULL DEFAULT '0',
  `sino6` smallint unsigned NOT NULL DEFAULT '0',
  `sino7` smallint unsigned NOT NULL DEFAULT '0',
  `sino8` smallint unsigned NOT NULL DEFAULT '0',
  `sino9` smallint unsigned NOT NULL DEFAULT '0',
  `sino10` smallint unsigned NOT NULL DEFAULT '0',
  `bion1` smallint unsigned NOT NULL DEFAULT '0',
  `bion2` smallint unsigned NOT NULL DEFAULT '0',
  `bion3` smallint unsigned NOT NULL DEFAULT '0',
  `bion4` smallint unsigned NOT NULL DEFAULT '0',
  `bion5` smallint unsigned NOT NULL DEFAULT '0',
  `bion6` smallint unsigned NOT NULL DEFAULT '0',
  `bion7` smallint unsigned NOT NULL DEFAULT '0',
  `bion8` smallint unsigned NOT NULL DEFAULT '0',
  `bion9` smallint unsigned NOT NULL DEFAULT '0',
  `bion10` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`d`,`cohort`,`male`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Vaccination data for COVID-19';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vaxcohorts`
--

DROP TABLE IF EXISTS `vaxcohorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaxcohorts` (
  `ID` tinyint unsigned NOT NULL,
  `txt` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `govtxt` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minAge` tinyint unsigned NOT NULL,
  `popn` mediumint unsigned NOT NULL,
  `mpopn` mediumint unsigned NOT NULL,
  `fpopn` mediumint unsigned NOT NULL,
  `sino1` mediumint unsigned NOT NULL COMMENT 'The latest cumulative total sinovac dose 1  shown on the govt dashboard by age and extracted from barAge.csv',
  `sino2` mediumint unsigned NOT NULL,
  `sino3` mediumint unsigned NOT NULL,
  `bion1` mediumint unsigned NOT NULL,
  `bion2` mediumint unsigned NOT NULL,
  `bion3` mediumint unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='HK vaccination data age groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `veengine`
--

DROP TABLE IF EXISTS `veengine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veengine` (
  `d` date NOT NULL,
  `engID` tinyint unsigned NOT NULL,
  `FR` smallint unsigned NOT NULL,
  `totReg` mediumint unsigned NOT NULL,
  PRIMARY KEY (`d`,`engID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Private cars by engine size from TD table 4.2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicleclass`
--

DROP TABLE IF EXISTS `vehicleclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleclass` (
  `ID` tinyint unsigned NOT NULL,
  `parent` tinyint unsigned DEFAULT NULL,
  `fuelparent` tinyint DEFAULT NULL COMMENT 'For table 4.4 which groups some lines together',
  `jparent` tinyint unsigned DEFAULT NULL,
  `des` varchar(255) CHARACTER SET latin1 NOT NULL,
  `govType` varchar(45) DEFAULT NULL,
  `operator` tinyint unsigned DEFAULT NULL,
  `DD` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Double-decker',
  `franchise` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehiclefr`
--

DROP TABLE IF EXISTS `vehiclefr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclefr` (
  `vc` tinyint unsigned NOT NULL,
  `d` date NOT NULL,
  `makeID` smallint unsigned NOT NULL,
  `fuelID` tinyint unsigned NOT NULL,
  `bodyID` tinyint unsigned NOT NULL,
  `FRstatID` tinyint unsigned NOT NULL,
  `Freg` smallint unsigned NOT NULL,
  PRIMARY KEY (`vc`,`d`,`makeID`,`fuelID`,`bodyID`,`FRstatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='First Registrations of private cars by make etc from TD table 4.1(e)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehiclefuel`
--

DROP TABLE IF EXISTS `vehiclefuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclefuel` (
  `d` date NOT NULL,
  `vc` tinyint unsigned NOT NULL,
  `fuelID` tinyint unsigned NOT NULL,
  `totReg` mediumint unsigned NOT NULL,
  `totLic` mediumint unsigned NOT NULL,
  PRIMARY KEY (`d`,`vc`,`fuelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='For Transport Dept table 4.4';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehiclemakes`
--

DROP TABLE IF EXISTS `vehiclemakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclemakes` (
  `ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `make` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Makes of car as listed in TD table 4.1(e)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicletypos`
--

DROP TABLE IF EXISTS `vehicletypos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicletypos` (
  `wrong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`wrong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Correction table for TD vehicle brands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web`
--

DROP TABLE IF EXISTS `web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `PersonID` int unsigned NOT NULL,
  `URL` varchar(255) NOT NULL,
  `source` smallint unsigned DEFAULT NULL,
  `dead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique` (`PersonID`,`URL`),
  KEY `FK_web_persons` (`PersonID`) /*!80000 INVISIBLE */,
  KEY `web_sources_idx` (`source`),
  CONSTRAINT `FK_web_persons` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`PersonID`) ON DELETE CASCADE,
  CONSTRAINT `web_sources` FOREIGN KEY (`source`) REFERENCES `sources` (`sourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=18201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `webadv`
--

DROP TABLE IF EXISTS `webadv`;
/*!50001 DROP VIEW IF EXISTS `webadv`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webadv` AS SELECT 
 1 AS `Org`,
 1 AS `Role`,
 1 AS `roleID`,
 1 AS `Adv`,
 1 AS `OrgID`,
 1 AS `AdvID`,
 1 AS `AddDate`,
 1 AS `AddAcc`,
 1 AS `RemDate`,
 1 AS `RemAcc`,
 1 AS `OneTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webadvships`
--

DROP TABLE IF EXISTS `webadvships`;
/*!50001 DROP VIEW IF EXISTS `webadvships`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webadvships` AS SELECT 
 1 AS `Org`,
 1 AS `Role`,
 1 AS `OneTime`,
 1 AS `OrgID`,
 1 AS `AdvID`,
 1 AS `AddDate`,
 1 AS `AddAcc`,
 1 AS `RemDate`,
 1 AS `RemAcc`,
 1 AS `Issuer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `webbhold`
--

DROP TABLE IF EXISTS `webbhold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webbhold` (
  `issueID` mediumint unsigned NOT NULL,
  `atDate` date NOT NULL,
  `shares` int unsigned NOT NULL,
  `stake` float unsigned NOT NULL,
  `filing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `webbuybacks`
--

DROP TABLE IF EXISTS `webbuybacks`;
/*!50001 DROP VIEW IF EXISTS `webbuybacks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webbuybacks` AS SELECT 
 1 AS `stockCode`,
 1 AS `IssueID`,
 1 AS `EffDate`,
 1 AS `exchID`,
 1 AS `exchName`,
 1 AS `shares`,
 1 AS `Value`,
 1 AS `Currency`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webcatmembers`
--

DROP TABLE IF EXISTS `webcatmembers`;
/*!50001 DROP VIEW IF EXISTS `webcatmembers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webcatmembers` AS SELECT 
 1 AS `PersonID`,
 1 AS `Name1`,
 1 AS `Category`,
 1 AS `CatName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webcattree`
--

DROP TABLE IF EXISTS `webcattree`;
/*!50001 DROP VIEW IF EXISTS `webcattree`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webcattree` AS SELECT 
 1 AS `ParentName`,
 1 AS `ChildName`,
 1 AS `ParentID`,
 1 AS `ChildID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webcountadvbyrole`
--

DROP TABLE IF EXISTS `webcountadvbyrole`;
/*!50001 DROP VIEW IF EXISTS `webcountadvbyrole`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webcountadvbyrole` AS SELECT 
 1 AS `RoleID`,
 1 AS `Role`,
 1 AS `OneTime`,
 1 AS `CountOfRole`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webcurrlisted`
--

DROP TABLE IF EXISTS `webcurrlisted`;
/*!50001 DROP VIEW IF EXISTS `webcurrlisted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webcurrlisted` AS SELECT 
 1 AS `StockCode`,
 1 AS `Name1`,
 1 AS `Type`,
 1 AS `PersonID`,
 1 AS `StockExID`,
 1 AS `Type1`,
 1 AS `FirstTradeDate`,
 1 AS `Domicile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webdelisted`
--

DROP TABLE IF EXISTS `webdelisted`;
/*!50001 DROP VIEW IF EXISTS `webdelisted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webdelisted` AS SELECT 
 1 AS `StockCode`,
 1 AS `IssueID`,
 1 AS `Name1`,
 1 AS `domicile`,
 1 AS `Type`,
 1 AS `FirstTradeDate`,
 1 AS `FinalTradeDate`,
 1 AS `DelistDate`,
 1 AS `PersonID`,
 1 AS `StockExID`,
 1 AS `Reason`,
 1 AS `TradeLife`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webdirs`
--

DROP TABLE IF EXISTS `webdirs`;
/*!50001 DROP VIEW IF EXISTS `webdirs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webdirs` AS SELECT 
 1 AS `Dir`,
 1 AS `Position`,
 1 AS `rank`,
 1 AS `PosLong`,
 1 AS `DirID`,
 1 AS `OrgID`,
 1 AS `ApptDate`,
 1 AS `ResDate`,
 1 AS `ApptAcc`,
 1 AS `ResAcc`,
 1 AS `YOB`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webdirships`
--

DROP TABLE IF EXISTS `webdirships`;
/*!50001 DROP VIEW IF EXISTS `webdirships`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webdirships` AS SELECT 
 1 AS `Position`,
 1 AS `Rank`,
 1 AS `PosLong`,
 1 AS `Org`,
 1 AS `DirID`,
 1 AS `OrgID`,
 1 AS `ApptDate`,
 1 AS `ResDate`,
 1 AS `ApptAcc`,
 1 AS `ResAcc`,
 1 AS `StockExID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webdocs`
--

DROP TABLE IF EXISTS `webdocs`;
/*!50001 DROP VIEW IF EXISTS `webdocs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webdocs` AS SELECT 
 1 AS `OrgID`,
 1 AS `RecordDate`,
 1 AS `ReportDate`,
 1 AS `DocLong`,
 1 AS `Adv`,
 1 AS `Dir`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webholders3`
--

DROP TABLE IF EXISTS `webholders3`;
/*!50001 DROP VIEW IF EXISTS `webholders3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webholders3` AS SELECT 
 1 AS `personID`,
 1 AS `issue`,
 1 AS `holdingDate`,
 1 AS `shares`,
 1 AS `stake`,
 1 AS `typeID`,
 1 AS `typeShort`,
 1 AS `typeLong`,
 1 AS `incDate`,
 1 AS `incAcc`,
 1 AS `orgtype`,
 1 AS `A2`,
 1 AS `friendly`,
 1 AS `personType`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webholdings3`
--

DROP TABLE IF EXISTS `webholdings3`;
/*!50001 DROP VIEW IF EXISTS `webholdings3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webholdings3` AS SELECT 
 1 AS `personID`,
 1 AS `issue`,
 1 AS `holdingDate`,
 1 AS `shares`,
 1 AS `stake`,
 1 AS `friendly`,
 1 AS `A2`,
 1 AS `name`,
 1 AS `orgType`,
 1 AS `SecType`,
 1 AS `typeShort`,
 1 AS `issuer`,
 1 AS `incDate`,
 1 AS `incAcc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webincats`
--

DROP TABLE IF EXISTS `webincats`;
/*!50001 DROP VIEW IF EXISTS `webincats`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webincats` AS SELECT 
 1 AS `PersonID`,
 1 AS `Name1`,
 1 AS `Category`,
 1 AS `CatName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `webissues`
--

DROP TABLE IF EXISTS `webissues`;
/*!50001 DROP VIEW IF EXISTS `webissues`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `webissues` AS SELECT 
 1 AS `ID1`,
 1 AS `SecType`,
 1 AS `Issuer`,
 1 AS `Person`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `weblistings`
--

DROP TABLE IF EXISTS `weblistings`;
/*!50001 DROP VIEW IF EXISTS `weblistings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `weblistings` AS SELECT 
 1 AS `StockCode`,
 1 AS `SecType`,
 1 AS `Org`,
 1 AS `DelistDate`,
 1 AS `OrgID`,
 1 AS `FirstTradeDate`,
 1 AS `FinalTradeDate`,
 1 AS `ShortName`,
 1 AS `IssueID`,
 1 AS `StockExID`,
 1 AS `Reason`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `weborgs`
--

DROP TABLE IF EXISTS `weborgs`;
/*!50001 DROP VIEW IF EXISTS `weborgs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `weborgs` AS SELECT 
 1 AS `domID`,
 1 AS `orgID`,
 1 AS `org`,
 1 AS `orgType`,
 1 AS `cName`,
 1 AS `Dom`,
 1 AS `typeName`,
 1 AS `inc`,
 1 AS `incDate`,
 1 AS `disDate`,
 1 AS `incAcc`,
 1 AS `incID`,
 1 AS `disModeTxt`,
 1 AS `SFCID`,
 1 AS `SFCri`,
 1 AS `UKURI`,
 1 AS `incupd`,
 1 AS `oldcrn`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wsprivs`
--

DROP TABLE IF EXISTS `wsprivs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wsprivs` (
  `userID` mediumint unsigned NOT NULL,
  `roleID` tinyint unsigned NOT NULL,
  `uRank` tinyint unsigned NOT NULL DEFAULT '1',
  `live` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`userID`,`roleID`),
  KEY `privs_roles_idx` (`roleID`),
  CONSTRAINT `privs_roles` FOREIGN KEY (`roleID`) REFERENCES `wsroles` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `privs_users` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Roles of each user and their ranking in that role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsroles`
--

DROP TABLE IF EXISTS `wsroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wsroles` (
  `ID` tinyint unsigned NOT NULL,
  `MSuser` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='roles for editors working on various pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsroletabs`
--

DROP TABLE IF EXISTS `wsroletabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wsroletabs` (
  `roleID` tinyint unsigned NOT NULL,
  `tblname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`roleID`,`tblname`),
  CONSTRAINT `roletabs_roles` FOREIGN KEY (`roleID`) REFERENCES `wsroles` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tables which a wsrole can insert, update, delete. Maximum one role per table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'enigma'
--

--
-- Dumping routines for database 'enigma'
--
/*!50003 DROP FUNCTION IF EXISTS `apptBeforeRes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `apptBeforeRes`(apptDate DATE,resDate DATE,apptAcc TINYINT,resAcc TINYINT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
IF apptDate>resDate And resDate<>'1000-01-01' Then
	If year(apptDate)=Year(resDate) Then
		If resAcc=1 or apptAcc=1 Then
			return True;
		ELSEIF (resAcc=2 or apptAcc=2) And month(apptDate)=month(resDate) Then
			return True;
		END IF;
	END IF;
    Return False;
ELSE
	Return True;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `boardLot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `boardLot`(i INT,d DATE) RETURNS int
    READS SQL DATA
RETURN (SELECT IFNULL((SELECT lot FROM oldlots where issueID=i AND until>d ORDER BY until LIMIT 1),
(SELECT boardLot FROM hkexdata WHERE issueID=i))) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CAGrel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `CAGrel`(ID INT,fromDate DATE,toDate DATE) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
DECLARE intlength double;
DECLARE trackRet double;
IF isNull(toDate) Then
	SET toDate=CURDATE();
END IF;
IF isNull(fromDate) Or fromDate<'1999-11-12' Then
	SET fromDate='1999-11-12';
END IF;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,toDate);
SET intlength=DateDiff(lastQTD,firstQFD);
If intlength>=180 Then        
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=(getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF);
        SELECT closing into firstQF FROM ccass.quotes WHERE issueID=5295 AND atDate=firstQFD;
        SELECT closing into lastQT FROM ccass.quotes WHERE issueID=5295 AND atDate=lastQTD;
        SET trackRet=getAdjust(5295,firstQFD)/getAdjust(5295,lastQTD)*lastQT/firstQF;
        SET answer=POW(answer/trackRet,365.25/intlength);
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CAGrelDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `CAGrelDays`(ID INT,fromDate DATE,days INT) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
DECLARE intlength double;
DECLARE trackRet double;
IF fromDate<'1999-11-12' Then
	SET fromDate='1999-11-12';
END IF;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,firstQFD+INTERVAL days DAY);
SET intlength=DateDiff(lastQTD,firstQFD);
If intlength>=180 Then        
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=(getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF);
        SELECT closing into firstQF FROM ccass.quotes WHERE issueID=5295 AND atDate=firstQFD;
        SELECT closing into lastQT FROM ccass.quotes WHERE issueID=5295 AND atDate=lastQTD;
        SET trackRet=getAdjust(5295,firstQFD)/getAdjust(5295,lastQTD)*lastQT/firstQF;
        SET answer=POW(answer/trackRet,365.25/intlength);
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CAGRet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `CAGRet`(ID INT,fromDate DATE,toDate DATE) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
DECLARE intlength double;
IF isNull(toDate) Then
        Set toDate=CURDATE();
END IF;
IF isNull(fromDate) Then
        Set fromDate='1994-01-03';
END IF;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,toDate);
SET intlength=DateDiff(lastQTD,firstQFD);
If intlength>=180 Then
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=(getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF);
        SET answer=POW(answer,365.25/intlength);
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CAGretDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `CAGretDays`(ID INT,fromDate DATE,days INT) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
DECLARE intlength double;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,firstQFD+INTERVAL days DAY);
SET intlength=DateDiff(lastQTD,firstQFD);
If intlength>=180 Then
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=(getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF);
        SET answer=POW(answer,365.25/intlength);
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkDigit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `checkDigit`(ID VARCHAR(8)) RETURNS char(1) CHARSET latin1
    NO SQL
    DETERMINISTIC
BEGIN
DECLARE cd int DEFAULT 0;
DECLARE n CHAR(7);
DECLARE checkDigit CHAR(1);
IF NOT ISNULL(ID) Then
	IF NOT RIGHT(ID,6) REGEXP '^[0-9]+$' THEN
		SET checkDigit='X';
	ELSE
		SET n=Right(ID,7);
		If length(ID)=8 Then
				Set cd=9*(ASCII(UCASE(ID))-58);
		END IF;
		SET cd=cd+8*(ASCII(UCASE(n))-64)+7*Mid(n,2,1)+6*Mid(n,3,1)+5*Mid(n,4,1)+4*Mid(n,5,1)+3*Mid(n,6,1)+2*Right(n, 1);
		SET cd=11-cd;
		SET cd=cd-11*FLOOR(cd/11);
		If cd=10 Then
			SET checkDigit='A';
		ELSE
			SET checkDigit=cd;
		END IF;
	END IF;
END IF;
RETURN checkDigit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `curAdj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `curAdj`(ID INT,d1 DATE) RETURNS double
    READS SQL DATA
BEGIN
DECLARE adjNow DOUBLE;
DECLARE answer DOUBLE;
SELECT cumAdjust INTO adjNow FROM enigma.`adjustments` WHERE issueID=ID AND exDate<=CURDATE() ORDER BY exDate DESC LIMIT 1;
If isnull(adjNow) THEN
	SET answer=1;
ELSE
	SELECT cumAdjust INTO answer FROM enigma.`adjustments` WHERE issueID=ID AND exDate<=d1 ORDER BY exDate DESC LIMIT 1;
	If isNull(answer) Then
		SET answer=adjNow;
    ELSEIF answer=adjNow Then SET answer=1;
	ELSE SET answer=adjNow/answer;
	END IF;
END IF;
Return answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `delisted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `delisted`(i INTEGER, d DATE) RETURNS bit(1)
    READS SQL DATA
BEGIN
declare answer bit(1) default 0;
declare count1 int;
declare continue handler for not found set answer = 1;
select count(*) into count1 from enigma.stocklistings
where issueID=i and stockExID IN(1,20,23) and (isNull(delistDate) or delistDate>d)
group by issueID;
If isNull(count1) Then Set answer=1;
End If;
return answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `everHKlistco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `everHKlistco`(p INT) RETURNS bit(1)
    READS SQL DATA
BEGIN
DECLARE answer bit(1) DEFAULT 1;
DECLARE count1 int;
SELECT Count(*) into count1 FROM issue i JOIN stocklistings s 
ON i.ID1=s.issueID
 WHERE issuer=p
 AND stockExID IN(1,20,23)
 AND i.typeID NOT IN(1,2,40,41,46)
 GROUP BY issuer;
 If isNull(count1) Then set answer=0;
 END IF;
 RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `everHKprimary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `everHKprimary`(p INT) RETURNS bit(1)
    READS SQL DATA
RETURN (SELECT EXISTS(SELECT * FROM issue i JOIN stocklistings s 
ON i.ID1=s.issueID
 WHERE issuer=p
 AND stockExID IN(1,20)
 AND i.typeID NOT IN(1,2,40,41,46)
)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `everListCo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `everListCo`(p INT) RETURNS bit(1)
    READS SQL DATA
RETURN EXISTS (SELECT 1 FROM issue i JOIN stocklistings s ON i.ID1=s.issueID 
WHERE issuer=p AND i.typeID NOT IN(1,2,40,41,46) and stockexID IN(1,20,22,23,38)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `everlistedHK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `everlistedHK`(i INT) RETURNS bit(1)
    READS SQL DATA
BEGIN
DECLARE answer Bit(1) Default 1;
DECLARE count1 Int;
SELECT Count(*) INTO count1 FROM stocklistings WHERE issueID=i AND stockExID IN(1,20,23) group by issueID;
If isNull(count1) Then
        Set answer=0;
End If;
Return answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `firstday` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `firstday`(d date) RETURNS date
    NO SQL
    DETERMINISTIC
RETURN date_sub(d,INTERVAL DAY(d)-1 DAY) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `firstQuoteDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `firstQuoteDate`(i INT,d DATE) RETURNS date
    READS SQL DATA
BEGIN
DECLARE answer DATE;
SELECT Min(atDate) INTO answer FROM ccass.quotes WHERE issueID=i AND noclose=false AND atDate>=d;
Return answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fNameOrg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `fNameOrg`(n1 varchar(255),cName varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
Return CONCAT(n1,IFNULL(CONCAT(' ',cName),'')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnameppl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `fnameppl`(n1 varchar(255),n2 varchar(255),cName varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
Return CONCAT(n1,IFNULL(CONCAT(', ',n2),''),IFNULL(CONCAT(' ',cName),'')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnamepsn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `fnamepsn`(n1o varchar(255),n1p varchar(255),n2 varchar(255),cno varchar(255),cnp varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
RETURN CONCAT(IFNULL(n1o,n1p),IFNULL(CONCAT(', ',n2),''),ifnull(ifnull(concat(' ',cno),concat(' ',cnp)),'')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fulladj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `fulladj`(i INT, d DATE) RETURNS double
    READS SQL DATA
RETURN IFNULL((SELECT EXP(SUM(LOG(adjust)))
FROM events USE INDEX (issueEX) WHERE issueID=i AND isNull(cancelDate)
	AND exDate<=CURDATE() AND exDate>d AND Not isNull(adjust)),1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAdjust` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `getAdjust`(i INT,d DATE) RETURNS double
    READS SQL DATA
RETURN IFNULL(
(SELECT cumAdjust FROM enigma.`adjustments` WHERE issueID=i AND exDate<=d ORDER BY exDate DESC LIMIT 1),1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getIssueID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `getIssueID`(s int,d date) RETURNS int
    READS SQL DATA
BEGIN
declare answer int;
select issueID into answer from stocklistings
	where (isnull(firstTradeDate) or firstTradeDate<=d) and
	(isnull(delistDate) or delistDate>d) and
	stockExID in(1,20,22,23,38,71) and
	cast(StockCode as signed)=s;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getOrgID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `getOrgID`(s int,d date) RETURNS int
    READS SQL DATA
BEGIN
declare answer int;
select personID into answer from 
	stocklistings join (issue,organisations)
	on stocklistings.issueID=issue.ID1
	and issue.issuer=organisations.personID
	where (isnull(firstTradeDate) or firstTradeDate<=d) and
	(isnull(delistDate) or delistDate>d) and
	stockExID in(1,20,22,23,38) and
	cast(StockCode as signed)=s;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `hasRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `hasRole`(rID INT,uID INT) RETURNS int
    READS SQL DATA
RETURN (SELECT NOT EXISTS(SELECT * FROM wsroletabs WHERE roleID=rID AND tblname NOT IN 
	(SELECT DISTINCT tblname FROM wsprivs p JOIN wsroletabs t ON p.roleID=t.roleID WHERE p.live AND userID=uID))) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lastCode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lastCode`(i INT) RETURNS varchar(5) CHARSET latin1
    READS SQL DATA
BEGIN
DECLARE answer VARCHAR(5);
SELECT stockCode INTO answer FROM stocklistings WHERE stockExID IN(1,20,22,23,38,71) AND issueID=i 
AND (isNull(FirstTradeDate) OR FirstTradeDate<=curdate()) ORDER BY firstTradeDate DESC LIMIT 1;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lastfx` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lastfx`(c1 TINYINT UNSIGNED,c2 TINYINT UNSIGNED,d DATE) RETURNS float unsigned
    READS SQL DATA
BEGIN
#find latest exchange rate on or before date d for 1 unit of c1 in c2
DECLARE cp TINYINT UNSIGNED;
DECLARE cp2 TINYINT UNSIGNED;
DECLARE r FLOAT;
IF c1=c2 THEN
	RETURN 1;
END IF;
SELECT ID INTO cp FROM currpair WHERE curr1=c1 AND curr2=c2;
IF NOT ISNULL(cp) THEN
	SELECT rate INTO r FROM forexrates WHERE currpair=cp AND atDate<=d ORDER BY atDate DESC LIMIT 1;
ELSE
	#try inverting
    SELECT ID INTO cp FROM currpair WHERE curr1=c2 AND curr2=c1;
    IF NOT isnull(cp) THEN
		SELECT 1/rate INTO r FROM forexrates WHERE currpair=cp AND atDate<=d ORDER BY atDate DESC LIMIT 1;
	ELSE
		#calculate cross-rate via HKD
        #cannot get MOP from Yahoo so use peg rate
        IF c2=18 THEN #Macau Patacas (MOP)
			IF c1=0 THEN
				RETURN 1.03;
			ELSE
				SELECT ID INTO cp FROM currpair WHERE curr1=c1 AND curr2=0;
				SELECT rate*1.03 INTO r FROM forexrates WHERE currpair=cp AND atDate<=d ORDER BY atDate DESC LIMIT 1;
			END IF;
		ELSE
            IF c1=18 THEN
				IF c2=0 THEN
					RETURN 1/1.03;
				ELSE
					SELECT ID INTO cp2 FROM currpair WHERE curr1=c2 AND curr2=0;
					SELECT 1/rate/1.03 INTO r FROM forexrates WHERE currpair=cp2 AND atDate<=d ORDER BY atDate DESC LIMIT 1;
				END IF;
			ELSE
				SELECT ID INTO cp FROM currpair WHERE curr1=c1 AND curr2=0;
				SELECT ID INTO cp2 FROM currpair WHERE curr1=c2 AND curr2=0;
				SELECT rate INTO r FROM forexrates WHERE currpair=cp AND atDate<=d ORDER BY atDate DESC LIMIT 1;
				SELECT r/rate INTO r FROM forexrates WHERE currpair=cp2 AND atDate<=d ORDER BY atDate DESC LIMIT 1;
			END IF;
		END IF;
    END IF;
END IF;
RETURN r;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lastQuote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lastQuote`(i INT,d DATE) RETURNS float unsigned
    READS SQL DATA
BEGIN
DECLARE answer FLOAT UNSIGNED;
SELECT closing INTO answer FROM ccass.quotes WHERE issueID=i AND NOT noclose AND atDate<=d ORDER BY atDate DESC LIMIT 1;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lastQuoteDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lastQuoteDate`(i INT,d DATE) RETURNS date
    READS SQL DATA
BEGIN
DECLARE answer DATE;
SELECT Max(atDate) into answer from ccass.quotes WHERE issueID=i AND noclose=false AND atDate<=d;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lastQuoteOLD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lastQuoteOLD`(i INT,d DATE) RETURNS float
    READS SQL DATA
BEGIN
DECLARE answer DOUBLE;
DECLARE maxDate DATE;
SET maxDate=lastQuoteDate(i,d);
If Not isNull(maxDate) Then
SELECT closing INTO answer FROM ccass.quotes WHERE issueID=i and atDate=maxDate;
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `listcoCntAtDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `listcoCntAtDate`(d DATE) RETURNS int
    READS SQL DATA
BEGIN
DECLARE cnt INT;
SELECT count(issuer) INTO cnt FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) AS t1;
RETURN cnt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `lowerDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `lowerDate`(d DATE,a TINYINT UNSIGNED) RETURNS date
    DETERMINISTIC
BEGIN
#find the lower bound based on date accuracy; first day of month or year
#use this to show all possible records based on a snapshot date
IF a=1 Then	return makedate(YEAR(d),1);
ELSEIF a=2 Then	return firstday(d);
ELSE return d;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `maxRank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `maxRank`(tbl VARCHAR(45),uID INT) RETURNS int
    READS SQL DATA
RETURN (SELECT IFNULL((SELECT MAX(uRank) FROM wsprivs p JOIN wsroletabs t ON p.roleID=t.roleID WHERE userID=uID AND tblname=tbl),0)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `maxRankLive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `maxRankLive`(tbl VARCHAR(45),uID INT) RETURNS int
    READS SQL DATA
RETURN (SELECT IFNULL((SELECT MAX(uRank) FROM wsprivs p JOIN wsroletabs t ON p.roleID=t.roleID WHERE userID=uID AND tblname=tbl AND live),0)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `mergeinitials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `mergeinitials`(n varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
BEGIN
#merge the leading initials of a string, e.g. A B C. Assumes dots have been replaced with spaces
DECLARE x tinyint unsigned default 1;
Set n=concat(' ',trim(n),' ');
WHILE MID(n,x+2,1)=' ' and x<char_length(n) DO
	set x=x+2;
END WHILE;
IF x>3 then
	SET n=concat(' ',replace(left(n,x-1),' ',''),right(n,char_length(n)-x+1));
END if;
RETURN n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `monthdays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `monthdays`(d date) RETURNS tinyint
    NO SQL
    DETERMINISTIC
RETURN DAY(LAST_DAY(d)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `MSdateAcc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `MSdateAcc`(d Date,a tinyint) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
#produce string U, YYYY, YYYY-MM or YYYY-MM-DD from date based on accuracy
#If d is null then return empty string unless a=3 indicating unknown removal/appointment date
DECLARE s VARCHAR(10);
CASE
	WHEN a=3 THEN SET s="U";
	WHEN ISNULL(d) THEN SET s="";
	WHEN a=1 OR a=4 THEN SET s=LEFT(d,4);
	WHEN a=2 OR a=5 THEN SET s=LEFT(d,7);
	ELSE SET s=d;
END CASE;
RETURN s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `MSdatePart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `MSdatePart`(d tinyint,m tinyint,y smallint) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
declare s varchar(10);
If not isnull(y) Then
	SET s=y;
    If not isnull(m) Then
		SET s=CONCAT(s,'-',right(concat('0',m),2));
        If not isnull(d) Then
			SET s=concat(s,'-',right(concat('0',d),2));
		End If;
	End If;
END IF;
RETURN s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nameppl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `nameppl`(n1 varchar(255),n2 varchar(255)) RETURNS varchar(255) CHARSET latin1
    NO SQL
    DETERMINISTIC
Return CONCAT(n1,IFNULL(CONCAT(', ',n2),'')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `namepsn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `namepsn`(n1o varchar(255),n1p varchar(255),n2 varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
RETURN CONCAT(IFNULL(n1o,n1p),IFNULL(CONCAT(', ',n2),'')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `normOrg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `normOrg`(n varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
BEGIN
DECLARE x tinyint unsigned default 1;
#standardise and compact name for searching
SET n=TRIM(UPPER(n));
#strip off any appendices we've added
WHILE RIGHT(n,1)=')' AND instr(n,'(')>0 DO
	SET n=Trim(left(n,length(n)-instr(reverse(n),'(')));
END WHILE;
#add leading and trailing space for whole-word search purpose
SET n=concat(' ',n,' ');
#replace apostrophe with single quote
SET n=replace(n,'‘',"'");
SET n=replace(n,'’',"'");
#strip out any brackets, single quotes around words
SET n=REPLACE(n,'(',' ');
SET n=REPLACE(n,')',' ');
SET n=REPLACE(n," '",' ');
SET n=REPLACE(n,"' "," ");
#replace double-quotes, dots, commas or hyphens with spaces
SET n=REPLACE(n,'"',' ');
SET n=REPLACE(n,'.',' ');
SET n=replace(n,',',' ');
Set n=replace(n,'-',' ');
#abbreviate common words
SET n=REPLACE (n,' COMPANY ',' CO ');
SET n=REPLACE(n,' LIMITED ',' LTD ');
SET n=REPLACE(n,' AND ',' & ');
Set n=replace(n,' HONGKONG ',' HK ');
SET n=REPLACE(n," INT'L ",' INTERNATIONAL ');
SET n=replace(n,' PRIVATE ',' PTE ');
#remove repeated spaces
WHILE instr(n,'  ')>0 DO
	SET n=replace(n,'  ',' ');
END WHILE;

#merge the leading initials of a string, e.g. "A B C Limited" = "ABC Limited"
WHILE MID(n,x+2,1)=' ' and x<char_length(n) DO
	set x=x+2;
END WHILE;
IF x>3 then
	SET n=concat(' ',replace(left(n,x-1),' ',''),right(n,char_length(n)-x+1));
END if;
#replace multi-word phrases
SET n=REPLACE(n,' PUBLIC LTD CO ',' PLC ');
SET n=REPLACE(n,' PUBLIC CO LTD ',' PCL ');
Set n=replace(n,' HONG KONG ',' HK ');
Set n=replace(n,' H K ',' HK ');
#concatenate words spaced with & 
set n=replace(n,' & ','&');
#now remove the leading and trailing space
SET n=Trim(n);
RETURN n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ordCodeLast` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `ordCodeLast`(p INT) RETURNS varchar(5) CHARSET utf8mb4
    READS SQL DATA
BEGIN
DECLARE sc varchar(5);
SELECT 
    stockCode into sc
FROM
    stocklistings sl JOIN issue i ON sl.issueID = i.ID1 
WHERE
    i.issuer = p
        AND i.typeID NOT IN(1,2,40,41,46)
        AND stockExID IN (1,20,22,23,38)
        AND NOT 2ndCtr
        ORDER BY firstTradeDate DESC
LIMIT 1;
RETURN sc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ordCodeThen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `ordCodeThen`(p INT,d DATE) RETURNS varchar(5) CHARSET utf8mb4
    READS SQL DATA
BEGIN
DECLARE sc varchar(5);
SELECT 
    stockCode into sc
FROM
    stocklistings sl JOIN issue i ON sl.issueID = i.ID1 
WHERE
    i.issuer = p
        AND i.typeID NOT IN(1,2,40,41,46)
        AND stockExID IN (1,20,22,23,38)
        AND NOT 2ndCtr
        AND (ISNULL(firstTradeDate) OR FirstTradeDate <= d)
        AND (ISNULL(DelistDate) OR DelistDate > d)
LIMIT 1;
RETURN sc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ordEver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `ordEver`(p INT) RETURNS mediumint
    READS SQL DATA
BEGIN
DECLARE ANSWER MEDIUMINT;
SELECT 
    issueID
INTO ANSWER FROM
    stocklistings sl
        JOIN
    issue i ON sl.issueID = i.ID1
WHERE
    i.issuer = p
        AND i.typeID NOT IN (1 , 2, 40, 41, 46)
        AND stockExID IN (1 , 20, 22, 23, 38)
        AND NOT 2ndCtr
LIMIT 1;
RETURN ANSWER;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ordThen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `ordThen`(p INT,d DATE) RETURNS mediumint
    READS SQL DATA
BEGIN
DECLARE ANSWER MEDIUMINT;
SELECT 
    issueID
INTO ANSWER FROM
    stocklistings sl
        JOIN
    issue i ON sl.issueID = i.ID1
WHERE
    i.issuer = p
        AND i.typeID NOT IN(1,2,40,41,46)
        AND stockExID IN (1 , 20, 22, 23, 38)
        AND NOT 2ndCtr
        AND (ISNULL(firstTradeDate)
        OR FirstTradeDate <= d)
        AND (ISNULL(DelistDate) OR DelistDate >= d)
LIMIT 1;
RETURN ANSWER;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `orgHash` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `orgHash`(n varchar(255)) RETURNS bigint unsigned
    NO SQL
    DETERMINISTIC
RETURN conv(left(MD5(normOrg(n)),16),16,10) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `orgName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `orgName`(p INT,d DATE) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
#fetch the name of an org on a date
DECLARE n VARCHAR(255);
SELECT IFNULL((SELECT oldName FROM namechanges WHERE NOT isnull(oldName) AND dateChanged>=d AND personID=p ORDER BY dateChanged LIMIT 1),name1) INTO n FROM organisations WHERE personID=p;
RETURN n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `outstanding` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `outstanding`(i int,d date) RETURNS double
    READS SQL DATA
return IF(isNull(d),
(select outstanding from issuedshares where issueID=i order by atDate DESC limit 1),
(select outstanding from issuedshares where issueID=i and atDate<=d	order by atDate DESC limit 1)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `peerage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `peerage`(p INT) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
RETURN (SELECT CONCAT(personID,',',name1) from directorships JOIN organisations ON company=personID where director=p and positionID=551 order by apptDate DESC limit 1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `pendsh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `pendsh`(i int,d date) RETURNS double
    READS SQL DATA
RETURN 
IFNULL ((
SELECT SUM(FLOOR(consol*rechold*ratio)) FROM
(SELECT ratio,IF(d<recDate,outstanding(i,d),outstanding(i,recDate)) AS recHold,
IFNULL((SELECT new/old FROM events WHERE eventType=4 AND issueID=i AND exDate<d AND exDate>t1.exDate AND isNull(cancelDate) LIMIT 1),1) AS consol
FROM
(SELECT exDate,IFNULL(bookCloseTo,bookCloseFr) AS recDate,distDate,new/old AS ratio FROM events
WHERE issueID=i AND eventType IN(2,8,5,15)
AND d>=exDate AND d<distDate AND (isnull(cancelDate) OR cancelDate>d)) AS t1) AS t2)
,0) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `prevYearEnd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `prevYearEnd`(f INT,d DATE) RETURNS date
    READS SQL DATA
RETURN (SELECT IFNULL((SELECT MAX(recordDate) FROM documents WHERE orgID=f AND docTypeID=0 AND recordDate<d),DATE_SUB(d,INTERVAL 18 MONTH))) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `priced` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `priced`(i INT) RETURNS tinyint(1)
    READS SQL DATA
RETURN (SELECT EXISTS(SELECT * from ccass.quotes where issueID=i)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `pwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `pwd`(s varchar(255)) RETURNS varchar(41) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    NO SQL
    DETERMINISTIC
RETURN concat('*',UPPER(SHA1(UNHEX(SHA1(s))))) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `quarterdays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `quarterdays`(d DATE) RETURNS tinyint
    NO SQL
    DETERMINISTIC
RETURN DATEDIFF(
        MAKEDATE(YEAR(d), 1) + INTERVAL QUARTER(d) QUARTER, 
        MAKEDATE(YEAR(d), 1) + INTERVAL QUARTER(d) QUARTER - INTERVAL 1 QUARTER 
    ) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `service` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `service`(apptDate DATE,resDate DATE,snap DATE) RETURNS double
    NO SQL
    DETERMINISTIC
BEGIN
declare answer double;
IF NOT isnull(apptDate) AND (isNull(resDate) OR  resDate<>'1000-01-01') Then
	If resdate<snap Then
		set answer=datediff(resdate,apptDate)/365.25;
	Else
		set answer=datediff(snap,apptDate)/365.25;
	End if;
else
	set answer=null;
end if;		
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `setUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `setUserID`(uID INT) RETURNS int
    READS SQL DATA
RETURN IFNULL(uID,(SELECT ID from users WHERE name=substring_index(user(),'@',1) LIMIT 1)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `splitadj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `splitadj`(i INT, d DATE) RETURNS double
    READS SQL DATA
RETURN IFNULL((SELECT EXP(SUM(LOG(adjust)))
FROM events USE INDEX (issueEX) WHERE issueID=i AND eventType IN(4,5) AND isNull(cancelDate)
	AND exDate<=CURDATE() AND exDate>d AND Not isNull(adjust)),1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `stockCodeThen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `stockCodeThen`(i INT,d date) RETURNS varchar(5) CHARSET latin1
    READS SQL DATA
BEGIN
DECLARE answer VARCHAR(5);
SELECT stockCode INTO answer FROM stocklistings WHERE stockExID IN(1,20,22,23,38)
AND issueID=i AND (isNull(firstTradeDate) or FirstTradeDate<=d) AND (isNull(DelistDate) OR DelistDate>=d) LIMIT 1;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `stripext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `stripext`(s varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
BEGIN
#remove all suffixes in parentheses from a name, replace hyphens with spaces, remove double spaces
WHILE right(s,1)=')' AND instr(s,'(')>0 DO
	set s=trim(left(s,char_length(s)-instr(reverse(s),'(')));
END WHILE;
set s=replace(s,'-',' ');
set s=replace(s,"’","'");
set s=replace(s,"`","'");
WHILE instr(s,'  ')>0 DO
	set s=replace(s,'  ',' ');
END WHILE;
RETURN If (s='',NULL,s);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sumStakes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `sumStakes`(i int,d date,h int) RETURNS double
    READS SQL DATA
RETURN
(SELECT SUM(IFNULL(stake,IFNULL(shares/outstanding(i,d),0)))
FROM sholdings s JOIN
(select max(atdate) as maxDate,holderID,heldAs From sholdings where issueID=i and holderID<>h and atDate<=d group by holderID,heldAs) as t1
ON s.holderID=t1.holderID AND atDate=maxDate AND s.heldAs=t1.heldAs AND issueID=i) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `totalos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `totalos`(p int,d date) RETURNS double
    READS SQL DATA
RETURN 
(SELECT SUM((SELECT outstanding FROM issuedshares WHERE issueID=ID1 AND atDate<=d ORDER BY atDate DESC LIMIT 1))
 FROM issue WHERE issuer=p AND typeID IN(0,6,7,8)) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `totRet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `totRet`(ID INT,fromDate DATE,toDate DATE) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
IF isNull(toDate) Then
        Set toDate=CURDATE();
END IF;
IF isNull(fromDate) Then
        Set fromDate='1994-01-03';
END IF;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,toDate);
If lastQTD>firstQFD Then
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF;
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `totRetDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `totRetDays`(ID INT,fromDate DATE,days INT) RETURNS double
    READS SQL DATA
BEGIN
DECLARE answer Double;
DECLARE firstQFD date;
DECLARE lastQTD date;
DECLARE firstQF double;
DECLARE lastQT double;
SET firstQFD=firstQuoteDate(ID,fromDate);
SET lastQTD=lastQuoteDate(ID,firstQFD+INTERVAL days DAY);
If lastQTD>firstQFD Then
        SELECT closing INTO firstQF FROM ccass.quotes WHERE issueID=ID AND atDate=firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes WHERE issueID=ID AND atDate=lastQTD;
        SET answer=getAdjust(ID,firstQFD)/getAdjust(ID,lastQTD)*lastQT/firstQF;
End If;
RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `upperDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `upperDate`(d DATE,a TINYINT UNSIGNED) RETURNS date
    DETERMINISTIC
BEGIN
#find the upper bound based on date accuracy; last day of month or year
#use this to show all possible records based on a snapshot date
IF a=1 Then	return date_sub(makedate(YEAR(d)+1,1),INTERVAL 1 DAY);
ELSEIF a=2 Then	return LAST_DAY(d);
ELSE return d;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `washklistco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `washklistco`(p INT,d DATE) RETURNS bit(1)
    READS SQL DATA
BEGIN
DECLARE answer bit(1) DEFAULT 1;
DECLARE count1 int;
SELECT Count(*) into count1 FROM issue i JOIN stocklistings s 
ON i.ID1=s.issueID
 WHERE issuer=p
 AND stockExID IN(1,20,23)
 AND i.typeID NOT IN(1,2,40,41,46)
 AND (isNull(firstTradeDate) or firstTradeDate<=d)
 AND (isNull(delistDate) or delistDate>d)
 GROUP BY issuer;
 If isNull(count1) Then set answer=0;
 END IF;
 RETURN answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `wasHKlisted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` FUNCTION `wasHKlisted`(i INT,d DATE) RETURNS bit(1)
    READS SQL DATA
BEGIN
DECLARE answer bit(1) DEFAULT 1;
DECLARE count1 int;
SELECT Count(*) into count1 FROM stocklistings WHERE issueID=i
 AND (isNull(firstTradeDate) or firstTradeDate<=d)
 AND (isNull(delistDate) or delistDate>d)
 GROUP BY issueID;
 If isNull(count1) Then set answer=0;
 END IF;
 RETURN answer;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `addEvents`()
BEGIN
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,exDate,bookCloseFr,bookCloseTo,acceptDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,1,issueID,announced,capChangeType1,exDate,bookCloseFr,bookCloseTo,Date1,New1,Old1,curr1,price1,priceHKD1,issueID1,Descrip1
   FROM entlive
   WHERE entlive.capChangeType1 In (2,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,exDate,bookCloseFr,bookCloseTo,acceptDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,2,issueID,announced,capChangeType2,exDate,bookCloseFr,bookCloseTo,Date2,New2,Old2,curr2,price2,priceHKD2,issueID2,Descrip2
   FROM entlive
   WHERE entlive.capChangeType2 In (2,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,exDate,bookCloseFr,bookCloseTo,acceptDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,3,issueID,announced,capChangeType3,exDate,bookCloseFr,bookCloseTo,Date3,New3,Old3,curr3,price3,priceHKD3,issueID3,Descrip3
   FROM entlive
   WHERE entlive.capChangeType3 In (2,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,exDate,bookCloseFr,bookCloseTo,acceptDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,4,issueID,announced,capChangeType4,exDate,bookCloseFr,bookCloseTo,Date4,New4,Old4,curr4,price4,priceHKD4,issueID4,Descrip4
   FROM entlive
   WHERE entlive.capChangeType4 In (2,8,45,46,47,48,49,52,54)
   ORDER BY importID;

   INSERT IGNORE INTO Events
   (importID,subEnt,issueID,announced,eventType,exDate,new,old,notes)
   SELECT importID,1,issueID,announced,capChangeType1,Date1,New1,Old1,Descrip1
   FROM entlive
   WHERE entlive.capChangeType1 In(4)
   ORDER BY importID;
   INSERT IGNORE INTO Events
   (importID,subEnt,issueID,announced,eventType,exDate,new,old,notes)
   SELECT importID,2,issueID,announced,capChangeType2,Date2,New2,Old2,Descrip2
   FROM entlive
   WHERE entlive.capChangeType2 In(4)
   ORDER BY importID;
   INSERT IGNORE INTO Events
   (importID,subEnt,issueID,announced,eventType,exDate,new,old,notes)
   SELECT importID,3,issueID,announced,capChangeType3,Date3,New3,Old3,Descrip3
   FROM entlive
   WHERE entlive.capChangeType3 In(4)
   ORDER BY importID;
   INSERT IGNORE INTO Events
   (importID,subEnt,issueID,announced,eventType,exDate,new,old,notes)
   SELECT importID,4,issueID,announced,capChangeType4,Date4,New4,Old4,Descrip4
   FROM entlive
   WHERE entlive.capChangeType4 In(4)
   ORDER BY importID;

INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,yearEnd,exDate,bookCloseFr,bookCloseTo,distDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,1,issueID,announced,capChangeType1,yearEnd,exDate,bookCloseFr,bookCloseTo,payDate,New1,Old1,curr1,price1,priceHKD1,issueID1,Descrip1
   FROM entlive
   WHERE entlive.capChangeType1 Not In (2,4,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,yearEnd,exDate,bookCloseFr,bookCloseTo,distDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,2,issueID,announced,capChangeType2,yearEnd,exDate,bookCloseFr,bookCloseTo,payDate,New2,Old2,curr2,price2,priceHKD2,issueID2,Descrip2
   FROM entlive
   WHERE entlive.capChangeType2 Not In (2,4,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,yearEnd,exDate,bookCloseFr,bookCloseTo,distDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,3,issueID,announced,capChangeType3,yearEnd,exDate,bookCloseFr,bookCloseTo,payDate,New3,Old3,curr3,price3,priceHKD3,issueID3,Descrip3
   FROM entlive
   WHERE entlive.capChangeType3 Not In (2,4,8,45,46,47,48,49,52,54)
   ORDER BY importID;
INSERT IGNORE INTO Events
  (importID,subEnt,issueID,announced,eventType,yearEnd,exDate,bookCloseFr,bookCloseTo,distDate,new,old,currID,price,priceHKD,issue2,notes)
   SELECT importID,4,issueID,announced,capChangeType4,yearEnd,exDate,bookCloseFr,bookCloseTo,payDate,New4,Old4,curr4,price4,priceHKD4,issueID4,Descrip4
   FROM entlive
   WHERE entlive.capChangeType4 Not In (2,4,8,45,46,47,48,49,52,54)
   ORDER BY importID;

UPDATE events ev INNER JOIN entlive en ON ev.importID = en.importID
        SET en.Event1 = eventID
        WHERE ev.subEnt=1;
UPDATE events ev INNER JOIN entlive en ON ev.importID = en.importID
        SET en.Event2 = eventID
        WHERE ev.subEnt=2;
UPDATE events ev INNER JOIN entlive en ON ev.importID = en.importID
        SET en.Event3 = eventID
        WHERE ev.subEnt=3;
UPDATE events ev INNER JOIN entlive en ON ev.importID = en.importID
        SET en.Event4 = eventID
        WHERE ev.subEnt=4;
UPDATE entlive SET autoprocess=True;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `aliasSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `aliasSearch`(IN n1 varchar(255),n2 varchar(255))
BEGIN
DECLARE s varchar(10000);
DECLARE sn1 varchar(255);
DECLARE sn2 varchar(255);
SET n1 = replace(n1,"'","''");
SET n2 = replace(n2,"'","''");
SET sn1 = concat(" ",replace(replace(n1,"-"," ")," ","[- ]")," ");
SET sn2 = concat(" ",replace(replace(n2,"-"," ")," ","([- ])?")," ");
SET @s="SELECT a.personID, Year(Now())- YOB AS EstAge,YOB,MOB,DOB,p.sex, Title, n1, n2, cn, alias
FROM (alias a INNER JOIN people p ON a.personID=p.personID) LEFT JOIN titles t ON p.titleID=t.titleID WHERE ";
If n1="" And n2="" Then
	SET @s=CONCAT(@s,"1=0");
ELSEIF n1="" Then
	SET @s=CONCAT(@s,"concat(' ',n2,' ') rlike '",sn2,"' OR concat(' ',n2,' ') like '% ",n2," %'");
ELSEIF n2="" Then
	SET @s=CONCAT(@s,"concat(' ',n1,' ') rlike '",sn1,"' OR concat(' ',n1,' ') like '% ",n1," %'");
ELSE
	SET @s=CONCAT(@s,"(concat(' ',n1,' ') rlike '",sn1,"' OR concat(' ',n1,' ') like '% ",n1," %') AND
    (concat(' ',n2,' ') rlike '",sn2,"' OR concat(' ',n2,' ') like '% ",n2," %')");
END IF;
SET @s=CONCAT(@s," ORDER BY n1, n2 LIMIT 100;");
PREPARE s from @s;
EXECUTE s;
DEALLOCATE PREPARE s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `allTotRets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `allTotRets`(IN d1 DATE,IN d2 DATE,incIPO BOOLEAN,IN orderBy VARCHAR(100))
BEGIN
SET @d1=d1;
SET @d2=d2;
SET @stmt=CONCAT('SELECT name1,typeShort,issueID,delisted(issueID,?) AS delisted,lastCode(issueID) AS lastCode,buyDate,sellDate,totRet,
IF(DATEDIFF(sellDate,buyDate)>=180,POW(totRet,365.25/DATEDIFF(sellDate,buyDate)),NULL) AS CAGRet FROM
(SELECT name1,typeShort,t2.issueID,buyDate,sellDate,
((SELECT closing FROM ccass.quotes WHERE issueID=t2.issueID AND atDate=sellDate)/
(SELECT closing FROM ccass.quotes WHERE issueID=t2.issueID AND atDate=buyDate)*
getAdjust(issueID,buyDate)/getAdjust(issueID,sellDate)) as totRet FROM
(SELECT name1,typeShort,issueID,
firstQuoteDate(issueID,?) AS buyDate,
lastQuoteDate(issueID,?) AS sellDate FROM
(SELECT DISTINCT issueID,issuer,typeID FROM stocklistings JOIN issue ON stockListings.issueID=issue.ID1
WHERE stockExID IN(1,20,23) AND typeID IN(0,6,7,8,10)
AND (isNull (firstTradeDate) OR firstTradeDate<=?) AND (isNull(delistDate) OR delistDate>?)) AS t1
JOIN (organisations,sectypes) ON issuer=personID AND t1.typeID=sectypes.typeID) AS t2) AS t3 ORDER BY ',orderBy);
PREPARE stmt FROM @stmt;
IF incIPO Then
        EXECUTE stmt USING @d2,@d1,@d2,@d2,@d1;
ELSE
        EXECUTE stmt USING @d2,@d1,@d2,@d1,@d1;
END IF;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `allTotRets_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `allTotRets_test`(IN d1 DATE,IN d2 DATE)
BEGIN
SELECT name1,typeShort,issueID,delisted(issueID,d2) AS delisted,buyDate,sellDate,totRet,
IF(DATEDIFF(sellDate,buyDate)>=180,POW(totRet,365.25/DATEDIFF(sellDate,buyDate)),NULL) AS CAGRet FROM
(SELECT name1,typeShort,t2.issueID,buyDate,sellDate,
((SELECT closing FROM ccass.quotes WHERE issueID=t2.issueID AND atDate=sellDate)/
(SELECT closing FROM ccass.quotes WHERE issueID=t2.issueID AND atDate=buyDate)*
getAdjust(issueID,buyDate)/getAdjust(issueID,sellDate)) as totRet FROM
(SELECT name1,typeShort,issueID,
firstQuoteDate(issueID,d1) AS buyDate,
lastQuoteDate(issueID,d2) AS sellDate FROM
(SELECT DISTINCT issueID,issuer,typeID FROM stocklistings JOIN issue ON stockListings.issueID=issue.ID1
WHERE stockExID IN(1,20,23) AND typeID IN(0,6,7,8)
AND (isNull (firstTradeDate) OR firstTradeDate<d2) AND (isNull(delistDate) OR delistDate>d1)) AS t1
JOIN (organisations,sectypes) ON issuer=personID AND t1.typeID=sectypes.typeID) AS t2) AS t3
ORDER BY totRet DESC,name1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dirsHKatDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `dirsHKatDate`(IN d date)
BEGIN
SELECT issuer,director,name1,name2,YOB,sex,directorships.positionID,posShort,status,statusText FROM
(SELECT DISTINCT issuer FROM issue JOIN stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (directorships,people,positions,status)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
 AND positions.status=status.statusID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=d)
 AND (isNull(resDate) OR resDate>d)
 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fembdrets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `fembdrets`(IN d1 date,IN d2 date)
BEGIN
SELECT fdirs,sum(not isnull(issueRet)) as numStocks,avg(issueRet)-1 AS avgret FROM
(SELECT issueID, sum(sex='F') as fdirs,totret(issueID,d1,d2) as issueRet FROM
(SELECT issuer,issueID
 FROM issue JOIN stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,3,8,16,40,41,43,46) AND
(isNull(SEHKcurr) or SEHKcurr=0)  AND
(isNull(firstTradeDate) OR FirstTradeDate<=d1) AND
(isNull(deListDate) OR delistDate>d1)) as t1
JOIN (directorships,people,positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1 
 AND (isnull(apptDate) OR apptDate<=d1) AND (isNull(resDate) OR resDate>d1)
GROUP BY issueID) as t3
GROUP BY fdirs
ORDER BY fdirs DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HAB1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HAB1`(IN d date)
BEGIN
select name,t1.issuer,t1.issueID,t1.typeID,t1.stockCode,
t2.issueID,t2.typeID,t2.stockCode,t2.stockExID as stockExID,typeShort FROM
(select name1 as name,issuer,issueID,typeID,stockcode from stocklistings
	join (issue,organisations) 
	on stocklistings.issueID=issue.ID1
	and issue.issuer=organisations.personID
where typeID=6
 and (isnull(firstTradeDate) or firstTradeDate<=d)
 and (isnull(delistdate) or delistdate>d) and stockexID in(1,20)) as t1
join (select issuer,issueID,issue.typeID,StockCode,stockExID,typeShort from stocklistings 
	join (issue,secTypes)
	on stocklistings.issueID=issue.ID1
	and issue.typeID=secTypes.typeID
where issue.typeID IN(7,8)
 and (isnull(firstTradeDate) or firstTradeDate<=d)
 and (isnull(delistdate) or delistdate>d)
 and stockexID in(3,4)) as t2
On t1.issuer=t2.issuer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hkbdanalsnap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `hkbdanalsnap`(IN p1 DATE, IN orderBy VARCHAR(100))
BEGIN
SET @p1=p1;
SET @stmt=CONCAT('SELECT name,personID,ordCodeThen(personID,?)sc,dirs,INE,female,INE/dirs as INEPropn,female/dirs AS femPropn,age FROM
(SELECT t2.name,issuer AS personID,count(director) as dirs,sum(status=3) as INE,sum(sex=''F'') as female, Year(?)-AVG(YOB) as age FROM
(SELECT issuer,name1 as name FROM
(SELECT DISTINCT issuer FROM issue JOIN stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=?) AND
(isNull(deListDate) OR delistDate>?)) as t1
JOIN organisations on t1.issuer=organisations.personID) AS t2
LEFT JOIN (directorships,people,positions)
 ON t2.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1 AND (isnull(apptDate) OR apptDate<=?) AND (isNull(resDate) OR resDate>?)
GROUP BY issuer) as t4 ORDER BY ',orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @p1,@p1,@p1,@p1,@p1,@p1;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKdirsAgeDistn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKdirsAgeDistn`(IN d DATE,IN orderBy VARCHAR(100))
BEGIN
SET @d=d;
SET @stmt=CONCAT('SELECT YOB,count(director) as dirs,sum(numCos) as seats,sum(sex=''F'') as female,
 sum((sex=''F'')*numCos) AS femSeats FROM
(SELECT director,count(company) AS numCos,YOB,sex FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=?) AND
(isNull(deListDate) OR delistDate>?)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=?)
 AND (isNull(resDate) OR resDate>?)
GROUP BY director) as t3
GROUP BY YOB
ORDER BY ',orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @d,@d,@d,@d;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKdirsDistnCos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKdirsDistnCos`(IN d DATE)
BEGIN
SELECT numSeats,count(issuer) as numCos,sum(female) as femSeats,AVG(YOB1) AS YOB2 FROM
(SELECT count(director) AS numSeats,issuer,sum(sex='F') as female,AVG(YOB) as YOB1 FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY issuer) as t3
GROUP BY numSeats
ORDER BY numSeats DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKdirsDistnPpl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKdirsDistnPpl`(IN d DATE)
BEGIN
SELECT numSeats,count(director) as numPeople,sum(sex='F') AS female FROM
(SELECT director,count(issuer) as numSeats,sex FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY director) as t3
GROUP BY numSeats
ORDER BY numSeats DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKdirsPerPerson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKdirsPerPerson`(IN d DATE,IN orderBy VARCHAR(100))
BEGIN
SET @d=d;
SET @stmt=CONCAT('SELECT director,fnameppl(name1,name2,cName) AS name,count(company) AS numSeats,
sum(status=3) AS INED,YOB,sex FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=?) AND
(isNull(deListDate) OR delistDate>?)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=?)
 AND (isNull(resDate) OR resDate>?)
GROUP BY director
ORDER BY ',orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @d,@d,@d,@d;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKdirsTypeSex` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKdirsTypeSex`(IN d Date)
BEGIN
SELECT sex,sum(dirs) as seats,sum(NED) as NEDs,sum(INED) as INEDs FROM
(SELECT count(director) AS dirs,issuer,sex,sum(status=2) as NED,sum(status=3) as INED FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions,enigma.status)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
 AND positions.status=status.statusID
WHERE positions.rank=1
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY issuer,sex) as t3
GROUP BY sex order by sex;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKfdirsDistn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKfdirsDistn`(IN d DATE)
BEGIN
SELECT fdirs,count(issuer) as numberOfCos FROM
(SELECT issuer, count(director) as fdirs FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1 AND people.sex='F'
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY issuer) as t3
GROUP BY fdirs
ORDER BY fdirs DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKinedDistnCos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKinedDistnCos`(IN d DATE)
BEGIN
SELECT numSeats,count(issuer) as numCos FROM
(SELECT count(director) AS numSeats,issuer FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1 AND positions.status=3
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY issuer) as t3
GROUP BY numSeats
ORDER BY numSeats DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HKinedDistnPpl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `HKinedDistnPpl`(IN d DATE)
BEGIN
SELECT numSeats,count(director) as numPeople,sum(sex='F') AS female FROM
(SELECT director,count(issuer) as numSeats,sex FROM
(SELECT DISTINCT issuer FROM enigma.issue JOIN enigma.stocklistings ON issue.ID1=stocklistings.issueID
 WHERE stockExID IN(1,20) and typeID Not In (1,2,40,41,46) AND
(isNull(firstTradeDate) OR FirstTradeDate<=d) AND
(isNull(deListDate) OR delistDate>d)) as t1
JOIN (enigma.directorships,enigma.people,enigma.positions)
 ON t1.issuer=directorships.company
 AND directorships.positionID=positions.positionID
 AND directorships.director=people.personID
WHERE positions.rank=1 AND positions.status=3
 AND (isnull(apptDate) OR apptDate<=d) AND (isNull(resDate) OR resDate>d)
GROUP BY director) as t3
GROUP BY numSeats
ORDER BY numSeats DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holderhist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holderhist`(IN i INT, h INT)
BEGIN
SELECT s.ID as recID,holderID,atDate,heldAs,heldAsTxt,shares,stake,name as user,s.userID,maxRank('sholdings',s.userID)uRank,
IF(isNull(stake),shares/outstanding(i,s.atDate),stake) as stakeComp
FROM sholdings s
JOIN (users u,heldAs h) ON s.userID=u.ID AND s.heldAs=h.ID
WHERE s.issueID=i AND s.holderID=h
ORDER BY atDate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdersDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdersDate`(IN i INT,d date)
BEGIN
SELECT s.ID as recID, s.holderID,s.modified,s.atDate,s.heldAs,heldAsTxt,shares,stake,namepsn(o.name1,p.name1,p.name2) as holderName,
IF(isNull(o.name1),'P','O') as ht,orgType,s.userID,maxRank('sholdings',s.userID)uRank,u.name as user,CAST(p.cName AS char) as cName,
IF(isNull(stake),shares/outstanding(i,d),stake) as stakeComp,
wasHKlistco(s.holderID,d) AS hklistco
FROM sholdings s JOIN
(select max(atdate) as maxDate,holderID,heldAs From sholdings where issueID=i and (isNull(atDate) Or atDate<=d) group by holderID,heldAs) as t1
ON s.holderID=t1.holderID AND (atDate=maxDate OR (isNull(atDate) AND isNull(maxDate))) AND s.heldAs=t1.heldAs AND issueID=i
JOIN (users u,heldAs h) ON s.userID=u.ID AND s.heldAs=h.ID
LEFT JOIN organisations o on s.holderID=o.personID
LEFT JOIN people p on s.holderID=p.personID
WHERE (isNull(stake) and isNull(shares)) Or shares>0 Or stake>0 Or s.atDate=d
ORDER BY shares DESC,stake DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdersEver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdersEver`(IN i int)
BEGIN
SELECT s.ID as recID,s.holderID,s.atDate,s.heldAs,heldAsTxt,shares,stake,namepsn(o.name1,p.name1,p.name2) as holderName,
IF(isNull(o.name1),'P','O') as ht,u.name as user,
IF(isNull(stake),shares/outstanding(i,s.atDate),stake) as stakeComp
FROM sholdings s
JOIN (users u,heldAs h) ON s.userID=u.ID AND s.heldAs=h.ID
LEFT JOIN organisations o on s.holderID=o.personID
LEFT JOIN people p on s.holderID=p.personID
WHERE s.issueID=i
ORDER BY holderName,heldAsTxt,s.atDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdersLatest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdersLatest`(in i INT)
BEGIN
SELECT s.ID as recID,s.holderID,s.atDate,s.heldAs,heldAsTxt,shares,stake,namepsn(o.name1,p.name1,p.name2) holderName,
IF(isNull(o.name1),'P','O') as ht,u.name as user,
IFNULL(stake,shares/(SELECT outstanding FROM issuedShares WHERE issueID=i ORDER BY atDate DESC LIMIT 1)) stakeComp
FROM sholdings s JOIN
(select max(atdate) as maxDate,holderID,heldAs From sholdings where issueID=i group by holderID,heldAs) t1
ON s.holderID=t1.holderID AND atDate=maxDate AND s.heldAs=t1.heldAs AND issueID=i
JOIN (users u,heldAs h) ON s.userID=u.ID AND s.heldAs=h.ID
LEFT JOIN organisations o ON s.holderID=o.personID
LEFT JOIN people p ON s.holderID=p.personID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdersPrior` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdersPrior`(IN i int,d date)
BEGIN
SELECT s.ID as recID,s.holderID,s.atDate,s.heldAs,heldAsTxt,shares,stake,namepsn(o.name1,p.name1,p.name2) as holderName,
IF(isNull(o.name1),'P','O') as ht,u.name as user,
IF(isNull(stake),shares/outstanding(i,s.atDate),stake) as stakeComp
FROM sholdings s JOIN (users u,heldAs h) ON s.userID=u.ID AND s.heldAs=h.ID
LEFT JOIN organisations o on s.holderID=o.personID
LEFT JOIN people p on s.holderID=p.personID
WHERE s.issueID=i AND s.atDate<=d
ORDER BY holderName,heldAsTxt,s.atDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdingsDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdingsDate`(in h INT,d DATE)
BEGIN
SELECT s.ID as recID,s.issueID,s.atDate,s.heldAs,heldAsTxt,shares,stake,
s.userID,u.name as user,i.issuer,CONCAT(name1,':',typeShort) as issueName,
IF(isNull(stake),shares/outstanding(s.issueID,s.atDate),stake) as stakeComp,
wasHKlistco(i.issuer,d) AS hklistco
FROM sholdings s JOIN
(select issueID,heldAs,Max(atDate) as maxDate FROM sholdings WHERE holderID=h AND atDate<=d GROUP by issueID) as t1
ON s.issueID=t1.issueID and s.heldAs=t1.heldAs and s.atDate=t1.maxDate and holderID=h
JOIN issue i on s.issueID=i.ID1
JOIN organisations o on i.issuer=o.personID
JOIN sectypes st on i.typeID=st.typeID
JOIN heldAs ha on s.heldAs=ha.ID
JOIN users u on s.userID=u.ID
order by issueName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdingsEver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdingsEver`(in h int)
BEGIN
SELECT s.ID as recID,s.issueID,s.atDate,s.heldAs,heldAsTxt,shares,stake,
u.name as user,i.issuer,CONCAT(name1,':',typeShort) as issueName,
IF(isNull(stake),shares/outstanding(s.issueID,s.atDate),stake) as stakeComp
FROM sholdings s
JOIN issue i on s.issueID=i.ID1
JOIN organisations o on i.issuer=o.personID
JOIN sectypes st on i.typeID=st.typeID
JOIN heldAs ha on s.heldAs=ha.ID
JOIN users u on s.userID=u.ID
WHERE s.holderID=h
order by issueName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdingsLatest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdingsLatest`(in h INT)
BEGIN
SELECT s.ID as recID,s.issueID,s.atDate,s.heldAs,heldAsTxt,shares,stake,
u.name as user,i.issuer,CONCAT(name1,':',typeShort) as issueName,
IF(isNull(stake),shares/outstanding(s.issueID,s.atDate),stake) as stakeComp
FROM sholdings s JOIN
(select issueID,heldAs,Max(atDate) as maxDate FROM sholdings WHERE holderID=h GROUP by issueID) as t1
ON s.issueID=t1.issueID and s.heldAs=t1.heldAs and s.atDate=t1.maxDate and holderID=h
JOIN issue i on s.issueID=i.ID1
JOIN organisations o on i.issuer=o.personID
JOIN sectypes st on i.typeID=st.typeID
JOIN heldAs ha on s.heldAs=ha.ID
JOIN users u on s.userID=u.ID
order by issueName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `holdingsPrior` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `holdingsPrior`(in h INT,d DATE)
BEGIN
SELECT s.ID as recID,s.issueID,s.atDate,s.heldAs,heldAsTxt,shares,stake,
u.name as user,i.issuer,CONCAT(name1,':',typeShort) as issueName,
IF(isNull(stake),shares/outstanding(s.issueID,s.atDate),stake) as stakeComp
FROM sholdings s
JOIN issue i on s.issueID=i.ID1
JOIN organisations o on i.issuer=o.personID
JOIN sectypes st on i.typeID=st.typeID
JOIN heldAs ha on s.heldAs=ha.ID
JOIN users u on s.userID=u.ID
WHERE s.holderID=h and s.atDate<=d
order by issueName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `insertUserID`(IN tbl VARCHAR(45),INOUT uID MEDIUMINT UNSIGNED)
BEGIN
DECLARE msg VARCHAR(255);
DECLARE conUser VARCHAR(45);
SET conUser=substring_index(user(),'@',1);
IF ISNULL((SELECT ID FROM enigma.wsroles WHERE `MSuser`=conUser)) Then
	#not a wsrole, must be a local user
	SET uID=(SELECT ID FROM enigma.users WHERE `name`=conUser);
	IF isNull(UID) OR uID=0 THEN
		SET msg=CONCAT('User ',conUser,' not found in users table');
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=msg;
	END IF;
ELSEIF isNull(UID) OR uID=0 THEN
	#role-user didn't specify userID in INSERT query
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Online INSERT did not specify userID';
ELSE
	SET conUser=(SELECT name FROM enigma.users WHERE `ID`=uID);
END IF;
IF NOT (SELECT EXISTS(SELECT * FROM wsprivs p JOIN wsroletabs t ON p.roleID=t.roleID WHERE p.`userID`= uID AND t.`tblname`=tbl AND live)) THEN
	SET msg=CONCAT('User ',conUser,' cannot write to table ',tbl);
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=msg;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `leagueDirsHK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `leagueDirsHK`(minPos INT,orderBy VARCHAR(100),
	fromDate VARCHAR(10),toDate VARCHAR(10),hide VARCHAR(1),c TINYINT)
BEGIN
DECLARE ID,org,dir,lastOrg,lastDir,firstPos,lastPos INT;
DECLARE app,res,firstApp,lastRes DATE;
DECLARE done,ins BOOL;
DECLARE retStr VARCHAR(200);
#I wanted to modify this cursor based on the inputs, but MySQL requires all declarations to come at the top
DECLARE rs CURSOR FOR SELECT ID1,company,director,apptDate,resDate FROM directorships d
	JOIN (positions p,listedCosHKever lhk)
	ON d.positionID=p.positionID
    WHERE `rank`=1 AND d.company=lhk.issuer
    ORDER BY company,director,apptDate;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=True;
SET done=False;
OPEN rs;
#A mysql bug is that you cannot reopen a temporary table, and I need to refer to this table twice
#I tried workaround using Common Table Expression and selecting from that, but it didn't help, so build 2 temp tables
DROP TEMPORARY TABLE IF EXISTS ds1;
DROP TEMPORARY TABLE IF EXISTS ds2;
CREATE TEMPORARY TABLE ds1(org INT,dir INT,apptDate DATE,resDate date);
CREATE TEMPORARY TABLE ds2(org INT,dir INT,apptDate DATE,resDate date);
FETCH rs INTO ID,org,dir,app,res;
WHILE NOT done DO
	SET firstPos=ID;
    SET firstApp=app;
    SET lastOrg=org;
    SET lastDir=dir;
	REPEAT
		SET lastPos=ID;
		SET lastRes=res;
		FETCH rs INTO ID,org,dir,app,res;
		UNTIL done OR ISNULL(app) OR app<>lastRes OR dir<>lastDir or lastOrg<>org
	END REPEAT;
    SET ins=False;
    #this logic is faster than running a WHERE filter on the query below
    IF fromDate>"" AND c=0 THEN
		IF firstApp<=fromDate OR ISNULL(firstApp) THEN
			SET ins=True;
		END IF;
	else
		IF firstApp<=toDate OR ISNULL(firstApp) THEN
			SET ins=True;
		END IF;
	END IF;
    IF hide="Y" AND ins THEN
		IF lastRes<=toDate THEN
			SET ins=False;
		END IF;
	ELSEIF fromDate>"" THEN
		IF lastRes<=fromDate THEN
			SET ins=False;
		END IF;
    END IF;
    IF ins THEN
		INSERT INTO ds1 VALUES (lastOrg,lastDir,firstApp,lastRes);
		INSERT INTO ds2 VALUES (lastOrg,lastDir,firstApp,lastRes);
	END IF;
END WHILE;
CLOSE rs;
SET retStr="(issueID,";
If fromDate="" Then
	SET retStr=CONCAT(retStr,"apptDate,");
Else
	SET retStr=CONCAT(retStr,"GREATEST(IFNULL(apptDate,'",fromDate,"'),'",fromDate,"'),");
End If;
SET retStr=CONCAT(retStr,"LEAST(IFNULL(resDate,'",toDate,"'),'",toDate,"')) ");
SET @stmt=CONCAT("SELECT ds1.dir,count.cntPos,fnameppl(name1,name2,cName) AS name,YOB,sex,
	AVG(CAGrel",retStr,")-1 AS CAGrel FROM ds1 
	JOIN (SELECT dir,count(*) AS cntPos FROM ds2 GROUP BY dir HAVING cntPos>=",minPos,") count
	ON ds1.dir=count.dir JOIN (HKlistedOrdsEver hkl,people) ON ds1.org=hkl.issuer AND ds1.dir=personID 
	GROUP BY ds1.dir ORDER BY ",orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
DROP TEMPORARY TABLE ds1;
DROP TEMPORARY TABLE ds2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListCosByMktAtDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListCosByMktAtDate`(IN DateParam Date)
BEGIN
SELECT Count(t1.PersonID) AS CountOfPersonID, MarketsForWeb.StockExID, Listings.ShortName
FROM Listings JOIN (MarketsForWeb LEFT JOIN

(SELECT DISTINCT Organisations.Domicile, Organisations.PersonID, StockListings.StockExID
FROM Organisations JOIN (Issue JOIN StockListings ON Issue.ID1 = StockListings.IssueID) ON Organisations.PersonID = Issue.Issuer
WHERE ((StockListings.FirstTradeDate<=DateParam) OR (FirstTradeDate is Null))
AND ((StockListings.DelistDate>DateParam) OR (StockListings.DelistDate Is Null))
AND issue.typeID Not In(1,2,40,41,46)) AS t1

ON MarketsForWeb.StockExID = t1.StockExID) ON Listings.StockExID = MarketsForWeb.StockExID
GROUP BY MarketsForWeb.StockExID, Listings.ShortName, MarketsForWeb.`Order`
ORDER BY MarketsForWeb.`Order`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListedCosAtDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListedCosAtDate`(In DateParam Date)
BEGIN
SELECT DISTINCT Organisations.Domicile, Organisations.PersonID, StockListings.StockExID
FROM Organisations INNER JOIN (Issue INNER JOIN StockListings ON Issue.ID1 = StockListings.IssueID) ON Organisations.PersonID = Issue.Issuer
WHERE ((StockListings.FirstTradeDate<=DateParam) OR (FirstTradeDate is Null))
AND ((StockListings.DelistDate>DateParam) OR (StockListings.DelistDate Is Null))
AND issue.typeID NOT IN(1,2,40,41,46)
AND stocklistings.stockExID IN(1,20);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listedDirSum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `listedDirSum`(IN d date)
BEGIN
select d1.company,d1.director,d1.apptDate,d1.apptAcc,d2.resDate,d2.resAcc FROM
 dirsum join (directorships d1, directorships d2) 
 on firstPos=d1.ID1 and lastPos=d2.ID1
 JOIN
(SELECT DISTINCT PersonID
FROM Organisations INNER JOIN (Issue INNER JOIN StockListings ON Issue.ID1 = StockListings.IssueID) ON Organisations.PersonID = Issue.Issuer
WHERE ((StockListings.FirstTradeDate<=d) OR (FirstTradeDate is Null))
AND ((StockListings.DelistDate>d) OR (StockListings.DelistDate Is Null))
AND issue.typeID NOT IN(1,2,40,41,46)
AND stocklistings.stockExID IN(1,20)) AS t1
ON d1.company=t1.personID
WHERE (isnull(d1.apptDate) OR d1.apptDate<=d)
 AND (isNull(d2.resDate) OR d2.resDate>d)
 ORDER BY company,apptDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `makeDBreader` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `makeDBreader`(IN u varchar(255))
BEGIN
SET @u=CONCAT(' "',u,'"');
SET @s=CONCAT('GRANT SELECT ON `enigma`.`users` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`people` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`documents` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=concat('GRANT SELECT ON `enigma`.`organisations` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`persons` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`issuedshares` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`sectypes` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`issue` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`sholdings` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`snaplog` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holdersdate` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holdingsDate` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`namepsn` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`nameppl` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`fnameppl` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`heldAs` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`relatives` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`relationships` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`orgtypes` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`domiciles` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`pTypeName` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holderHist` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`ownerprof` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`ownertype` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`namechanges` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`stocklistings` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`st1dates` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`st2dates` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
DEALLOCATE PREPARE s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `makeEditor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `makeEditor`(IN u varchar(255))
BEGIN
SET @u=CONCAT(' "',u,'"');
SET @s=CONCAT('GRANT SELECT ON `enigma`.`users` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT, UPDATE ON `enigma`.`people` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON `enigma`.`compos` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT, DELETE ON `enigma`.`comex` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON `enigma`.`comeets` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`alias` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT ON `enigma`.`ownerstks` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, UPDATE ON `enigma`.`documents` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=concat('GRANT SELECT, INSERT, UPDATE ON `enigma`.`organisations` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT,DELETE ON `enigma`.`persons` TO',@u);
PREPARE s FROM @s;EXECUTE s;
SET @s=CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON `enigma`.`issuedshares` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`sectypes` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT, INSERT,DELETE ON `enigma`.`issue` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT, INSERT, DELETE ON `enigma`.`sholdings` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT, INSERT,UPDATE,DELETE ON `enigma`.`snaplog` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holdersdate` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holdingsDate` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`namepsn` TO',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`nameppl` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`fnameppl` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`heldAs` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT,INSERT,UPDATE,DELETE ON `enigma`.`relatives` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`relationships` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`orgtypes` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`domiciles` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`pTypeName` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON PROCEDURE `enigma`.`holderHist` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`ownerprof` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`ownertype` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`namechanges` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`stocklistings` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`st1dates` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`st2dates` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT SELECT ON `enigma`.`st4dates` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`totalos` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
set @s=concat('GRANT EXECUTE ON FUNCTION `enigma`.`stripExt` TO ',@u);
PREPARE s FROM @s;EXECUTE s;
DEALLOCATE PREPARE s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `matchofficers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `matchofficers`(IN o1 INT,o2 INT)
BEGIN
SELECT t3.personID pid1,t3.dn1,t3.dn2,t4.personID pid2,name1,name2 FROM
(SELECT DISTINCT personID,p.dn1,p.dn2,p.name1,p.name2 FROM directorships d JOIN people p ON d.director=p.personID JOIN
(SELECT count(*) c,dn1,dn2 FROM 
(SELECT DISTINCT personID,dn1,dn2 FROM directorships d JOIN people p ON d.Director=p.PersonID WHERE Company=o1) t1
GROUP BY dn1,dn2 HAVING c=1)t2
ON p.dn1=t2.dn1 AND p.dn2=t2.dn2 WHERE Company=o1)t3
JOIN
(SELECT DISTINCT personID,p.dn1,p.dn2 FROM directorships d JOIN people p ON d.director=p.personID JOIN
(SELECT count(*) c,dn1,dn2 FROM 
(SELECT DISTINCT personID,dn1,dn2 FROM directorships d JOIN people p ON d.Director=p.PersonID WHERE Company=o2) t1
GROUP BY dn1,dn2 HAVING c=1)t2
ON p.dn1=t2.dn1 AND p.dn2=t2.dn2 WHERE Company=o2)t4
ON t3.dn1=t4.dn1 AND t3.dn2=t4.dn2 AND t3.personID<>t4.personID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MatchOrgMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `MatchOrgMembers`(IN org1 Integer,IN org2 Integer,IN d DATE,IN orderBy VARCHAR(100))
BEGIN
SET @d=d,@o1=org1,@o2=org2;
SET @stmt=CONCAT('
SELECT d1.director AS PersonID, people.Name1, people.Name2, pns1.posShort AS pos1, pns2.posShort AS pos2,
        pns1.posLong AS pos1long,pns2.posLong as pos2long,d1.apptDate as app1,d2.apptDate as app2,
        d1.apptAcc AS acc1,d2.apptAcc AS acc2
FROM (directorships AS d1 JOIN directorships AS d2 ON d1.Director = d2.Director)
JOIN (people,positions AS pns1,positions AS pns2)
ON d1.director=people.personID AND d1.positionID=pns1.positionID AND d2.PositionID=pns2.positionID
WHERE d1.Company=? AND d2.Company=?
 AND (d1.resDate Is Null Or d1.resDate>?) AND (d2.resDate Is Null Or d2.ResDate>?)
 AND (d1.apptDate IS Null or d1.apptDate<=?) AND (d2.apptDate Is Null or d2.apptDate<=?)
ORDER BY ',orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt USING @o1,@o2,@d,@d,@d,@d;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mcapHist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `mcapHist`(IN i INT)
BEGIN
SELECT atDate,outstanding,maxDate,
(SELECT closing FROM ccass.quotes WHERE issueID=i AND atDate=maxDate)*getAdjust(i,atDate)/getAdjust(i,maxDate) AS closing,
pendsh(i,atDate) AS pendsh FROM
 (SELECT atDate,outstanding,lastQuoteDate(i,atDate) as maxDate FROM issuedshares WHERE issueID=i ORDER BY atDate DESC)t;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `missingOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `missingOS`(IN d date)
BEGIN
SELECT stockCode,name1 FROM stockListings sl 
JOIN (issue i,organisations o) ON sl.issueID=i.ID1 AND i.issuer=o.personID
LEFT JOIN issuedshares iss ON sl.issueID=iss.issueID AND iss.atDate=d
WHERE ((FirstTradeDate<=d) OR (FirstTradeDate is Null))
AND ((delistDate>d) OR (delistDate Is Null))
AND typeID NOT IN(1,2,40,41,46)
AND stockExID IN(1,20)
AND isNull(outstanding)
ORDER BY name1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `offsum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `offsum`(IN org INT,orderBy VARCHAR(100),d DATE,hide VARCHAR(1),u VARCHAR(1))
BEGIN
DECLARE ID,dir,lastDir,firstPos,lastPos INT;
DECLARE app,res,lastRes DATE;
DECLARE done BOOL;
DECLARE hideStr VARCHAR(200);
DECLARE c CURSOR FOR SELECT ID1,director,apptDate,resDate FROM directorships d JOIN positions p
	ON d.positionID=p.positionID WHERE company=org AND `rank`=1 ORDER BY director,apptDate;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=True;
SET done=False;
OPEN c;
DROP TEMPORARY TABLE IF EXISTS dirsum2;
CREATE TEMPORARY TABLE dirsum2(firstPos INT,lastPos INT);
FETCH c INTO ID,dir,app,res;
WHILE NOT done DO
	SET firstPos=ID;
    SET lastDir=dir;
	REPEAT
		SET lastPos=ID;
		SET lastRes=res;
		FETCH c INTO ID,dir,app,res;
		UNTIL done OR ISNULL(app) OR app<>lastRes OR dir<>lastDir
	END REPEAT;
	INSERT INTO dirsum2 VALUES (firstPos,lastPos);
END WHILE;
CLOSE c;
IF ISNULL(d) THEN
	SET d=CURDATE();
END IF;
SET hideStr='';#allow for hide=null
IF hide="Y" THEN
	SET hideStr=CONCAT(" AND (isnull(d2.ResDate) or d2.ResDate>'",d,"' OR d2.resAcc=3)");
END IF;
IF u="1" THEN
	SET hideStr=CONCAT(hideStr," AND (isNull(d2.resAcc) or d2.resAcc<>3)");
END IF;
#NB cannot do multiple joins on a temporary table, so use an alias
SET @stmt=CONCAT("SELECT CAST(fnameppl(name1,name2,cname)AS NCHAR) name,MSdateAcc(d1.ApptDate,d1.apptAcc)app,MSdateAcc(d2.resDate,d2.resAcc)res,
	YOB,sex,d1.director dirID,service(d1.apptDate,d2.resDate,'",d,"') service
	FROM (SELECT * FROM dirsum2)t1 JOIN (directorships d1,directorships d2,people p) 
    ON t1.firstPos=d1.ID1 AND t1.lastPos = d2.ID1 AND d1.director=p.personID WHERE (isnull(d1.ApptDate) or d1.ApptDate<='",d,"')",
    hideStr," ORDER BY ",orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
DROP TEMPORARY TABLE dirsum2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `payLines3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `payLines3`(IN f INT,d DATE,ob VARCHAR(10))
BEGIN
SET ob=IF(ob='','nam',ob);
SELECT 
    name,
    userID,
    uRank,
    pplID,
    pRank,
    dirName,
    posShort,
    fees,
    salary,
    bonus,
    retire,
    share,
    total,
    currID,
    currency,
    t.ID
FROM
    (SELECT 
        u.name,
            pay.userID,
            MAXRANK('pay', pay.userID) uRank,
            pplID,
            pay.pRank,
            CAST(FNAMEPPL(name1, name2, cname) AS NCHAR) dirname,
            (SELECT 
                    d.positionID
                FROM
                    directorships d
                JOIN positions p ON d.positionID = p.positionID
                WHERE
                    director = pplID AND company = f
                        AND p.rank = pay.pRank
                        AND (ISNULL(apptDate) OR apptDate <= d)
                ORDER BY apptDate DESC
                LIMIT 1) posID,
            fees,
            salary,
            bonus,
            retire,
            share,
            total,
            currID,
            pay.ID
    FROM
        pay
    JOIN (users u, people p) ON pay.userID = u.ID
        AND pay.pplID = p.personID
    WHERE
        pay.d = d AND pay.orgID = f) t
        JOIN
    (positions p, currencies c) ON t.posID = p.positionID
        AND t.currID = c.ID
ORDER BY currID , pRank , CASE ob
    WHEN 'fee' THEN fees
    WHEN 'sal' THEN salary
    WHEN 'bon' THEN bonus
    WHEN 'ret' THEN retire
    WHEN 'sha' THEN share
    WHEN 'tot' THEN total
    ELSE 1
END DESC , CASE ob
    WHEN 'pos' THEN posshort
    WHEN 'nam' THEN status
    ELSE 1
END , dirName;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `payOfficers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `payOfficers`(p INT,d DATE)
BEGIN
SELECT 
    personID,
    pRank,
    CAST(FNAMEPPL(name1, name2, cname) AS NCHAR) name,
    statusText
FROM
    (SELECT 
        director, MAX(apptDate) apptDate, pn.rank pRank
    FROM
        directorships d
    JOIN positions pn ON d.positionID = pn.positionID
    WHERE
        company = p
            AND (ISNULL(apptDate) OR apptDate <= d)
            AND (ISNULL(resDate) OR resDate='1000-01-01' OR DATE_SUB(resDate, INTERVAL 1 DAY) > prevYearEnd(p,d))
            AND pn.rank <3
    GROUP BY director , pRank) t
        JOIN
    (directorships d, people p, positions pn, status s) ON t.director = d.director
        AND t.apptDate <=> d.apptDate
        AND t.pRank = pn.rank
        AND d.Company = p
        AND t.director = p.personID
        AND d.positionID = pn.positionID
        AND pn.status = s.statusID
        AND (personID , pn.rank) NOT IN (SELECT 
            pplID, pRank
        FROM
            pay
        WHERE
            orgID = p AND pay.d = d)
ORDER BY pn.rank , status , name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `personList`(IN s Varchar(10))
BEGIN
SELECT personID,concat(Name1,' ',Name2) as name FROM people WHERE nameStem=s
UNION Select personID,Name1 as name FROM organisations WHERE name1 LIKE CONCAT(s,'%') ORDER BY name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `portchg2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `portchg2`(IN part int,f date,t date)
BEGIN
SELECT enigma.lastcode(issueID) as stockCode,stockName,issueID,lastDate,holding,hldchg,
	holding/issued as stake,holding/issued-IFNULL(prevhldg,0)/IFNULL(oldissued,issued) as stkchg,susp,hldchg*price as valchg FROM
(SELECT CONCAT(name1,':',typeShort) as stockName,t2.issueID,lastDate,holding,prevhldg,susp,
	round(IF(susp,(SELECT closing FROM ccass.quotes WHERE atDate<=t and issueID=t2.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing),3) as price,
    holding-ifnull(prevhldg,0) AS hldchg,
    (SELECT issuedshares FROM enigma.issuedshareshkex WHERE AsAtDate<=t and issueID=t2.issueID ORDER BY AsAtDate DESC LIMIT 1) as issued,
    (SELECT issuedshares FROM enigma.issuedshareshkex WHERE AsAtDate<=f and issueID=t2.issueID ORDER BY AsAtDate DESC LIMIT 1) as oldissued
 FROM
(SELECT t1.issueID,lastDate,holding FROM
	(SELECT issueID, Max(atDate) as lastDate FROM ccass.parthold WHERE partID=part AND atDate<=t GROUP BY issueID) as t1
	JOIN ccass.parthold
	ON parthold.partID=part AND parthold.issueID=t1.issueID AND parthold.atDate=lastDate) AS t2
	JOIN (enigma.issue,enigma.organisations,enigma.sectypes,ccass.quotes)
	ON issue.ID1=t2.issueID and issue.issuer=organisations.personID AND issue.typeID=sectypes.typeID AND t2.issueID=quotes.issueID AND quotes.atDate=t
    LEFT JOIN
		(SELECT t3.issueID,parthold.holding as prevhldg,prevDate FROM
			(SELECT issueID, Max(atDate) as prevDate FROM ccass.parthold WHERE partID=part AND atDate<=f GROUP BY issueID) as t3
            JOIN ccass.parthold
			ON parthold.partID=part AND parthold.issueID=t3.issueID and parthold.atDate=prevDate) as t4
	ON t2.issueID=t4.issueID) AS t5
    ORDER BY valchg DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `posSum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `posSum`(IN dir INT,orderBy VARCHAR(100),fromDate VARCHAR(10),toDate VARCHAR(10),
	hide VARCHAR(1),c TINYINT,n TINYINT)
BEGIN
DECLARE ID,org,lastOrg,firstPos,lastPos INT;
DECLARE app,res,lastRes DATE;
DECLARE done BOOL;
DECLARE hideStr,retStr,nameStr VARCHAR(200);
DECLARE rs CURSOR FOR SELECT ID1,company,apptDate,resDate FROM directorships d JOIN positions p
	ON d.positionID=p.positionID WHERE director=dir AND `rank`=1 ORDER BY company,apptDate;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=True;
SET done=False;
OPEN rs;
DROP TEMPORARY TABLE IF EXISTS dirsum2;
CREATE TEMPORARY TABLE dirsum2(firstPos INT,lastPos INT);
FETCH rs INTO ID,org,app,res;
WHILE NOT done DO
	SET firstPos=ID;
    SET lastOrg=org;
	REPEAT
		SET lastPos=ID;
		SET lastRes=res;
		FETCH rs INTO ID,org,app,res;
		UNTIL done OR ISNULL(app) OR app<>lastRes OR org<>lastOrg
	END REPEAT;
	INSERT INTO dirsum2 VALUES (firstPos,lastPos);
END WHILE;
CLOSE rs;
#set conditions for apptDate
SET hideStr=" (ISNULL(d1.apptDate) OR d1.apptDate<='";
IF fromDate>"" AND c=0 Then
	SET hideStr=CONCAT(hideStr,fromDate,"')");
ELSE
	SET hideStr=CONCAT(hideStr,toDate,"')");
END IF;
IF hide="Y" THEN
	SET hideStr=CONCAT(hideStr," AND (ISNULL(d2.resDate) OR d2.resDate>'",toDate,"')");
END IF;
SET retStr="(issueID,";
If fromDate="" Then
	SET retStr=CONCAT(retStr,"d1.apptDate,");
Else
	SET retStr=CONCAT(retStr,"GREATEST(IFNULL(d1.apptDate,'",fromDate,"'),'",fromDate,"'),");
End If;
SET retStr=CONCAT(retStr,"LEAST(IFNULL(d2.resDate,'",toDate,"'),'",toDate,"')) ");
SET nameStr="";
IF n=1 Then
	SET nameStr="orgName(d1.company,IFNULL(d1.apptDate,d2.resDate)) ";
END IF;
#NB cannot do multiple joins on a temporary table, so use an alias
SET @stmt=CONCAT("SELECT ",nameStr,"name1,d1.apptDate,MSdateAcc(d1.ApptDate,d1.apptAcc)app,MSdateAcc(d2.resDate,d2.resAcc)res,d1.company orgID,issueID,totret",retStr,"totret,
	CAGret",retStr,"CAGret,CAGrel",retStr,"CAGrel,service(d1.apptDate,d2.resDate,'",toDate,"') service
	FROM (SELECT * FROM dirsum2)t1 JOIN (directorships d1,directorships d2,organisations o) 
    ON t1.firstPos=d1.ID1 AND t1.lastPos = d2.ID1 AND d1.company=o.personID 
    LEFT JOIN hklistedordsever ON d1.company=issuer WHERE ",hideStr," ORDER BY ",orderBy);
PREPARE stmt FROM @stmt;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
DROP TEMPORARY TABLE dirsum2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pplsearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `pplsearch`(IN n1 varchar(255),n2 varchar(255))
BEGIN
DECLARE s varchar(10000);
DECLARE sn2 varchar(255);
SET n1 = replace(replace(n1,"'","''"),"-"," ");
SET n2 = replace(replace(n2,"'","''"),"-"," ");
SET sn2 = concat(' ',replace(n2," ","( )?"),' ');
SET @s="SELECT personID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,p.sex,title,name1,name2,cName FROM people p LEFT JOIN titles t
	ON p.titleID=t.titleID WHERE ";
If n1="" And n2="" Then
	SET @s=CONCAT(@s,"1=0");
ELSEIF n1="" Then
	SET @s=CONCAT(@s,"concat(' ',dn2,' ') rlike '",sn2,"' OR concat(' ',dn2,' ') like '% ",n2," %'");
ELSEIF n2="" Then
	SET @s=CONCAT(@s,"concat(' ',dn1,' ') like '% ",n1," %'");
ELSE
	SET @s=CONCAT(@s,"concat(' ',dn1,' ') like '% ",n1," %' AND (concat(' ',dn2,' ') rlike '",sn2,"' OR concat(' ',dn2,' ') like '% ",n2," %')");
END IF;
SET @s=CONCAT(@s," ORDER BY name1,name2 LIMIT 500;");
PREPARE s from @s;
EXECUTE s;
DEALLOCATE PREPARE s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pplsearch2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `pplsearch2`(IN n1 varchar(255),n2 varchar(255))
BEGIN
DECLARE s varchar(10000);
DECLARE sn2 varchar(255);
SET n1 = replace(replace(n1,"'","''"),"-"," ");
SET n2 = replace(replace(n2,"'","''"),"-"," ");
SET sn2 = concat(' ',replace(n2," ","( )?"),' ');
SET @s="SELECT personID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,p.sex,title,name1,name2,cName FROM people p LEFT JOIN titles t
	ON p.titleID=t.titleID WHERE ";
If n1="" And n2="" Then
	SET @s=CONCAT(@s,"1=0");
ELSEIF n1="" Then
	SET @s=CONCAT(@s,"concat(' ',dn2,' ') like '% ",n2," %'");
ELSEIF n2="" Then
	SET @s=CONCAT(@s,"concat(' ',dn1,' ') like '% ",n1," %'");
ELSE
	SET @s=CONCAT(@s,"(dn1='",n1,"' OR dn1 LIKE '",n1," %') AND (dn2='",n2,"' OR dn2 LIKE '",n2," %')");
END IF;
SET @s=CONCAT(@s," ORDER BY name1,name2 LIMIT 500;");
PREPARE s from @s;
EXECUTE s;
DEALLOCATE PREPARE s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prevOfficers2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `prevOfficers2`(p INT,d DATE)
BEGIN
#return list of officers in prior year not in pay table
SELECT DISTINCT
    personID,
    pn.Rank,
    CAST(FNAMEPPL(name1, name2, cName) AS NCHAR) name,
    s.statusText
FROM
    (SELECT 
        director, MAX(apptDate) apptDate, pn.rank pRank
    FROM
        directorships d
    JOIN positions pn ON d.positionID = pn.positionID
    WHERE
        company = p
        AND DATE_SUB(resDate, INTERVAL 1 DAY) > DATE_SUB(d, INTERVAL 2 YEAR)
        AND DATE_SUB(resDate, INTERVAL 1 DAY) <= PREVYEAREND(p, d)
         AND pn.rank <3
    GROUP BY director , pRank) t
        JOIN
    (directorships d, people p, positions pn, status s) ON t.director = d.director
        AND t.apptDate <=> d.apptDate
        AND t.pRank = pn.rank
        AND d.Company = p
        AND t.director = p.personID
        AND d.positionID = pn.positionID
        AND pn.status = s.statusID
WHERE
        personID NOT IN (SELECT DISTINCT
            director
        FROM
            directorships d
                JOIN
            positions pn ON d.positionID = pn.positionID
        WHERE
            company = p AND pn.rank < 3
                AND (ISNULL(apptDate) OR apptDate <= d)
                AND (ISNULL(resDate)
                OR DATE_SUB(resDate, INTERVAL 1 DAY) > PREVYEAREND(p, d)))
        AND (personID , pn.rank) NOT IN (SELECT 
            pplID, pRank
        FROM
            pay
        WHERE
            orgID = p AND pay.d = d)
ORDER BY pn.rank , status , name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pTypeName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `pTypeName`(IN p INT)
BEGIN
SELECT IF(isNull(o.name1),'P','O') AS pType, namepsn(o.name1,p.name1,p.name2) AS name
FROM persons n LEFT JOIN organisations o
ON n.personID=o.personID 
LEFT JOIN people p ON n.personID=p.personID
WHERE n.personID=p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reOrg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `reOrg`(IN p1 int,p2 INT)
BEGIN
UPDATE directorships SET company=p2 WHERE company=p1;
UPDATE adviserships SET company=p2 WHERE company=p1;
UPDATE issue SET issuer=p2 WHERE issuer=p1;
UPDATE classifications SET company=p2 WHERE company=p1;
UPDATE documents SET orgID=p2 WHERE orgID=p1;
UPDATE donations SET donor=p2 WHERE donor=p1;
UPDATE personstories SET personID=p2 WHERE personID=p1;
UPDATE repfilings SET orgID=p2 WHERE orgID=p1;
UPDATE sholdings SET holderID=p2 WHERE holderID=p1;
UPDATE web SET personID=p2 WHERE personID=p1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setCumDatePrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `setCumDatePrice`()
BEGIN
UPDATE enigma.events
SET cumDate=(SELECT Max(atDate) FROM ccass.quotes WHERE issueID=events.issueID and atDate<exDate and closing<>0),
cumPrice=(SELECT closing FROM ccass.quotes WHERE issueID=events.issueID and atDate=cumDate)
WHERE (not isNull(exDate)) and (isNull(cancelDate) or exDate<cancelDate) and CURDATE()>=exDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `updUserID`(IN tbl VARCHAR(40), IN oID MEDIUMINT UNSIGNED,INOUT uID MEDIUMINT UNSIGNED)
BEGIN
DECLARE msg VARCHAR(255);
DECLARE uRank1 TINYINT unsigned;
Declare oRank TINYINT unsigned;
DECLARE conUser VARCHAR(255);
SET conUser=substring_index(user(),'@',1);
IF conUser='auto' or conUser='David' THEN 
	SET uID=oID; #don't overwrite user
ELSE
	IF uID<=>oID THEN
        #When update doesn't specify userID, then MySQL sets new.userID=old.userID (unchanged)
		#Either the UPDATE has same userID, or didn't specify, or this is a local (MS Access) user with no userID in the UPDATE
        #or someone has logged in on Web using an old page
		IF ISNULL((SELECT ID FROM enigma.wsroles WHERE `MSuser`=conUser)) Then
			#not a wsrole, must be a local user
			SET uID=(SELECT ID FROM enigma.users WHERE `name`=conUser);
            IF isNull(UID) OR uID=0 THEN
				SET msg=CONCAT('User ',conUser,' not found in users table');
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=msg;
			END IF;
		ELSEIF isNull(uID) OR uID=0 THEN
			#role-user didn't specify userID in UPDATE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Online UPDATE did not specify userID';
		ELSE
			SET conUser=(SELECT name FROM enigma.users WHERE `ID`=uID);
		END IF;
	END IF;
	#Now test eligibility and ranking. A table may be changed by more than 1 role. A user may have more than one role.
	#So take the highest ranking that they have in an applicable role.
	SET oRank=(SELECT maxRank(tbl,oID));
	SET uRank1=(SELECT maxRankLive(tbl,uID));
	IF uRank1=0 Then
		#includes circumstance when userID is no longer live in wsprivs, so cannot edit their own inputs
		SET msg=CONCAT('User ',conUser,' cannot write to table ',tbl);
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=msg;
	ELSEIF uID<>oID THEN
		SET msg=CONCAT('User ',conUser,' with rank ',uRank1,' cannot edit. User did not create this record and does not outrank the user who did');
		If uRank1<255 AND (isNUll(oRank) OR uRank1<=oRank) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=msg;
		END IF;
	END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `valUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `valUser`(IN oID TINYINT UNSIGNED, OUT uID TINYINT UNSIGNED)
BEGIN
DECLARE uName VARCHAR(255);
DECLARE uRank TINYINT UNSIGNED;
DECLARE oRank TINYINT UNSIGNED;
SET uName=substring_index(user(),'@',1);
IF uName='auto' or uName='David' THEN
	SET uID=oID;
ELSE
	SET uID=(SELECT ID FROM users WHERE name=uName);
	SET uRank=(SELECT `rank` FROM users WHERE ID=uID);
	SET oRank=(SELECT `rank` FROM users WHERE ID=oID);
	If uRank<255 AND (isNUll(oRank) OR (uID<>oID AND uRank<=oRank)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='user did not create this and doesn''t outrank the user who did';
	END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WebRels2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `WebRels2`(IN p Integer)
BEGIN
   SELECT (IF(p1.PersonID=p,InvRel,Relation)) AS Rel,
   IF (p1.PersonID=p,Level,-Level) As Level,
IF(p1.PersonID=p,
        fnamePpl(p2.Name1,p2.Name2,p2.cName),
        fnamePpl(p1.Name1,p1.Name2,p1.cName)) AS Relative,
IF(p1.PersonID=p,p2.PersonID,p1.PersonID) AS RelID,
IF(p1.PersonID=p,MSdatePart(p2.DOB,p2.MOB,p2.YOB),MSdatePart(p1.DOB,p1.MOB,p1.YOB)) AS born,
IF(p1.PersonID=p,MSdatePart(p2.DOD,p2.MonD,p2.YOD),MSdatePart(p1.DOB,p1.MonD,p1.YOD)) AS died,
IF(p1.PersonID=p,p2.YOB,p1.YOB) AS RelYOB,
IF(p1.PersonID=p,p2.MOB,p1.MOB) AS RelMOB,
IF(p1.PersonID=p,p2.DOB,p1.DOB) AS RelDOB,
IF(p1.PersonID=p,p2.YOD,p1.YOD) AS RelYOD,
IF(p1.PersonID=p,p2.MonD,p1.Mond) AS RelMOD,
IF(p1.PersonID=p,p2.DOD,p1.DOD) AS RelDOD
FROM Relationships INNER JOIN (people p2 INNER JOIN (people p1 INNER JOIN Relatives ON personID = rel1)
ON p2.PersonID = Rel2) ON Relationships.ID = Relatives.RelID
WHERE ((p1.PersonID=p) OR (p2.PersonID=p)) AND RelID<>0
ORDER BY Level,Rel,Relative;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `webRels3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`David`@`%` PROCEDURE `webRels3`(IN p integer)
BEGIN
SELECT relID,rel,fnameppl(name1,name2,cName) AS relative,MSdatepart(DOB,MOB,YOB) AS born,MSdatepart(DOD,MonD,YOD) AS died FROM
((SELECT rel2 as relID,level,invRel As rel FROM relatives JOIN relationships on relID=ID WHERE rel1=p AND relID<>0) union
SELECT rel1,-level,relation FROM relatives JOIN relationships on relID=ID WHERE rel2=p AND relID<>0) AS t1
JOIN people p on t1.relID=p.personID
ORDER BY level,rel,relative;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `enigma`
--

USE `enigma`;

--
-- Final view structure for view `auditorchanges`
--

/*!50001 DROP VIEW IF EXISTS `auditorchanges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `auditorchanges` AS select `adviserships`.`Company` AS `Company`,`adviserships`.`Adviser` AS `Adviser`,`MSdateAcc`(`adviserships`.`AddDate`,`adviserships`.`AddAcc`) AS `add`,`MSdateAcc`(`adviserships`.`RemDate`,`adviserships`.`RemAcc`) AS `rem`,ifnull(`adviserships`.`RemDate`,`adviserships`.`AddDate`) AS `SortDate`,`listedcoshkall`.`name` AS `CoName`,`organisations`.`Name1` AS `AdvName` from ((`organisations` join `listedcoshkall`) join `adviserships` on(((`listedcoshkall`.`personID` = `adviserships`.`Company`) and (`organisations`.`PersonID` = `adviserships`.`Adviser`)))) where (`adviserships`.`Role` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buybacksadj`
--

/*!50001 DROP VIEW IF EXISTS `buybacksadj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `buybacksadj` AS select `STOCKCODETHEN`(`capchanges`.`IssueID`,`capchanges`.`EffDate`) AS `stockCode`,`capchanges`.`IssueID` AS `IssueID`,`capchanges`.`EffDate` AS `EffDate`,`capchanges`.`exchID` AS `exchID`,ifnull(`b2`.`name`,`b1`.`name`) AS `exchName`,(-(`capchanges`.`shares`) / `SPLITADJ`(`capchanges`.`IssueID`,`capchanges`.`EffDate`)) AS `shares`,`capchanges`.`Value` AS `Value`,`currencies`.`currency` AS `Currency`,concat(`organisations`.`Name1`,': ',convert(`sectypes`.`typeShort` using utf8mb3)) AS `Name` from (((`capchanges` join (((`issue` join `organisations`) join `sectypes`) join `bbexch` `b1`) on(((`issue`.`ID1` = `capchanges`.`IssueID`) and (`organisations`.`PersonID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`) and (`capchanges`.`exchID` = `b1`.`ID`)))) left join `currencies` on((`capchanges`.`Currency` = `currencies`.`ID`))) left join `bbexch` `b2` on((`b1`.`mapTo` = `b2`.`ID`))) where (`capchanges`.`CapChangeType` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `currentlistedshareshk`
--

/*!50001 DROP VIEW IF EXISTS `currentlistedshareshk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `currentlistedshareshk` AS select `sl`.`StockCode` AS `StockCode`,`sectypes`.`typeShort` AS `Type`,`i`.`issuer` AS `issuer`,`sl`.`FirstTradeDate` AS `FirstTradeDate`,`sl`.`StockExID` AS `StockExID`,`sl`.`IssueID` AS `issueID`,`OUTSTANDING`(`i`.`ID1`,now()) AS `outstanding` from (`stocklistings` `sl` join (`issue` `i` join `sectypes`) on(((`sl`.`IssueID` = `i`.`ID1`) and (`i`.`typeID` = `sectypes`.`typeID`)))) where (((`sl`.`FirstTradeDate` is null) or (`sl`.`FirstTradeDate` <= now())) and ((`sl`.`DelistDate` is null) or (`sl`.`DelistDate` > now())) and (`sl`.`StockExID` in (1,20,22)) and (`i`.`typeID` not in (1,2,5,40,41,46)) and ((`i`.`SEHKcurr` is null) or (`i`.`SEHKcurr` = 0))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dirnocname`
--

/*!50001 DROP VIEW IF EXISTS `dirnocname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dirnocname` AS select distinct `d`.`Company` AS `orgID`,`d`.`Director` AS `director`,`o`.`Name1` AS `orgName`,`nameppl`(`p`.`Name1`,`p`.`Name2`) AS `pplname` from (`directorships` `d` join (((`listedcoshkever` `l` join `positions` `po`) join `people` `p`) join `organisations` `o`) on(((`d`.`Company` = `l`.`issuer`) and (`d`.`Company` = `o`.`PersonID`) and (`d`.`Director` = `p`.`PersonID`) and (`d`.`positionID` = `po`.`positionID`)))) where ((`po`.`rank` = 1) and (`p`.`cName` is null)) order by `o`.`Name1`,`pplname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entall`
--

/*!50001 DROP VIEW IF EXISTS `entall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `entall` AS select `entitlements`.`importID` AS `importID`,`entitlements`.`daily` AS `daily`,`entitlements`.`AutoProcess` AS `AutoProcess`,`entitlements`.`IgnoreRow` AS `IgnoreRow`,`entitlements`.`STOCK` AS `STOCK`,`entitlements`.`SEHKID` AS `SEHKID`,`entitlements`.`IssueID` AS `IssueID`,`entitlements`.`STK_NAME` AS `STK_NAME`,`entitlements`.`TYPE` AS `TYPE`,`entitlements`.`Announced` AS `Announced`,`entitlements`.`YearEnd` AS `YearEnd`,`entitlements`.`DETAILS_1` AS `DETAILS_1`,`entitlements`.`DETAILS_2` AS `DETAILS_2`,`entitlements`.`DETAILS_3` AS `DETAILS_3`,`entitlements`.`DETAILS_4` AS `DETAILS_4`,`entitlements`.`DETAILS_5` AS `DETAILS_5`,`entitlements`.`DETAILS_6` AS `DETAILS_6`,`entitlements`.`BookCloseFr` AS `BookCloseFr`,`entitlements`.`BookCloseTo` AS `BookCloseTo`,`entitlements`.`PayDate` AS `PayDate`,`entitlements`.`ExDate` AS `ExDate`,`entitlements`.`CapChangeType1` AS `CapChangeType1`,`entitlements`.`Curr1` AS `Curr1`,`entitlements`.`Price1` AS `Price1`,`entitlements`.`PriceHKD1` AS `PriceHKD1`,`entitlements`.`Old1` AS `Old1`,`entitlements`.`New1` AS `New1`,`entitlements`.`Date1` AS `Date1`,`entitlements`.`IssueID1` AS `IssueID1`,`entitlements`.`Descrip1` AS `Descrip1`,`entitlements`.`CapChangeType2` AS `CapChangeType2`,`entitlements`.`Curr2` AS `Curr2`,`entitlements`.`Price2` AS `Price2`,`entitlements`.`PriceHKD2` AS `PriceHKD2`,`entitlements`.`Old2` AS `Old2`,`entitlements`.`New2` AS `New2`,`entitlements`.`Date2` AS `Date2`,`entitlements`.`IssueID2` AS `IssueID2`,`entitlements`.`Descrip2` AS `Descrip2`,`entitlements`.`CapChangeType3` AS `CapChangeType3`,`entitlements`.`Curr3` AS `Curr3`,`entitlements`.`Price3` AS `Price3`,`entitlements`.`PriceHKD3` AS `PriceHKD3`,`entitlements`.`Old3` AS `Old3`,`entitlements`.`New3` AS `New3`,`entitlements`.`Date3` AS `Date3`,`entitlements`.`IssueID3` AS `IssueID3`,`entitlements`.`Descrip3` AS `Descrip3`,`entitlements`.`CapChangeType4` AS `CapChangeType4`,`entitlements`.`Curr4` AS `Curr4`,`entitlements`.`Price4` AS `Price4`,`entitlements`.`PriceHKD4` AS `PriceHKD4`,`entitlements`.`Old4` AS `Old4`,`entitlements`.`New4` AS `New4`,`entitlements`.`Date4` AS `Date4`,`entitlements`.`IssueID4` AS `IssueID4`,`entitlements`.`Descrip4` AS `Descrip4`,`entitlements`.`Event1` AS `Event1`,`entitlements`.`Event2` AS `Event2`,`entitlements`.`Event3` AS `Event3`,`entitlements`.`Event4` AS `Event4`,`entitlements`.`modified` AS `modified`,trim(concat(ifnull(`entitlements`.`DETAILS_1`,''),' ',ifnull(`entitlements`.`DETAILS_2`,''),' ',ifnull(`entitlements`.`DETAILS_3`,''),' ',ifnull(`entitlements`.`DETAILS_4`,''),' ',ifnull(`entitlements`.`DETAILS_5`,''),' ',ifnull(`entitlements`.`DETAILS_6`,''))) AS `details`,`entitlements`.`col1` AS `col1`,`entitlements`.`col2` AS `col2`,`entitlements`.`col3` AS `col3`,`entitlements`.`col4` AS `col4`,`entitlements`.`col5` AS `col5`,`entitlements`.`col6` AS `col6` from `entitlements` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entdetails`
--

/*!50001 DROP VIEW IF EXISTS `entdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `entdetails` AS select `entitlements`.`importID` AS `importID`,`entitlements`.`AutoProcess` AS `AutoProcess`,`entitlements`.`IgnoreRow` AS `IgnoreRow`,`entitlements`.`STOCK` AS `STOCK`,`entitlements`.`SEHKID` AS `SEHKID`,`entitlements`.`IssueID` AS `IssueID`,`entitlements`.`STK_NAME` AS `STK_NAME`,`entitlements`.`TYPE` AS `TYPE`,`entitlements`.`Announced` AS `Announced`,`entitlements`.`YearEnd` AS `YearEnd`,`entitlements`.`DETAILS_1` AS `DETAILS_1`,`entitlements`.`DETAILS_2` AS `DETAILS_2`,`entitlements`.`DETAILS_3` AS `DETAILS_3`,`entitlements`.`DETAILS_4` AS `DETAILS_4`,`entitlements`.`DETAILS_5` AS `DETAILS_5`,`entitlements`.`DETAILS_6` AS `DETAILS_6`,`entitlements`.`BookCloseFr` AS `BookCloseFr`,`entitlements`.`BookCloseTo` AS `BookCloseTo`,`entitlements`.`PayDate` AS `PayDate`,`entitlements`.`ExDate` AS `ExDate`,`entitlements`.`CapChangeType1` AS `CapChangeType1`,`entitlements`.`Curr1` AS `Curr1`,`entitlements`.`Price1` AS `Price1`,`entitlements`.`PriceHKD1` AS `PriceHKD1`,`entitlements`.`Old1` AS `Old1`,`entitlements`.`New1` AS `New1`,`entitlements`.`Date1` AS `Date1`,`entitlements`.`IssueID1` AS `IssueID1`,`entitlements`.`Descrip1` AS `Descrip1`,`entitlements`.`CapChangeType2` AS `CapChangeType2`,`entitlements`.`Curr2` AS `Curr2`,`entitlements`.`Price2` AS `Price2`,`entitlements`.`PriceHKD2` AS `PriceHKD2`,`entitlements`.`Old2` AS `Old2`,`entitlements`.`New2` AS `New2`,`entitlements`.`Date2` AS `Date2`,`entitlements`.`IssueID2` AS `IssueID2`,`entitlements`.`Descrip2` AS `Descrip2`,`entitlements`.`CapChangeType3` AS `CapChangeType3`,`entitlements`.`Curr3` AS `Curr3`,`entitlements`.`Price3` AS `Price3`,`entitlements`.`PriceHKD3` AS `PriceHKD3`,`entitlements`.`Old3` AS `Old3`,`entitlements`.`New3` AS `New3`,`entitlements`.`Date3` AS `Date3`,`entitlements`.`IssueID3` AS `IssueID3`,`entitlements`.`Descrip3` AS `Descrip3`,`entitlements`.`CapChangeType4` AS `CapChangeType4`,`entitlements`.`Curr4` AS `Curr4`,`entitlements`.`Price4` AS `Price4`,`entitlements`.`PriceHKD4` AS `PriceHKD4`,`entitlements`.`Old4` AS `Old4`,`entitlements`.`New4` AS `New4`,`entitlements`.`Date4` AS `Date4`,`entitlements`.`IssueID4` AS `IssueID4`,`entitlements`.`Descrip4` AS `Descrip4`,`entitlements`.`Event1` AS `Event1`,`entitlements`.`Event2` AS `Event2`,`entitlements`.`Event3` AS `Event3`,`entitlements`.`Event4` AS `Event4`,`entitlements`.`modified` AS `modified`,concat(`entitlements`.`DETAILS_1`,' ',`entitlements`.`DETAILS_2`,' ',`entitlements`.`DETAILS_3`,' ',`entitlements`.`DETAILS_4`,' ',`entitlements`.`DETAILS_5`,' ',`entitlements`.`DETAILS_6`) AS `details` from `entitlements` where ((0 = `entitlements`.`IgnoreRow`) and (0 = `entitlements`.`AutoProcess`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entlive`
--

/*!50001 DROP VIEW IF EXISTS `entlive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `entlive` AS select `entitlements`.`importID` AS `importID`,`entitlements`.`daily` AS `daily`,`entitlements`.`AutoProcess` AS `AutoProcess`,`entitlements`.`IgnoreRow` AS `IgnoreRow`,`entitlements`.`STOCK` AS `STOCK`,`entitlements`.`SEHKID` AS `SEHKID`,`entitlements`.`IssueID` AS `IssueID`,`entitlements`.`STK_NAME` AS `STK_NAME`,`entitlements`.`TYPE` AS `TYPE`,`entitlements`.`Announced` AS `Announced`,`entitlements`.`YearEnd` AS `YearEnd`,`entitlements`.`DETAILS_1` AS `DETAILS_1`,`entitlements`.`DETAILS_2` AS `DETAILS_2`,`entitlements`.`DETAILS_3` AS `DETAILS_3`,`entitlements`.`DETAILS_4` AS `DETAILS_4`,`entitlements`.`DETAILS_5` AS `DETAILS_5`,`entitlements`.`DETAILS_6` AS `DETAILS_6`,`entitlements`.`BookCloseFr` AS `BookCloseFr`,`entitlements`.`BookCloseTo` AS `BookCloseTo`,`entitlements`.`PayDate` AS `PayDate`,`entitlements`.`ExDate` AS `ExDate`,`entitlements`.`CapChangeType1` AS `CapChangeType1`,`entitlements`.`Curr1` AS `Curr1`,`entitlements`.`Price1` AS `Price1`,`entitlements`.`PriceHKD1` AS `PriceHKD1`,`entitlements`.`Old1` AS `Old1`,`entitlements`.`New1` AS `New1`,`entitlements`.`Date1` AS `Date1`,`entitlements`.`IssueID1` AS `IssueID1`,`entitlements`.`Descrip1` AS `Descrip1`,`entitlements`.`CapChangeType2` AS `CapChangeType2`,`entitlements`.`Curr2` AS `Curr2`,`entitlements`.`Price2` AS `Price2`,`entitlements`.`PriceHKD2` AS `PriceHKD2`,`entitlements`.`Old2` AS `Old2`,`entitlements`.`New2` AS `New2`,`entitlements`.`Date2` AS `Date2`,`entitlements`.`IssueID2` AS `IssueID2`,`entitlements`.`Descrip2` AS `Descrip2`,`entitlements`.`CapChangeType3` AS `CapChangeType3`,`entitlements`.`Curr3` AS `Curr3`,`entitlements`.`Price3` AS `Price3`,`entitlements`.`PriceHKD3` AS `PriceHKD3`,`entitlements`.`Old3` AS `Old3`,`entitlements`.`New3` AS `New3`,`entitlements`.`Date3` AS `Date3`,`entitlements`.`IssueID3` AS `IssueID3`,`entitlements`.`Descrip3` AS `Descrip3`,`entitlements`.`CapChangeType4` AS `CapChangeType4`,`entitlements`.`Curr4` AS `Curr4`,`entitlements`.`Price4` AS `Price4`,`entitlements`.`PriceHKD4` AS `PriceHKD4`,`entitlements`.`Old4` AS `Old4`,`entitlements`.`New4` AS `New4`,`entitlements`.`Date4` AS `Date4`,`entitlements`.`IssueID4` AS `IssueID4`,`entitlements`.`Descrip4` AS `Descrip4`,`entitlements`.`Event1` AS `Event1`,`entitlements`.`Event2` AS `Event2`,`entitlements`.`Event3` AS `Event3`,`entitlements`.`Event4` AS `Event4`,`entitlements`.`modified` AS `modified`,`entitlements`.`col1` AS `col1`,`entitlements`.`col2` AS `col2`,`entitlements`.`col3` AS `col3`,`entitlements`.`col4` AS `col4`,`entitlements`.`col5` AS `col5`,`entitlements`.`col6` AS `col6` from `entitlements` where ((`entitlements`.`IgnoreRow` = 0) and (`entitlements`.`AutoProcess` = 0) and ((((((`entitlements`.`col1` * `entitlements`.`col2`) * `entitlements`.`col3`) * `entitlements`.`col4`) * `entitlements`.`col5`) * `entitlements`.`col6`) = true)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hkdelisted`
--

/*!50001 DROP VIEW IF EXISTS `hkdelisted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hkdelisted` AS select `organisations`.`Name1` AS `Name`,`stocklistings`.`DelistDate` AS `DelistDate`,`organisations`.`PersonID` AS `PersonID` from (`organisations` join (`issue` join `stocklistings`) on(((`issue`.`ID1` = `stocklistings`.`IssueID`) and (`organisations`.`PersonID` = `issue`.`issuer`)))) where ((`stocklistings`.`DelistDate` <= now()) and (`issue`.`typeID` in (0,6,7)) and (`stocklistings`.`StockExID` in (1,20))) order by `organisations`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hklistedordsever`
--

/*!50001 DROP VIEW IF EXISTS `hklistedordsever`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hklistedordsever` AS select distinct `stocklistings`.`IssueID` AS `issueID`,`issue`.`issuer` AS `issuer` from (`stocklistings` join `issue` on((`stocklistings`.`IssueID` = `issue`.`ID1`))) where ((`stocklistings`.`StockExID` in (1,20,23)) and (0 = `stocklistings`.`2ndCtr`) and (`issue`.`typeID` in (0,6,7,8,10,42))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hklistedordsnow`
--

/*!50001 DROP VIEW IF EXISTS `hklistedordsnow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hklistedordsnow` AS select distinct `stocklistings`.`IssueID` AS `issueID`,`issue`.`issuer` AS `issuer` from (`stocklistings` join `issue` on((`stocklistings`.`IssueID` = `issue`.`ID1`))) where ((`stocklistings`.`StockExID` in (1,20,23)) and (0 = `stocklistings`.`2ndCtr`) and (`issue`.`typeID` in (0,6,7,8,10,42)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= now())) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > now()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hkmarketcapperstock`
--

/*!50001 DROP VIEW IF EXISTS `hkmarketcapperstock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hkmarketcapperstock` AS select `currentlistedshareshk`.`issuer` AS `Issuer`,`hkexdata`.`StockCode` AS `StockCode`,`currentlistedshareshk`.`outstanding` AS `Outstanding`,`hkexdata`.`NomPrice` AS `NomPrice`,`hkexdata`.`BoardLot` AS `BoardLot`,(`hkexdata`.`NomPrice` * `currentlistedshareshk`.`outstanding`) AS `MarketCap`,(`hkexdata`.`NomPrice` * `hkexdata`.`BoardLot`) AS `LotValue`,`organisations`.`Name1` AS `Name`,`currentlistedshareshk`.`StockExID` AS `StockExID`,`currentlistedshareshk`.`Type` AS `Type`,`hkexdata`.`PriceDate` AS `PriceDate` from ((`organisations` join `hkexdata`) join `currentlistedshareshk` on(((`hkexdata`.`IssueID` = `currentlistedshareshk`.`issueID`) and (`organisations`.`PersonID` = `currentlistedshareshk`.`issuer`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hkstocksbyboardlot`
--

/*!50001 DROP VIEW IF EXISTS `hkstocksbyboardlot`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hkstocksbyboardlot` AS select `h`.`BoardLot` AS `BoardLot`,count(`h`.`StockCode`) AS `Stocks`,sum((`h`.`MarketCap` / 1000000)) AS `mcapM`,sum(`h`.`Outstanding`) AS `shares` from `hkmarketcapperstock` `h` group by `h`.`BoardLot` order by `h`.`BoardLot` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inedhk`
--

/*!50001 DROP VIEW IF EXISTS `inedhk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inedhk` AS select `directorships`.`Director` AS `Director`,`directorships`.`Company` AS `Company`,`directorships`.`ApptDate` AS `ApptDate` from (`listedcoshk` join (`positions` join `directorships` on((`positions`.`positionID` = `directorships`.`positionID`))) on((`listedcoshk`.`issuer` = `directorships`.`Company`))) where ((`positions`.`status` = 3) and (`positions`.`rank` = 1) and ((`directorships`.`ResDate` is null) or (`directorships`.`ResDate` >= now()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inedhkdistncos`
--

/*!50001 DROP VIEW IF EXISTS `inedhkdistncos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inedhkdistncos` AS select `inedhkperco`.`NumberOfSeats` AS `NumberOfSeats`,count(`inedhkperco`.`PersonID`) AS `NumberOfCos` from `inedhkperco` group by `inedhkperco`.`NumberOfSeats` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inedhkdistnpeople`
--

/*!50001 DROP VIEW IF EXISTS `inedhkdistnpeople`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inedhkdistnpeople` AS select `inedhkperperson`.`NumberOfSeats` AS `NumberOfSeats`,count(`inedhkperperson`.`Director`) AS `NumberOfPeople`,sum((`inedhkperperson`.`Sex` = 'F')) AS `Female` from `inedhkperperson` group by `inedhkperperson`.`NumberOfSeats` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inedhkperco`
--

/*!50001 DROP VIEW IF EXISTS `inedhkperco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inedhkperco` AS select `listedcoshkall`.`personID` AS `PersonID`,count(`inednow`.`Director`) AS `NumberOfSeats`,`listedcoshkall`.`name` AS `Name` from (`listedcoshkall` left join `inednow` on((`listedcoshkall`.`personID` = `inednow`.`Company`))) group by `listedcoshkall`.`personID`,`listedcoshkall`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inedhkperperson`
--

/*!50001 DROP VIEW IF EXISTS `inedhkperperson`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inedhkperperson` AS select count(`inedhk`.`Director`) AS `NumberOfSeats`,`inedhk`.`Director` AS `Director`,concat(`people`.`Name1`,', ',`people`.`Name2`) AS `Name`,`people`.`Sex` AS `Sex`,`people`.`YOB` AS `YOB` from (`inedhk` join `people` on((`inedhk`.`Director` = `people`.`PersonID`))) group by `inedhk`.`Director` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inednow`
--

/*!50001 DROP VIEW IF EXISTS `inednow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inednow` AS select `directorships`.`Director` AS `Director`,`directorships`.`Company` AS `Company`,`directorships`.`ApptDate` AS `ApptDate` from (`positions` join `directorships` on((`positions`.`positionID` = `directorships`.`positionID`))) where ((`positions`.`status` = 3) and (`positions`.`rank` = 1) and ((`directorships`.`ResDate` is null) or (`directorships`.`ResDate` > now()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issuedlatest`
--

/*!50001 DROP VIEW IF EXISTS `issuedlatest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `issuedlatest` AS select `i`.`issueID` AS `issueID`,`i`.`outstanding` AS `outstanding`,`i`.`atDate` AS `atDate` from (`issuedshares` `i` join `issuedlatestdate` `t` on(((`i`.`issueID` = `t`.`issueID`) and (`i`.`atDate` = `t`.`maxDate`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issuedlatestdate`
--

/*!50001 DROP VIEW IF EXISTS `issuedlatestdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `issuedlatestdate` AS select `issuedshares`.`issueID` AS `issueID`,max(`issuedshares`.`atDate`) AS `maxDate` from `issuedshares` group by `issuedshares`.`issueID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issuers2003`
--

/*!50001 DROP VIEW IF EXISTS `issuers2003`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `issuers2003` AS select distinct `organisations`.`PersonID` AS `personID`,`organisations`.`Name1` AS `name` from ((`stocklistings` join `issue` on((`stocklistings`.`IssueID` = `issue`.`ID1`))) join `organisations` on((`issue`.`issuer` = `organisations`.`PersonID`))) where (((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= '2003-12-31')) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > '2004-09-30')) and (`stocklistings`.`StockExID` in (1,20)) and (`issue`.`typeID` not in (1,2,40,41))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issues2003`
--

/*!50001 DROP VIEW IF EXISTS `issues2003`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `issues2003` AS select `issuers2003`.`personID` AS `personID`,`issue`.`ID1` AS `issueID`,`issuers2003`.`name` AS `name`,`sectypes`.`typeShort` AS `typeShort` from (`issuers2003` join (`issue` join `sectypes`) on(((`issuers2003`.`personID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) where (`issue`.`typeID` in (0,7,8,6)) order by `issuers2003`.`name`,`sectypes`.`typeShort` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issuesforhku`
--

/*!50001 DROP VIEW IF EXISTS `issuesforhku`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `issuesforhku` AS select distinct `listingsforhku`.`personID` AS `personID`,`listingsforhku`.`name` AS `name`,`issue`.`ID1` AS `issueID`,`sectypes`.`typeShort` AS `typeShort` from (`listingsforhku` join (`issue` join `sectypes`) on(((`listingsforhku`.`personID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) where (`issue`.`typeID` not in (1,2,40,41)) order by `listingsforhku`.`name`,`sectypes`.`typeShort` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lasthlddate`
--

/*!50001 DROP VIEW IF EXISTS `lasthlddate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lasthlddate` AS select max(`sholdings`.`atDate`) AS `maxDate`,`sholdings`.`issueID` AS `issueID`,`sholdings`.`holderID` AS `holderID`,`sholdings`.`heldAs` AS `heldAs` from `sholdings` group by `sholdings`.`issueID`,`sholdings`.`holderID`,`sholdings`.`heldAs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lastmreturn`
--

/*!50001 DROP VIEW IF EXISTS `lastmreturn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lastmreturn` AS select `stocklistings`.`StockCode` AS `stockcode`,`organisations`.`Name1` AS `name`,`sectypes`.`typeShort` AS `typeShort`,(select max(`issuedshares`.`atDate`) from `issuedshares` where (`issuedshares`.`issueID` = `issue`.`ID1`)) AS `maxDate` from (`stocklistings` join ((`issue` join `organisations`) join `sectypes`) on(((`stocklistings`.`IssueID` = `issue`.`ID1`) and (`issue`.`issuer` = `organisations`.`PersonID`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) where (((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= curdate())) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > curdate())) and (`stocklistings`.`StockExID` in (1,20,23)) and (`issue`.`typeID` not in (2,40,41))) order by (select max(`issuedshares`.`atDate`) from `issuedshares` where (`issuedshares`.`issueID` = `issue`.`ID1`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listedcoshk`
--

/*!50001 DROP VIEW IF EXISTS `listedcoshk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listedcoshk` AS select distinct `issue`.`issuer` AS `issuer`,`stocklistings`.`StockExID` AS `stockExID` from (`issue` join `stocklistings` on((`issue`.`ID1` = `stocklistings`.`IssueID`))) where ((`stocklistings`.`StockExID` in (1,20,23)) and (`issue`.`typeID` not in (1,2,40,41,46)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= now())) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > now()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listedcoshkadv`
--

/*!50001 DROP VIEW IF EXISTS `listedcoshkadv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listedcoshkadv` AS select `documents`.`OrgID` AS `orgID`,`listedcoshkall`.`name` AS `name`,max(`documents`.`ReportDate`) AS `advDone` from (`documents` join `listedcoshkall` on((`listedcoshkall`.`personID` = `documents`.`OrgID`))) where (0 <> `documents`.`Adv`) group by `documents`.`OrgID` order by `advDone` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listedcoshkall`
--

/*!50001 DROP VIEW IF EXISTS `listedcoshkall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listedcoshkall` AS select `organisations`.`PersonID` AS `personID`,`organisations`.`Domicile` AS `domicile`,`organisations`.`incDate` AS `incDate`,`listedcoshk`.`stockExID` AS `stockExID`,`organisations`.`Name1` AS `name` from (`listedcoshk` join `organisations` on((`listedcoshk`.`issuer` = `organisations`.`PersonID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listedcoshkever`
--

/*!50001 DROP VIEW IF EXISTS `listedcoshkever`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listedcoshkever` AS select `issue`.`issuer` AS `issuer`,min(`stocklistings`.`FirstTradeDate`) AS `firstTrade` from (`issue` join `stocklistings` on((`issue`.`ID1` = `stocklistings`.`IssueID`))) where ((`stocklistings`.`StockExID` in (1,20,23)) and (`issue`.`typeID` in (0,6,7,10,42))) group by `issue`.`issuer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listedfirsttrade`
--

/*!50001 DROP VIEW IF EXISTS `listedfirsttrade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listedfirsttrade` AS select `issue`.`issuer` AS `PersonID`,min(`stocklistings`.`FirstTradeDate`) AS `FirstTradeDate` from (`issue` join `stocklistings` on((`issue`.`ID1` = `stocklistings`.`IssueID`))) where (((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > now())) and (`issue`.`typeID` <> 1)) group by `issue`.`issuer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listingsforhku`
--

/*!50001 DROP VIEW IF EXISTS `listingsforhku`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listingsforhku` AS select `organisations`.`PersonID` AS `personID`,`organisations`.`Name1` AS `name`,`sectypes`.`typeShort` AS `typeShort`,`stocklistings`.`IssueID` AS `issueID`,`stocklistings`.`StockCode` AS `stockCode`,`stocklistings`.`FirstTradeDate` AS `FirstTradeDate`,`stocklistings`.`DelistDate` AS `DelistDate` from (`stocklistings` join ((`issue` join `organisations`) join `sectypes`) on(((`stocklistings`.`IssueID` = `issue`.`ID1`) and (`issue`.`issuer` = `organisations`.`PersonID`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) where (((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > '2000-01-01')) and (`stocklistings`.`StockExID` in (1,20)) and (`issue`.`typeID` not in (1,2,40,41,46))) order by `organisations`.`Name1`,`stocklistings`.`FirstTradeDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lookupadviser`
--

/*!50001 DROP VIEW IF EXISTS `lookupadviser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lookupadviser` AS select `advisers`.`PersonID` AS `PersonID`,`organisations`.`Name1` AS `Name1` from (`organisations` join `advisers` on((`organisations`.`PersonID` = `advisers`.`PersonID`))) order by `organisations`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lookupposition`
--

/*!50001 DROP VIEW IF EXISTS `lookupposition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lookupposition` AS select `positions`.`positionID` AS `PositionID`,`positions`.`posShort` AS `PosShort`,`positions`.`posLong` AS `PosLong` from `positions` order by `positions`.`posShort` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lookuprelationship`
--

/*!50001 DROP VIEW IF EXISTS `lookuprelationship`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lookuprelationship` AS select `relationships`.`ID` AS `ID`,`relationships`.`relation` AS `Relation` from `relationships` order by `relationships`.`relation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lookuprole`
--

/*!50001 DROP VIEW IF EXISTS `lookuprole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lookuprole` AS select `roles`.`RoleID` AS `RoleID`,`roles`.`Role` AS `Role` from `roles` order by `roles`.`Role` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `missingage`
--

/*!50001 DROP VIEW IF EXISTS `missingage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `missingage` AS select `h`.`name` AS `name`,`p`.`Name1` AS `name1`,`p`.`Name2` AS `name2`,`d`.`ApptDate` AS `apptDate`,`d`.`ResDate` AS `resDate` from (`listedcoshkall` `h` join ((`directorships` `d` join `people` `p`) join `positions` `pn`) on(((`h`.`personID` = `d`.`Company`) and (`d`.`Director` = `p`.`PersonID`) and (`d`.`positionID` = `pn`.`positionID`)))) where (((`d`.`ApptDate` is null) or (`d`.`ApptDate` <= now())) and ((`d`.`ResDate` is null) or (`d`.`ResDate` > now())) and (`pn`.`rank` < 2) and (`p`.`YOB` is null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `missingdistdate`
--

/*!50001 DROP VIEW IF EXISTS `missingdistdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `missingdistdate` AS select `e`.`eventID` AS `eventID`,`e`.`announced` AS `announced`,`o`.`Name1` AS `name1`,`c`.`Change` AS `change`,`e`.`exDate` AS `exDate`,`sl`.`StockCode` AS `StockCode`,`e`.`distDate` AS `distDate` from (`events` `e` join (((`issue` `i` join `stocklistings` `sl`) join `organisations` `o`) join `capchangetypes` `c`) on(((`e`.`issueID` = `i`.`ID1`) and (`i`.`ID1` = `sl`.`IssueID`) and (`i`.`issuer` = `o`.`PersonID`) and (`e`.`eventType` = `c`.`CapChangeType`)))) where ((`e`.`distDate` is null) and (`e`.`cancelDate` is null) and (`sl`.`StockExID` in (1,20,22,23,38)) and ((`sl`.`FirstTradeDate` is null) or (`sl`.`FirstTradeDate` <= `e`.`exDate`)) and ((`sl`.`DelistDate` is null) or (`sl`.`DelistDate` > `e`.`exDate`)) and ((`e`.`price` <> 0) or (`e`.`eventType` in (5,18,25,50)))) order by `e`.`exDate` desc,`o`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `missingexent`
--

/*!50001 DROP VIEW IF EXISTS `missingexent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `missingexent` AS select `e`.`eventID` AS `eventID`,`e`.`announced` AS `announced`,`o`.`Name1` AS `name1`,`c`.`Change` AS `change`,`sl`.`StockCode` AS `StockCode`,`e`.`exDate` AS `exDate`,`e`.`bookCloseFr` AS `bookCloseFr`,`e`.`bookCloseTo` AS `bookCloseTo` from (`events` `e` join (((`issue` `i` join `stocklistings` `sl`) join `organisations` `o`) join `capchangetypes` `c`) on(((`e`.`issueID` = `i`.`ID1`) and (`i`.`ID1` = `sl`.`IssueID`) and (`i`.`issuer` = `o`.`PersonID`) and (`e`.`eventType` = `c`.`CapChangeType`)))) where ((`e`.`exDate` is null) and (`e`.`cancelDate` is null) and (`sl`.`StockExID` in (1,20,22,23,38)) and ((`sl`.`FirstTradeDate` is null) or (`sl`.`FirstTradeDate` <= `e`.`announced`)) and ((`sl`.`DelistDate` is null) or (`sl`.`DelistDate` > `e`.`announced`)) and ((`e`.`price` <> 0) or ((`e`.`new` is not null) and (`e`.`old` is not null)))) order by `e`.`announced` desc,`o`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st1cos`
--

/*!50001 DROP VIEW IF EXISTS `st1cos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st1cos` AS select distinct `issue`.`issuer` AS `issuer` from `issue` where (`issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= '2003-12-31')))) and `issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > '2005-03-31')))) and (`issue`.`typeID` in (0,6,7,42))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st1dates`
--

/*!50001 DROP VIEW IF EXISTS `st1dates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st1dates` AS select `st1cos`.`issuer` AS `issuer`,(select max(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st1cos`.`issuer`) and (`documents`.`RecordDate` <= '2003-12-31'))) AS `befDate`,(select min(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st1cos`.`issuer`) and (`documents`.`RecordDate` >= '2004-12-31'))) AS `aftDate` from `st1cos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st2cos`
--

/*!50001 DROP VIEW IF EXISTS `st2cos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st2cos` AS select distinct `issue`.`issuer` AS `issuer` from `issue` where (`issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= '2011-12-31')))) and `issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > '2012-12-31')))) and (`issue`.`typeID` in (0,6,7,42))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st2dates`
--

/*!50001 DROP VIEW IF EXISTS `st2dates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st2dates` AS select `st2cos`.`issuer` AS `issuer`,(select max(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st2cos`.`issuer`) and (`documents`.`RecordDate` <= '2011-12-31'))) AS `befDate`,(select min(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st2cos`.`issuer`) and (`documents`.`RecordDate` >= '2012-12-31'))) AS `aftDate` from `st2cos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st4cos`
--

/*!50001 DROP VIEW IF EXISTS `st4cos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st4cos` AS select distinct `issue`.`issuer` AS `issuer` from `issue` where (`issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= '2007-12-31')))) and `issue`.`ID1` in (select `stocklistings`.`IssueID` from `stocklistings` where ((`stocklistings`.`StockExID` in (1,20)) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > '2008-12-31')))) and (`issue`.`typeID` in (0,6,7,42))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st4dates`
--

/*!50001 DROP VIEW IF EXISTS `st4dates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st4dates` AS select `st4cos`.`issuer` AS `issuer`,(select max(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st4cos`.`issuer`) and (`documents`.`RecordDate` <= '2007-12-31'))) AS `befDate`,(select min(`documents`.`RecordDate`) from `documents` where ((`documents`.`repID` is not null) and (`documents`.`OrgID` = `st4cos`.`issuer`) and (`documents`.`RecordDate` >= '2008-12-31'))) AS `aftDate` from `st4cos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockcodes1000`
--

/*!50001 DROP VIEW IF EXISTS `stockcodes1000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockcodes1000` AS select `stocklistings`.`StockCode` AS `StockCode` from `stocklistings` where ((`stocklistings`.`StockCode` < _latin1'1000') and (`stocklistings`.`StockExID` in (1,20,22,23,38)) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > now()))) order by `stocklistings`.`StockCode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webadv`
--

/*!50001 DROP VIEW IF EXISTS `webadv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webadv` AS select `organisations`.`Name1` AS `Org`,`roles`.`Role` AS `Role`,`roles`.`RoleID` AS `roleID`,`organisations_1`.`Name1` AS `Adv`,`organisations`.`PersonID` AS `OrgID`,`organisations_1`.`PersonID` AS `AdvID`,`adviserships`.`AddDate` AS `AddDate`,`adviserships`.`AddAcc` AS `AddAcc`,`adviserships`.`RemDate` AS `RemDate`,`adviserships`.`RemAcc` AS `RemAcc`,`roles`.`OneTime` AS `OneTime` from (`roles` join (`organisations` `organisations_1` join (`organisations` join `adviserships` on((`organisations`.`PersonID` = `adviserships`.`Company`))) on((`organisations_1`.`PersonID` = `adviserships`.`Adviser`))) on((`roles`.`RoleID` = `adviserships`.`Role`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webadvships`
--

/*!50001 DROP VIEW IF EXISTS `webadvships`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webadvships` AS select `organisations`.`Name1` AS `Org`,`roles`.`Role` AS `Role`,`roles`.`OneTime` AS `OneTime`,`organisations`.`PersonID` AS `OrgID`,`adviserships`.`Adviser` AS `AdvID`,`adviserships`.`AddDate` AS `AddDate`,`adviserships`.`AddAcc` AS `AddAcc`,`adviserships`.`RemDate` AS `RemDate`,`adviserships`.`RemAcc` AS `RemAcc`,`listedcoshk`.`issuer` AS `Issuer` from ((`roles` join (`organisations` join `adviserships` on((`organisations`.`PersonID` = `adviserships`.`Company`))) on((`roles`.`RoleID` = `adviserships`.`Role`))) left join `listedcoshk` on((`listedcoshk`.`issuer` = `adviserships`.`Company`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webbuybacks`
--

/*!50001 DROP VIEW IF EXISTS `webbuybacks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webbuybacks` AS select `STOCKCODETHEN`(`capchanges`.`IssueID`,`capchanges`.`EffDate`) AS `stockCode`,`capchanges`.`IssueID` AS `IssueID`,`capchanges`.`EffDate` AS `EffDate`,`capchanges`.`exchID` AS `exchID`,ifnull(`b2`.`name`,`b1`.`name`) AS `exchName`,-(`capchanges`.`shares`) AS `shares`,`capchanges`.`Value` AS `Value`,`currencies`.`currency` AS `Currency`,concat(`organisations`.`Name1`,': ',convert(`sectypes`.`typeShort` using utf8mb3)) AS `Name` from (((`capchanges` join (((`issue` join `organisations`) join `sectypes`) join `bbexch` `b1`) on(((`issue`.`ID1` = `capchanges`.`IssueID`) and (`organisations`.`PersonID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`) and (`capchanges`.`exchID` = `b1`.`ID`)))) left join `currencies` on((`capchanges`.`Currency` = `currencies`.`ID`))) left join `bbexch` `b2` on((`b1`.`mapTo` = `b2`.`ID`))) where (`capchanges`.`CapChangeType` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webcatmembers`
--

/*!50001 DROP VIEW IF EXISTS `webcatmembers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webcatmembers` AS select `organisations`.`PersonID` AS `PersonID`,`organisations`.`Name1` AS `Name1`,`classifications`.`Category` AS `Category`,`categories`.`Name` AS `CatName` from (`organisations` join (`categories` join `classifications` on((`categories`.`ID` = `classifications`.`Category`))) on((`organisations`.`PersonID` = `classifications`.`Company`))) order by `organisations`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webcattree`
--

/*!50001 DROP VIEW IF EXISTS `webcattree`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webcattree` AS select `categories`.`Name` AS `ParentName`,`categories_1`.`Name` AS `ChildName`,`categories`.`ID` AS `ParentID`,`categories_1`.`ID` AS `ChildID` from (`categories` `categories_1` join (`categories` join `cattree` on((`categories`.`ID` = `cattree`.`ParentCat`))) on((`categories_1`.`ID` = `cattree`.`ChildCat`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webcountadvbyrole`
--

/*!50001 DROP VIEW IF EXISTS `webcountadvbyrole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webcountadvbyrole` AS select `roles`.`RoleID` AS `RoleID`,`roles`.`roleLong` AS `Role`,`roles`.`OneTime` AS `OneTime`,count(`adviserships`.`Role`) AS `CountOfRole` from (`listedcoshk` join (`roles` join `adviserships` on((`roles`.`RoleID` = `adviserships`.`Role`))) on((`listedcoshk`.`issuer` = `adviserships`.`Company`))) where ((`adviserships`.`RemDate` is null) or (`adviserships`.`RemDate` > now())) group by `roles`.`RoleID`,`roles`.`Role`,`roles`.`OneTime` order by `roles`.`roleLong` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webcurrlisted`
--

/*!50001 DROP VIEW IF EXISTS `webcurrlisted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webcurrlisted` AS select `stocklistings`.`StockCode` AS `StockCode`,`organisations`.`Name1` AS `Name1`,`sectypes`.`typeShort` AS `Type`,`organisations`.`PersonID` AS `PersonID`,`stocklistings`.`StockExID` AS `StockExID`,left(`sectypes`.`typeShort`,1) AS `Type1`,`stocklistings`.`FirstTradeDate` AS `FirstTradeDate`,`organisations`.`Domicile` AS `Domicile` from (`organisations` join (((`listings` join `issue`) join `sectypes`) join `stocklistings`) on(((`issue`.`ID1` = `stocklistings`.`IssueID`) and (`listings`.`stockExID` = `stocklistings`.`StockExID`) and (`organisations`.`PersonID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) where ((`stocklistings`.`StockExID` in (1,20,22,23,38)) and ((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FirstTradeDate` <= now())) and ((`stocklistings`.`DelistDate` is null) or (`stocklistings`.`DelistDate` > now()))) order by `organisations`.`Name1`,`sectypes`.`typeShort` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webdelisted`
--

/*!50001 DROP VIEW IF EXISTS `webdelisted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webdelisted` AS select `stocklistings`.`StockCode` AS `StockCode`,`stocklistings`.`IssueID` AS `IssueID`,`organisations`.`Name1` AS `Name1`,`organisations`.`Domicile` AS `domicile`,`sectypes`.`typeShort` AS `Type`,`stocklistings`.`FirstTradeDate` AS `FirstTradeDate`,`stocklistings`.`FinalTradeDate` AS `FinalTradeDate`,`stocklistings`.`DelistDate` AS `DelistDate`,`organisations`.`PersonID` AS `PersonID`,`stocklistings`.`StockExID` AS `StockExID`,`dlreasons`.`Reason` AS `Reason`,if(((`stocklistings`.`FirstTradeDate` is null) or (`stocklistings`.`FinalTradeDate` is null)),NULL,(((to_days(`stocklistings`.`FinalTradeDate`) - to_days(`stocklistings`.`FirstTradeDate`)) + 1) / 365.2425)) AS `TradeLife` from ((`stocklistings` join (((`issue` join `organisations`) join `sectypes`) join `listings`) on(((`issue`.`issuer` = `organisations`.`PersonID`) and (`stocklistings`.`IssueID` = `issue`.`ID1`) and (`stocklistings`.`StockExID` = `listings`.`stockExID`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) left join `dlreasons` on((`stocklistings`.`ReasonID` = `dlreasons`.`ReasonID`))) where ((`stocklistings`.`DelistDate` <= now()) and (`stocklistings`.`StockExID` in (1,20,22,23,38))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webdirs`
--

/*!50001 DROP VIEW IF EXISTS `webdirs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webdirs` AS select concat(`people`.`Name1`,', ',ifnull(`people`.`Name2`,'')) AS `Dir`,`positions`.`posShort` AS `Position`,`positions`.`rank` AS `rank`,`positions`.`posLong` AS `PosLong`,`directorships`.`Director` AS `DirID`,`directorships`.`Company` AS `OrgID`,`directorships`.`ApptDate` AS `ApptDate`,`directorships`.`ResDate` AS `ResDate`,`directorships`.`ApptAcc` AS `ApptAcc`,`directorships`.`ResAcc` AS `ResAcc`,`people`.`YOB` AS `YOB` from (`positions` join (`people` join `directorships` on((`people`.`PersonID` = `directorships`.`Director`))) on((`positions`.`positionID` = `directorships`.`positionID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webdirships`
--

/*!50001 DROP VIEW IF EXISTS `webdirships`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webdirships` AS select `positions`.`posShort` AS `Position`,`positions`.`rank` AS `Rank`,`positions`.`posLong` AS `PosLong`,`organisations`.`Name1` AS `Org`,`directorships`.`Director` AS `DirID`,`organisations`.`PersonID` AS `OrgID`,`directorships`.`ApptDate` AS `ApptDate`,`directorships`.`ResDate` AS `ResDate`,`directorships`.`ApptAcc` AS `ApptAcc`,`directorships`.`ResAcc` AS `ResAcc`,`listedcoshkall`.`stockExID` AS `StockExID` from ((`positions` join (`organisations` join `directorships` on((`organisations`.`PersonID` = `directorships`.`Company`))) on((`positions`.`positionID` = `directorships`.`positionID`))) left join `listedcoshkall` on((`organisations`.`PersonID` = `listedcoshkall`.`personID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webdocs`
--

/*!50001 DROP VIEW IF EXISTS `webdocs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webdocs` AS select `documents`.`OrgID` AS `OrgID`,`documents`.`RecordDate` AS `RecordDate`,`documents`.`ReportDate` AS `ReportDate`,`doctypes`.`DocLong` AS `DocLong`,`documents`.`Adv` AS `Adv`,`documents`.`Dir` AS `Dir` from (`doctypes` join `documents` on((`doctypes`.`DocTypeID` = `documents`.`DocTypeID`))) where (`documents`.`DocTypeID` <> 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webholders3`
--

/*!50001 DROP VIEW IF EXISTS `webholders3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webholders3` AS select `sh`.`holderID` AS `personID`,`sh`.`issueID` AS `issue`,`sh`.`atDate` AS `holdingDate`,`sh`.`shares` AS `shares`,`sh`.`stake` AS `stake`,`i`.`typeID` AS `typeID`,`st`.`typeShort` AS `typeShort`,`st`.`typeLong` AS `typeLong`,`o`.`incDate` AS `incDate`,`o`.`incAcc` AS `incAcc`,`o`.`orgType` AS `orgtype`,`d`.`A2` AS `A2`,`d`.`friendly` AS `friendly`,if((`o`.`Name1` is null),'P','O') AS `personType`,`NAMEPSN`(`o`.`Name1`,`p`.`Name1`,`p`.`Name2`) AS `name` from (((((`sholdings` `sh` join `lasthlddate` `t1` on((((`sh`.`atDate` = `t1`.`maxDate`) or ((`sh`.`atDate` is null) and (`t1`.`maxDate` is null))) and (`sh`.`holderID` = `t1`.`holderID`) and (`sh`.`issueID` = `t1`.`issueID`) and (`sh`.`heldAs` = `t1`.`heldAs`)))) join `issue` `i` on((`sh`.`issueID` = `i`.`ID1`))) join `sectypes` `st` on((`i`.`typeID` = `st`.`typeID`))) left join (`organisations` `o` left join `domiciles` `d` on((`o`.`Domicile` = `d`.`ID`))) on((`sh`.`holderID` = `o`.`PersonID`))) left join `people` `p` on((`sh`.`holderID` = `p`.`PersonID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webholdings3`
--

/*!50001 DROP VIEW IF EXISTS `webholdings3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `webholdings3` AS select `sh`.`holderID` AS `personID`,`sh`.`issueID` AS `issue`,`sh`.`atDate` AS `holdingDate`,`sh`.`shares` AS `shares`,`sh`.`stake` AS `stake`,`d`.`friendly` AS `friendly`,`d`.`A2` AS `A2`,`o`.`Name1` AS `name`,`o`.`orgType` AS `orgType`,`st`.`typeLong` AS `SecType`,`st`.`typeShort` AS `typeShort`,`i`.`issuer` AS `issuer`,`o`.`incDate` AS `incDate`,`o`.`incAcc` AS `incAcc` from (((((`sholdings` `sh` join `lasthlddate` `t1` on((((`sh`.`atDate` = `t1`.`maxDate`) or ((`sh`.`atDate` is null) and (`t1`.`maxDate` is null))) and (`sh`.`holderID` = `t1`.`holderID`) and (`sh`.`issueID` = `t1`.`issueID`) and (`sh`.`heldAs` = `t1`.`heldAs`)))) join `issue` `i` on((`sh`.`issueID` = `i`.`ID1`))) join `organisations` `o` on((`i`.`issuer` = `o`.`PersonID`))) join `sectypes` `st` on((`i`.`typeID` = `st`.`typeID`))) left join `domiciles` `d` on((`o`.`Domicile` = `d`.`ID`))) where (0 = `EVERLISTCO`(`i`.`issuer`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webincats`
--

/*!50001 DROP VIEW IF EXISTS `webincats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webincats` AS select `organisations`.`PersonID` AS `PersonID`,`organisations`.`Name1` AS `Name1`,`classifications`.`Category` AS `Category`,`categories`.`Name` AS `CatName` from (`organisations` join (`categories` join `classifications` on((`categories`.`ID` = `classifications`.`Category`))) on((`organisations`.`PersonID` = `classifications`.`Company`))) order by `organisations`.`Name1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webissues`
--

/*!50001 DROP VIEW IF EXISTS `webissues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `webissues` AS select `issue`.`ID1` AS `ID1`,`sectypes`.`typeShort` AS `SecType`,`organisations`.`Name1` AS `Issuer`,`organisations`.`PersonID` AS `Person` from (`organisations` join (`issue` join `sectypes`) on(((`organisations`.`PersonID` = `issue`.`issuer`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weblistings`
--

/*!50001 DROP VIEW IF EXISTS `weblistings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `weblistings` AS select `stocklistings`.`StockCode` AS `StockCode`,`sectypes`.`typeShort` AS `SecType`,`organisations`.`Name1` AS `Org`,`stocklistings`.`DelistDate` AS `DelistDate`,`organisations`.`PersonID` AS `OrgID`,`stocklistings`.`FirstTradeDate` AS `FirstTradeDate`,`stocklistings`.`FinalTradeDate` AS `FinalTradeDate`,`listings`.`shortName` AS `ShortName`,`stocklistings`.`IssueID` AS `IssueID`,`listings`.`stockExID` AS `StockExID`,`dlreasons`.`Reason` AS `Reason` from ((`stocklistings` join (((`issue` join `organisations`) join `sectypes`) join `listings`) on(((`issue`.`issuer` = `organisations`.`PersonID`) and (`stocklistings`.`IssueID` = `issue`.`ID1`) and (`stocklistings`.`StockExID` = `listings`.`stockExID`) and (`issue`.`typeID` = `sectypes`.`typeID`)))) left join `dlreasons` on((`stocklistings`.`ReasonID` = `dlreasons`.`ReasonID`))) where (`listings`.`stockExID` in (1,20,22,23,38,71)) order by `sectypes`.`typeShort`,`stocklistings`.`FirstTradeDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weborgs`
--

/*!50001 DROP VIEW IF EXISTS `weborgs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`David`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `weborgs` AS select `organisations`.`Domicile` AS `domID`,`organisations`.`PersonID` AS `orgID`,`organisations`.`Name1` AS `org`,`organisations`.`orgType` AS `orgType`,cast(`organisations`.`cName` as char charset utf8mb3) AS `cName`,`domiciles`.`FullName` AS `Dom`,`orgtypes`.`typeName` AS `typeName`,`MSDATEACC`(`organisations`.`incDate`,`organisations`.`incAcc`) AS `inc`,`organisations`.`incDate` AS `incDate`,`organisations`.`disDate` AS `disDate`,`organisations`.`incAcc` AS `incAcc`,`organisations`.`incID` AS `incID`,`dismodes`.`disModeTxt` AS `disModeTxt`,`organisations`.`SFCID` AS `SFCID`,`organisations`.`SFCri` AS `SFCri`,`organisations`.`UKURI` AS `UKURI`,`organisations`.`incUpd` AS `incupd`,`oldcr`.`crn` AS `oldcrn` from ((((`organisations` left join `domiciles` on((`domiciles`.`ID` = `organisations`.`Domicile`))) left join `orgtypes` on((`organisations`.`orgType` = `orgtypes`.`orgType`))) left join `dismodes` on((`organisations`.`disMode` = `dismodes`.`ID`))) left join `oldcr` on((`organisations`.`PersonID` = `oldcr`.`personID`))) */;
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

-- Dump completed on 2025-10-11  0:00:03
