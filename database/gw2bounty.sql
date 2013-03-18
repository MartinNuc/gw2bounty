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
  `faceurl` varchar(256) NOT NULL,
  `mapurl` varchar(256) NOT NULL,
  `descriptionurl` varchar(256) NOT NULL,
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
  `memberpassword` varchar(45) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `guildmaster_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_guild_1` (`server_id`),
  KEY `FK_guild_2` (`guildmaster_id`),
  CONSTRAINT `FK_guild_1` FOREIGN KEY (`server_id`) REFERENCES `server` (`id`),
  CONSTRAINT `FK_guild_2` FOREIGN KEY (`guildmaster_id`) REFERENCES `guildmaster` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guildmaster`
--

DROP TABLE IF EXISTS `guildmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guildmaster` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gamenick` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`login`,`gamenick`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guildmaster`
--

LOCK TABLES `guildmaster` WRITE;
/*!40000 ALTER TABLE `guildmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `guildmaster` ENABLE KEYS */;
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
  `guild_id` int(10) unsigned NOT NULL,
  `tier_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_mission_2` (`guild_id`),
  KEY `FK_mission_3` (`state_id`),
  KEY `FK_mission_1` (`tier_id`) USING BTREE,
  CONSTRAINT `FK_mission_1` FOREIGN KEY (`tier_id`) REFERENCES `tier` (`id`),
  CONSTRAINT `FK_mission_2` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mission_3` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
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
-- Table structure for table `searchedbosses`
--

DROP TABLE IF EXISTS `searchedbosses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchedbosses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignedpeople` int(10) unsigned NOT NULL,
  `chosen` tinyint(1) NOT NULL DEFAULT '0',
  `x` int(10) unsigned DEFAULT NULL,
  `y` int(10) unsigned DEFAULT NULL,
  `killed` tinyint(1) NOT NULL DEFAULT '0',
  `mission_id` int(10) unsigned NOT NULL,
  `boss_id` int(10) unsigned NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `found` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_searched_bosses_1` (`mission_id`),
  KEY `FK_searched_bosses_2` (`boss_id`),
  CONSTRAINT `FK_searched_bosses_1` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_searched_bosses_2` FOREIGN KEY (`boss_id`) REFERENCES `boss` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchedbosses`
--

LOCK TABLES `searchedbosses` WRITE;
/*!40000 ALTER TABLE `searchedbosses` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchedbosses` ENABLE KEYS */;
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
  `region_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_server_1` (`region_id`),
  CONSTRAINT `FK_server_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (1,'Aurora Glade',1),(2,'Anvil Rock',2),(3,'Blackgate',2),(4,'Borlis Pass',2),(5,'Crystal Desert',2),(6,'Darkhaven',2),(7,'Devona\'s Rest',2),(8,'Dragonbrand',2),(9,'Ehmry Bay',2),(10,'Eredon Terrace',2),(11,'Ferguson\'s Crossing',2),(12,'Fort Aspenwood',2),(13,'Gate of Madness',2),(14,'Henge of Denravi',2),(15,'Isle of Janthir',2),(16,'Jade Quarry',2),(17,'Kaineng',2),(18,'Maguuma',2),(19,'Northern Shiverpeaks ',2),(20,'Sanctum of Rall',2),(21,'Sea of Sorrows',2),(22,'Sorrow\'s Furnace ',2),(23,'Stormbluff Isle',2),(24,'Tarnished Coast',2),(25,'Yak\'s Bend',2),(26,'Blacktide',1),(41,'Desolation',1),(42,'Far Shiverpeaks',1),(43,'Fissure of Woe',1),(44,'Gandara',1),(45,'Gunnar\'s Hold',1),(46,'Piken Square',1),(47,'Ring of Fire',1),(48,'Ruins of Surmia',1),(49,'Seafarer\'s Rest',1),(50,'Underworld',1),(51,'Vabbi',1),(52,'Whiteside Ridge',1),(53,'Arborstone',1),(55,'Augury Rock ',1),(56,'Fort Ranik',1),(57,'Jade Sea',1),(58,'Vizunah Square',1),(59,'Abaddon\'s Mouth',1),(60,'Drakkar Lake',1),(61,'Dzagonur',1),(62,'Elona Reach',1),(63,'Kodash',1),(64,'Miller\'s Sound',1),(65,'Riverside',1),(66,'Baruch Bay ',1);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'planned'),(2,'searching for bosses'),(3,'started (killing)'),(4,'finished'),(5,'canceled');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
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

-- Dump completed on 2013-03-18  6:06:18
