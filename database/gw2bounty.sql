-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: gw2bounty
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `face_url` varchar(256) NOT NULL,
  `map_url` varchar(256) NOT NULL,
  `description_url` varchar(256) NOT NULL,
  `map` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss`
--

LOCK TABLES `boss` WRITE;
/*!40000 ALTER TABLE `boss` DISABLE KEYS */;
INSERT INTO `boss` VALUES (1,'Ander “Wildman” Westward','http://dulfy.net/wp-content/uploads/2013/02/gw2-ander-wildman-westward-guild-bounty.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-ander-wildman-westward-guild-bounty-5.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#1','Southsun Cove'),(2,'Bookworm Bwikki','http://dulfy.net/wp-content/uploads/2013/02/gw2-bookworm-bwikki-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-bookworm-bwikki-guild-bounty-pathing-map-24.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#2','Lornar’s Pass'),(3,'Brekkabek','http://dulfy.net/wp-content/uploads/2013/02/gw2-brekkabek-guild-bounty.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-brekkabekguild-bounty.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#3','Harathi Hinterlands'),(4,'Crusader Michiele','http://dulfy.net/wp-content/uploads/2013/02/gw2-crusader-michiele-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-crusader-michiele-guild-bounty-sparkfly-fen-pathing-map.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#4','Sparkfly Fen'),(5,'Deputy Brooke','http://dulfy.net/wp-content/uploads/2013/02/gw2-deputy-brooke-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-deputy-brooke-guild-bounty-snowden-drifts-pathing-map.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#5','Snowden Drifts'),(6,'Devious Teesa','http://dulfy.net/wp-content/uploads/2013/02/gw2-devious-teesa-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-devious-teesa-guild-bounty-3.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#6','Frostgorge Sound'),(7,'Diplomat Tarban','http://dulfy.net/wp-content/uploads/2013/02/gw2-diplomat-tarban-guild-bounty-3_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-diplomat-tarban-guild-bounty-2.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#7','Brisban Wildlands'),(8,'Half Baked Komali','http://dulfy.net/wp-content/uploads/2013/02/gw2-half-baked-komali-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-half-baked-komali-guild-bounty-mount-maelstrom-map-resized.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#8','Mount Maelstrom'),(9,'Poobadoo','http://dulfy.net/wp-content/uploads/2013/02/gw2-poobadoo-guild-bounty-kessex-hills-2_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-poobadoo-guild-bounty-kessex-hills-pathing-map.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#9','Kessex Hills'),(10,'Prisoner 1141','http://dulfy.net/wp-content/uploads/2013/02/gw2-prisoner-1141-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-prisoner-1141-guild-bounty-pathing-map-3-resized.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#10','Iron Marches'),(11,'Shaman Arderus','http://dulfy.net/wp-content/uploads/2013/02/gw2-shaman-arderus-guild-bounty-2_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-shaman-arderus-guild-bounty.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#11','Fireheart Rise'),(12,'Short-Fuse Felix','http://dulfy.net/wp-content/uploads/2013/03/gw2-short-fuse-felix-guild-bounty-guide.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-short-fuse-felix-guild-bounty-diessa-plateau-map.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#12','Diessa Plateau'),(13,'Sotzz the Scallywag','http://dulfy.net/wp-content/uploads/2013/02/gw2-sotzz-the-scallywag-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-sotzz-the-scallywag-guild-bounty-map-5.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#13','Gendarran Fields'),(14,'Tricksy Trekksa','http://dulfy.net/wp-content/uploads/2013/02/gw2-tricksy-trekksa-guild-bounty.jpg','http://dulfy.net/wp-content/uploads/2013/02/gw2-curious-cow-guild-bounty-pathing-map-resized.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#14','Blazeridge Steppes'),(15,'Trillia Midwell','http://dulfy.net/wp-content/uploads/2013/02/gw2-trillia-midwell-guild-bounty_thumb.jpg','http://dulfy.net/wp-content/uploads/2013/03/gw2-trillia-midwell-guild-bounty-fields-of-ruin-map.jpg','http://dulfy.net/2013/02/27/gw2-guild-bounty-guide/#15','Fields of Ruin');
/*!40000 ALTER TABLE `boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_password` varchar(45) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_master`
--

DROP TABLE IF EXISTS `guild_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `game_nick` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_master`
--

LOCK TABLES `guild_master` WRITE;
/*!40000 ALTER TABLE `guild_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Europe'),(2,'North America');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searched_bosses`
--

DROP TABLE IF EXISTS `searched_bosses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searched_bosses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignedpeople` int(10) unsigned NOT NULL,
  `chosen` tinyint(1) NOT NULL,
  `x` int(10) unsigned NOT NULL,
  `y` int(10) unsigned NOT NULL,
  `found` tinyint(1) NOT NULL,
  `killed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searched_bosses`
--

LOCK TABLES `searched_bosses` WRITE;
/*!40000 ALTER TABLE `searched_bosses` DISABLE KEYS */;
/*!40000 ALTER TABLE `searched_bosses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tier`
--

DROP TABLE IF EXISTS `tier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tier` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `numOfBosses` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tier`
--

LOCK TABLES `tier` WRITE;
/*!40000 ALTER TABLE `tier` DISABLE KEYS */;
INSERT INTO `tier` VALUES (1,'Tier 1',2),(2,'Tier 2',3),(3,'Tier 3',6);
/*!40000 ALTER TABLE `tier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-16 18:10:30
