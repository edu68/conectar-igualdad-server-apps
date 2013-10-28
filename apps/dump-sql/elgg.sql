-- MySQL dump 10.11
--
-- Host: localhost    Database: elgg
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny4

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
-- Table structure for table `elgg_access_collection_membership`
--

CREATE DATABASE IF NOT EXISTS elgg;
USE elgg;

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL auto_increment,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL auto_increment,
  `site_guid` bigint(20) unsigned default NULL,
  `api_key` varchar(40) default NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY  (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"es\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1317665797'),('plugin_run_once','1317665797'),('elgg_widget_run_once','1317665797'),('installed','1317665823'),('path','/var/www/intranet/elgg/'),('dataroot','/var/elggdata/'),('default_site','1'),('version','2011061200'),('simplecache_enabled','1'),('viewpath_cache_enabled','1'),('processed_upgrades','a:33:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1317665986'),('simplecache_lastcached_default','1317665986'),('__site_secret__','5bde9f6b80260f72e98704309e910b84'),('simplecache_lastupdate_failsafe','1317665986'),('simplecache_lastcached_failsafe','1317665986'),('simplecache_lastupdate_foaf','1317665986'),('simplecache_lastcached_foaf','1317665986'),('simplecache_lastupdate_ical','1317665986'),('simplecache_lastcached_ical','1317665986'),('simplecache_lastupdate_installation','1317665986'),('simplecache_lastcached_installation','1317665986'),('simplecache_lastupdate_json','1317665986'),('simplecache_lastcached_json','1317665986'),('simplecache_lastupdate_opendd','1317665986'),('simplecache_lastcached_opendd','1317665986'),('simplecache_lastupdate_php','1317665986'),('simplecache_lastcached_php','1317665986'),('simplecache_lastupdate_rss','1317665986'),('simplecache_lastcached_rss','1317665986'),('simplecache_lastupdate_xml','1317665986'),('simplecache_lastcached_xml','1317665986');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL auto_increment,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) default NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL default '0',
  `enabled` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1317665823,1317665982,1317665823,'yes'),(2,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(3,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(4,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(5,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(6,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(7,'object',2,1,1,1,2,1317665823,1317665823,1317665823,'yes'),(8,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(9,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(10,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(11,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(12,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(13,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(14,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(15,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(16,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(17,'object',2,1,1,1,2,1317665824,1317665824,1317665824,'yes'),(18,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(19,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(20,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(21,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(22,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(23,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(24,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(25,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(26,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(27,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(28,'object',2,1,1,1,2,1317665825,1317665825,1317665825,'yes'),(29,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(30,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(31,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(32,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(33,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(34,'object',2,1,1,1,2,1317665826,1317665826,1317665826,'yes'),(35,'user',0,0,1,0,2,1317665926,1317665992,1317665926,'yes'),(36,'object',3,35,1,35,2,1317665926,1317665926,1317665926,'yes'),(37,'object',3,35,1,35,2,1317665926,1317665926,1317665926,'yes'),(38,'object',3,35,1,35,2,1317665926,1317665926,1317665926,'yes'),(39,'object',3,35,1,35,2,1317665926,1317665926,1317665926,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL auto_increment,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1317665827),(2,3,'active_plugin',1,1317665827),(3,9,'active_plugin',1,1317665827),(4,11,'active_plugin',1,1317665827),(5,12,'active_plugin',1,1317665827),(6,13,'active_plugin',1,1317665827),(7,14,'active_plugin',1,1317665828),(8,15,'active_plugin',1,1317665828),(9,16,'active_plugin',1,1317665828),(10,17,'active_plugin',1,1317665828),(11,18,'active_plugin',1,1317665828),(12,19,'active_plugin',1,1317665828),(13,20,'active_plugin',1,1317665828),(14,21,'active_plugin',1,1317665829),(15,22,'active_plugin',1,1317665829),(16,24,'active_plugin',1,1317665829),(17,25,'active_plugin',1,1317665829),(18,26,'active_plugin',1,1317665830),(19,27,'active_plugin',1,1317665830),(20,29,'active_plugin',1,1317665831),(21,30,'active_plugin',1,1317665831),(22,33,'active_plugin',1,1317665831),(23,34,'active_plugin',1,1317665832),(24,35,'member_of_site',1,1317665926);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL auto_increment,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(128) default NULL,
  `lat` varchar(20) default NULL,
  `long` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY  (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL auto_increment,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (5,1,1,2,'text',35,2,1317665982,'yes'),(2,35,3,4,'text',35,2,1317665926,'yes'),(3,35,5,4,'text',0,2,1317665927,'yes'),(4,35,6,7,'text',0,2,1317665927,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL auto_increment,
  `string` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'root@localhost.tld'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'oauth_api',''),(24,'pages',''),(25,'profile',''),(26,'reportedcontent',''),(27,'search',''),(28,'tagcloud',''),(29,'thewire',''),(30,'tinymce',''),(31,'twitter',''),(32,'twitter_api',''),(33,'uservalidationbyemail',''),(34,'zaudio',''),(36,'',''),(37,'',''),(38,'',''),(39,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL auto_increment,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,33,'elgg:internal:priority','32'),(33,34,'elgg:internal:priority','33'),(34,36,'handler','admin_welcome'),(35,36,'context','admin'),(36,36,'column','1'),(37,36,'order','0'),(38,37,'handler','online_users'),(39,37,'context','admin'),(40,37,'column','2'),(41,37,'order','0'),(42,38,'handler','new_users'),(43,38,'context','admin'),(44,38,'order','10'),(45,38,'column','2'),(46,39,'handler','content_stats'),(47,39,'context','admin'),(48,39,'order','20'),(49,39,'column','2'),(50,37,'num_display','8'),(51,38,'num_display','5'),(52,39,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'Red Social','','http://172.16.0.1/intranet/elgg/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL auto_increment,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL default 'yes',
  `time_created` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,1,'ElggMetadata','metadata','email','create',0,0,2,'yes',1317665823),(2,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(3,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(4,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(5,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(6,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(7,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665823),(8,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(9,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(10,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(11,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(12,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(13,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(14,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(15,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(16,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665824),(17,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(18,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(19,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(20,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(21,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(22,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(23,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(24,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(25,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(26,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(27,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(28,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665825),(29,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(30,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(31,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(32,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(33,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(34,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1317665826),(35,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(36,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(37,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(38,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(39,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(40,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665827),(41,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(42,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(43,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(44,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(45,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(46,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(47,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665828),(48,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665829),(49,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665829),(50,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665829),(51,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665829),(52,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665830),(53,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665830),(54,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665831),(55,21,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665831),(56,22,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665831),(57,23,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1317665832),(58,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1317665926),(59,35,'ElggUser','user','','create',0,0,2,'yes',1317665926),(60,2,'ElggMetadata','metadata','notification:method:email','create',0,35,2,'yes',1317665926),(61,36,'ElggWidget','object','widget','create',0,35,2,'yes',1317665926),(62,37,'ElggWidget','object','widget','create',0,35,2,'yes',1317665926),(63,38,'ElggWidget','object','widget','create',0,35,2,'yes',1317665926),(64,39,'ElggWidget','object','widget','create',0,35,2,'yes',1317665927),(65,35,'ElggUser','user','','make_admin',0,0,2,'yes',1317665927),(66,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1317665927),(67,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1317665927),(68,35,'ElggUser','user','','update',35,0,2,'yes',1317665927),(69,35,'ElggUser','user','','login',35,0,2,'yes',1317665927),(70,1,'ElggMetadata','metadata','email','delete',35,0,2,'yes',1317665982),(71,5,'ElggMetadata','metadata','email','create',35,35,2,'yes',1317665982),(72,1,'ElggSite','site','','update',35,0,2,'yes',1317665982),(73,1,'ElggSite','site','','update',35,0,2,'yes',1317665983),(74,35,'ElggUser','user','','logout',35,0,2,'yes',1317665992),(75,35,'ElggUser','user','','update',35,0,2,'yes',1317665992),(76,35,'ElggUser','user','','update',35,0,2,'yes',1317665993);
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL auto_increment,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) default NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `salt` varchar(8) NOT NULL default '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL default '',
  `code` varchar(32) NOT NULL default '',
  `banned` enum('yes','no') NOT NULL default 'no',
  `admin` enum('yes','no') NOT NULL default 'no',
  `last_action` int(11) NOT NULL default '0',
  `prev_last_action` int(11) NOT NULL default '0',
  `last_login` int(11) NOT NULL default '0',
  `prev_last_login` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (35,'Administrador','administrador','8c6c3f64750c9d434276e33ab6298eb7','64f211f5','root@localhost.tld','','','no','yes',1317665991,1317665993,1317665927,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL default '0',
  `data` mediumblob,
  PRIMARY KEY  (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('6595d8c355e2ed7505bfd21d70c04624',1317666036,'__elgg_session|s:32:\"cd4ed54f21168cc940f3b48a173b6bfa\";msg|a:0:{}'),('90650220798d174df31311b5424b2d1b',1317836571,'__elgg_session|s:32:\"d7b684383f9116ef145963f4e471b883\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-05 17:46:47
