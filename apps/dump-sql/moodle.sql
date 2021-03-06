-- MySQL dump 10.11
--
-- Host: localhost    Database: moodle
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
-- Table structure for table `adodb_logsql`
--

CREATE DATABASE IF NOT EXISTS moodle;
USE moodle;

DROP TABLE IF EXISTS `adodb_logsql`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `adodb_logsql` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `sql0` varchar(250) NOT NULL default '',
  `sql1` text,
  `params` text,
  `tracer` text,
  `timer` decimal(16,6) NOT NULL default '0.000000',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to save some logs from ADOdb';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `adodb_logsql`
--

LOCK TABLES `adodb_logsql` WRITE;
/*!40000 ALTER TABLE `adodb_logsql` DISABLE KEYS */;
/*!40000 ALTER TABLE `adodb_logsql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment`
--

DROP TABLE IF EXISTS `mdl_assignment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_assignment` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL default '0',
  `assignmenttype` varchar(50) NOT NULL default '',
  `resubmit` tinyint(2) unsigned NOT NULL default '0',
  `preventlate` tinyint(2) unsigned NOT NULL default '0',
  `emailteachers` tinyint(2) unsigned NOT NULL default '0',
  `var1` bigint(10) default '0',
  `var2` bigint(10) default '0',
  `var3` bigint(10) default '0',
  `var4` bigint(10) default '0',
  `var5` bigint(10) default '0',
  `maxbytes` bigint(10) unsigned NOT NULL default '100000',
  `timedue` bigint(10) unsigned NOT NULL default '0',
  `timeavailable` bigint(10) unsigned NOT NULL default '0',
  `grade` bigint(10) NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_assi_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines assignments';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_assignment`
--

LOCK TABLES `mdl_assignment` WRITE;
/*!40000 ALTER TABLE `mdl_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_submissions`
--

DROP TABLE IF EXISTS `mdl_assignment_submissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_assignment_submissions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `assignment` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `numfiles` bigint(10) unsigned NOT NULL default '0',
  `data1` text,
  `data2` text,
  `grade` bigint(11) NOT NULL default '0',
  `submissioncomment` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL default '0',
  `teacher` bigint(10) unsigned NOT NULL default '0',
  `timemarked` bigint(10) unsigned NOT NULL default '0',
  `mailed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about submitted assignments';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_assignment_submissions`
--

LOCK TABLES `mdl_assignment_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_config`
--

DROP TABLE IF EXISTS `mdl_backup_config`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_backup_config` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_backconf_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='To store backup configuration variables';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_backup_config`
--

LOCK TABLES `mdl_backup_config` WRITE;
/*!40000 ALTER TABLE `mdl_backup_config` DISABLE KEYS */;
INSERT INTO `mdl_backup_config` VALUES (1,'backup_sche_modules','0'),(2,'backup_sche_withuserdata','0'),(3,'backup_sche_metacourse','0'),(4,'backup_sche_users','0'),(5,'backup_sche_logs','0'),(6,'backup_sche_userfiles','0'),(7,'backup_sche_coursefiles','0'),(8,'backup_sche_sitefiles','0'),(9,'backup_sche_gradebook_history','0'),(10,'backup_sche_messages','0'),(11,'backup_sche_blogs','0'),(12,'backup_sche_keep','1'),(13,'backup_sche_active','0'),(14,'backup_sche_weekdays','0000000'),(15,'backup_sche_hour','0'),(16,'backup_sche_minute','0'),(17,'backup_sche_destination','');
/*!40000 ALTER TABLE `mdl_backup_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `laststarttime` bigint(10) unsigned NOT NULL default '0',
  `lastendtime` bigint(10) unsigned NOT NULL default '0',
  `laststatus` varchar(1) NOT NULL default '0',
  `nextstarttime` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store every course backup status';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_files`
--

DROP TABLE IF EXISTS `mdl_backup_files`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_backup_files` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `backup_code` bigint(10) unsigned NOT NULL default '0',
  `file_type` varchar(10) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `old_id` bigint(10) unsigned NOT NULL default '0',
  `new_id` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_backfile_bacfilpat_uix` (`backup_code`,`file_type`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store and recode ids to user and course files';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_backup_files`
--

LOCK TABLES `mdl_backup_files` WRITE;
/*!40000 ALTER TABLE `mdl_backup_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_ids`
--

DROP TABLE IF EXISTS `mdl_backup_ids`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_backup_ids` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `backup_code` bigint(12) unsigned NOT NULL default '0',
  `table_name` varchar(30) NOT NULL default '',
  `old_id` bigint(10) unsigned NOT NULL default '0',
  `new_id` bigint(10) unsigned NOT NULL default '0',
  `info` mediumtext NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_backids_bactabold_uix` (`backup_code`,`table_name`,`old_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store and convert ids in backup/restore';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_backup_ids`
--

LOCK TABLES `mdl_backup_ids` WRITE;
/*!40000 ALTER TABLE `mdl_backup_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_log`
--

DROP TABLE IF EXISTS `mdl_backup_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_backup_log` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `time` bigint(10) unsigned NOT NULL default '0',
  `laststarttime` bigint(10) unsigned NOT NULL default '0',
  `info` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_backlog_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store every course backup log info';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_backup_log`
--

LOCK TABLES `mdl_backup_log` WRITE;
/*!40000 ALTER TABLE `mdl_backup_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_block` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `version` bigint(10) unsigned NOT NULL default '0',
  `cron` bigint(10) unsigned NOT NULL default '0',
  `lastcron` bigint(10) unsigned NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '1',
  `multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='to store installed blocks';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'activity_modules',2007101509,0,0,1,0),(2,'admin',2007101509,0,0,1,0),(3,'admin_bookmarks',2007101509,0,0,1,0),(4,'admin_tree',2007101509,0,0,1,0),(5,'blog_menu',2007101509,0,0,1,0),(6,'blog_tags',2007101509,0,0,1,1),(7,'calendar_month',2007101509,0,0,1,0),(8,'calendar_upcoming',2007101509,0,0,1,0),(9,'course_list',2007101509,0,0,1,0),(10,'course_summary',2007101509,0,0,1,0),(11,'glossary_random',2007101509,0,0,1,1),(12,'html',2007101509,0,0,1,1),(13,'loancalc',2007101509,0,0,1,0),(14,'login',2007101509,0,0,1,0),(15,'mentees',2007101509,0,0,1,1),(16,'messages',2007101509,0,0,1,0),(17,'mnet_hosts',2007101509,0,0,1,0),(18,'news_items',2007101509,0,0,1,0),(19,'online_users',2007101510,0,0,1,0),(20,'participants',2007101509,0,0,1,0),(21,'quiz_results',2007101509,0,0,1,1),(22,'recent_activity',2007101509,0,0,1,0),(23,'rss_client',2007101511,300,1317834004,1,1),(24,'search',2008031500,1,0,1,0),(25,'search_forums',2007101509,0,0,1,0),(26,'section_links',2007101511,0,0,1,0),(27,'site_main_menu',2007101509,0,0,1,0),(28,'social_activities',2007101509,0,0,1,0),(29,'tag_flickr',2007101509,0,0,1,1),(30,'tag_youtube',2007101509,0,0,1,1),(31,'tags',2007101509,0,0,1,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instance`
--

DROP TABLE IF EXISTS `mdl_block_instance`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_block_instance` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `blockid` bigint(10) unsigned NOT NULL default '0',
  `pageid` bigint(10) unsigned NOT NULL default '0',
  `pagetype` varchar(20) NOT NULL default '',
  `position` varchar(10) NOT NULL default '',
  `weight` smallint(3) NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '0',
  `configdata` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_blocinst_pag_ix` (`pageid`),
  KEY `mdl_blocinst_pag2_ix` (`pagetype`),
  KEY `mdl_blocinst_blo_ix` (`blockid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='to store block instances in pages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_block_instance`
--

LOCK TABLES `mdl_block_instance` WRITE;
/*!40000 ALTER TABLE `mdl_block_instance` DISABLE KEYS */;
INSERT INTO `mdl_block_instance` VALUES (1,27,1,'course-view','l',0,1,''),(2,4,1,'course-view','l',1,1,''),(3,10,1,'course-view','r',0,1,''),(4,7,1,'course-view','r',1,1,''),(5,4,0,'admin','l',0,1,''),(6,3,0,'admin','l',1,1,'');
/*!40000 ALTER TABLE `mdl_block_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_pinned`
--

DROP TABLE IF EXISTS `mdl_block_pinned`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_block_pinned` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `blockid` bigint(10) unsigned NOT NULL default '0',
  `pagetype` varchar(20) NOT NULL default '',
  `position` varchar(10) NOT NULL default '',
  `weight` smallint(3) NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '0',
  `configdata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_blocpinn_pag_ix` (`pagetype`),
  KEY `mdl_blocpinn_blo_ix` (`blockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to pin blocks';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_block_pinned`
--

LOCK TABLES `mdl_block_pinned` WRITE;
/*!40000 ALTER TABLE `mdl_block_pinned` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_pinned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `title` text NOT NULL,
  `preferredtitle` varchar(64) NOT NULL default '',
  `description` text NOT NULL,
  `shared` tinyint(2) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Remote news feed information. Contains the news feed id, the';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_search_documents`
--

DROP TABLE IF EXISTS `mdl_block_search_documents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_block_search_documents` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `docid` varchar(32) NOT NULL default '',
  `doctype` varchar(32) NOT NULL default 'none',
  `itemtype` varchar(32) NOT NULL default 'standard',
  `title` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `docdate` bigint(10) unsigned NOT NULL default '0',
  `updated` bigint(10) unsigned NOT NULL default '0',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_blocseardocu_doc_ix` (`docid`),
  KEY `mdl_blocseardocu_doc2_ix` (`doctype`),
  KEY `mdl_blocseardocu_ite_ix` (`itemtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='table to store search index backups';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_block_search_documents`
--

LOCK TABLES `mdl_block_search_documents` WRITE;
/*!40000 ALTER TABLE `mdl_block_search_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_search_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `filter` varchar(32) NOT NULL default '',
  `version` bigint(10) unsigned NOT NULL default '0',
  `md5key` varchar(32) NOT NULL default '',
  `rawtext` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For keeping information about cached data';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `flagtype` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `value` mediumtext NOT NULL,
  `expiry` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cache of time-sensitive flags';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_text`
--

DROP TABLE IF EXISTS `mdl_cache_text`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_cache_text` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `md5key` varchar(32) NOT NULL default '',
  `formattedtext` longtext NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_cachtext_md5_ix` (`md5key`),
  KEY `mdl_cachtext_tim_ix` (`timemodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For storing temporary copies of processed texts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_cache_text`
--

LOCK TABLES `mdl_cache_text` WRITE;
/*!40000 ALTER TABLE `mdl_cache_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `captype` varchar(50) NOT NULL default '',
  `contextlevel` bigint(10) unsigned NOT NULL default '0',
  `component` varchar(100) NOT NULL default '',
  `riskbitmask` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='this defines all capabilities';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:doanything','admin',10,'moodle',62),(2,'moodle/legacy:guest','legacy',10,'moodle',0),(3,'moodle/legacy:user','legacy',10,'moodle',0),(4,'moodle/legacy:student','legacy',10,'moodle',16),(5,'moodle/legacy:teacher','legacy',10,'moodle',24),(6,'moodle/legacy:editingteacher','legacy',10,'moodle',28),(7,'moodle/legacy:coursecreator','legacy',10,'moodle',28),(8,'moodle/legacy:admin','legacy',10,'moodle',62),(9,'moodle/site:config','write',10,'moodle',62),(10,'moodle/site:readallmessages','read',10,'moodle',8),(11,'moodle/site:sendmessage','write',10,'moodle',16),(12,'moodle/site:approvecourse','write',10,'moodle',4),(13,'moodle/site:import','write',50,'moodle',28),(14,'moodle/site:backup','write',50,'moodle',28),(15,'moodle/backup:userinfo','read',50,'moodle',8),(16,'moodle/site:restore','write',50,'moodle',28),(17,'moodle/restore:createuser','write',10,'moodle',24),(18,'moodle/restore:userinfo','write',50,'moodle',30),(19,'moodle/restore:rolldates','write',50,'moodle',0),(20,'moodle/site:manageblocks','write',80,'moodle',20),(21,'moodle/site:accessallgroups','read',50,'moodle',0),(22,'moodle/site:viewfullnames','read',50,'moodle',0),(23,'moodle/site:viewreports','read',50,'moodle',8),(24,'moodle/site:trustcontent','write',50,'moodle',4),(25,'moodle/site:uploadusers','write',10,'moodle',24),(26,'moodle/site:langeditmaster','write',10,'moodle',6),(27,'moodle/site:langeditlocal','write',10,'moodle',6),(28,'moodle/user:create','write',10,'moodle',24),(29,'moodle/user:delete','write',10,'moodle',8),(30,'moodle/user:update','write',10,'moodle',24),(31,'moodle/user:viewdetails','read',50,'moodle',0),(32,'moodle/user:viewhiddendetails','read',50,'moodle',8),(33,'moodle/user:loginas','write',50,'moodle',30),(34,'moodle/role:assign','write',50,'moodle',28),(35,'moodle/role:override','write',50,'moodle',28),(36,'moodle/role:safeoverride','write',50,'moodle',16),(37,'moodle/role:manage','write',10,'moodle',28),(38,'moodle/role:unassignself','write',50,'moodle',0),(39,'moodle/role:viewhiddenassigns','read',50,'moodle',0),(40,'moodle/role:switchroles','read',50,'moodle',12),(41,'moodle/category:manage','write',40,'moodle',4),(42,'moodle/category:viewhiddencategories','read',40,'moodle',0),(43,'moodle/course:create','write',40,'moodle',4),(44,'moodle/course:request','write',10,'moodle',0),(45,'moodle/course:delete','write',50,'moodle',32),(46,'moodle/course:update','write',50,'moodle',4),(47,'moodle/course:view','read',50,'moodle',0),(48,'moodle/course:bulkmessaging','write',50,'moodle',16),(49,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(50,'moodle/course:viewhiddencourses','read',50,'moodle',0),(51,'moodle/course:visibility','write',50,'moodle',0),(52,'moodle/course:managefiles','write',50,'moodle',4),(53,'moodle/course:manageactivities','write',50,'moodle',4),(54,'moodle/course:managemetacourse','write',50,'moodle',12),(55,'moodle/course:activityvisibility','write',50,'moodle',0),(56,'moodle/course:viewhiddenactivities','write',50,'moodle',0),(57,'moodle/course:viewparticipants','read',50,'moodle',0),(58,'moodle/course:changefullname','write',50,'moodle',4),(59,'moodle/course:changeshortname','write',50,'moodle',4),(60,'moodle/course:changeidnumber','write',50,'moodle',4),(61,'moodle/course:changecategory','write',50,'moodle',4),(62,'moodle/course:changesummary','write',50,'moodle',4),(63,'moodle/site:viewparticipants','read',10,'moodle',0),(64,'moodle/course:viewscales','read',50,'moodle',0),(65,'moodle/course:managescales','write',50,'moodle',0),(66,'moodle/course:managegroups','write',50,'moodle',0),(67,'moodle/course:reset','write',50,'moodle',32),(68,'moodle/blog:view','read',50,'moodle',0),(69,'moodle/blog:create','write',10,'moodle',16),(70,'moodle/blog:manageentries','write',50,'moodle',16),(71,'moodle/calendar:manageownentries','write',50,'moodle',16),(72,'moodle/calendar:managegroupentries','write',50,'moodle',16),(73,'moodle/calendar:manageentries','write',50,'moodle',16),(74,'moodle/user:editprofile','write',30,'moodle',24),(75,'moodle/user:editownprofile','write',10,'moodle',16),(76,'moodle/user:changeownpassword','write',10,'moodle',0),(77,'moodle/user:readuserposts','read',30,'moodle',0),(78,'moodle/user:readuserblogs','read',30,'moodle',0),(79,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(80,'moodle/question:managecategory','write',50,'moodle',20),(81,'moodle/question:add','write',50,'moodle',20),(82,'moodle/question:editmine','write',50,'moodle',20),(83,'moodle/question:editall','write',50,'moodle',20),(84,'moodle/question:viewmine','read',50,'moodle',0),(85,'moodle/question:viewall','read',50,'moodle',0),(86,'moodle/question:usemine','read',50,'moodle',0),(87,'moodle/question:useall','read',50,'moodle',0),(88,'moodle/question:movemine','write',50,'moodle',0),(89,'moodle/question:moveall','write',50,'moodle',0),(90,'moodle/question:config','write',10,'moodle',2),(91,'moodle/site:doclinks','read',10,'moodle',0),(92,'moodle/course:sectionvisibility','write',50,'moodle',0),(93,'moodle/course:useremail','write',50,'moodle',0),(94,'moodle/course:viewhiddensections','write',50,'moodle',0),(95,'moodle/course:setcurrentsection','write',50,'moodle',0),(96,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(97,'moodle/grade:viewall','read',50,'moodle',8),(98,'moodle/grade:view','read',50,'moodle',0),(99,'moodle/grade:viewhidden','read',50,'moodle',8),(100,'moodle/grade:import','write',50,'moodle',12),(101,'moodle/grade:export','read',50,'moodle',8),(102,'moodle/grade:manage','write',50,'moodle',12),(103,'moodle/grade:edit','write',50,'moodle',12),(104,'moodle/grade:manageoutcomes','write',50,'moodle',0),(105,'moodle/grade:manageletters','write',50,'moodle',0),(106,'moodle/grade:hide','write',50,'moodle',0),(107,'moodle/grade:lock','write',50,'moodle',0),(108,'moodle/grade:unlock','write',50,'moodle',0),(109,'moodle/my:manageblocks','write',10,'moodle',0),(110,'moodle/notes:view','read',50,'moodle',0),(111,'moodle/notes:manage','write',50,'moodle',16),(112,'moodle/tag:manage','write',10,'moodle',16),(113,'moodle/tag:create','write',10,'moodle',16),(114,'moodle/tag:edit','write',10,'moodle',16),(115,'moodle/tag:editblocks','write',10,'moodle',0),(116,'moodle/block:view','read',80,'moodle',0),(117,'mod/assignment:view','read',70,'mod/assignment',0),(118,'mod/assignment:submit','write',70,'mod/assignment',0),(119,'mod/assignment:grade','write',70,'mod/assignment',4),(120,'mod/chat:chat','write',70,'mod/chat',16),(121,'mod/chat:readlog','read',70,'mod/chat',0),(122,'mod/chat:deletelog','write',70,'mod/chat',0),(123,'mod/choice:choose','write',70,'mod/choice',0),(124,'mod/choice:readresponses','read',70,'mod/choice',0),(125,'mod/choice:deleteresponses','write',70,'mod/choice',0),(126,'mod/choice:downloadresponses','read',70,'mod/choice',0),(127,'mod/data:viewentry','read',70,'mod/data',0),(128,'mod/data:writeentry','write',70,'mod/data',16),(129,'mod/data:comment','write',70,'mod/data',16),(130,'mod/data:viewrating','read',70,'mod/data',0),(131,'mod/data:rate','write',70,'mod/data',0),(132,'mod/data:approve','write',70,'mod/data',16),(133,'mod/data:manageentries','write',70,'mod/data',16),(134,'mod/data:managecomments','write',70,'mod/data',16),(135,'mod/data:managetemplates','write',70,'mod/data',20),(136,'mod/data:viewalluserpresets','read',70,'mod/data',0),(137,'mod/data:manageuserpresets','write',70,'mod/data',20),(138,'mod/forum:viewdiscussion','read',70,'mod/forum',0),(139,'mod/forum:viewhiddentimedposts','read',70,'mod/forum',0),(140,'mod/forum:startdiscussion','write',70,'mod/forum',16),(141,'mod/forum:replypost','write',70,'mod/forum',16),(142,'mod/forum:addnews','write',70,'mod/forum',16),(143,'mod/forum:replynews','write',70,'mod/forum',16),(144,'mod/forum:viewrating','read',70,'mod/forum',0),(145,'mod/forum:viewanyrating','read',70,'mod/forum',0),(146,'mod/forum:rate','write',70,'mod/forum',0),(147,'mod/forum:createattachment','write',70,'mod/forum',16),(148,'mod/forum:deleteownpost','read',70,'mod/forum',0),(149,'mod/forum:deleteanypost','read',70,'mod/forum',0),(150,'mod/forum:splitdiscussions','read',70,'mod/forum',0),(151,'mod/forum:movediscussions','read',70,'mod/forum',0),(152,'mod/forum:editanypost','write',70,'mod/forum',16),(153,'mod/forum:viewqandawithoutposting','read',70,'mod/forum',0),(154,'mod/forum:viewsubscribers','read',70,'mod/forum',0),(155,'mod/forum:managesubscriptions','read',70,'mod/forum',16),(156,'mod/forum:initialsubscriptions','read',70,'mod/forum',0),(157,'mod/forum:throttlingapplies','write',70,'mod/forum',16),(158,'mod/glossary:write','write',70,'mod/glossary',16),(159,'mod/glossary:manageentries','write',70,'mod/glossary',16),(160,'mod/glossary:managecategories','write',70,'mod/glossary',16),(161,'mod/glossary:comment','write',70,'mod/glossary',16),(162,'mod/glossary:managecomments','write',70,'mod/glossary',16),(163,'mod/glossary:import','write',70,'mod/glossary',16),(164,'mod/glossary:export','read',70,'mod/glossary',0),(165,'mod/glossary:approve','write',70,'mod/glossary',16),(166,'mod/glossary:rate','write',70,'mod/glossary',0),(167,'mod/glossary:viewrating','read',70,'mod/glossary',0),(168,'mod/hotpot:attempt','read',70,'mod/hotpot',0),(169,'mod/hotpot:viewreport','read',70,'mod/hotpot',0),(170,'mod/hotpot:grade','read',70,'mod/hotpot',0),(171,'mod/hotpot:deleteattempt','read',70,'mod/hotpot',0),(172,'mod/lams:participate','write',70,'mod/lams',0),(173,'mod/lams:manage','write',70,'mod/lams',0),(174,'mod/lesson:edit','write',70,'mod/lesson',4),(175,'mod/lesson:manage','write',70,'mod/lesson',0),(176,'mod/quiz:view','read',70,'mod/quiz',0),(177,'mod/quiz:attempt','write',70,'mod/quiz',16),(178,'mod/quiz:reviewmyattempts','read',70,'mod/quiz',0),(179,'mod/quiz:manage','write',70,'mod/quiz',16),(180,'mod/quiz:preview','write',70,'mod/quiz',0),(181,'mod/quiz:grade','write',70,'mod/quiz',16),(182,'mod/quiz:viewreports','read',70,'mod/quiz',8),(183,'mod/quiz:deleteattempts','write',70,'mod/quiz',32),(184,'mod/quiz:ignoretimelimits','read',70,'mod/quiz',0),(185,'mod/quiz:emailconfirmsubmission','read',70,'mod/quiz',0),(186,'mod/quiz:emailnotifysubmission','read',70,'mod/quiz',0),(187,'mod/scorm:viewreport','read',70,'mod/scorm',0),(188,'mod/scorm:skipview','write',70,'mod/scorm',0),(189,'mod/scorm:savetrack','write',70,'mod/scorm',0),(190,'mod/scorm:viewscores','read',70,'mod/scorm',0),(191,'mod/scorm:deleteresponses','read',70,'mod/scorm',0),(192,'mod/survey:participate','read',70,'mod/survey',0),(193,'mod/survey:readresponses','read',70,'mod/survey',0),(194,'mod/survey:download','read',70,'mod/survey',0),(195,'mod/wiki:participate','write',70,'mod/wiki',16),(196,'mod/wiki:manage','write',70,'mod/wiki',16),(197,'mod/wiki:overridelock','write',70,'mod/wiki',0),(198,'mod/workshop:participate','write',70,'mod/workshop',16),(199,'mod/workshop:manage','write',70,'mod/workshop',16),(200,'block/online_users:viewlist','read',80,'block/online_users',0),(201,'block/rss_client:createprivatefeeds','write',80,'block/rss_client',0),(202,'block/rss_client:createsharedfeeds','write',80,'block/rss_client',16),(203,'block/rss_client:manageownfeeds','write',80,'block/rss_client',0),(204,'block/rss_client:manageanyfeeds','write',80,'block/rss_client',16),(205,'enrol/authorize:managepayments','write',10,'enrol/authorize',8),(206,'enrol/authorize:uploadcsv','write',10,'enrol/authorize',4),(207,'gradeexport/ods:view','read',50,'gradeexport/ods',8),(208,'gradeexport/ods:publish','read',50,'gradeexport/ods',8),(209,'gradeexport/txt:view','read',50,'gradeexport/txt',8),(210,'gradeexport/txt:publish','read',50,'gradeexport/txt',8),(211,'gradeexport/xls:view','read',50,'gradeexport/xls',8),(212,'gradeexport/xls:publish','read',50,'gradeexport/xls',8),(213,'gradeexport/xml:view','read',50,'gradeexport/xml',8),(214,'gradeexport/xml:publish','read',50,'gradeexport/xml',8),(215,'gradeimport/csv:view','write',50,'gradeimport/csv',0),(216,'gradeimport/xml:view','write',50,'gradeimport/xml',0),(217,'gradeimport/xml:publish','write',50,'gradeimport/xml',0),(218,'gradereport/grader:view','read',50,'gradereport/grader',8),(219,'gradereport/outcomes:view','read',50,'gradereport/outcomes',8),(220,'gradereport/overview:view','read',50,'gradereport/overview',8),(221,'gradereport/user:view','read',50,'gradereport/user',8),(222,'coursereport/log:view','read',50,'coursereport/log',8),(223,'coursereport/log:viewlive','read',50,'coursereport/log',8),(224,'coursereport/log:viewtoday','read',50,'coursereport/log',8),(225,'coursereport/outline:view','read',50,'coursereport/outline',8),(226,'coursereport/participation:view','read',50,'coursereport/participation',8),(227,'coursereport/stats:view','read',50,'coursereport/stats',8),(228,'report/courseoverview:view','read',10,'report/courseoverview',8),(229,'report/security:view','read',10,'report/security',2),(230,'report/unittest:view','read',10,'report/unittest',32);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_chat` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `keepdays` bigint(11) NOT NULL default '0',
  `studentlogs` smallint(4) NOT NULL default '0',
  `chattime` bigint(10) unsigned NOT NULL default '0',
  `schedule` smallint(4) NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each of these is a chat room';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `chatid` bigint(10) NOT NULL default '0',
  `userid` bigint(10) NOT NULL default '0',
  `groupid` bigint(10) NOT NULL default '0',
  `system` tinyint(1) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `timestamp` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all the actual chat messages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `chatid` bigint(11) NOT NULL default '0',
  `userid` bigint(11) NOT NULL default '0',
  `groupid` bigint(11) NOT NULL default '0',
  `version` varchar(16) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `firstping` bigint(10) unsigned NOT NULL default '0',
  `lastping` bigint(10) unsigned NOT NULL default '0',
  `lastmessageping` bigint(10) unsigned NOT NULL default '0',
  `sid` varchar(32) NOT NULL default '',
  `course` bigint(10) unsigned NOT NULL default '0',
  `lang` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Keeps track of which users are in which chat rooms';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_choice` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `text` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL default '0',
  `publish` tinyint(2) unsigned NOT NULL default '0',
  `showresults` tinyint(2) unsigned NOT NULL default '0',
  `display` smallint(4) unsigned NOT NULL default '0',
  `allowupdate` tinyint(2) unsigned NOT NULL default '0',
  `showunanswered` tinyint(2) unsigned NOT NULL default '0',
  `limitanswers` tinyint(2) unsigned NOT NULL default '0',
  `timeopen` bigint(10) unsigned NOT NULL default '0',
  `timeclose` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available choices are stored here';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `choiceid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `optionid` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='choices performed by users';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `choiceid` bigint(10) unsigned NOT NULL default '0',
  `text` text,
  `maxanswers` bigint(10) unsigned default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='available options to choice';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_config` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=433 DEFAULT CHARSET=utf8 COMMENT='Moodle configuration variables';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (1,'unicodedb','1'),(2,'statsrolesupgraded','1317662758'),(3,'auth','email'),(4,'auth_pop3mailbox','INBOX'),(5,'enrol','manual'),(6,'enrol_plugins_enabled','manual'),(7,'style','default'),(8,'template','default'),(9,'theme','standardwhite'),(10,'filter_multilang_converted','1'),(428,'registerauth',''),(12,'guestloginbutton','1'),(13,'alternateloginurl',''),(14,'forgottenpasswordurl',''),(15,'auth_instructions',''),(16,'allowemailaddresses',''),(17,'denyemailaddresses',''),(18,'verifychangedemail','1'),(19,'recaptchapublickey',''),(20,'recaptchaprivatekey',''),(21,'nodefaultuserrolelists','0'),(22,'autologinguests','0'),(23,'hiddenuserfields',''),(24,'allowuserswitchrolestheycantassign','0'),(25,'enablecourserequests','0'),(26,'courserequestnotify',''),(27,'timezone','99'),(28,'forcetimezone','99'),(29,'country','0'),(30,'geoipfile','/var/moodledata/geoip/GeoLiteCity.dat'),(31,'googlemapkey',''),(32,'autolang','0'),(33,'lang','es_utf8'),(34,'langmenu','1'),(35,'langlist',''),(36,'langcache','1'),(37,'locale',''),(38,'latinexcelexport','0'),(39,'cachetext','60'),(40,'filteruploadedfiles','0'),(41,'filtermatchoneperpage','0'),(42,'filtermatchonepertext','0'),(43,'filterall','0'),(44,'filter_multilang_force_old','0'),(45,'filter_mediaplugin_enable_mp3','1'),(46,'filter_mediaplugin_enable_swf','0'),(47,'filter_mediaplugin_enable_mov','1'),(48,'filter_mediaplugin_enable_wmv','1'),(49,'filter_mediaplugin_enable_mpg','1'),(50,'filter_mediaplugin_enable_avi','1'),(51,'filter_mediaplugin_enable_flv','1'),(52,'filter_mediaplugin_enable_ram','1'),(53,'filter_mediaplugin_enable_rpm','1'),(54,'filter_mediaplugin_enable_rm','1'),(55,'filter_mediaplugin_enable_youtube','0'),(56,'filter_mediaplugin_enable_ogg','1'),(57,'filter_mediaplugin_enable_ogv','1'),(58,'filter_tex_latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(59,'filter_tex_latexbackground','#FFFFFF'),(60,'filter_tex_density','120'),(61,'filter_tex_pathlatex','/usr/bin/latex'),(62,'filter_tex_pathdvips','/usr/bin/dvips'),(63,'filter_tex_pathconvert','/usr/bin/convert'),(64,'filter_tex_convertformat','gif'),(65,'filter_censor_badwords',''),(66,'protectusernames','1'),(67,'forcelogin','0'),(68,'forceloginforprofiles','1'),(69,'opentogoogle','0'),(70,'maxbytes','0'),(71,'messaging','1'),(72,'allowobjectembed','0'),(73,'enabletrusttext','0'),(74,'maxeditingtime','1800'),(75,'fullnamedisplay','language'),(76,'extendedusernamechars','0'),(77,'sitepolicy',''),(78,'bloglevel','4'),(79,'usetags','1'),(80,'keeptagnamecase','1'),(81,'profilesforenrolledusersonly','1'),(82,'cronclionly','0'),(83,'cronremotepassword',''),(84,'passwordpolicy','1'),(85,'minpasswordlength','8'),(86,'minpassworddigits','1'),(87,'minpasswordlower','1'),(88,'minpasswordupper','1'),(89,'minpasswordnonalphanum','1'),(90,'disableuserimages','0'),(91,'emailchangeconfirmation','1'),(92,'enablenotes','1'),(93,'loginhttps','0'),(94,'cookiesecure','0'),(95,'cookiehttponly','0'),(96,'regenloginsession','1'),(97,'excludeoldflashclients','10.0.12'),(98,'restrictmodulesfor','none'),(99,'restrictbydefault','0'),(100,'displayloginfailures',''),(101,'notifyloginfailures',''),(102,'notifyloginthreshold','10'),(103,'runclamonupload','0'),(104,'pathtoclam',''),(105,'quarantinedir',''),(106,'clamfailureonupload','donothing'),(107,'themelist',''),(108,'allowuserthemes','0'),(109,'allowcoursethemes','0'),(110,'allowcategorythemes','0'),(111,'allowuserblockhiding','1'),(112,'showblocksonmodpages','0'),(113,'hideactivitytypenavlink','0'),(114,'calendar_adminseesall','0'),(115,'calendar_site_timeformat','0'),(116,'calendar_startwday','0'),(117,'calendar_weekend','65'),(118,'calendar_lookahead','21'),(119,'calendar_maxevents','10'),(120,'enablecalendarexport','1'),(121,'calendar_exportsalt','eFfAmRr1QrCOHaYjiv5dUHbK1HaLmwnJyQDeRiaUYYeT4HooO5uSct9XP3ZR'),(122,'htmleditor','1'),(123,'editorbackgroundcolor','#ffffff'),(124,'editorfontfamily','Trebuchet MS,Verdana,Arial,Helvetica,sans-serif'),(125,'editorfontsize',''),(126,'editorfontlist','Trebuchet:Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial:arial,helvetica,sans-serif;Courier New:courier new,courier,monospace;Georgia:georgia,times new roman,times,serif;Tahoma:tahoma,arial,helvetica,sans-serif;Times New Roman:times new roman,times,serif;Verdana:verdana,arial,helvetica,sans-serif;Impact:impact;Wingdings:wingdings'),(127,'editorkillword','1'),(128,'editorhidebuttons',''),(129,'emoticons',':-){:}smiley{;}:){:}smiley{;}:-D{:}biggrin{;};-){:}wink{;}:-/{:}mixed{;}V-.{:}thoughtful{;}:-P{:}tongueout{;}B-){:}cool{;}^-){:}approve{;}8-){:}wideeyes{;}:o){:}clown{;}:-({:}sad{;}:({:}sad{;}8-.{:}shy{;}:-I{:}blush{;}:-X{:}kiss{;}8-o{:}surprise{;}P-|{:}blackeye{;}8-[{:}angry{;}xx-P{:}dead{;}|-.{:}sleepy{;}}-]{:}evil{;}(h){:}heart{;}(heart){:}heart{;}(y){:}yes{;}(n){:}no{;}(martin){:}martin{;}( ){:}egg'),(130,'formatstringstriptags','1'),(131,'docroot','http://docs.moodle.org'),(132,'doctonewwindow','0'),(133,'mymoodleredirect','0'),(134,'mycoursesperpage','21'),(135,'enableajax','1'),(136,'disablecourseajax','1'),(137,'gdversion','2'),(138,'zip',''),(139,'unzip',''),(140,'pathtodu',''),(141,'aspellpath',''),(142,'smtphosts',''),(143,'smtpuser',''),(144,'smtppass',''),(145,'smtpmaxbulk','1'),(146,'noreplyaddress','noreply@172.16.0.1'),(147,'digestmailtime','17'),(148,'sitemailcharset','0'),(149,'allowusermailcharset','0'),(150,'mailnewline','LF'),(151,'supportpage',''),(152,'dbsessions','0'),(153,'sessiontimeout','7200'),(154,'sessioncookie',''),(155,'sessioncookiepath','/'),(156,'sessioncookiedomain',''),(157,'enablerssfeeds','0'),(158,'debug','0'),(159,'debugdisplay','1'),(160,'xmlstrictheaders','0'),(161,'debugsmtp','0'),(162,'perfdebug','7'),(163,'enablestats','0'),(164,'statsfirstrun','none'),(165,'statsmaxruntime','0'),(166,'statsruntimedays','31'),(167,'statsruntimestarthour','0'),(168,'statsruntimestartminute','0'),(169,'statsuserthreshold','0'),(170,'statscatdepth','1'),(171,'framename','_top'),(172,'slasharguments','1'),(173,'getremoteaddrconf','0'),(174,'proxyhost',''),(175,'proxyport','0'),(176,'proxytype','HTTP'),(177,'proxyuser',''),(178,'proxypassword',''),(179,'longtimenosee','120'),(180,'deleteunconfirmed','168'),(181,'deleteincompleteusers','0'),(182,'loglifetime','0'),(183,'disablegradehistory','0'),(184,'gradehistorylifetime','0'),(185,'extramemorylimit','128M'),(186,'cachetype',''),(187,'rcache','0'),(188,'rcachettl','10'),(189,'intcachemax','10'),(190,'memcachedhosts',''),(191,'memcachedpconn','0'),(192,'enableglobalsearch','0'),(193,'smartpix','0'),(194,'enablehtmlpurifier','0'),(195,'enablegroupings','0'),(196,'experimentalsplitrestore','0'),(197,'enableimsccimport','0'),(198,'enablesafebrowserintegration','0'),(199,'mnet_dispatcher_mode','off'),(200,'mnet_localhost_id','1'),(201,'mnet_all_hosts_id','2'),(202,'version','2007101591.05'),(203,'release','1.9.13+ (Build: 20110921)'),(204,'assignment_type_online_version','2005042900'),(205,'hotpot_showtimes','0'),(206,'hotpot_excelencodings',''),(207,'hotpot_initialdisable','1'),(208,'journal_showrecentactivity','1'),(209,'journal_initialdisable','1'),(210,'lams_initialdisable','1'),(211,'quiz_review','16777215'),(212,'quiz_attemptonlast','0'),(213,'quiz_attempts','0'),(214,'quiz_grademethod',''),(215,'quiz_decimalpoints','2'),(216,'quiz_maximumgrade','10'),(217,'quiz_password',''),(218,'quiz_popup','0'),(219,'quiz_questionsperpage','0'),(220,'quiz_shuffleanswers','1'),(221,'quiz_shufflequestions','0'),(222,'quiz_subnet',''),(223,'quiz_timelimit','0'),(224,'quiz_optionflags','1'),(225,'quiz_penaltyscheme','1'),(226,'quiz_delay1','0'),(227,'quiz_delay2','0'),(228,'quiz_fix_review','0'),(229,'quiz_fix_attemptonlast','0'),(230,'quiz_fix_attempts','0'),(231,'quiz_fix_grademethod','0'),(232,'quiz_fix_decimalpoints','0'),(233,'quiz_fix_password','0'),(234,'quiz_fix_popup','0'),(235,'quiz_fix_questionsperpage','0'),(236,'quiz_fix_shuffleanswers','0'),(237,'quiz_fix_shufflequestions','0'),(238,'quiz_fix_subnet','0'),(239,'quiz_fix_timelimit','0'),(240,'quiz_fix_adaptive','0'),(241,'quiz_fix_penaltyscheme','0'),(242,'quiz_fix_delay1','0'),(243,'quiz_fix_delay2','0'),(244,'resource_hide_repository','1'),(245,'workshop_initialdisable','1'),(246,'qtype_calculated_version','2006032200'),(247,'qtype_essay_version','2006032200'),(248,'qtype_match_version','2006032200'),(249,'qtype_multianswer_version','2008050800'),(250,'qtype_multichoice_version','2007081700'),(251,'qtype_numerical_version','2006121500'),(252,'qtype_randomsamatch_version','2006042800'),(253,'qtype_shortanswer_version','2006032200'),(254,'qtype_truefalse_version','2006032200'),(255,'backup_version','2009111300'),(256,'backup_release','1.9.7'),(257,'blocks_version','2007081300'),(258,'enrol_authorize_version','2006112903'),(259,'enrol_paypal_version','2006092200'),(260,'gradeexport_ods_version','2007092701'),(261,'gradeexport_txt_version','2007092700'),(262,'gradeexport_xls_version','2007092700'),(263,'gradeexport_xml_version','2007092700'),(264,'gradeimport_csv_version','2007072500'),(265,'gradeimport_xml_version','2007092700'),(266,'gradereport_grader_version','2007091700'),(267,'gradereport_outcomes_version','2007073000'),(268,'gradereport_overview_version','2009022500'),(269,'gradereport_user_version','2007092500'),(270,'coursereport_log_version','2007101504'),(271,'coursereport_outline_version','2007101501'),(272,'coursereport_participation_version','2007101501'),(273,'coursereport_stats_version','2007101501'),(274,'report_courseoverview_version','2007101503'),(275,'report_security_version','2007101500'),(276,'report_unittest_version','2007101501'),(277,'adminblocks_initialised','1'),(278,'siteidentifier','b3PjjaStbq2IopoXap1fMK4Vr49vOU5X172.16.0.1'),(279,'rolesactive','1'),(280,'guestroleid','6'),(281,'creatornewroleid','3'),(282,'notloggedinroleid','6'),(283,'defaultuserroleid','7'),(284,'defaultcourseroleid','5'),(285,'nonmetacoursesyncroleids',''),(286,'defaultrequestcategory','1'),(287,'gradebookroles','5'),(288,'enableoutcomes','0'),(289,'grade_profilereport','user'),(290,'grade_aggregationposition','1'),(291,'grade_includescalesinaggregation','1'),(292,'grade_hiddenasdate','0'),(293,'gradepublishing','0'),(294,'grade_export_displaytype','1'),(295,'grade_export_decimalpoints','2'),(296,'grade_navmethod','0'),(297,'gradeexport',''),(298,'unlimitedgrades','0'),(299,'grade_hideforcedsettings','1'),(300,'grade_aggregation','11'),(301,'grade_aggregation_flag','0'),(302,'grade_aggregations_visible','0,10,11,12,2,4,6,8,13'),(303,'grade_aggregateonlygraded','1'),(304,'grade_aggregateonlygraded_flag','2'),(305,'grade_aggregateoutcomes','0'),(306,'grade_aggregateoutcomes_flag','2'),(307,'grade_aggregatesubcats','0'),(308,'grade_aggregatesubcats_flag','2'),(309,'grade_keephigh','0'),(310,'grade_keephigh_flag','3'),(311,'grade_droplow','0'),(312,'grade_droplow_flag','2'),(313,'grade_displaytype','1'),(314,'grade_decimalpoints','2'),(315,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(316,'grade_report_studentsperpage','100'),(317,'grade_report_quickgrading','1'),(318,'grade_report_showquickfeedback','0'),(319,'grade_report_fixedstudents','0'),(320,'grade_report_meanselection','1'),(321,'grade_report_showcalculations','0'),(322,'grade_report_showeyecons','0'),(323,'grade_report_showaverages','1'),(324,'grade_report_showlocks','0'),(325,'grade_report_showranges','0'),(326,'grade_report_showuserimage','1'),(327,'grade_report_showuseridnumber','0'),(328,'grade_report_showactivityicons','1'),(329,'grade_report_shownumberofgrades','0'),(330,'grade_report_averagesdisplaytype','inherit'),(331,'grade_report_rangesdisplaytype','inherit'),(332,'grade_report_averagesdecimalpoints','inherit'),(333,'grade_report_rangesdecimalpoints','inherit'),(334,'grade_report_overview_showrank','0'),(335,'grade_report_overview_showtotalsifcontainhidden','0'),(336,'grade_report_user_showrank','0'),(337,'grade_report_user_showpercentage','2'),(338,'grade_report_user_showhiddenitems','1'),(339,'grade_report_user_showtotalsifcontainhidden','0'),(340,'assignment_maxbytes','1048576'),(341,'assignment_itemstocount','1'),(342,'assignment_showrecentsubmissions','1'),(343,'chat_method','header_js'),(344,'chat_refresh_userlist','10'),(345,'chat_old_ping','35'),(346,'chat_refresh_room','5'),(347,'chat_normal_updatemode','jsupdate'),(348,'chat_serverhost','172.16.0.1'),(349,'chat_serverip','127.0.0.1'),(350,'chat_serverport','9111'),(351,'chat_servermax','100'),(352,'data_enablerssfeeds','0'),(353,'forum_displaymode','3'),(354,'forum_replytouser','1'),(355,'forum_shortpost','300'),(356,'forum_longpost','600'),(357,'forum_manydiscussions','100'),(358,'forum_maxbytes','512000'),(359,'forum_trackreadposts','1'),(360,'forum_oldpostdays','14'),(361,'forum_usermarksread','0'),(362,'forum_cleanreadtime','2'),(363,'forum_enablerssfeeds','0'),(364,'forum_enabletimedposts','0'),(365,'forum_logblocked','1'),(366,'forum_ajaxrating','0'),(367,'glossary_entbypage','10'),(368,'glossary_dupentries','0'),(369,'glossary_allowcomments','0'),(370,'glossary_linkbydefault','1'),(371,'glossary_defaultapproval','1'),(372,'glossary_enablerssfeeds','0'),(373,'glossary_linkentries','0'),(374,'glossary_casesensitive','0'),(375,'glossary_fullmatch','0'),(376,'lams_serverurl',''),(377,'lams_serverid',''),(378,'lams_serverkey',''),(379,'resource_framesize','130'),(380,'resource_websearch','http://google.com/'),(381,'resource_defaulturl','http://'),(382,'resource_secretphrase','65qfFQO2fZpbYhet3YwG'),(383,'resource_popup',''),(384,'resource_popupresizable','checked'),(385,'resource_popupscrollbars','checked'),(386,'resource_popupdirectories','checked'),(387,'resource_popuplocation','checked'),(388,'resource_popupmenubar','checked'),(389,'resource_popuptoolbar','checked'),(390,'resource_popupstatus','checked'),(391,'resource_popupwidth','620'),(392,'resource_popupheight','450'),(393,'resource_autofilerename','1'),(394,'resource_blockdeletingfile','1'),(395,'scorm_grademethod','1'),(396,'scorm_maxgrade','100'),(397,'scorm_maxattempts','0'),(398,'scorm_whatgrade','0'),(399,'scorm_framewidth','100%'),(400,'scorm_frameheight','500'),(401,'scorm_popup','0'),(402,'scorm_resizable','0'),(403,'scorm_scrollbars','0'),(404,'scorm_directories','0'),(405,'scorm_location','0'),(406,'scorm_menubar','0'),(407,'scorm_toolbar','0'),(408,'scorm_status','0'),(409,'scorm_skipview','0'),(410,'scorm_hidebrowse','0'),(411,'scorm_hidetoc','0'),(412,'scorm_hidenav','0'),(413,'scorm_auto','0'),(414,'scorm_updatefreq','0'),(415,'block_course_list_adminview','all'),(416,'block_course_list_hideallcourseslink','0'),(417,'block_online_users_timetosee','5'),(418,'defaultallowedmodules',''),(419,'coursemanager','3'),(420,'frontpage','1'),(421,'frontpageloggedin','1'),(422,'maxcategorydepth','0'),(423,'coursesperpage','20'),(424,'allowvisiblecoursesinhiddencategories','0'),(425,'defaultfrontpageroleid','0'),(426,'supportname','Admin User'),(427,'supportemail','root@localhost.tld'),(429,'digestmailtimelast','1317834005'),(430,'forum_lastreadclean','1317751207'),(431,'scorm_updatetimelast','1317834005'),(432,'lastexpirynotify','20111005');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `plugin` varchar(100) NOT NULL default 'core',
  `name` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Moodle modules and plugins configuration variables';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'moodlecourse','format','weeks'),(2,'moodlecourse','numsections','10'),(3,'moodlecourse','hiddensections','0'),(4,'moodlecourse','newsitems','5'),(5,'moodlecourse','showgrades','1'),(6,'moodlecourse','showreports','0'),(7,'moodlecourse','maxbytes','2097152'),(8,'moodlecourse','metacourse','0'),(9,'qtype_random','selectmanual','0'),(10,'blocks/section_links','numsections1','22'),(11,'blocks/section_links','incby1','2'),(12,'blocks/section_links','numsections2','40'),(13,'blocks/section_links','incby2','5');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_context` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `contextlevel` bigint(10) unsigned NOT NULL default '0',
  `instanceid` bigint(10) unsigned NOT NULL default '0',
  `path` varchar(255) default NULL,
  `depth` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='one of these must be set';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1),(2,50,1,'/1/2',2),(3,40,1,'/1/3',2),(4,80,1,'/1/2/4',3),(5,80,2,'/1/2/5',3),(6,80,3,'/1/2/6',3),(7,80,4,'/1/2/7',3),(8,80,5,'/1/8',2),(9,80,6,'/1/9',2);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL default '',
  `depth` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used by build_context_path() in upgrade and cron to keep con';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `category` bigint(10) unsigned NOT NULL default '0',
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  `password` varchar(50) NOT NULL default '',
  `fullname` varchar(254) NOT NULL default '',
  `shortname` varchar(100) NOT NULL default '',
  `idnumber` varchar(100) NOT NULL default '',
  `summary` text,
  `format` varchar(10) NOT NULL default 'topics',
  `showgrades` tinyint(2) unsigned NOT NULL default '1',
  `modinfo` longtext,
  `newsitems` mediumint(5) unsigned NOT NULL default '1',
  `teacher` varchar(100) NOT NULL default 'Teacher',
  `teachers` varchar(100) NOT NULL default 'Teachers',
  `student` varchar(100) NOT NULL default 'Student',
  `students` varchar(100) NOT NULL default 'Students',
  `guest` tinyint(2) unsigned NOT NULL default '0',
  `startdate` bigint(10) unsigned NOT NULL default '0',
  `enrolperiod` bigint(10) unsigned NOT NULL default '0',
  `numsections` mediumint(5) unsigned NOT NULL default '1',
  `marker` bigint(10) unsigned NOT NULL default '0',
  `maxbytes` bigint(10) unsigned NOT NULL default '0',
  `showreports` smallint(4) unsigned NOT NULL default '0',
  `visible` tinyint(1) unsigned NOT NULL default '1',
  `hiddensections` tinyint(2) unsigned NOT NULL default '0',
  `groupmode` smallint(4) unsigned NOT NULL default '0',
  `groupmodeforce` smallint(4) unsigned NOT NULL default '0',
  `defaultgroupingid` bigint(10) unsigned NOT NULL default '0',
  `lang` varchar(30) NOT NULL default '',
  `theme` varchar(50) NOT NULL default '',
  `cost` varchar(10) NOT NULL default '',
  `currency` varchar(3) NOT NULL default 'USD',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `metacourse` tinyint(1) unsigned NOT NULL default '0',
  `requested` tinyint(1) unsigned NOT NULL default '0',
  `restrictmodules` tinyint(1) unsigned NOT NULL default '0',
  `expirynotify` tinyint(1) unsigned NOT NULL default '0',
  `expirythreshold` bigint(10) unsigned NOT NULL default '0',
  `notifystudents` tinyint(1) unsigned NOT NULL default '0',
  `enrollable` tinyint(1) unsigned NOT NULL default '1',
  `enrolstartdate` bigint(10) unsigned NOT NULL default '0',
  `enrolenddate` bigint(10) unsigned NOT NULL default '0',
  `enrol` varchar(20) NOT NULL default '',
  `defaultrole` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Central course table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,0,'','Ambiente Educativo Virtual','Moodle','','','site',1,'a:0:{}',3,'Teacher','Teachers','Student','Students',0,0,0,0,0,0,0,1,0,0,0,0,'','','','USD',0,1317663551,0,0,0,0,0,0,1,0,0,'',0);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_allowed_modules`
--

DROP TABLE IF EXISTS `mdl_course_allowed_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_allowed_modules` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `module` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_courallomodu_cou_ix` (`course`),
  KEY `mdl_courallomodu_mod_ix` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='allowed modules foreach course';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_allowed_modules`
--

LOCK TABLES `mdl_course_allowed_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_allowed_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_allowed_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `parent` bigint(10) unsigned NOT NULL default '0',
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  `coursecount` bigint(10) unsigned NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '1',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `depth` bigint(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `theme` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Course categories';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (1,'Miscellaneous',NULL,0,0,0,1,0,1,'',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_display`
--

DROP TABLE IF EXISTS `mdl_course_display`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_display` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `display` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_courdisp_couuse_ix` (`course`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores info about how to display the course';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_display`
--

LOCK TABLES `mdl_course_display` WRITE;
/*!40000 ALTER TABLE `mdl_course_display` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_meta`
--

DROP TABLE IF EXISTS `mdl_course_meta`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_meta` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `parent_course` bigint(10) unsigned NOT NULL default '0',
  `child_course` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_courmeta_par_ix` (`parent_course`),
  KEY `mdl_courmeta_chi_ix` (`child_course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to store meta-courses relations';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_meta`
--

LOCK TABLES `mdl_course_meta` WRITE;
/*!40000 ALTER TABLE `mdl_course_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `module` bigint(10) unsigned NOT NULL default '0',
  `instance` bigint(10) unsigned NOT NULL default '0',
  `section` bigint(10) unsigned NOT NULL default '0',
  `idnumber` varchar(100) default NULL,
  `added` bigint(10) unsigned NOT NULL default '0',
  `score` smallint(4) NOT NULL default '0',
  `indent` mediumint(5) unsigned NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '1',
  `visibleold` tinyint(1) NOT NULL default '1',
  `groupmode` smallint(4) NOT NULL default '0',
  `groupingid` bigint(10) unsigned NOT NULL default '0',
  `groupmembersonly` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='course_modules table retrofitted from MySQL';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_request` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `fullname` varchar(254) NOT NULL default '',
  `shortname` varchar(15) NOT NULL default '',
  `summary` text NOT NULL,
  `reason` text NOT NULL,
  `requester` bigint(10) unsigned NOT NULL default '0',
  `password` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='course requests';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `section` bigint(10) unsigned NOT NULL default '0',
  `summary` text,
  `sequence` text,
  `visible` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_coursect_cousec_ix` (`course`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to define the sections for each course';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `comments` smallint(4) unsigned NOT NULL default '0',
  `timeavailablefrom` bigint(10) unsigned NOT NULL default '0',
  `timeavailableto` bigint(10) unsigned NOT NULL default '0',
  `timeviewfrom` bigint(10) unsigned NOT NULL default '0',
  `timeviewto` bigint(10) unsigned NOT NULL default '0',
  `requiredentries` int(8) unsigned NOT NULL default '0',
  `requiredentriestoview` int(8) unsigned NOT NULL default '0',
  `maxentries` int(8) unsigned NOT NULL default '0',
  `rssarticles` smallint(4) unsigned NOT NULL default '0',
  `singletemplate` text,
  `listtemplate` text,
  `listtemplateheader` text,
  `listtemplatefooter` text,
  `addtemplate` text,
  `rsstemplate` text,
  `rsstitletemplate` text,
  `csstemplate` text,
  `jstemplate` text,
  `asearchtemplate` text,
  `approval` smallint(4) unsigned NOT NULL default '0',
  `scale` bigint(10) NOT NULL default '0',
  `assessed` bigint(10) unsigned NOT NULL default '0',
  `defaultsort` bigint(10) unsigned NOT NULL default '0',
  `defaultsortdir` smallint(4) unsigned NOT NULL default '0',
  `editany` smallint(4) unsigned NOT NULL default '0',
  `notification` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all database activities';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_comments`
--

DROP TABLE IF EXISTS `mdl_data_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data_comments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `recordid` bigint(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL default '0',
  `created` bigint(10) unsigned NOT NULL default '0',
  `modified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_datacomm_rec_ix` (`recordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to comment data records';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data_comments`
--

LOCK TABLES `mdl_data_comments` WRITE;
/*!40000 ALTER TABLE `mdl_data_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data_content` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `fieldid` bigint(10) unsigned NOT NULL default '0',
  `recordid` bigint(10) unsigned NOT NULL default '0',
  `content` longtext,
  `content1` longtext,
  `content2` longtext,
  `content3` longtext,
  `content4` longtext,
  PRIMARY KEY  (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='the content introduced in each record/fields';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `dataid` bigint(10) unsigned NOT NULL default '0',
  `type` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `param1` text,
  `param2` text,
  `param3` text,
  `param4` text,
  `param5` text,
  `param6` text,
  `param7` text,
  `param8` text,
  `param9` text,
  `param10` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every field available';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_ratings`
--

DROP TABLE IF EXISTS `mdl_data_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data_ratings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `recordid` bigint(10) unsigned NOT NULL default '0',
  `rating` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_datarati_rec_ix` (`recordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to rate data records';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data_ratings`
--

LOCK TABLES `mdl_data_ratings` WRITE;
/*!40000 ALTER TABLE `mdl_data_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_data_records` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `dataid` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `approved` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every record introduced';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_authorize`
--

DROP TABLE IF EXISTS `mdl_enrol_authorize`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_enrol_authorize` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `paymentmethod` enum('cc','echeck') NOT NULL default 'cc',
  `refundinfo` smallint(4) unsigned NOT NULL default '0',
  `ccname` varchar(255) NOT NULL default '',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `transid` bigint(20) unsigned NOT NULL default '0',
  `status` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `settletime` bigint(10) unsigned NOT NULL default '0',
  `amount` varchar(10) NOT NULL default '',
  `currency` varchar(3) NOT NULL default 'USD',
  PRIMARY KEY  (`id`),
  KEY `mdl_enroauth_cou_ix` (`courseid`),
  KEY `mdl_enroauth_use_ix` (`userid`),
  KEY `mdl_enroauth_sta_ix` (`status`),
  KEY `mdl_enroauth_tra_ix` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all known information about authorize.net transactions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_enrol_authorize`
--

LOCK TABLES `mdl_enrol_authorize` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_authorize` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_authorize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_authorize_refunds`
--

DROP TABLE IF EXISTS `mdl_enrol_authorize_refunds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_enrol_authorize_refunds` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `orderid` bigint(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `amount` varchar(10) NOT NULL default '',
  `transid` bigint(20) unsigned default '0',
  `settletime` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_enroauthrefu_tra_ix` (`transid`),
  KEY `mdl_enroauthrefu_ord_ix` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Authorize.net refunds';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_enrol_authorize_refunds`
--

LOCK TABLES `mdl_enrol_authorize_refunds` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_authorize_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_authorize_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl_enrol_paypal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `business` varchar(255) NOT NULL default '',
  `receiver_email` varchar(255) NOT NULL default '',
  `receiver_id` varchar(255) NOT NULL default '',
  `item_name` varchar(255) NOT NULL default '',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `memo` varchar(255) NOT NULL default '',
  `tax` varchar(255) NOT NULL default '',
  `option_name1` varchar(255) NOT NULL default '',
  `option_selection1_x` varchar(255) NOT NULL default '',
  `option_name2` varchar(255) NOT NULL default '',
  `option_selection2_x` varchar(255) NOT NULL default '',
  `payment_status` varchar(255) NOT NULL default '',
  `pending_reason` varchar(255) NOT NULL default '',
  `reason_code` varchar(30) NOT NULL default '',
  `txn_id` varchar(255) NOT NULL default '',
  `parent_txn_id` varchar(255) NOT NULL default '',
  `payment_type` varchar(30) NOT NULL default '',
  `timeupdated` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all known information about PayPal transactions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_enrol_paypal`
--

LOCK TABLES `mdl_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event`
--

DROP TABLE IF EXISTS `mdl_event`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_event` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL default '0',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `repeatid` bigint(10) unsigned NOT NULL default '0',
  `modulename` varchar(20) NOT NULL default '',
  `instance` bigint(10) unsigned NOT NULL default '0',
  `eventtype` varchar(20) NOT NULL default '',
  `timestart` bigint(10) unsigned NOT NULL default '0',
  `timeduration` bigint(10) unsigned NOT NULL default '0',
  `visible` smallint(4) NOT NULL default '1',
  `uuid` varchar(36) NOT NULL default '',
  `sequence` bigint(10) unsigned NOT NULL default '1',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_grocouvisuse_ix` (`groupid`,`courseid`,`visible`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For everything with a time associated to it';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_event`
--

LOCK TABLES `mdl_event` WRITE;
/*!40000 ALTER TABLE `mdl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_handlers`
--

DROP TABLE IF EXISTS `mdl_events_handlers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `eventname` varchar(166) NOT NULL default '',
  `handlermodule` varchar(166) NOT NULL default '',
  `handlerfile` varchar(255) NOT NULL default '',
  `handlerfunction` mediumtext,
  `schedule` varchar(255) default NULL,
  `status` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_evenhand_evehan_uix` (`eventname`,`handlermodule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing which components requests what typ';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_events_handlers`
--

LOCK TABLES `mdl_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue`
--

DROP TABLE IF EXISTS `mdl_events_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `eventdata` longtext NOT NULL,
  `stackdump` mediumtext,
  `userid` bigint(10) unsigned default NULL,
  `timecreated` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing queued events. It stores only one ';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_events_queue`
--

LOCK TABLES `mdl_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `queuedeventid` bigint(10) unsigned NOT NULL,
  `handlerid` bigint(10) unsigned NOT NULL,
  `status` bigint(10) default NULL,
  `errormessage` mediumtext,
  `timemodified` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This is the list of queued handlers for processing. The even';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_events_queue_handlers`
--

LOCK TABLES `mdl_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum`
--

DROP TABLE IF EXISTS `mdl_forum`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `type` enum('single','news','general','social','eachuser','teacher','qanda') NOT NULL default 'general',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `assessed` bigint(10) unsigned NOT NULL default '0',
  `assesstimestart` bigint(10) unsigned NOT NULL default '0',
  `assesstimefinish` bigint(10) unsigned NOT NULL default '0',
  `scale` bigint(10) NOT NULL default '0',
  `maxbytes` bigint(10) unsigned NOT NULL default '0',
  `forcesubscribe` tinyint(1) unsigned NOT NULL default '0',
  `trackingtype` tinyint(2) unsigned NOT NULL default '1',
  `rsstype` tinyint(2) unsigned NOT NULL default '0',
  `rssarticles` tinyint(2) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `warnafter` bigint(10) unsigned NOT NULL default '0',
  `blockafter` bigint(10) unsigned NOT NULL default '0',
  `blockperiod` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Forums contain and structure discussion';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum`
--

LOCK TABLES `mdl_forum` WRITE;
/*!40000 ALTER TABLE `mdl_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussions`
--

DROP TABLE IF EXISTS `mdl_forum_discussions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `forum` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `firstpost` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) NOT NULL default '-1',
  `assessed` tinyint(1) NOT NULL default '1',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `usermodified` bigint(10) unsigned NOT NULL default '0',
  `timestart` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_for_ix` (`forum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Forums are composed of discussions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_discussions`
--

LOCK TABLES `mdl_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_posts`
--

DROP TABLE IF EXISTS `mdl_forum_posts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `discussion` bigint(10) unsigned NOT NULL default '0',
  `parent` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `created` bigint(10) unsigned NOT NULL default '0',
  `modified` bigint(10) unsigned NOT NULL default '0',
  `mailed` tinyint(2) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  `format` tinyint(2) NOT NULL default '0',
  `attachment` varchar(100) NOT NULL default '',
  `totalscore` smallint(4) NOT NULL default '0',
  `mailnow` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All posts are stored in this table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_posts`
--

LOCK TABLES `mdl_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl_forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_queue`
--

DROP TABLE IF EXISTS `mdl_forum_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `discussionid` bigint(10) unsigned NOT NULL default '0',
  `postid` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For keeping track of posts that will be mailed in digest for';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_queue`
--

LOCK TABLES `mdl_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_ratings`
--

DROP TABLE IF EXISTS `mdl_forum_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_ratings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `post` bigint(10) unsigned NOT NULL default '0',
  `time` bigint(10) unsigned NOT NULL default '0',
  `rating` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_forurati_use_ix` (`userid`),
  KEY `mdl_forurati_pos_ix` (`post`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='forum_ratings table retrofitted from MySQL';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_ratings`
--

LOCK TABLES `mdl_forum_ratings` WRITE;
/*!40000 ALTER TABLE `mdl_forum_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_read`
--

DROP TABLE IF EXISTS `mdl_forum_read`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `forumid` bigint(10) unsigned NOT NULL default '0',
  `discussionid` bigint(10) unsigned NOT NULL default '0',
  `postid` bigint(10) unsigned NOT NULL default '0',
  `firstread` bigint(10) unsigned NOT NULL default '0',
  `lastread` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl_foruread_usepos_ix` (`userid`,`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tracks each users read posts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_read`
--

LOCK TABLES `mdl_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `forum` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Keeps track of who is subscribed to what forum';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_subscriptions`
--

LOCK TABLES `mdl_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `forumid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tracks each users untracked forums';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_forum_track_prefs`
--

LOCK TABLES `mdl_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary`
--

DROP TABLE IF EXISTS `mdl_glossary`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `allowduplicatedentries` tinyint(2) unsigned NOT NULL default '0',
  `displayformat` varchar(50) NOT NULL default 'dictionary',
  `mainglossary` tinyint(2) unsigned NOT NULL default '0',
  `showspecial` tinyint(2) unsigned NOT NULL default '1',
  `showalphabet` tinyint(2) unsigned NOT NULL default '1',
  `showall` tinyint(2) unsigned NOT NULL default '1',
  `allowcomments` tinyint(2) unsigned NOT NULL default '0',
  `allowprintview` tinyint(2) unsigned NOT NULL default '1',
  `usedynalink` tinyint(2) unsigned NOT NULL default '1',
  `defaultapproval` tinyint(2) unsigned NOT NULL default '1',
  `globalglossary` tinyint(2) unsigned NOT NULL default '0',
  `entbypage` smallint(3) unsigned NOT NULL default '10',
  `editalways` tinyint(2) unsigned NOT NULL default '0',
  `rsstype` tinyint(2) unsigned NOT NULL default '0',
  `rssarticles` tinyint(2) unsigned NOT NULL default '0',
  `assessed` bigint(10) unsigned NOT NULL default '0',
  `assesstimestart` bigint(10) unsigned NOT NULL default '0',
  `assesstimefinish` bigint(10) unsigned NOT NULL default '0',
  `scale` bigint(10) NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all glossaries';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary`
--

LOCK TABLES `mdl_glossary` WRITE;
/*!40000 ALTER TABLE `mdl_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_alias`
--

DROP TABLE IF EXISTS `mdl_glossary_alias`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `entryid` bigint(10) unsigned NOT NULL default '0',
  `alias` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='entries alias';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_alias`
--

LOCK TABLES `mdl_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `glossaryid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `usedynalink` tinyint(2) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all categories for glossary entries';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_categories`
--

LOCK TABLES `mdl_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_comments`
--

DROP TABLE IF EXISTS `mdl_glossary_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_comments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `entryid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `entrycomment` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_gloscomm_use_ix` (`userid`),
  KEY `mdl_gloscomm_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='comments on glossary entries';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_comments`
--

LOCK TABLES `mdl_glossary_comments` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries`
--

DROP TABLE IF EXISTS `mdl_glossary_entries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `glossaryid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `concept` varchar(255) NOT NULL default '',
  `definition` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL default '0',
  `attachment` varchar(100) NOT NULL default '',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `teacherentry` tinyint(2) unsigned NOT NULL default '0',
  `sourceglossaryid` bigint(10) unsigned NOT NULL default '0',
  `usedynalink` tinyint(2) unsigned NOT NULL default '1',
  `casesensitive` tinyint(2) unsigned NOT NULL default '0',
  `fullmatch` tinyint(2) unsigned NOT NULL default '1',
  `approved` tinyint(2) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all glossary entries';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_entries`
--

LOCK TABLES `mdl_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `categoryid` bigint(10) unsigned NOT NULL default '0',
  `entryid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='categories of each glossary entry';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_entries_categories`
--

LOCK TABLES `mdl_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_formats`
--

DROP TABLE IF EXISTS `mdl_glossary_formats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `popupformatname` varchar(50) NOT NULL default '',
  `visible` tinyint(2) unsigned NOT NULL default '1',
  `showgroup` tinyint(2) unsigned NOT NULL default '1',
  `defaultmode` varchar(50) NOT NULL default '',
  `defaulthook` varchar(50) NOT NULL default '',
  `sortkey` varchar(50) NOT NULL default '',
  `sortorder` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Setting of the display formats';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_formats`
--

LOCK TABLES `mdl_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_formats` DISABLE KEYS */;
INSERT INTO `mdl_glossary_formats` VALUES (1,'continuous','continuous',1,1,'','','',''),(2,'dictionary','dictionary',1,1,'','','',''),(3,'encyclopedia','encyclopedia',1,1,'','','',''),(4,'entrylist','entrylist',1,1,'','','',''),(5,'faq','faq',1,1,'','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'','','','');
/*!40000 ALTER TABLE `mdl_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_ratings`
--

DROP TABLE IF EXISTS `mdl_glossary_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_glossary_ratings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `entryid` bigint(10) unsigned NOT NULL default '0',
  `time` bigint(10) unsigned NOT NULL default '0',
  `rating` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_glosrati_use_ix` (`userid`),
  KEY `mdl_glosrati_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains user ratings for entries';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_glossary_ratings`
--

LOCK TABLES `mdl_glossary_ratings` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories`
--

DROP TABLE IF EXISTS `mdl_grade_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL,
  `parent` bigint(10) unsigned default NULL,
  `depth` bigint(10) unsigned NOT NULL default '0',
  `path` varchar(255) default NULL,
  `fullname` varchar(255) NOT NULL default '',
  `aggregation` bigint(10) NOT NULL default '0',
  `keephigh` bigint(10) NOT NULL default '0',
  `droplow` bigint(10) NOT NULL default '0',
  `aggregateonlygraded` tinyint(1) unsigned NOT NULL default '0',
  `aggregateoutcomes` tinyint(1) unsigned NOT NULL default '0',
  `aggregatesubcats` tinyint(1) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table keeps information about categories, used for grou';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_categories`
--

LOCK TABLES `mdl_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl_grade_categories_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `action` bigint(10) unsigned NOT NULL default '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `loggeduser` bigint(10) unsigned default NULL,
  `courseid` bigint(10) unsigned NOT NULL,
  `parent` bigint(10) unsigned default NULL,
  `depth` bigint(10) unsigned NOT NULL default '0',
  `path` varchar(255) default NULL,
  `fullname` varchar(255) NOT NULL default '',
  `aggregation` bigint(10) NOT NULL default '0',
  `keephigh` bigint(10) NOT NULL default '0',
  `droplow` bigint(10) NOT NULL default '0',
  `aggregateonlygraded` tinyint(1) unsigned NOT NULL default '0',
  `aggregateoutcomes` tinyint(1) unsigned NOT NULL default '0',
  `aggregatesubcats` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History of grade_categories';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_categories_history`
--

LOCK TABLES `mdl_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades`
--

DROP TABLE IF EXISTS `mdl_grade_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `itemid` bigint(10) unsigned NOT NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `rawgrade` decimal(10,5) default NULL,
  `rawgrademax` decimal(10,5) NOT NULL default '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL default '0.00000',
  `rawscaleid` bigint(10) unsigned default NULL,
  `usermodified` bigint(10) unsigned default NULL,
  `finalgrade` decimal(10,5) default NULL,
  `hidden` bigint(10) unsigned NOT NULL default '0',
  `locked` bigint(10) unsigned NOT NULL default '0',
  `locktime` bigint(10) unsigned NOT NULL default '0',
  `exported` bigint(10) unsigned NOT NULL default '0',
  `overridden` bigint(10) unsigned NOT NULL default '0',
  `excluded` bigint(10) unsigned NOT NULL default '0',
  `feedback` mediumtext,
  `feedbackformat` bigint(10) unsigned NOT NULL default '0',
  `information` mediumtext,
  `informationformat` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='grade_grades  This table keeps individual grades for each us';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_grades`
--

LOCK TABLES `mdl_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl_grade_grades_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `action` bigint(10) unsigned NOT NULL default '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `loggeduser` bigint(10) unsigned default NULL,
  `itemid` bigint(10) unsigned NOT NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `rawgrade` decimal(10,5) default NULL,
  `rawgrademax` decimal(10,5) NOT NULL default '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL default '0.00000',
  `rawscaleid` bigint(10) unsigned default NULL,
  `usermodified` bigint(10) unsigned default NULL,
  `finalgrade` decimal(10,5) default NULL,
  `hidden` bigint(10) unsigned NOT NULL default '0',
  `locked` bigint(10) unsigned NOT NULL default '0',
  `locktime` bigint(10) unsigned NOT NULL default '0',
  `exported` bigint(10) unsigned NOT NULL default '0',
  `overridden` bigint(10) unsigned NOT NULL default '0',
  `excluded` bigint(10) unsigned NOT NULL default '0',
  `feedback` mediumtext,
  `feedbackformat` bigint(10) unsigned NOT NULL default '0',
  `information` mediumtext,
  `informationformat` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_grades_history`
--

LOCK TABLES `mdl_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `itemname` varchar(255) NOT NULL default '',
  `importcode` bigint(10) unsigned NOT NULL,
  `importer` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='temporary table for storing new grade_item names from grade ';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_import_newitem`
--

LOCK TABLES `mdl_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_values`
--

DROP TABLE IF EXISTS `mdl_grade_import_values`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `itemid` bigint(10) unsigned default NULL,
  `newgradeitem` bigint(10) unsigned default NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `finalgrade` decimal(10,5) default NULL,
  `feedback` mediumtext,
  `importcode` bigint(10) unsigned NOT NULL,
  `importer` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Temporary table for importing grades';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_import_values`
--

LOCK TABLES `mdl_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items`
--

DROP TABLE IF EXISTS `mdl_grade_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned default NULL,
  `categoryid` bigint(10) unsigned default NULL,
  `itemname` varchar(255) default NULL,
  `itemtype` varchar(30) NOT NULL default '',
  `itemmodule` varchar(30) default NULL,
  `iteminstance` bigint(10) unsigned default NULL,
  `itemnumber` bigint(10) unsigned default NULL,
  `iteminfo` mediumtext,
  `idnumber` varchar(255) default NULL,
  `calculation` mediumtext,
  `gradetype` smallint(4) NOT NULL default '1',
  `grademax` decimal(10,5) NOT NULL default '100.00000',
  `grademin` decimal(10,5) NOT NULL default '0.00000',
  `scaleid` bigint(10) unsigned default NULL,
  `outcomeid` bigint(10) unsigned default NULL,
  `gradepass` decimal(10,5) NOT NULL default '0.00000',
  `multfactor` decimal(10,5) NOT NULL default '1.00000',
  `plusfactor` decimal(10,5) NOT NULL default '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL default '0.00000',
  `sortorder` bigint(10) NOT NULL default '0',
  `display` bigint(10) NOT NULL default '0',
  `decimals` tinyint(1) unsigned default NULL,
  `hidden` bigint(10) NOT NULL default '0',
  `locked` bigint(10) NOT NULL default '0',
  `locktime` bigint(10) unsigned NOT NULL default '0',
  `needsupdate` bigint(10) NOT NULL default '0',
  `timecreated` bigint(10) unsigned default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table keeps information about gradeable items (ie colum';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_items`
--

LOCK TABLES `mdl_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items_history`
--

DROP TABLE IF EXISTS `mdl_grade_items_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `action` bigint(10) unsigned NOT NULL default '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `loggeduser` bigint(10) unsigned default NULL,
  `courseid` bigint(10) unsigned default NULL,
  `categoryid` bigint(10) unsigned default NULL,
  `itemname` varchar(255) default NULL,
  `itemtype` varchar(30) NOT NULL default '',
  `itemmodule` varchar(30) default NULL,
  `iteminstance` bigint(10) unsigned default NULL,
  `itemnumber` bigint(10) unsigned default NULL,
  `iteminfo` mediumtext,
  `idnumber` varchar(255) default NULL,
  `calculation` mediumtext,
  `gradetype` smallint(4) NOT NULL default '1',
  `grademax` decimal(10,5) NOT NULL default '100.00000',
  `grademin` decimal(10,5) NOT NULL default '0.00000',
  `scaleid` bigint(10) unsigned default NULL,
  `outcomeid` bigint(10) unsigned default NULL,
  `gradepass` decimal(10,5) NOT NULL default '0.00000',
  `multfactor` decimal(10,5) NOT NULL default '1.00000',
  `plusfactor` decimal(10,5) NOT NULL default '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL default '0.00000',
  `sortorder` bigint(10) NOT NULL default '0',
  `hidden` bigint(10) NOT NULL default '0',
  `locked` bigint(10) NOT NULL default '0',
  `locktime` bigint(10) unsigned NOT NULL default '0',
  `needsupdate` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History of grade_items';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_items_history`
--

LOCK TABLES `mdl_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_letters`
--

DROP TABLE IF EXISTS `mdl_grade_letters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `contextid` bigint(10) unsigned NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_gradlett_conlow_ix` (`contextid`,`lowerboundary`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Repository for grade letters, for courses and other moodle e';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_letters`
--

LOCK TABLES `mdl_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned default NULL,
  `shortname` varchar(255) NOT NULL default '',
  `fullname` text NOT NULL,
  `scaleid` bigint(10) unsigned default NULL,
  `description` text,
  `timecreated` bigint(10) unsigned default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `usermodified` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table describes the outcomes used in the system. An out';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_outcomes`
--

LOCK TABLES `mdl_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL,
  `outcomeid` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='stores what outcomes are used in what courses.';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_outcomes_courses`
--

LOCK TABLES `mdl_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `action` bigint(10) unsigned NOT NULL default '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `loggeduser` bigint(10) unsigned default NULL,
  `courseid` bigint(10) unsigned default NULL,
  `shortname` varchar(255) NOT NULL default '',
  `fullname` text NOT NULL,
  `scaleid` bigint(10) unsigned default NULL,
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_outcomes_history`
--

LOCK TABLES `mdl_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_settings`
--

DROP TABLE IF EXISTS `mdl_grade_settings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='gradebook settings';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_grade_settings`
--

LOCK TABLES `mdl_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings`
--

DROP TABLE IF EXISTS `mdl_groupings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_groupings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `configdata` text,
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_groupings`
--

LOCK TABLES `mdl_groupings` WRITE;
/*!40000 ALTER TABLE `mdl_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings_groups`
--

DROP TABLE IF EXISTS `mdl_groupings_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `groupingid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `timeadded` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a grouping to a group (note, groups can be in multiple ';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_groupings_groups`
--

LOCK TABLES `mdl_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groupings_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups`
--

DROP TABLE IF EXISTS `mdl_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_groups` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL default '',
  `description` text,
  `enrolmentkey` varchar(50) default NULL,
  `picture` bigint(10) unsigned NOT NULL default '0',
  `hidepicture` tinyint(1) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each record represents a group.';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_groups`
--

LOCK TABLES `mdl_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups_members`
--

DROP TABLE IF EXISTS `mdl_groups_members`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_groups_members` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `timeadded` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a user to a group.';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_groups_members`
--

LOCK TABLES `mdl_groups_members` WRITE;
/*!40000 ALTER TABLE `mdl_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot`
--

DROP TABLE IF EXISTS `mdl_hotpot`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `summary` text NOT NULL,
  `timeopen` bigint(10) unsigned NOT NULL default '0',
  `timeclose` bigint(10) unsigned NOT NULL default '0',
  `location` smallint(4) unsigned NOT NULL default '0',
  `reference` varchar(255) NOT NULL default '',
  `outputformat` smallint(4) unsigned NOT NULL default '1',
  `navigation` smallint(4) unsigned NOT NULL default '1',
  `studentfeedback` smallint(4) unsigned NOT NULL default '0',
  `studentfeedbackurl` varchar(255) NOT NULL default '',
  `forceplugins` smallint(4) unsigned NOT NULL default '0',
  `shownextquiz` smallint(4) unsigned NOT NULL default '0',
  `review` smallint(4) NOT NULL default '0',
  `grade` bigint(10) NOT NULL default '0',
  `grademethod` smallint(4) NOT NULL default '1',
  `attempts` mediumint(6) NOT NULL default '0',
  `password` varchar(255) NOT NULL default '',
  `subnet` varchar(255) NOT NULL default '',
  `clickreporting` smallint(4) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about Hot Potatoes quizzes';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot`
--

LOCK TABLES `mdl_hotpot` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot_attempts`
--

DROP TABLE IF EXISTS `mdl_hotpot_attempts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot_attempts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `hotpot` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `starttime` bigint(10) unsigned NOT NULL default '0',
  `endtime` bigint(10) unsigned NOT NULL default '0',
  `score` mediumint(6) unsigned NOT NULL default '0',
  `penalties` mediumint(6) unsigned NOT NULL default '0',
  `attempt` mediumint(6) unsigned NOT NULL default '0',
  `timestart` bigint(10) unsigned NOT NULL default '0',
  `timefinish` bigint(10) unsigned NOT NULL default '0',
  `status` smallint(4) unsigned NOT NULL default '1',
  `clickreportid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_hotpatte_use_ix` (`userid`),
  KEY `mdl_hotpatte_hot_ix` (`hotpot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about Hot Potatoes quiz attempts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot_attempts`
--

LOCK TABLES `mdl_hotpot_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot_details`
--

DROP TABLE IF EXISTS `mdl_hotpot_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot_details` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `attempt` bigint(10) unsigned NOT NULL default '0',
  `details` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_hotpdeta_att_ix` (`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='raw details (as XML) of Hot Potatoes quiz attempts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot_details`
--

LOCK TABLES `mdl_hotpot_details` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot_questions`
--

DROP TABLE IF EXISTS `mdl_hotpot_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot_questions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` text NOT NULL,
  `type` smallint(4) unsigned NOT NULL default '0',
  `text` bigint(10) unsigned NOT NULL default '0',
  `hotpot` bigint(10) unsigned NOT NULL default '0',
  `md5key` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_hotpques_md5_ix` (`md5key`),
  KEY `mdl_hotpques_hot_ix` (`hotpot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about questions in Hot Potatoes quiz attempts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot_questions`
--

LOCK TABLES `mdl_hotpot_questions` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot_responses`
--

DROP TABLE IF EXISTS `mdl_hotpot_responses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot_responses` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `attempt` bigint(10) unsigned NOT NULL default '0',
  `question` bigint(10) unsigned NOT NULL default '0',
  `score` mediumint(6) NOT NULL default '0',
  `weighting` mediumint(6) NOT NULL default '0',
  `correct` varchar(255) NOT NULL default '',
  `wrong` varchar(255) NOT NULL default '',
  `ignored` varchar(255) NOT NULL default '',
  `hints` mediumint(6) unsigned NOT NULL default '0',
  `clues` mediumint(6) unsigned NOT NULL default '0',
  `checks` mediumint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_hotpresp_att_ix` (`attempt`),
  KEY `mdl_hotpresp_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about responses in Hot Potatoes quiz attempts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot_responses`
--

LOCK TABLES `mdl_hotpot_responses` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_hotpot_strings`
--

DROP TABLE IF EXISTS `mdl_hotpot_strings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_hotpot_strings` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `string` text NOT NULL,
  `md5key` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_hotpstri_md5_ix` (`md5key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='strings used in Hot Potatoes questions and responses';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_hotpot_strings`
--

LOCK TABLES `mdl_hotpot_strings` WRITE;
/*!40000 ALTER TABLE `mdl_hotpot_strings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_hotpot_strings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_journal`
--

DROP TABLE IF EXISTS `mdl_journal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_journal` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `introformat` tinyint(2) NOT NULL default '0',
  `days` mediumint(5) unsigned NOT NULL default '7',
  `assessed` bigint(10) NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_jour_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='data for each journal';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_journal`
--

LOCK TABLES `mdl_journal` WRITE;
/*!40000 ALTER TABLE `mdl_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_journal_entries`
--

DROP TABLE IF EXISTS `mdl_journal_entries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_journal_entries` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `journal` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `modified` bigint(10) unsigned NOT NULL default '0',
  `text` text NOT NULL,
  `format` tinyint(2) NOT NULL default '0',
  `rating` bigint(10) default '0',
  `entrycomment` text,
  `teacher` bigint(10) unsigned NOT NULL default '0',
  `timemarked` bigint(10) unsigned NOT NULL default '0',
  `mailed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_jourentr_use_ix` (`userid`),
  KEY `mdl_jourentr_jou_ix` (`journal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All the journal entries of all people';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_journal_entries`
--

LOCK TABLES `mdl_journal_entries` WRITE;
/*!40000 ALTER TABLE `mdl_journal_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_journal_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_label`
--

DROP TABLE IF EXISTS `mdl_label`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_label` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines labels';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_label`
--

LOCK TABLES `mdl_label` WRITE;
/*!40000 ALTER TABLE `mdl_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lams`
--

DROP TABLE IF EXISTS `mdl_lams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lams` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `introduction` text NOT NULL,
  `learning_session_id` bigint(20) default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_lams_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='LAMS activity';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lams`
--

LOCK TABLES `mdl_lams` WRITE;
/*!40000 ALTER TABLE `mdl_lams` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson`
--

DROP TABLE IF EXISTS `mdl_lesson`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `practice` smallint(3) unsigned NOT NULL default '0',
  `modattempts` smallint(3) unsigned NOT NULL default '0',
  `usepassword` smallint(3) unsigned NOT NULL default '0',
  `password` varchar(32) NOT NULL default '',
  `dependency` bigint(10) unsigned NOT NULL default '0',
  `conditions` text NOT NULL,
  `grade` smallint(3) NOT NULL default '0',
  `custom` smallint(3) unsigned NOT NULL default '0',
  `ongoing` smallint(3) unsigned NOT NULL default '0',
  `usemaxgrade` smallint(3) NOT NULL default '0',
  `maxanswers` smallint(3) unsigned NOT NULL default '4',
  `maxattempts` smallint(3) unsigned NOT NULL default '5',
  `review` smallint(3) unsigned NOT NULL default '0',
  `nextpagedefault` smallint(3) unsigned NOT NULL default '0',
  `feedback` smallint(3) unsigned NOT NULL default '1',
  `minquestions` smallint(3) unsigned NOT NULL default '0',
  `maxpages` smallint(3) unsigned NOT NULL default '0',
  `timed` smallint(3) unsigned NOT NULL default '0',
  `maxtime` bigint(10) unsigned NOT NULL default '0',
  `retake` smallint(3) unsigned NOT NULL default '1',
  `activitylink` bigint(10) unsigned NOT NULL default '0',
  `mediafile` varchar(255) NOT NULL default '',
  `mediaheight` bigint(10) unsigned NOT NULL default '100',
  `mediawidth` bigint(10) unsigned NOT NULL default '650',
  `mediaclose` smallint(3) unsigned NOT NULL default '0',
  `slideshow` smallint(3) unsigned NOT NULL default '0',
  `width` bigint(10) unsigned NOT NULL default '640',
  `height` bigint(10) unsigned NOT NULL default '480',
  `bgcolor` varchar(7) NOT NULL default '#FFFFFF',
  `displayleft` smallint(3) unsigned NOT NULL default '0',
  `displayleftif` smallint(3) unsigned NOT NULL default '0',
  `progressbar` smallint(3) unsigned NOT NULL default '0',
  `highscores` smallint(3) unsigned NOT NULL default '0',
  `maxhighscores` bigint(10) unsigned NOT NULL default '0',
  `available` bigint(10) unsigned NOT NULL default '0',
  `deadline` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_less_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson`
--

LOCK TABLES `mdl_lesson` WRITE;
/*!40000 ALTER TABLE `mdl_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_answers`
--

DROP TABLE IF EXISTS `mdl_lesson_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_answers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `pageid` bigint(10) unsigned NOT NULL default '0',
  `jumpto` bigint(11) NOT NULL default '0',
  `grade` smallint(3) unsigned NOT NULL default '0',
  `score` bigint(10) NOT NULL default '0',
  `flags` smallint(3) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `answer` text,
  `response` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_lessansw_les_ix` (`lessonid`),
  KEY `mdl_lessansw_pag_ix` (`pageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_answers';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_answers`
--

LOCK TABLES `mdl_lesson_answers` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_attempts`
--

DROP TABLE IF EXISTS `mdl_lesson_attempts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_attempts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `pageid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `answerid` bigint(10) unsigned NOT NULL default '0',
  `retry` smallint(3) unsigned NOT NULL default '0',
  `correct` bigint(10) unsigned NOT NULL default '0',
  `useranswer` text,
  `timeseen` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_lessatte_use_ix` (`userid`),
  KEY `mdl_lessatte_les_ix` (`lessonid`),
  KEY `mdl_lessatte_pag_ix` (`pageid`),
  KEY `mdl_lessatte_ans_ix` (`answerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_attempts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_attempts`
--

LOCK TABLES `mdl_lesson_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_branch`
--

DROP TABLE IF EXISTS `mdl_lesson_branch`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_branch` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `pageid` bigint(10) unsigned NOT NULL default '0',
  `retry` bigint(10) unsigned NOT NULL default '0',
  `flag` smallint(3) unsigned NOT NULL default '0',
  `timeseen` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_lessbran_use_ix` (`userid`),
  KEY `mdl_lessbran_les_ix` (`lessonid`),
  KEY `mdl_lessbran_pag_ix` (`pageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='branches for each lesson/user';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_branch`
--

LOCK TABLES `mdl_lesson_branch` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_default`
--

DROP TABLE IF EXISTS `mdl_lesson_default`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_default` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `practice` smallint(3) unsigned NOT NULL default '0',
  `modattempts` smallint(3) unsigned NOT NULL default '0',
  `usepassword` smallint(3) unsigned NOT NULL default '0',
  `password` varchar(32) NOT NULL default '',
  `conditions` text NOT NULL,
  `grade` smallint(3) NOT NULL default '0',
  `custom` smallint(3) unsigned NOT NULL default '0',
  `ongoing` smallint(3) unsigned NOT NULL default '0',
  `usemaxgrade` smallint(3) unsigned NOT NULL default '0',
  `maxanswers` smallint(3) unsigned NOT NULL default '4',
  `maxattempts` smallint(3) unsigned NOT NULL default '5',
  `review` smallint(3) unsigned NOT NULL default '0',
  `nextpagedefault` smallint(3) unsigned NOT NULL default '0',
  `feedback` smallint(3) unsigned NOT NULL default '1',
  `minquestions` smallint(3) unsigned NOT NULL default '0',
  `maxpages` smallint(3) unsigned NOT NULL default '0',
  `timed` smallint(3) unsigned NOT NULL default '0',
  `maxtime` bigint(10) unsigned NOT NULL default '0',
  `retake` smallint(3) unsigned NOT NULL default '1',
  `mediaheight` bigint(10) unsigned NOT NULL default '100',
  `mediawidth` bigint(10) unsigned NOT NULL default '650',
  `mediaclose` smallint(3) unsigned NOT NULL default '0',
  `slideshow` smallint(3) unsigned NOT NULL default '0',
  `width` bigint(10) unsigned NOT NULL default '640',
  `height` bigint(10) unsigned NOT NULL default '480',
  `bgcolor` varchar(7) default '#FFFFFF',
  `displayleft` smallint(3) unsigned NOT NULL default '0',
  `displayleftif` smallint(3) unsigned NOT NULL default '0',
  `progressbar` smallint(3) unsigned NOT NULL default '0',
  `highscores` smallint(3) unsigned NOT NULL default '0',
  `maxhighscores` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_default';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_default`
--

LOCK TABLES `mdl_lesson_default` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_grades`
--

DROP TABLE IF EXISTS `mdl_lesson_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_grades` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `grade` double unsigned NOT NULL default '0',
  `late` smallint(3) unsigned NOT NULL default '0',
  `completed` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_lessgrad_use_ix` (`userid`),
  KEY `mdl_lessgrad_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_grades';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_grades`
--

LOCK TABLES `mdl_lesson_grades` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_high_scores`
--

DROP TABLE IF EXISTS `mdl_lesson_high_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_high_scores` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `gradeid` bigint(10) unsigned NOT NULL default '0',
  `nickname` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_lesshighscor_use_ix` (`userid`),
  KEY `mdl_lesshighscor_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high scores for each lesson';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_high_scores`
--

LOCK TABLES `mdl_lesson_high_scores` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_high_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_high_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_pages`
--

DROP TABLE IF EXISTS `mdl_lesson_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_pages` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `prevpageid` bigint(10) unsigned NOT NULL default '0',
  `nextpageid` bigint(10) unsigned NOT NULL default '0',
  `qtype` smallint(3) unsigned NOT NULL default '0',
  `qoption` smallint(3) unsigned NOT NULL default '0',
  `layout` smallint(3) unsigned NOT NULL default '1',
  `display` smallint(3) unsigned NOT NULL default '1',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `contents` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_lesspage_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_pages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_pages`
--

LOCK TABLES `mdl_lesson_pages` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_timer`
--

DROP TABLE IF EXISTS `mdl_lesson_timer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_lesson_timer` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `lessonid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `starttime` bigint(10) unsigned NOT NULL default '0',
  `lessontime` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_lesstime_use_ix` (`userid`),
  KEY `mdl_lesstime_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='lesson timer for each lesson';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_lesson_timer`
--

LOCK TABLES `mdl_lesson_timer` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log`
--

DROP TABLE IF EXISTS `mdl_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_log` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `time` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `course` bigint(10) unsigned NOT NULL default '0',
  `module` varchar(20) NOT NULL default '',
  `cmid` bigint(10) unsigned NOT NULL default '0',
  `action` varchar(40) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  `info` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl_log_tim_ix` (`time`),
  KEY `mdl_log_act_ix` (`action`),
  KEY `mdl_log_usecou_ix` (`userid`,`course`),
  KEY `mdl_log_cmi_ix` (`cmid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Every action is logged as far as possible';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_log`
--

LOCK TABLES `mdl_log` WRITE;
/*!40000 ALTER TABLE `mdl_log` DISABLE KEYS */;
INSERT INTO `mdl_log` VALUES (1,1317663482,2,'192.168.1.109',1,'user',0,'update','view.php?id=2&course=1',''),(2,1317663555,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(3,1317663684,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(4,1317663804,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(5,1317663815,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(6,1317664500,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(7,1317664933,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(8,1317665267,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(9,1317665288,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1'),(10,1317666027,2,'192.168.1.109',1,'course',0,'view','view.php?id=1','1');
/*!40000 ALTER TABLE `mdl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_display`
--

DROP TABLE IF EXISTS `mdl_log_display`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_log_display` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `module` varchar(20) NOT NULL default '',
  `action` varchar(40) NOT NULL default '',
  `mtable` varchar(30) NOT NULL default '',
  `field` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_logdisp_modact_uix` (`module`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='For a particular module/action, specifies a moodle table/fie';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_log_display`
--

LOCK TABLES `mdl_log_display` WRITE;
/*!40000 ALTER TABLE `mdl_log_display` DISABLE KEYS */;
INSERT INTO `mdl_log_display` VALUES (1,'user','view','user','CONCAT(firstname,\' \',lastname)'),(2,'course','user report','user','CONCAT(firstname,\' \',lastname)'),(3,'course','view','course','fullname'),(4,'course','update','course','fullname'),(5,'course','enrol','course','fullname'),(6,'course','unenrol','course','fullname'),(7,'course','report log','course','fullname'),(8,'course','report live','course','fullname'),(9,'course','report outline','course','fullname'),(10,'course','report participation','course','fullname'),(11,'course','report stats','course','fullname'),(12,'message','write','user','CONCAT(firstname,\' \',lastname)'),(13,'message','read','user','CONCAT(firstname,\' \',lastname)'),(14,'message','add contact','user','CONCAT(firstname,\' \',lastname)'),(15,'message','remove contact','user','CONCAT(firstname,\' \',lastname)'),(16,'message','block contact','user','CONCAT(firstname,\' \',lastname)'),(17,'message','unblock contact','user','CONCAT(firstname,\' \',lastname)'),(18,'group','view','groups','name'),(19,'tag','update','tag','name'),(20,'assignment','view','assignment','name'),(21,'assignment','add','assignment','name'),(22,'assignment','update','assignment','name'),(23,'assignment','view submission','assignment','name'),(24,'assignment','upload','assignment','name'),(25,'chat','view','chat','name'),(26,'chat','add','chat','name'),(27,'chat','update','chat','name'),(28,'chat','report','chat','name'),(29,'chat','talk','chat','name'),(30,'choice','view','choice','name'),(31,'choice','update','choice','name'),(32,'choice','add','choice','name'),(33,'choice','report','choice','name'),(34,'choice','choose','choice','name'),(35,'choice','choose again','choice','name'),(36,'data','view','data','name'),(37,'data','add','data','name'),(38,'data','update','data','name'),(39,'data','record delete','data','name'),(40,'data','fields add','data_fields','name'),(41,'data','fields update','data_fields','name'),(42,'data','templates saved','data','name'),(43,'data','templates def','data','name'),(44,'forum','add','forum','name'),(45,'forum','update','forum','name'),(46,'forum','add discussion','forum_discussions','name'),(47,'forum','add post','forum_posts','subject'),(48,'forum','update post','forum_posts','subject'),(49,'forum','user report','user','CONCAT(firstname,\' \',lastname)'),(50,'forum','move discussion','forum_discussions','name'),(51,'forum','view subscribers','forum','name'),(52,'forum','view discussion','forum_discussions','name'),(53,'forum','view forum','forum','name'),(54,'forum','subscribe','forum','name'),(55,'forum','unsubscribe','forum','name'),(56,'glossary','add','glossary','name'),(57,'glossary','update','glossary','name'),(58,'glossary','view','glossary','name'),(59,'glossary','view all','glossary','name'),(60,'glossary','add entry','glossary','name'),(61,'glossary','update entry','glossary','name'),(62,'glossary','add category','glossary','name'),(63,'glossary','update category','glossary','name'),(64,'glossary','delete category','glossary','name'),(65,'glossary','add comment','glossary','name'),(66,'glossary','update comment','glossary','name'),(67,'glossary','delete comment','glossary','name'),(68,'glossary','approve entry','glossary','name'),(69,'glossary','view entry','glossary_entries','concept'),(70,'journal','view','journal','name'),(71,'journal','add entry','journal','name'),(72,'journal','update entry','journal','name'),(73,'journal','view responses','journal','name'),(74,'label','add','label','name'),(75,'label','update','label','name'),(76,'lesson','start','lesson','name'),(77,'lesson','end','lesson','name'),(78,'lesson','view','lesson_pages','title'),(79,'quiz','add','quiz','name'),(80,'quiz','update','quiz','name'),(81,'quiz','view','quiz','name'),(82,'quiz','report','quiz','name'),(83,'quiz','attempt','quiz','name'),(84,'quiz','submit','quiz','name'),(85,'quiz','review','quiz','name'),(86,'quiz','editquestions','quiz','name'),(87,'quiz','preview','quiz','name'),(88,'quiz','start attempt','quiz','name'),(89,'quiz','close attempt','quiz','name'),(90,'quiz','continue attempt','quiz','name'),(91,'resource','view','resource','name'),(92,'resource','update','resource','name'),(93,'resource','add','resource','name'),(94,'scorm','view','scorm','name'),(95,'scorm','review','scorm','name'),(96,'scorm','update','scorm','name'),(97,'scorm','add','scorm','name'),(98,'survey','add','survey','name'),(99,'survey','update','survey','name'),(100,'survey','download','survey','name'),(101,'survey','view form','survey','name'),(102,'survey','view graph','survey','name'),(103,'survey','view report','survey','name'),(104,'survey','submit','survey','name'),(105,'workshop','assessments','workshop','name'),(106,'workshop','close','workshop','name'),(107,'workshop','display','workshop','name'),(108,'workshop','resubmit','workshop','name'),(109,'workshop','set up','workshop','name'),(110,'workshop','submissions','workshop','name'),(111,'workshop','view','workshop','name'),(112,'workshop','update','workshop','name');
/*!40000 ALTER TABLE `mdl_log_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message`
--

DROP TABLE IF EXISTS `mdl_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_message` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `useridfrom` bigint(10) unsigned NOT NULL default '0',
  `useridto` bigint(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL default '0',
  `timecreated` bigint(10) NOT NULL default '0',
  `messagetype` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_mess_use_ix` (`useridfrom`),
  KEY `mdl_mess_use2_ix` (`useridto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all unread messages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_message`
--

LOCK TABLES `mdl_message` WRITE;
/*!40000 ALTER TABLE `mdl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_contacts`
--

DROP TABLE IF EXISTS `mdl_message_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_message_contacts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `contactid` bigint(10) unsigned NOT NULL default '0',
  `blocked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_messcont_usecon_uix` (`userid`,`contactid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maintains lists of relationships between users';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_message_contacts`
--

LOCK TABLES `mdl_message_contacts` WRITE;
/*!40000 ALTER TABLE `mdl_message_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_read`
--

DROP TABLE IF EXISTS `mdl_message_read`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_message_read` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `useridfrom` bigint(10) unsigned NOT NULL default '0',
  `useridto` bigint(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL default '0',
  `timecreated` bigint(10) NOT NULL default '0',
  `timeread` bigint(10) NOT NULL default '0',
  `messagetype` varchar(50) NOT NULL default '',
  `mailed` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_messread_use_ix` (`useridfrom`),
  KEY `mdl_messread_use2_ix` (`useridto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all messages that have been read';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_message_read`
--

LOCK TABLES `mdl_message_read` WRITE;
/*!40000 ALTER TABLE `mdl_message_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_application`
--

DROP TABLE IF EXISTS `mdl_mnet_application`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_application` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `display_name` varchar(50) NOT NULL default '',
  `xmlrpc_server_url` varchar(255) NOT NULL default '',
  `sso_land_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about applications on remote hosts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_application`
--

LOCK TABLES `mdl_mnet_application` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_application` DISABLE KEYS */;
INSERT INTO `mdl_mnet_application` VALUES (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php');
/*!40000 ALTER TABLE `mdl_mnet_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_enrol_assignments`
--

DROP TABLE IF EXISTS `mdl_mnet_enrol_assignments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_enrol_assignments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `hostid` bigint(10) unsigned NOT NULL default '0',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `rolename` varchar(255) NOT NULL default '',
  `enroltime` bigint(10) unsigned NOT NULL default '0',
  `enroltype` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_mnetenroassi_hoscou_ix` (`hostid`,`courseid`),
  KEY `mdl_mnetenroassi_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about enrolments on courses on remote hosts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_enrol_assignments`
--

LOCK TABLES `mdl_mnet_enrol_assignments` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_enrol_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_enrol_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_enrol_course`
--

DROP TABLE IF EXISTS `mdl_mnet_enrol_course`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_enrol_course` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `hostid` bigint(10) unsigned NOT NULL default '0',
  `remoteid` bigint(10) unsigned NOT NULL default '0',
  `cat_id` bigint(10) unsigned NOT NULL default '0',
  `cat_name` varchar(255) NOT NULL default '',
  `cat_description` mediumtext NOT NULL,
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  `fullname` varchar(254) NOT NULL default '',
  `shortname` varchar(15) NOT NULL default '',
  `idnumber` varchar(100) NOT NULL default '',
  `summary` mediumtext NOT NULL,
  `startdate` bigint(10) unsigned NOT NULL default '0',
  `cost` varchar(10) NOT NULL default '',
  `currency` varchar(3) NOT NULL default '',
  `defaultroleid` smallint(4) unsigned NOT NULL default '0',
  `defaultrolename` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about courses on remote hosts';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_enrol_course`
--

LOCK TABLES `mdl_mnet_enrol_course` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_enrol_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_enrol_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host`
--

DROP TABLE IF EXISTS `mdl_mnet_host`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_host` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `wwwroot` varchar(255) NOT NULL default '',
  `ip_address` varchar(39) NOT NULL default '',
  `name` varchar(80) NOT NULL default '',
  `public_key` mediumtext NOT NULL,
  `public_key_expires` bigint(10) unsigned NOT NULL default '0',
  `transport` tinyint(2) unsigned NOT NULL default '0',
  `portno` mediumint(5) unsigned NOT NULL default '0',
  `last_connect_time` bigint(10) unsigned NOT NULL default '0',
  `last_log_id` bigint(10) unsigned NOT NULL default '0',
  `force_theme` tinyint(1) unsigned NOT NULL default '0',
  `theme` varchar(100) default NULL,
  `applicationid` bigint(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about the local and remote hosts for RPC';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_host`
--

LOCK TABLES `mdl_mnet_host` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host` DISABLE KEYS */;
INSERT INTO `mdl_mnet_host` VALUES (1,0,'http://172.16.0.1/intranet/moodle','172.16.0.1','','',0,0,0,0,0,0,NULL,1),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1);
/*!40000 ALTER TABLE `mdl_mnet_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host2service`
--

DROP TABLE IF EXISTS `mdl_mnet_host2service`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_host2service` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `hostid` bigint(10) unsigned NOT NULL default '0',
  `serviceid` bigint(10) unsigned NOT NULL default '0',
  `publish` tinyint(1) unsigned NOT NULL default '0',
  `subscribe` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about the services for a given host';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_host2service`
--

LOCK TABLES `mdl_mnet_host2service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_host2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_log`
--

DROP TABLE IF EXISTS `mdl_mnet_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_log` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `hostid` bigint(10) unsigned NOT NULL default '0',
  `remoteid` bigint(10) unsigned NOT NULL default '0',
  `time` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `course` bigint(10) unsigned NOT NULL default '0',
  `coursename` varchar(40) NOT NULL default '',
  `module` varchar(20) NOT NULL default '',
  `cmid` bigint(10) unsigned NOT NULL default '0',
  `action` varchar(40) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  `info` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_log`
--

LOCK TABLES `mdl_mnet_log` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_rpc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_rpc` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `function_name` varchar(40) NOT NULL default '',
  `xmlrpc_path` varchar(80) NOT NULL default '',
  `parent_type` varchar(6) NOT NULL default '',
  `parent` varchar(20) NOT NULL default '',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `help` mediumtext NOT NULL,
  `profile` mediumtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpc_path`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Functions or methods that we may publish or subscribe to';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_rpc`
--

LOCK TABLES `mdl_mnet_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',0,'Return user data for the provided token, compare with user_agent string.','a:3:{i:0;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:45:\"token - The unique ID provided by remotehost.\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"useragent - User Agent string.\";}}'),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',0,'Receives an array of usernames from a remote machine and prods their\\n sessions to keep them alive','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"\\\"All ok\\\" or an error message\";}i:1;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:29:\"array - An array of usernames\";}}'),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',0,'The IdP uses this function to kill child sessions on other hosts','a:3:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"username - Username for session to kill\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"useragent - SHA1 hash of user agent to look for\";}}'),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',0,'Receives an array of log entries from an SP and adds them to the mnet_log\\n table','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"\\\"All ok\\\" or an error message\";}i:1;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:29:\"array - An array of usernames\";}}'),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',0,'Returns the user\'s image as a base64 encoded string.','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:17:\"The encoded image\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:29:\"username - The id of the user\";}}'),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',0,'Returns the theme information and logo url as strings.','a:1:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}'),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',0,'Invoke this function _on_ the IDP to update it with enrolment info local to\\n the SP right after calling user_authorise()\\n \\n Normally called by the SP after calling','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";N;}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:23:\"username - The username\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:77:\"courses - Assoc array of courses following the structure of mnet_enrol_course\";}}'),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',0,'Poll the IdP server to let it know that a user it has authenticated is still\\n online','a:1:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";N;}}'),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',0,'TODO:Untested When the IdP requests that child sessions are terminated,\\n this function will be called on each of the child hosts. The machine that\\n calls the function (over xmlrpc) provides us with the mnethostid we need.','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:15:\"True on success\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"username - Username for session to kill\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"useragent - SHA1 hash of user agent to look for\";}}'),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',0,'Does Foo','a:1:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:47:\"Whether the user can login from the remote host\";}}'),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',0,'No description given.','a:2:{i:0;a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}i:1;s:6:\"userid\";}'),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',0,'Enrols user to course with the default role','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:41:\"Whether the enrolment has been successful\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"user - The username of the remote use\";}i:2;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:37:\"courseid - The id of the local course\";}}'),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',0,'Unenrol a user from a course','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:47:\"Whether the user can login from the remote host\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:23:\"username - The username\";}i:2;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:37:\"courseid - The id of the local course\";}}'),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',0,'Get a list of users from the client server who are enrolled in a course','a:3:{i:0;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:39:\"Array of usernames who are homed on the\";}i:1;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:24:\"courseid - The Course ID\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"roles - Comma-separated list of role shortnames\";}}');
/*!40000 ALTER TABLE `mdl_mnet_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service`
--

DROP TABLE IF EXISTS `mdl_mnet_service`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_service` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `description` varchar(40) NOT NULL default '',
  `apiversion` varchar(10) NOT NULL default '',
  `offer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='A service is a group of functions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_service`
--

LOCK TABLES `mdl_mnet_service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service` VALUES (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1);
/*!40000 ALTER TABLE `mdl_mnet_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_service2rpc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_service2rpc` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `serviceid` bigint(10) unsigned NOT NULL default '0',
  `rpcid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_service2rpc`
--

LOCK TABLES `mdl_mnet_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14);
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_session`
--

DROP TABLE IF EXISTS `mdl_mnet_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_session` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `username` varchar(100) NOT NULL default '',
  `token` varchar(40) NOT NULL default '',
  `mnethostid` bigint(10) unsigned NOT NULL default '0',
  `useragent` varchar(40) NOT NULL default '',
  `confirm_timeout` bigint(10) unsigned NOT NULL default '0',
  `session_id` varchar(40) NOT NULL default '',
  `expires` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_session`
--

LOCK TABLES `mdl_mnet_session` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_sso_access_control`
--

DROP TABLE IF EXISTS `mdl_mnet_sso_access_control`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_mnet_sso_access_control` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `username` varchar(100) NOT NULL default '',
  `mnet_host_id` bigint(10) unsigned NOT NULL default '0',
  `accessctrl` varchar(20) NOT NULL default 'allow',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users by host permitted (or not) to login from a remote prov';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_mnet_sso_access_control`
--

LOCK TABLES `mdl_mnet_sso_access_control` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_modules`
--

DROP TABLE IF EXISTS `mdl_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_modules` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `version` bigint(10) NOT NULL default '0',
  `cron` bigint(10) unsigned NOT NULL default '0',
  `lastcron` bigint(10) unsigned NOT NULL default '0',
  `search` varchar(255) NOT NULL default '',
  `visible` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='modules available in the site';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_modules`
--

LOCK TABLES `mdl_modules` WRITE;
/*!40000 ALTER TABLE `mdl_modules` DISABLE KEYS */;
INSERT INTO `mdl_modules` VALUES (1,'assignment',2007101511,60,1317834004,'',1),(2,'chat',2009031100,300,1317834004,'',1),(3,'choice',2007101509,0,0,'',1),(4,'data',2007101515,60,0,'',1),(5,'forum',2007101513,60,1317834004,'',1),(6,'glossary',2007101509,0,0,'',1),(7,'hotpot',2007101513,0,0,'',0),(8,'journal',2007101509,60,0,'',0),(9,'label',2007101510,0,0,'',1),(10,'lams',2007101509,0,0,'',0),(11,'lesson',2008112601,0,0,'',1),(12,'quiz',2007101511,0,0,'',1),(13,'resource',2007101511,0,0,'',1),(14,'scorm',2007110503,300,1317834004,'',1),(15,'survey',2007101509,0,0,'',1),(16,'wiki',2007101509,3600,1317834004,'',1),(17,'workshop',2007101510,60,0,'',0);
/*!40000 ALTER TABLE `mdl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_post`
--

DROP TABLE IF EXISTS `mdl_post`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_post` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `module` varchar(20) NOT NULL default '',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `moduleid` bigint(10) unsigned NOT NULL default '0',
  `coursemoduleid` bigint(10) unsigned NOT NULL default '0',
  `subject` varchar(128) NOT NULL default '',
  `summary` longtext,
  `content` longtext,
  `uniquehash` varchar(128) NOT NULL default '',
  `rating` bigint(10) unsigned NOT NULL default '0',
  `format` bigint(10) unsigned NOT NULL default '0',
  `attachment` varchar(100) default NULL,
  `publishstate` enum('draft','site','public') NOT NULL default 'draft',
  `lastmodified` bigint(10) unsigned NOT NULL default '0',
  `created` bigint(10) unsigned NOT NULL default '0',
  `usermodified` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Generic post table to hold data blog entries etc in differen';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_post`
--

LOCK TABLES `mdl_post` WRITE;
/*!40000 ALTER TABLE `mdl_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question`
--

DROP TABLE IF EXISTS `mdl_question`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `category` bigint(10) NOT NULL default '0',
  `parent` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `questiontext` text NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL default '0',
  `image` varchar(255) NOT NULL default '',
  `generalfeedback` text NOT NULL,
  `defaultgrade` bigint(10) unsigned NOT NULL default '1',
  `penalty` double NOT NULL default '0.1',
  `qtype` varchar(20) NOT NULL default '',
  `length` bigint(10) unsigned NOT NULL default '1',
  `stamp` varchar(255) NOT NULL default '',
  `version` varchar(255) NOT NULL default '',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `createdby` bigint(10) unsigned default NULL,
  `modifiedby` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_ques_cat_ix` (`category`),
  KEY `mdl_ques_par_ix` (`parent`),
  KEY `mdl_ques_cre_ix` (`createdby`),
  KEY `mdl_ques_mod_ix` (`modifiedby`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The questions themselves';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question`
--

LOCK TABLES `mdl_question` WRITE;
/*!40000 ALTER TABLE `mdl_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_answers`
--

DROP TABLE IF EXISTS `mdl_question_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_answers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `answer` text NOT NULL,
  `fraction` double NOT NULL default '0',
  `feedback` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_quesansw_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Answers, with a fractional grade (0-1) and feedback';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_answers`
--

LOCK TABLES `mdl_question_answers` WRITE;
/*!40000 ALTER TABLE `mdl_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempts`
--

DROP TABLE IF EXISTS `mdl_question_attempts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_attempts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `modulename` varchar(20) NOT NULL default 'quiz',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Student attempts. This table gets extended by the modules';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_attempts`
--

LOCK TABLES `mdl_question_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated`
--

DROP TABLE IF EXISTS `mdl_question_calculated`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_calculated` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `answer` bigint(10) unsigned NOT NULL default '0',
  `tolerance` varchar(20) NOT NULL default '0.0',
  `tolerancetype` bigint(10) NOT NULL default '1',
  `correctanswerlength` bigint(10) NOT NULL default '2',
  `correctanswerformat` bigint(10) NOT NULL default '2',
  PRIMARY KEY  (`id`),
  KEY `mdl_quescalc_ans_ix` (`answer`),
  KEY `mdl_quescalc_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for questions of type calculated';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_calculated`
--

LOCK TABLES `mdl_question_calculated` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_categories`
--

DROP TABLE IF EXISTS `mdl_question_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_categories` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contextid` bigint(10) unsigned NOT NULL default '0',
  `info` text NOT NULL,
  `stamp` varchar(255) NOT NULL default '',
  `parent` bigint(10) unsigned NOT NULL default '0',
  `sortorder` bigint(10) unsigned NOT NULL default '999',
  PRIMARY KEY  (`id`),
  KEY `mdl_quescate_con_ix` (`contextid`),
  KEY `mdl_quescate_par_ix` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Categories are for grouping questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_categories`
--

LOCK TABLES `mdl_question_categories` WRITE;
/*!40000 ALTER TABLE `mdl_question_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_definitions`
--

DROP TABLE IF EXISTS `mdl_question_dataset_definitions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_dataset_definitions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `category` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `type` bigint(10) NOT NULL default '0',
  `options` varchar(255) NOT NULL default '',
  `itemcount` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesdatadefi_cat_ix` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Organises and stores properties for dataset items';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_dataset_definitions`
--

LOCK TABLES `mdl_question_dataset_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_items`
--

DROP TABLE IF EXISTS `mdl_question_dataset_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_dataset_items` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `definition` bigint(10) unsigned NOT NULL default '0',
  `itemnumber` bigint(10) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesdataitem_def_ix` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Individual dataset items';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_dataset_items`
--

LOCK TABLES `mdl_question_dataset_items` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_datasets`
--

DROP TABLE IF EXISTS `mdl_question_datasets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_datasets` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `datasetdefinition` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl_quesdata_que_ix` (`question`),
  KEY `mdl_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Many-many relation between questions and dataset definitions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_datasets`
--

LOCK TABLES `mdl_question_datasets` WRITE;
/*!40000 ALTER TABLE `mdl_question_datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_match`
--

DROP TABLE IF EXISTS `mdl_question_match`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_match` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `subquestions` varchar(255) NOT NULL default '',
  `shuffleanswers` smallint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesmatc_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines fixed matching questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_match`
--

LOCK TABLES `mdl_question_match` WRITE;
/*!40000 ALTER TABLE `mdl_question_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_match_sub`
--

DROP TABLE IF EXISTS `mdl_question_match_sub`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_match_sub` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `code` bigint(10) unsigned NOT NULL default '0',
  `question` bigint(10) unsigned NOT NULL default '0',
  `questiontext` text NOT NULL,
  `answertext` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesmatcsub_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines the subquestions that make up a matching question';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_match_sub`
--

LOCK TABLES `mdl_question_match_sub` WRITE;
/*!40000 ALTER TABLE `mdl_question_match_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_match_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multianswer`
--

DROP TABLE IF EXISTS `mdl_question_multianswer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_multianswer` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `sequence` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_quesmult_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for multianswer questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_multianswer`
--

LOCK TABLES `mdl_question_multianswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_multianswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_multianswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multichoice`
--

DROP TABLE IF EXISTS `mdl_question_multichoice`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_multichoice` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `layout` smallint(4) NOT NULL default '0',
  `answers` varchar(255) NOT NULL default '',
  `single` smallint(4) NOT NULL default '0',
  `shuffleanswers` smallint(4) NOT NULL default '1',
  `correctfeedback` text NOT NULL,
  `partiallycorrectfeedback` text NOT NULL,
  `incorrectfeedback` text NOT NULL,
  `answernumbering` varchar(10) NOT NULL default 'abc',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesmult_que2_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for multiple choice questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_multichoice`
--

LOCK TABLES `mdl_question_multichoice` WRITE;
/*!40000 ALTER TABLE `mdl_question_multichoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_multichoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical`
--

DROP TABLE IF EXISTS `mdl_question_numerical`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_numerical` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `answer` bigint(10) unsigned NOT NULL default '0',
  `tolerance` varchar(255) NOT NULL default '0.0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesnume_ans_ix` (`answer`),
  KEY `mdl_quesnume_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for numerical questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_numerical`
--

LOCK TABLES `mdl_question_numerical` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_units`
--

DROP TABLE IF EXISTS `mdl_question_numerical_units`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_numerical_units` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `multiplier` decimal(40,20) NOT NULL default '1.00000000000000000000',
  `unit` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl_quesnumeunit_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Optional unit options for numerical questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_numerical_units`
--

LOCK TABLES `mdl_question_numerical_units` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_randomsamatch`
--

DROP TABLE IF EXISTS `mdl_question_randomsamatch`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_randomsamatch` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `choose` bigint(10) unsigned NOT NULL default '4',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesrand_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about a random short-answer matching question';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_randomsamatch`
--

LOCK TABLES `mdl_question_randomsamatch` WRITE;
/*!40000 ALTER TABLE `mdl_question_randomsamatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_randomsamatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_sessions`
--

DROP TABLE IF EXISTS `mdl_question_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_sessions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `attemptid` bigint(10) unsigned NOT NULL default '0',
  `questionid` bigint(10) unsigned NOT NULL default '0',
  `newest` bigint(10) unsigned NOT NULL default '0',
  `newgraded` bigint(10) unsigned NOT NULL default '0',
  `sumpenalty` double NOT NULL default '0',
  `manualcomment` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_quessess_attque_uix` (`attemptid`,`questionid`),
  KEY `mdl_quessess_att_ix` (`attemptid`),
  KEY `mdl_quessess_que_ix` (`questionid`),
  KEY `mdl_quessess_new_ix` (`newest`),
  KEY `mdl_quessess_new2_ix` (`newgraded`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Gives ids of the newest open and newest graded states';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_sessions`
--

LOCK TABLES `mdl_question_sessions` WRITE;
/*!40000 ALTER TABLE `mdl_question_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_shortanswer`
--

DROP TABLE IF EXISTS `mdl_question_shortanswer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_shortanswer` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `answers` varchar(255) NOT NULL default '',
  `usecase` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesshor_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for short answer questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_shortanswer`
--

LOCK TABLES `mdl_question_shortanswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_shortanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_shortanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_states`
--

DROP TABLE IF EXISTS `mdl_question_states`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_states` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `attempt` bigint(10) unsigned NOT NULL default '0',
  `question` bigint(10) unsigned NOT NULL default '0',
  `originalquestion` bigint(10) unsigned NOT NULL default '0',
  `seq_number` mediumint(6) unsigned NOT NULL default '0',
  `answer` text NOT NULL,
  `timestamp` bigint(10) unsigned NOT NULL default '0',
  `event` smallint(4) unsigned NOT NULL default '0',
  `grade` double NOT NULL default '0',
  `raw_grade` double NOT NULL default '0',
  `penalty` double NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quesstat_att_ix` (`attempt`),
  KEY `mdl_quesstat_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores user responses to an attempt, and percentage grades';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_states`
--

LOCK TABLES `mdl_question_states` WRITE;
/*!40000 ALTER TABLE `mdl_question_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_truefalse`
--

DROP TABLE IF EXISTS `mdl_question_truefalse`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_question_truefalse` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `question` bigint(10) unsigned NOT NULL default '0',
  `trueanswer` bigint(10) unsigned NOT NULL default '0',
  `falseanswer` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_questrue_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for True-False questions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_question_truefalse`
--

LOCK TABLES `mdl_question_truefalse` WRITE;
/*!40000 ALTER TABLE `mdl_question_truefalse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_truefalse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz`
--

DROP TABLE IF EXISTS `mdl_quiz`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `timeopen` bigint(10) unsigned NOT NULL default '0',
  `timeclose` bigint(10) unsigned NOT NULL default '0',
  `optionflags` bigint(10) unsigned NOT NULL default '0',
  `penaltyscheme` smallint(4) unsigned NOT NULL default '0',
  `attempts` mediumint(6) NOT NULL default '0',
  `attemptonlast` smallint(4) NOT NULL default '0',
  `grademethod` smallint(4) NOT NULL default '1',
  `decimalpoints` smallint(4) NOT NULL default '2',
  `review` bigint(10) unsigned NOT NULL default '0',
  `questionsperpage` bigint(10) NOT NULL default '0',
  `shufflequestions` smallint(4) NOT NULL default '0',
  `shuffleanswers` smallint(4) NOT NULL default '0',
  `questions` text NOT NULL,
  `sumgrades` bigint(10) NOT NULL default '0',
  `grade` bigint(10) NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `timelimit` bigint(10) unsigned NOT NULL default '0',
  `password` varchar(255) NOT NULL default '',
  `subnet` varchar(255) NOT NULL default '',
  `popup` smallint(4) NOT NULL default '0',
  `delay1` bigint(10) NOT NULL default '0',
  `delay2` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quiz_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Main information about each quiz';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz`
--

LOCK TABLES `mdl_quiz` WRITE;
/*!40000 ALTER TABLE `mdl_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_attempts`
--

DROP TABLE IF EXISTS `mdl_quiz_attempts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz_attempts` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `uniqueid` bigint(10) unsigned NOT NULL default '0',
  `quiz` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `attempt` mediumint(6) NOT NULL default '0',
  `sumgrades` double NOT NULL default '0',
  `timestart` bigint(10) unsigned NOT NULL default '0',
  `timefinish` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `layout` text NOT NULL,
  `preview` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl_quizatte_use_ix` (`userid`),
  KEY `mdl_quizatte_qui_ix` (`quiz`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores various attempts on a quiz';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz_attempts`
--

LOCK TABLES `mdl_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_feedback`
--

DROP TABLE IF EXISTS `mdl_quiz_feedback`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz_feedback` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `quizid` bigint(10) unsigned NOT NULL default '0',
  `feedbacktext` text NOT NULL,
  `mingrade` double NOT NULL default '0',
  `maxgrade` double NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quizfeed_qui_ix` (`quizid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Feedback given to students based on their overall score on t';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz_feedback`
--

LOCK TABLES `mdl_quiz_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_grades`
--

DROP TABLE IF EXISTS `mdl_quiz_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz_grades` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `quiz` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `grade` double NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quizgrad_use_ix` (`userid`),
  KEY `mdl_quizgrad_qui_ix` (`quiz`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Final quiz grade (may be best of several attempts)';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz_grades`
--

LOCK TABLES `mdl_quiz_grades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_question_instances`
--

DROP TABLE IF EXISTS `mdl_quiz_question_instances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz_question_instances` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `quiz` bigint(10) unsigned NOT NULL default '0',
  `question` bigint(10) unsigned NOT NULL default '0',
  `grade` mediumint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quizquesinst_qui_ix` (`quiz`),
  KEY `mdl_quizquesinst_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The grade for a question in a quiz';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz_question_instances`
--

LOCK TABLES `mdl_quiz_question_instances` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_question_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_question_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_question_versions`
--

DROP TABLE IF EXISTS `mdl_quiz_question_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_quiz_question_versions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `quiz` bigint(10) unsigned NOT NULL default '0',
  `oldquestion` bigint(10) unsigned NOT NULL default '0',
  `newquestion` bigint(10) unsigned NOT NULL default '0',
  `originalquestion` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `timestamp` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_quizquesvers_qui_ix` (`quiz`),
  KEY `mdl_quizquesvers_old_ix` (`oldquestion`),
  KEY `mdl_quizquesvers_new_ix` (`newquestion`),
  KEY `mdl_quizquesvers_ori_ix` (`originalquestion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='quiz_question_versions table retrofitted from MySQL';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_quiz_question_versions`
--

LOCK TABLES `mdl_quiz_question_versions` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_question_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_question_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource`
--

DROP TABLE IF EXISTS `mdl_resource`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_resource` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `reference` varchar(255) NOT NULL default '',
  `summary` text,
  `alltext` mediumtext NOT NULL,
  `popup` text NOT NULL,
  `options` varchar(255) NOT NULL default '',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_reso_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each record is one resource and its config data';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_resource`
--

LOCK TABLES `mdl_resource` WRITE;
/*!40000 ALTER TABLE `mdl_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role`
--

DROP TABLE IF EXISTS `mdl_role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `shortname` varchar(100) NOT NULL default '',
  `description` text NOT NULL,
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='moodle roles';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role`
--

LOCK TABLES `mdl_role` WRITE;
/*!40000 ALTER TABLE `mdl_role` DISABLE KEYS */;
INSERT INTO `mdl_role` VALUES (1,'Administrator','admin','Administrators can usually do anything on the site, in all courses.',0),(2,'Course creator','coursecreator','Course creators can create new courses.',1),(3,'Teacher','editingteacher','Teachers can do anything within a course, including changing the activities and grading students.',2),(4,'Non-editing teacher','teacher','Non-editing teachers can teach in courses and grade students, but may not alter activities.',3),(5,'Student','student','Students generally have fewer privileges within a course.',4),(6,'Guest','guest','Guests have minimal privileges and usually can not enter text anywhere.',5),(7,'Authenticated user','user','All logged in users.',6);
/*!40000 ALTER TABLE `mdl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_assign`
--

DROP TABLE IF EXISTS `mdl_role_allow_assign`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_allow_assign` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `allowassign` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='this defines what role can assign what role';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_allow_assign`
--

LOCK TABLES `mdl_role_allow_assign` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_assign` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_assign` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,3),(5,1,5),(6,1,6),(7,2,4),(8,2,3),(9,2,5),(10,2,6),(11,3,4),(12,3,5),(13,3,6);
/*!40000 ALTER TABLE `mdl_role_allow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_override`
--

DROP TABLE IF EXISTS `mdl_role_allow_override`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_allow_override` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `allowoverride` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='this defines what role can override what role';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_allow_override`
--

LOCK TABLES `mdl_role_allow_override` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_override` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_override` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,3),(5,1,5),(6,1,6),(7,1,7);
/*!40000 ALTER TABLE `mdl_role_allow_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_assignments`
--

DROP TABLE IF EXISTS `mdl_role_assignments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `contextid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `timestart` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `modifierid` bigint(10) unsigned NOT NULL default '0',
  `enrol` varchar(20) NOT NULL default '',
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_roleassi_conroluse_uix` (`contextid`,`roleid`,`userid`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='assigning roles to different context';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_assignments`
--

LOCK TABLES `mdl_role_assignments` WRITE;
/*!40000 ALTER TABLE `mdl_role_assignments` DISABLE KEYS */;
INSERT INTO `mdl_role_assignments` VALUES (1,1,1,2,0,0,0,1317663392,0,'manual',0);
/*!40000 ALTER TABLE `mdl_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_capabilities`
--

DROP TABLE IF EXISTS `mdl_role_capabilities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_capabilities` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `contextid` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `capability` varchar(255) NOT NULL default '',
  `permission` bigint(10) NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `modifierid` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=MyISAM AUTO_INCREMENT=561 DEFAULT CHARSET=utf8 COMMENT='permission has to be signed, overriding a capability for a p';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_capabilities`
--

LOCK TABLES `mdl_role_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_role_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_role_capabilities` VALUES (1,1,1,'moodle/legacy:admin',1,1317662744,0),(2,1,2,'moodle/legacy:coursecreator',1,1317662744,0),(3,1,3,'moodle/legacy:editingteacher',1,1317662744,0),(4,1,4,'moodle/legacy:teacher',1,1317662745,0),(5,1,5,'moodle/legacy:student',1,1317662745,0),(6,1,6,'moodle/legacy:guest',1,1317662745,0),(7,1,7,'moodle/legacy:user',1,1317662745,0),(8,1,1,'moodle/site:doanything',1,1317662745,0),(9,1,1,'moodle/site:config',1,1317662745,0),(10,1,1,'moodle/site:readallmessages',1,1317662745,0),(11,1,3,'moodle/site:readallmessages',1,1317662745,0),(12,1,1,'moodle/site:sendmessage',1,1317662745,0),(13,1,7,'moodle/site:sendmessage',1,1317662745,0),(14,1,1,'moodle/site:approvecourse',1,1317662745,0),(15,1,3,'moodle/site:import',1,1317662745,0),(16,1,1,'moodle/site:import',1,1317662745,0),(17,1,3,'moodle/site:backup',1,1317662745,0),(18,1,1,'moodle/site:backup',1,1317662745,0),(19,1,1,'moodle/backup:userinfo',1,1317662745,0),(20,1,3,'moodle/site:restore',1,1317662745,0),(21,1,1,'moodle/site:restore',1,1317662745,0),(22,1,1,'moodle/restore:createuser',1,1317662745,0),(23,1,1,'moodle/restore:userinfo',1,1317662745,0),(24,1,2,'moodle/restore:rolldates',1,1317662745,0),(25,1,1,'moodle/restore:rolldates',1,1317662745,0),(26,1,3,'moodle/site:manageblocks',1,1317662745,0),(27,1,1,'moodle/site:manageblocks',1,1317662745,0),(28,1,4,'moodle/site:accessallgroups',1,1317662745,0),(29,1,3,'moodle/site:accessallgroups',1,1317662746,0),(30,1,1,'moodle/site:accessallgroups',1,1317662746,0),(31,1,4,'moodle/site:viewfullnames',1,1317662746,0),(32,1,3,'moodle/site:viewfullnames',1,1317662746,0),(33,1,1,'moodle/site:viewfullnames',1,1317662746,0),(34,1,4,'moodle/site:viewreports',1,1317662746,0),(35,1,3,'moodle/site:viewreports',1,1317662746,0),(36,1,1,'moodle/site:viewreports',1,1317662746,0),(37,1,3,'moodle/site:trustcontent',1,1317662746,0),(38,1,1,'moodle/site:trustcontent',1,1317662746,0),(39,1,1,'moodle/site:uploadusers',1,1317662746,0),(40,1,1,'moodle/site:langeditmaster',-1,1317662746,0),(41,1,1,'moodle/site:langeditlocal',1,1317662746,0),(42,1,1,'moodle/user:create',1,1317662746,0),(43,1,1,'moodle/user:delete',1,1317662746,0),(44,1,1,'moodle/user:update',1,1317662746,0),(45,1,6,'moodle/user:viewdetails',1,1317662746,0),(46,1,5,'moodle/user:viewdetails',1,1317662746,0),(47,1,4,'moodle/user:viewdetails',1,1317662746,0),(48,1,3,'moodle/user:viewdetails',1,1317662746,0),(49,1,1,'moodle/user:viewdetails',1,1317662746,0),(50,1,4,'moodle/user:viewhiddendetails',1,1317662746,0),(51,1,3,'moodle/user:viewhiddendetails',1,1317662746,0),(52,1,1,'moodle/user:viewhiddendetails',1,1317662746,0),(53,1,1,'moodle/user:loginas',1,1317662746,0),(54,1,3,'moodle/role:assign',1,1317662746,0),(55,1,1,'moodle/role:assign',1,1317662746,0),(56,1,1,'moodle/role:override',1,1317662746,0),(57,1,3,'moodle/role:safeoverride',1,1317662746,0),(58,1,1,'moodle/role:manage',1,1317662746,0),(59,1,4,'moodle/role:unassignself',1,1317662746,0),(60,1,3,'moodle/role:unassignself',1,1317662746,0),(61,1,2,'moodle/role:unassignself',1,1317662746,0),(62,1,1,'moodle/role:unassignself',1,1317662746,0),(63,1,4,'moodle/role:viewhiddenassigns',1,1317662746,0),(64,1,3,'moodle/role:viewhiddenassigns',1,1317662747,0),(65,1,1,'moodle/role:viewhiddenassigns',1,1317662747,0),(66,1,3,'moodle/role:switchroles',1,1317662747,0),(67,1,1,'moodle/role:switchroles',1,1317662747,0),(68,1,1,'moodle/category:manage',1,1317662747,0),(69,1,2,'moodle/category:viewhiddencategories',1,1317662747,0),(70,1,1,'moodle/category:viewhiddencategories',1,1317662747,0),(71,1,2,'moodle/course:create',1,1317662747,0),(72,1,1,'moodle/course:create',1,1317662747,0),(73,1,7,'moodle/course:request',1,1317662747,0),(74,1,1,'moodle/course:delete',1,1317662747,0),(75,1,3,'moodle/course:update',1,1317662747,0),(76,1,1,'moodle/course:update',1,1317662747,0),(77,1,6,'moodle/course:view',1,1317662747,0),(78,1,5,'moodle/course:view',1,1317662747,0),(79,1,4,'moodle/course:view',1,1317662747,0),(80,1,3,'moodle/course:view',1,1317662747,0),(81,1,4,'moodle/course:bulkmessaging',1,1317662748,0),(82,1,3,'moodle/course:bulkmessaging',1,1317662748,0),(83,1,1,'moodle/course:bulkmessaging',1,1317662748,0),(84,1,4,'moodle/course:viewhiddenuserfields',1,1317662748,0),(85,1,3,'moodle/course:viewhiddenuserfields',1,1317662748,0),(86,1,1,'moodle/course:viewhiddenuserfields',1,1317662748,0),(87,1,2,'moodle/course:viewhiddencourses',1,1317662748,0),(88,1,4,'moodle/course:viewhiddencourses',1,1317662748,0),(89,1,3,'moodle/course:viewhiddencourses',1,1317662748,0),(90,1,1,'moodle/course:viewhiddencourses',1,1317662748,0),(91,1,3,'moodle/course:visibility',1,1317662748,0),(92,1,1,'moodle/course:visibility',1,1317662748,0),(93,1,3,'moodle/course:managefiles',1,1317662748,0),(94,1,1,'moodle/course:managefiles',1,1317662748,0),(95,1,3,'moodle/course:manageactivities',1,1317662748,0),(96,1,1,'moodle/course:manageactivities',1,1317662748,0),(97,1,3,'moodle/course:managemetacourse',1,1317662749,0),(98,1,1,'moodle/course:managemetacourse',1,1317662749,0),(99,1,3,'moodle/course:activityvisibility',1,1317662749,0),(100,1,1,'moodle/course:activityvisibility',1,1317662749,0),(101,1,4,'moodle/course:viewhiddenactivities',1,1317662749,0),(102,1,3,'moodle/course:viewhiddenactivities',1,1317662749,0),(103,1,1,'moodle/course:viewhiddenactivities',1,1317662749,0),(104,1,5,'moodle/course:viewparticipants',1,1317662749,0),(105,1,4,'moodle/course:viewparticipants',1,1317662749,0),(106,1,3,'moodle/course:viewparticipants',1,1317662749,0),(107,1,1,'moodle/course:viewparticipants',1,1317662749,0),(108,1,3,'moodle/course:changefullname',1,1317662749,0),(109,1,1,'moodle/course:changefullname',1,1317662749,0),(110,1,3,'moodle/course:changeshortname',1,1317662749,0),(111,1,1,'moodle/course:changeshortname',1,1317662749,0),(112,1,3,'moodle/course:changeidnumber',1,1317662749,0),(113,1,1,'moodle/course:changeidnumber',1,1317662749,0),(114,1,3,'moodle/course:changecategory',1,1317662750,0),(115,1,1,'moodle/course:changecategory',1,1317662750,0),(116,1,3,'moodle/course:changesummary',1,1317662750,0),(117,1,1,'moodle/course:changesummary',1,1317662750,0),(118,1,1,'moodle/site:viewparticipants',1,1317662750,0),(119,1,5,'moodle/course:viewscales',1,1317662750,0),(120,1,4,'moodle/course:viewscales',1,1317662750,0),(121,1,3,'moodle/course:viewscales',1,1317662750,0),(122,1,1,'moodle/course:viewscales',1,1317662750,0),(123,1,3,'moodle/course:managescales',1,1317662750,0),(124,1,1,'moodle/course:managescales',1,1317662750,0),(125,1,3,'moodle/course:managegroups',1,1317662750,0),(126,1,1,'moodle/course:managegroups',1,1317662750,0),(127,1,3,'moodle/course:reset',1,1317662750,0),(128,1,1,'moodle/course:reset',1,1317662750,0),(129,1,6,'moodle/blog:view',1,1317662750,0),(130,1,7,'moodle/blog:view',1,1317662751,0),(131,1,5,'moodle/blog:view',1,1317662751,0),(132,1,4,'moodle/blog:view',1,1317662751,0),(133,1,3,'moodle/blog:view',1,1317662751,0),(134,1,1,'moodle/blog:view',1,1317662751,0),(135,1,7,'moodle/blog:create',1,1317662751,0),(136,1,1,'moodle/blog:create',1,1317662751,0),(137,1,4,'moodle/blog:manageentries',1,1317662751,0),(138,1,3,'moodle/blog:manageentries',1,1317662751,0),(139,1,1,'moodle/blog:manageentries',1,1317662751,0),(140,1,7,'moodle/calendar:manageownentries',1,1317662751,0),(141,1,1,'moodle/calendar:manageownentries',1,1317662751,0),(142,1,4,'moodle/calendar:managegroupentries',1,1317662751,0),(143,1,3,'moodle/calendar:managegroupentries',1,1317662751,0),(144,1,1,'moodle/calendar:managegroupentries',1,1317662751,0),(145,1,4,'moodle/calendar:manageentries',1,1317662751,0),(146,1,3,'moodle/calendar:manageentries',1,1317662751,0),(147,1,1,'moodle/calendar:manageentries',1,1317662752,0),(148,1,1,'moodle/user:editprofile',1,1317662752,0),(149,1,6,'moodle/user:editownprofile',-1000,1317662752,0),(150,1,7,'moodle/user:editownprofile',1,1317662752,0),(151,1,1,'moodle/user:editownprofile',1,1317662752,0),(152,1,6,'moodle/user:changeownpassword',-1000,1317662752,0),(153,1,7,'moodle/user:changeownpassword',1,1317662752,0),(154,1,1,'moodle/user:changeownpassword',1,1317662752,0),(155,1,5,'moodle/user:readuserposts',1,1317662752,0),(156,1,4,'moodle/user:readuserposts',1,1317662752,0),(157,1,3,'moodle/user:readuserposts',1,1317662752,0),(158,1,1,'moodle/user:readuserposts',1,1317662752,0),(159,1,5,'moodle/user:readuserblogs',1,1317662752,0),(160,1,4,'moodle/user:readuserblogs',1,1317662752,0),(161,1,3,'moodle/user:readuserblogs',1,1317662752,0),(162,1,1,'moodle/user:readuserblogs',1,1317662752,0),(163,1,3,'moodle/question:managecategory',1,1317662753,0),(164,1,1,'moodle/question:managecategory',1,1317662753,0),(165,1,3,'moodle/question:add',1,1317662753,0),(166,1,1,'moodle/question:add',1,1317662753,0),(167,1,3,'moodle/question:editmine',1,1317662753,0),(168,1,1,'moodle/question:editmine',1,1317662753,0),(169,1,3,'moodle/question:editall',1,1317662753,0),(170,1,1,'moodle/question:editall',1,1317662753,0),(171,1,3,'moodle/question:viewmine',1,1317662753,0),(172,1,1,'moodle/question:viewmine',1,1317662753,0),(173,1,3,'moodle/question:viewall',1,1317662753,0),(174,1,1,'moodle/question:viewall',1,1317662753,0),(175,1,3,'moodle/question:usemine',1,1317662753,0),(176,1,1,'moodle/question:usemine',1,1317662753,0),(177,1,3,'moodle/question:useall',1,1317662753,0),(178,1,1,'moodle/question:useall',1,1317662753,0),(179,1,3,'moodle/question:movemine',1,1317662753,0),(180,1,1,'moodle/question:movemine',1,1317662753,0),(181,1,3,'moodle/question:moveall',1,1317662753,0),(182,1,1,'moodle/question:moveall',1,1317662753,0),(183,1,1,'moodle/question:config',1,1317662753,0),(184,1,4,'moodle/site:doclinks',1,1317662753,0),(185,1,3,'moodle/site:doclinks',1,1317662753,0),(186,1,1,'moodle/site:doclinks',1,1317662753,0),(187,1,3,'moodle/course:sectionvisibility',1,1317662753,0),(188,1,1,'moodle/course:sectionvisibility',1,1317662753,0),(189,1,3,'moodle/course:useremail',1,1317662753,0),(190,1,1,'moodle/course:useremail',1,1317662753,0),(191,1,3,'moodle/course:viewhiddensections',1,1317662753,0),(192,1,1,'moodle/course:viewhiddensections',1,1317662753,0),(193,1,3,'moodle/course:setcurrentsection',1,1317662753,0),(194,1,1,'moodle/course:setcurrentsection',1,1317662753,0),(195,1,1,'moodle/site:mnetlogintoremote',1,1317662754,0),(196,1,4,'moodle/grade:viewall',1,1317662754,0),(197,1,3,'moodle/grade:viewall',1,1317662754,0),(198,1,1,'moodle/grade:viewall',1,1317662754,0),(199,1,5,'moodle/grade:view',1,1317662754,0),(200,1,4,'moodle/grade:viewhidden',1,1317662754,0),(201,1,3,'moodle/grade:viewhidden',1,1317662754,0),(202,1,1,'moodle/grade:viewhidden',1,1317662754,0),(203,1,3,'moodle/grade:import',1,1317662754,0),(204,1,1,'moodle/grade:import',1,1317662754,0),(205,1,4,'moodle/grade:export',1,1317662754,0),(206,1,3,'moodle/grade:export',1,1317662754,0),(207,1,1,'moodle/grade:export',1,1317662754,0),(208,1,3,'moodle/grade:manage',1,1317662755,0),(209,1,1,'moodle/grade:manage',1,1317662755,0),(210,1,3,'moodle/grade:edit',1,1317662755,0),(211,1,1,'moodle/grade:edit',1,1317662755,0),(212,1,3,'moodle/grade:manageoutcomes',1,1317662755,0),(213,1,1,'moodle/grade:manageoutcomes',1,1317662755,0),(214,1,3,'moodle/grade:manageletters',1,1317662755,0),(215,1,1,'moodle/grade:manageletters',1,1317662755,0),(216,1,3,'moodle/grade:hide',1,1317662755,0),(217,1,1,'moodle/grade:hide',1,1317662755,0),(218,1,3,'moodle/grade:lock',1,1317662755,0),(219,1,1,'moodle/grade:lock',1,1317662755,0),(220,1,3,'moodle/grade:unlock',1,1317662756,0),(221,1,1,'moodle/grade:unlock',1,1317662756,0),(222,1,7,'moodle/my:manageblocks',1,1317662756,0),(223,1,4,'moodle/notes:view',1,1317662756,0),(224,1,3,'moodle/notes:view',1,1317662756,0),(225,1,1,'moodle/notes:view',1,1317662756,0),(226,1,4,'moodle/notes:manage',1,1317662756,0),(227,1,3,'moodle/notes:manage',1,1317662756,0),(228,1,1,'moodle/notes:manage',1,1317662756,0),(229,1,4,'moodle/tag:manage',1,1317662756,0),(230,1,3,'moodle/tag:manage',1,1317662756,0),(231,1,1,'moodle/tag:manage',1,1317662756,0),(232,1,1,'moodle/tag:create',1,1317662756,0),(233,1,7,'moodle/tag:create',1,1317662756,0),(234,1,1,'moodle/tag:edit',1,1317662756,0),(235,1,7,'moodle/tag:edit',1,1317662756,0),(236,1,4,'moodle/tag:editblocks',1,1317662756,0),(237,1,3,'moodle/tag:editblocks',1,1317662757,0),(238,1,1,'moodle/tag:editblocks',1,1317662757,0),(239,1,6,'moodle/block:view',1,1317662757,0),(240,1,7,'moodle/block:view',1,1317662757,0),(241,1,5,'moodle/block:view',1,1317662757,0),(242,1,4,'moodle/block:view',1,1317662757,0),(243,1,3,'moodle/block:view',1,1317662757,0),(244,1,2,'moodle/block:view',1,1317662757,0),(245,1,6,'mod/assignment:view',1,1317662768,0),(246,1,5,'mod/assignment:view',1,1317662768,0),(247,1,4,'mod/assignment:view',1,1317662768,0),(248,1,3,'mod/assignment:view',1,1317662768,0),(249,1,1,'mod/assignment:view',1,1317662768,0),(250,1,5,'mod/assignment:submit',1,1317662768,0),(251,1,4,'mod/assignment:grade',1,1317662768,0),(252,1,3,'mod/assignment:grade',1,1317662768,0),(253,1,1,'mod/assignment:grade',1,1317662768,0),(254,1,5,'mod/chat:chat',1,1317662770,0),(255,1,4,'mod/chat:chat',1,1317662770,0),(256,1,3,'mod/chat:chat',1,1317662770,0),(257,1,1,'mod/chat:chat',1,1317662770,0),(258,1,5,'mod/chat:readlog',1,1317662770,0),(259,1,4,'mod/chat:readlog',1,1317662770,0),(260,1,3,'mod/chat:readlog',1,1317662770,0),(261,1,1,'mod/chat:readlog',1,1317662770,0),(262,1,4,'mod/chat:deletelog',1,1317662770,0),(263,1,3,'mod/chat:deletelog',1,1317662770,0),(264,1,1,'mod/chat:deletelog',1,1317662770,0),(265,1,5,'mod/choice:choose',1,1317662771,0),(266,1,4,'mod/choice:choose',1,1317662771,0),(267,1,3,'mod/choice:choose',1,1317662771,0),(268,1,1,'mod/choice:choose',1,1317662771,0),(269,1,4,'mod/choice:readresponses',1,1317662771,0),(270,1,3,'mod/choice:readresponses',1,1317662772,0),(271,1,1,'mod/choice:readresponses',1,1317662772,0),(272,1,4,'mod/choice:deleteresponses',1,1317662772,0),(273,1,3,'mod/choice:deleteresponses',1,1317662772,0),(274,1,1,'mod/choice:deleteresponses',1,1317662772,0),(275,1,4,'mod/choice:downloadresponses',1,1317662772,0),(276,1,3,'mod/choice:downloadresponses',1,1317662772,0),(277,1,1,'mod/choice:downloadresponses',1,1317662772,0),(278,1,6,'mod/data:viewentry',1,1317662774,0),(279,1,5,'mod/data:viewentry',1,1317662774,0),(280,1,4,'mod/data:viewentry',1,1317662774,0),(281,1,3,'mod/data:viewentry',1,1317662774,0),(282,1,1,'mod/data:viewentry',1,1317662774,0),(283,1,5,'mod/data:writeentry',1,1317662774,0),(284,1,4,'mod/data:writeentry',1,1317662774,0),(285,1,3,'mod/data:writeentry',1,1317662774,0),(286,1,1,'mod/data:writeentry',1,1317662774,0),(287,1,5,'mod/data:comment',1,1317662774,0),(288,1,4,'mod/data:comment',1,1317662774,0),(289,1,3,'mod/data:comment',1,1317662774,0),(290,1,1,'mod/data:comment',1,1317662774,0),(291,1,4,'mod/data:viewrating',1,1317662774,0),(292,1,3,'mod/data:viewrating',1,1317662774,0),(293,1,1,'mod/data:viewrating',1,1317662774,0),(294,1,4,'mod/data:rate',1,1317662774,0),(295,1,3,'mod/data:rate',1,1317662774,0),(296,1,1,'mod/data:rate',1,1317662774,0),(297,1,4,'mod/data:approve',1,1317662775,0),(298,1,3,'mod/data:approve',1,1317662775,0),(299,1,1,'mod/data:approve',1,1317662775,0),(300,1,4,'mod/data:manageentries',1,1317662775,0),(301,1,3,'mod/data:manageentries',1,1317662775,0),(302,1,1,'mod/data:manageentries',1,1317662775,0),(303,1,4,'mod/data:managecomments',1,1317662775,0),(304,1,3,'mod/data:managecomments',1,1317662775,0),(305,1,1,'mod/data:managecomments',1,1317662775,0),(306,1,3,'mod/data:managetemplates',1,1317662775,0),(307,1,1,'mod/data:managetemplates',1,1317662775,0),(308,1,4,'mod/data:viewalluserpresets',1,1317662775,0),(309,1,3,'mod/data:viewalluserpresets',1,1317662775,0),(310,1,1,'mod/data:viewalluserpresets',1,1317662775,0),(311,1,1,'mod/data:manageuserpresets',1,1317662775,0),(312,1,6,'mod/forum:viewdiscussion',1,1317662778,0),(313,1,5,'mod/forum:viewdiscussion',1,1317662778,0),(314,1,4,'mod/forum:viewdiscussion',1,1317662778,0),(315,1,3,'mod/forum:viewdiscussion',1,1317662778,0),(316,1,1,'mod/forum:viewdiscussion',1,1317662778,0),(317,1,4,'mod/forum:viewhiddentimedposts',1,1317662778,0),(318,1,3,'mod/forum:viewhiddentimedposts',1,1317662778,0),(319,1,1,'mod/forum:viewhiddentimedposts',1,1317662778,0),(320,1,5,'mod/forum:startdiscussion',1,1317662778,0),(321,1,4,'mod/forum:startdiscussion',1,1317662778,0),(322,1,3,'mod/forum:startdiscussion',1,1317662778,0),(323,1,1,'mod/forum:startdiscussion',1,1317662778,0),(324,1,5,'mod/forum:replypost',1,1317662778,0),(325,1,4,'mod/forum:replypost',1,1317662778,0),(326,1,3,'mod/forum:replypost',1,1317662778,0),(327,1,1,'mod/forum:replypost',1,1317662778,0),(328,1,4,'mod/forum:addnews',1,1317662778,0),(329,1,3,'mod/forum:addnews',1,1317662778,0),(330,1,1,'mod/forum:addnews',1,1317662778,0),(331,1,4,'mod/forum:replynews',1,1317662778,0),(332,1,3,'mod/forum:replynews',1,1317662778,0),(333,1,1,'mod/forum:replynews',1,1317662778,0),(334,1,5,'mod/forum:viewrating',1,1317662778,0),(335,1,4,'mod/forum:viewrating',1,1317662778,0),(336,1,3,'mod/forum:viewrating',1,1317662778,0),(337,1,1,'mod/forum:viewrating',1,1317662779,0),(338,1,4,'mod/forum:viewanyrating',1,1317662779,0),(339,1,3,'mod/forum:viewanyrating',1,1317662779,0),(340,1,1,'mod/forum:viewanyrating',1,1317662779,0),(341,1,4,'mod/forum:rate',1,1317662779,0),(342,1,3,'mod/forum:rate',1,1317662779,0),(343,1,1,'mod/forum:rate',1,1317662779,0),(344,1,5,'mod/forum:createattachment',1,1317662779,0),(345,1,4,'mod/forum:createattachment',1,1317662779,0),(346,1,3,'mod/forum:createattachment',1,1317662779,0),(347,1,1,'mod/forum:createattachment',1,1317662779,0),(348,1,5,'mod/forum:deleteownpost',1,1317662779,0),(349,1,4,'mod/forum:deleteownpost',1,1317662779,0),(350,1,3,'mod/forum:deleteownpost',1,1317662779,0),(351,1,1,'mod/forum:deleteownpost',1,1317662779,0),(352,1,4,'mod/forum:deleteanypost',1,1317662779,0),(353,1,3,'mod/forum:deleteanypost',1,1317662779,0),(354,1,1,'mod/forum:deleteanypost',1,1317662779,0),(355,1,4,'mod/forum:splitdiscussions',1,1317662779,0),(356,1,3,'mod/forum:splitdiscussions',1,1317662779,0),(357,1,1,'mod/forum:splitdiscussions',1,1317662779,0),(358,1,4,'mod/forum:movediscussions',1,1317662779,0),(359,1,3,'mod/forum:movediscussions',1,1317662779,0),(360,1,1,'mod/forum:movediscussions',1,1317662779,0),(361,1,4,'mod/forum:editanypost',1,1317662779,0),(362,1,3,'mod/forum:editanypost',1,1317662779,0),(363,1,1,'mod/forum:editanypost',1,1317662779,0),(364,1,4,'mod/forum:viewqandawithoutposting',1,1317662779,0),(365,1,3,'mod/forum:viewqandawithoutposting',1,1317662779,0),(366,1,1,'mod/forum:viewqandawithoutposting',1,1317662779,0),(367,1,4,'mod/forum:viewsubscribers',1,1317662779,0),(368,1,3,'mod/forum:viewsubscribers',1,1317662779,0),(369,1,1,'mod/forum:viewsubscribers',1,1317662779,0),(370,1,4,'mod/forum:managesubscriptions',1,1317662779,0),(371,1,3,'mod/forum:managesubscriptions',1,1317662779,0),(372,1,1,'mod/forum:managesubscriptions',1,1317662779,0),(373,1,4,'mod/forum:initialsubscriptions',1,1317662779,0),(374,1,3,'mod/forum:initialsubscriptions',1,1317662779,0),(375,1,5,'mod/forum:initialsubscriptions',1,1317662779,0),(376,1,5,'mod/glossary:write',1,1317662781,0),(377,1,4,'mod/glossary:write',1,1317662781,0),(378,1,3,'mod/glossary:write',1,1317662782,0),(379,1,1,'mod/glossary:write',1,1317662782,0),(380,1,4,'mod/glossary:manageentries',1,1317662782,0),(381,1,3,'mod/glossary:manageentries',1,1317662782,0),(382,1,1,'mod/glossary:manageentries',1,1317662782,0),(383,1,4,'mod/glossary:managecategories',1,1317662782,0),(384,1,3,'mod/glossary:managecategories',1,1317662782,0),(385,1,1,'mod/glossary:managecategories',1,1317662782,0),(386,1,5,'mod/glossary:comment',1,1317662782,0),(387,1,4,'mod/glossary:comment',1,1317662782,0),(388,1,3,'mod/glossary:comment',1,1317662782,0),(389,1,1,'mod/glossary:comment',1,1317662782,0),(390,1,4,'mod/glossary:managecomments',1,1317662782,0),(391,1,3,'mod/glossary:managecomments',1,1317662782,0),(392,1,1,'mod/glossary:managecomments',1,1317662782,0),(393,1,4,'mod/glossary:import',1,1317662782,0),(394,1,3,'mod/glossary:import',1,1317662782,0),(395,1,1,'mod/glossary:import',1,1317662782,0),(396,1,4,'mod/glossary:export',1,1317662782,0),(397,1,3,'mod/glossary:export',1,1317662782,0),(398,1,1,'mod/glossary:export',1,1317662782,0),(399,1,4,'mod/glossary:approve',1,1317662782,0),(400,1,3,'mod/glossary:approve',1,1317662782,0),(401,1,1,'mod/glossary:approve',1,1317662782,0),(402,1,4,'mod/glossary:rate',1,1317662782,0),(403,1,3,'mod/glossary:rate',1,1317662782,0),(404,1,1,'mod/glossary:rate',1,1317662782,0),(405,1,4,'mod/glossary:viewrating',1,1317662782,0),(406,1,3,'mod/glossary:viewrating',1,1317662782,0),(407,1,1,'mod/glossary:viewrating',1,1317662782,0),(408,1,5,'mod/hotpot:attempt',1,1317662784,0),(409,1,4,'mod/hotpot:attempt',1,1317662784,0),(410,1,3,'mod/hotpot:attempt',1,1317662784,0),(411,1,1,'mod/hotpot:attempt',1,1317662784,0),(412,1,4,'mod/hotpot:viewreport',1,1317662784,0),(413,1,3,'mod/hotpot:viewreport',1,1317662784,0),(414,1,1,'mod/hotpot:viewreport',1,1317662784,0),(415,1,4,'mod/hotpot:grade',1,1317662784,0),(416,1,3,'mod/hotpot:grade',1,1317662784,0),(417,1,1,'mod/hotpot:grade',1,1317662784,0),(418,1,3,'mod/hotpot:deleteattempt',1,1317662784,0),(419,1,1,'mod/hotpot:deleteattempt',1,1317662784,0),(420,1,5,'mod/lams:participate',1,1317662786,0),(421,1,4,'mod/lams:manage',1,1317662786,0),(422,1,3,'mod/lams:manage',1,1317662786,0),(423,1,1,'mod/lams:manage',1,1317662786,0),(424,1,3,'mod/lesson:edit',1,1317662790,0),(425,1,1,'mod/lesson:edit',1,1317662790,0),(426,1,4,'mod/lesson:manage',1,1317662790,0),(427,1,3,'mod/lesson:manage',1,1317662790,0),(428,1,1,'mod/lesson:manage',1,1317662790,0),(429,1,6,'mod/quiz:view',1,1317662796,0),(430,1,5,'mod/quiz:view',1,1317662796,0),(431,1,4,'mod/quiz:view',1,1317662796,0),(432,1,3,'mod/quiz:view',1,1317662796,0),(433,1,1,'mod/quiz:view',1,1317662796,0),(434,1,5,'mod/quiz:attempt',1,1317662796,0),(435,1,5,'mod/quiz:reviewmyattempts',1,1317662796,0),(436,1,3,'mod/quiz:manage',1,1317662796,0),(437,1,1,'mod/quiz:manage',1,1317662796,0),(438,1,4,'mod/quiz:preview',1,1317662796,0),(439,1,3,'mod/quiz:preview',1,1317662796,0),(440,1,1,'mod/quiz:preview',1,1317662796,0),(441,1,4,'mod/quiz:grade',1,1317662796,0),(442,1,3,'mod/quiz:grade',1,1317662797,0),(443,1,1,'mod/quiz:grade',1,1317662797,0),(444,1,4,'mod/quiz:viewreports',1,1317662797,0),(445,1,3,'mod/quiz:viewreports',1,1317662797,0),(446,1,1,'mod/quiz:viewreports',1,1317662797,0),(447,1,3,'mod/quiz:deleteattempts',1,1317662797,0),(448,1,1,'mod/quiz:deleteattempts',1,1317662797,0),(449,1,4,'mod/scorm:viewreport',1,1317662802,0),(450,1,3,'mod/scorm:viewreport',1,1317662802,0),(451,1,1,'mod/scorm:viewreport',1,1317662802,0),(452,1,5,'mod/scorm:skipview',1,1317662802,0),(453,1,5,'mod/scorm:savetrack',1,1317662802,0),(454,1,4,'mod/scorm:savetrack',1,1317662802,0),(455,1,3,'mod/scorm:savetrack',1,1317662802,0),(456,1,1,'mod/scorm:savetrack',1,1317662802,0),(457,1,5,'mod/scorm:viewscores',1,1317662802,0),(458,1,4,'mod/scorm:viewscores',1,1317662802,0),(459,1,3,'mod/scorm:viewscores',1,1317662802,0),(460,1,1,'mod/scorm:viewscores',1,1317662802,0),(461,1,4,'mod/scorm:deleteresponses',1,1317662802,0),(462,1,3,'mod/scorm:deleteresponses',1,1317662802,0),(463,1,1,'mod/scorm:deleteresponses',1,1317662802,0),(464,1,5,'mod/survey:participate',1,1317662805,0),(465,1,4,'mod/survey:participate',1,1317662805,0),(466,1,3,'mod/survey:participate',1,1317662805,0),(467,1,1,'mod/survey:participate',1,1317662805,0),(468,1,4,'mod/survey:readresponses',1,1317662805,0),(469,1,3,'mod/survey:readresponses',1,1317662805,0),(470,1,1,'mod/survey:readresponses',1,1317662805,0),(471,1,4,'mod/survey:download',1,1317662805,0),(472,1,3,'mod/survey:download',1,1317662805,0),(473,1,1,'mod/survey:download',1,1317662805,0),(474,1,5,'mod/wiki:participate',1,1317662807,0),(475,1,4,'mod/wiki:participate',1,1317662807,0),(476,1,3,'mod/wiki:participate',1,1317662807,0),(477,1,1,'mod/wiki:participate',1,1317662807,0),(478,1,4,'mod/wiki:manage',1,1317662807,0),(479,1,3,'mod/wiki:manage',1,1317662807,0),(480,1,1,'mod/wiki:manage',1,1317662807,0),(481,1,4,'mod/wiki:overridelock',1,1317662807,0),(482,1,3,'mod/wiki:overridelock',1,1317662807,0),(483,1,1,'mod/wiki:overridelock',1,1317662807,0),(484,1,5,'mod/workshop:participate',1,1317662810,0),(485,1,4,'mod/workshop:manage',1,1317662810,0),(486,1,3,'mod/workshop:manage',1,1317662810,0),(487,1,1,'mod/workshop:manage',1,1317662810,0),(488,1,7,'block/online_users:viewlist',1,1317663158,0),(489,1,6,'block/online_users:viewlist',1,1317663158,0),(490,1,5,'block/online_users:viewlist',1,1317663158,0),(491,1,4,'block/online_users:viewlist',1,1317663158,0),(492,1,3,'block/online_users:viewlist',1,1317663158,0),(493,1,1,'block/online_users:viewlist',1,1317663158,0),(494,1,4,'block/rss_client:createprivatefeeds',1,1317663159,0),(495,1,3,'block/rss_client:createprivatefeeds',1,1317663159,0),(496,1,1,'block/rss_client:createprivatefeeds',1,1317663159,0),(497,1,3,'block/rss_client:createsharedfeeds',1,1317663159,0),(498,1,1,'block/rss_client:createsharedfeeds',1,1317663159,0),(499,1,4,'block/rss_client:manageownfeeds',1,1317663159,0),(500,1,3,'block/rss_client:manageownfeeds',1,1317663159,0),(501,1,1,'block/rss_client:manageownfeeds',1,1317663159,0),(502,1,1,'block/rss_client:manageanyfeeds',1,1317663159,0),(503,1,1,'enrol/authorize:managepayments',1,1317663169,0),(504,1,1,'enrol/authorize:uploadcsv',1,1317663169,0),(505,1,4,'gradeexport/ods:view',1,1317663220,0),(506,1,3,'gradeexport/ods:view',1,1317663220,0),(507,1,1,'gradeexport/ods:view',1,1317663220,0),(508,1,1,'gradeexport/ods:publish',1,1317663220,0),(509,1,4,'gradeexport/txt:view',1,1317663220,0),(510,1,3,'gradeexport/txt:view',1,1317663220,0),(511,1,1,'gradeexport/txt:view',1,1317663220,0),(512,1,1,'gradeexport/txt:publish',1,1317663221,0),(513,1,4,'gradeexport/xls:view',1,1317663221,0),(514,1,3,'gradeexport/xls:view',1,1317663221,0),(515,1,1,'gradeexport/xls:view',1,1317663221,0),(516,1,1,'gradeexport/xls:publish',1,1317663221,0),(517,1,4,'gradeexport/xml:view',1,1317663221,0),(518,1,3,'gradeexport/xml:view',1,1317663221,0),(519,1,1,'gradeexport/xml:view',1,1317663221,0),(520,1,1,'gradeexport/xml:publish',1,1317663221,0),(521,1,3,'gradeimport/csv:view',1,1317663228,0),(522,1,1,'gradeimport/csv:view',1,1317663228,0),(523,1,3,'gradeimport/xml:view',1,1317663229,0),(524,1,1,'gradeimport/xml:view',1,1317663229,0),(525,1,1,'gradeimport/xml:publish',1,1317663229,0),(526,1,4,'gradereport/grader:view',1,1317663292,0),(527,1,3,'gradereport/grader:view',1,1317663292,0),(528,1,1,'gradereport/grader:view',1,1317663292,0),(529,1,4,'gradereport/outcomes:view',1,1317663293,0),(530,1,3,'gradereport/outcomes:view',1,1317663293,0),(531,1,1,'gradereport/outcomes:view',1,1317663293,0),(532,1,5,'gradereport/overview:view',1,1317663293,0),(533,1,1,'gradereport/overview:view',1,1317663293,0),(534,1,5,'gradereport/user:view',1,1317663294,0),(535,1,4,'gradereport/user:view',1,1317663294,0),(536,1,3,'gradereport/user:view',1,1317663294,0),(537,1,1,'gradereport/user:view',1,1317663294,0),(538,1,4,'coursereport/log:view',1,1317663301,0),(539,1,3,'coursereport/log:view',1,1317663301,0),(540,1,1,'coursereport/log:view',1,1317663301,0),(541,1,4,'coursereport/log:viewlive',1,1317663301,0),(542,1,3,'coursereport/log:viewlive',1,1317663301,0),(543,1,1,'coursereport/log:viewlive',1,1317663301,0),(544,1,4,'coursereport/log:viewtoday',1,1317663301,0),(545,1,3,'coursereport/log:viewtoday',1,1317663301,0),(546,1,1,'coursereport/log:viewtoday',1,1317663301,0),(547,1,4,'coursereport/outline:view',1,1317663302,0),(548,1,3,'coursereport/outline:view',1,1317663302,0),(549,1,1,'coursereport/outline:view',1,1317663302,0),(550,1,4,'coursereport/participation:view',1,1317663302,0),(551,1,3,'coursereport/participation:view',1,1317663302,0),(552,1,1,'coursereport/participation:view',1,1317663302,0),(553,1,4,'coursereport/stats:view',1,1317663302,0),(554,1,3,'coursereport/stats:view',1,1317663302,0),(555,1,1,'coursereport/stats:view',1,1317663302,0),(556,1,4,'report/courseoverview:view',1,1317663314,0),(557,1,3,'report/courseoverview:view',1,1317663314,0),(558,1,1,'report/courseoverview:view',1,1317663314,0),(559,1,1,'report/security:view',1,1317663315,0),(560,1,1,'report/unittest:view',1,1317663315,0);
/*!40000 ALTER TABLE `mdl_role_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_names`
--

DROP TABLE IF EXISTS `mdl_role_names`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_names` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `contextid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='role names in native strings';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_names`
--

LOCK TABLES `mdl_role_names` WRITE;
/*!40000 ALTER TABLE `mdl_role_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_sortorder`
--

DROP TABLE IF EXISTS `mdl_role_sortorder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_role_sortorder` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL,
  `roleid` bigint(10) unsigned NOT NULL,
  `contextid` bigint(10) unsigned NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='sort order of course managers in a course';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_role_sortorder`
--

LOCK TABLES `mdl_role_sortorder` WRITE;
/*!40000 ALTER TABLE `mdl_role_sortorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_sortorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale`
--

DROP TABLE IF EXISTS `mdl_scale`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scale` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `scale` text NOT NULL,
  `description` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_scal_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines grading scales';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scale`
--

LOCK TABLES `mdl_scale` WRITE;
/*!40000 ALTER TABLE `mdl_scale` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale_history`
--

DROP TABLE IF EXISTS `mdl_scale_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scale_history` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `action` bigint(10) unsigned NOT NULL default '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) default NULL,
  `timemodified` bigint(10) unsigned default NULL,
  `loggeduser` bigint(10) unsigned default NULL,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `scale` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_scalhist_act_ix` (`action`),
  KEY `mdl_scalhist_old_ix` (`oldid`),
  KEY `mdl_scalhist_cou_ix` (`courseid`),
  KEY `mdl_scalhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scale_history`
--

LOCK TABLES `mdl_scale_history` WRITE;
/*!40000 ALTER TABLE `mdl_scale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm`
--

DROP TABLE IF EXISTS `mdl_scorm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `reference` varchar(255) NOT NULL default '',
  `summary` text NOT NULL,
  `version` varchar(9) NOT NULL default '',
  `maxgrade` double NOT NULL default '0',
  `grademethod` tinyint(2) NOT NULL default '0',
  `whatgrade` bigint(10) NOT NULL default '0',
  `maxattempt` bigint(10) NOT NULL default '1',
  `updatefreq` tinyint(1) unsigned NOT NULL default '0',
  `md5hash` varchar(32) NOT NULL default '',
  `launch` bigint(10) unsigned NOT NULL default '0',
  `skipview` tinyint(1) unsigned NOT NULL default '1',
  `hidebrowse` tinyint(1) NOT NULL default '0',
  `hidetoc` tinyint(1) NOT NULL default '0',
  `hidenav` tinyint(1) NOT NULL default '0',
  `auto` tinyint(1) unsigned NOT NULL default '0',
  `popup` tinyint(1) unsigned NOT NULL default '0',
  `options` varchar(255) NOT NULL default '',
  `width` bigint(10) unsigned NOT NULL default '100',
  `height` bigint(10) unsigned NOT NULL default '600',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_scor_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each table is one SCORM module and its configuration';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm`
--

LOCK TABLES `mdl_scorm` WRITE;
/*!40000 ALTER TABLE `mdl_scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_scoes` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scorm` bigint(10) unsigned NOT NULL default '0',
  `manifest` varchar(255) NOT NULL default '',
  `organization` varchar(255) NOT NULL default '',
  `parent` varchar(255) NOT NULL default '',
  `identifier` varchar(255) NOT NULL default '',
  `launch` varchar(255) NOT NULL default '',
  `scormtype` varchar(5) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_scorscoe_sco_ix` (`scorm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each SCO part of the SCORM module';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_scoes`
--

LOCK TABLES `mdl_scorm_scoes` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_data`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_scoes_data` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_scorscoedata_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains variable data get from packages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_scoes_data`
--

LOCK TABLES `mdl_scorm_scoes_data` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_track`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_track`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_scoes_track` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `scormid` bigint(10) NOT NULL default '0',
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `attempt` bigint(10) unsigned NOT NULL default '1',
  `element` varchar(255) NOT NULL default '',
  `value` longtext NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorscoetrac_usescosco_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl_scorscoetrac_use_ix` (`userid`),
  KEY `mdl_scorscoetrac_ele_ix` (`element`),
  KEY `mdl_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to track SCOes';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_scoes_track`
--

LOCK TABLES `mdl_scorm_scoes_track` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_mapinfo`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_mapinfo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_mapinfo` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `objectiveid` bigint(10) unsigned NOT NULL default '0',
  `targetobjectiveid` bigint(10) unsigned NOT NULL default '0',
  `readsatisfiedstatus` tinyint(1) NOT NULL default '1',
  `readnormalizedmeasure` tinyint(1) NOT NULL default '1',
  `writesatisfiedstatus` tinyint(1) NOT NULL default '0',
  `writenormalizedmeasure` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective mapinfo description';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_mapinfo`
--

LOCK TABLES `mdl_scorm_seq_mapinfo` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_objective`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_objective`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_objective` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `primaryobj` tinyint(1) NOT NULL default '0',
  `objectiveid` bigint(10) unsigned NOT NULL default '0',
  `satisfiedbymeasure` tinyint(1) NOT NULL default '1',
  `minnormalizedmeasure` float(11,4) unsigned NOT NULL default '0.0000',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqobje_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective description';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_objective`
--

LOCK TABLES `mdl_scorm_seq_objective` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprule`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_rolluprule` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `childactivityset` varchar(15) NOT NULL default '',
  `minimumcount` bigint(10) unsigned NOT NULL default '0',
  `minimumpercent` float(11,4) unsigned NOT NULL default '0.0000',
  `conditioncombination` varchar(3) NOT NULL default 'all',
  `action` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqroll_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_rolluprule`
--

LOCK TABLES `mdl_scorm_seq_rolluprule` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprulecond`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_rolluprulecond` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `rollupruleid` bigint(10) unsigned NOT NULL default '0',
  `operator` varchar(5) NOT NULL default 'noOp',
  `cond` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_rolluprulecond`
--

LOCK TABLES `mdl_scorm_seq_rolluprulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rulecond`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_rulecond` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `ruleconditionsid` bigint(10) unsigned NOT NULL default '0',
  `refrencedobjective` varchar(255) NOT NULL default '',
  `measurethreshold` float(11,4) NOT NULL default '0.0000',
  `operator` varchar(5) NOT NULL default 'noOp',
  `cond` varchar(30) NOT NULL default 'always',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule condition';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_rulecond`
--

LOCK TABLES `mdl_scorm_seq_rulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_ruleconds`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_ruleconds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_scorm_seq_ruleconds` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `scoid` bigint(10) unsigned NOT NULL default '0',
  `conditioncombination` varchar(3) NOT NULL default 'all',
  `ruletype` tinyint(2) unsigned NOT NULL default '0',
  `action` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqrule_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule conditions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_scorm_seq_ruleconds`
--

LOCK TABLES `mdl_scorm_seq_ruleconds` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_sessions2`
--

DROP TABLE IF EXISTS `mdl_sessions2`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_sessions2` (
  `sesskey` varchar(64) NOT NULL default '',
  `expiry` datetime NOT NULL,
  `expireref` varchar(250) default '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `sessdata` longtext,
  PRIMARY KEY  (`sesskey`),
  KEY `mdl_sess_exp_ix` (`expiry`),
  KEY `mdl_sess_exp2_ix` (`expireref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Optional database session storage in new format, not used by';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_sessions2`
--

LOCK TABLES `mdl_sessions2` WRITE;
/*!40000 ALTER TABLE `mdl_sessions2` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_sessions2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_daily`
--

DROP TABLE IF EXISTS `mdl_stats_daily`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_daily` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL default 'activity',
  `stat1` bigint(10) unsigned NOT NULL default '0',
  `stat2` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_statdail_cou_ix` (`courseid`),
  KEY `mdl_statdail_tim_ix` (`timeend`),
  KEY `mdl_statdail_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to accumulate daily stats';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_daily`
--

LOCK TABLES `mdl_stats_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_monthly`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_monthly` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL default 'activity',
  `stat1` bigint(10) unsigned NOT NULL default '0',
  `stat2` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_statmont_cou_ix` (`courseid`),
  KEY `mdl_statmont_tim_ix` (`timeend`),
  KEY `mdl_statmont_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_monthly`
--

LOCK TABLES `mdl_stats_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_daily`
--

DROP TABLE IF EXISTS `mdl_stats_user_daily`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_user_daily` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `statsreads` bigint(10) unsigned NOT NULL default '0',
  `statswrites` bigint(10) unsigned NOT NULL default '0',
  `stattype` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_statuserdail_cou_ix` (`courseid`),
  KEY `mdl_statuserdail_use_ix` (`userid`),
  KEY `mdl_statuserdail_rol_ix` (`roleid`),
  KEY `mdl_statuserdail_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate daily stats per course/user';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_user_daily`
--

LOCK TABLES `mdl_stats_user_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_user_monthly`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_user_monthly` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `statsreads` bigint(10) unsigned NOT NULL default '0',
  `statswrites` bigint(10) unsigned NOT NULL default '0',
  `stattype` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_statusermont_cou_ix` (`courseid`),
  KEY `mdl_statusermont_use_ix` (`userid`),
  KEY `mdl_statusermont_rol_ix` (`roleid`),
  KEY `mdl_statusermont_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats per course/user';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_user_monthly`
--

LOCK TABLES `mdl_stats_user_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_user_weekly`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_user_weekly` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `statsreads` bigint(10) unsigned NOT NULL default '0',
  `statswrites` bigint(10) unsigned NOT NULL default '0',
  `stattype` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_statuserweek_cou_ix` (`courseid`),
  KEY `mdl_statuserweek_use_ix` (`userid`),
  KEY `mdl_statuserweek_rol_ix` (`roleid`),
  KEY `mdl_statuserweek_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats per course/user';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_user_weekly`
--

LOCK TABLES `mdl_stats_user_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_weekly`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_stats_weekly` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `timeend` bigint(10) unsigned NOT NULL default '0',
  `roleid` bigint(10) unsigned NOT NULL default '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL default 'activity',
  `stat1` bigint(10) unsigned NOT NULL default '0',
  `stat2` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_statweek_cou_ix` (`courseid`),
  KEY `mdl_statweek_tim_ix` (`timeend`),
  KEY `mdl_statweek_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_stats_weekly`
--

LOCK TABLES `mdl_stats_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey`
--

DROP TABLE IF EXISTS `mdl_survey`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_survey` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `template` bigint(10) unsigned NOT NULL default '0',
  `days` mediumint(6) NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `intro` text NOT NULL,
  `questions` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_surv_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Each record is one SURVEY module with its configuration';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_survey`
--

LOCK TABLES `mdl_survey` WRITE;
/*!40000 ALTER TABLE `mdl_survey` DISABLE KEYS */;
INSERT INTO `mdl_survey` VALUES (1,0,0,0,985017600,985017600,'collesaname','collesaintro','25,26,27,28,29,30,43,44'),(2,0,0,0,985017600,985017600,'collespname','collespintro','31,32,33,34,35,36,43,44'),(3,0,0,0,985017600,985017600,'collesapname','collesapintro','37,38,39,40,41,42,43,44'),(4,0,0,0,985017600,985017600,'attlsname','attlsintro','65,67,68'),(5,0,0,0,985017600,985017600,'ciqname','ciqintro','69,70,71,72,73');
/*!40000 ALTER TABLE `mdl_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_analysis`
--

DROP TABLE IF EXISTS `mdl_survey_analysis`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_survey_analysis` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `survey` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `notes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_survanal_use_ix` (`userid`),
  KEY `mdl_survanal_sur_ix` (`survey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='text about each survey submission';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_survey_analysis`
--

LOCK TABLES `mdl_survey_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_survey_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_answers`
--

DROP TABLE IF EXISTS `mdl_survey_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_survey_answers` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `survey` bigint(10) unsigned NOT NULL default '0',
  `question` bigint(10) unsigned NOT NULL default '0',
  `time` bigint(10) unsigned NOT NULL default '0',
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_survansw_use_ix` (`userid`),
  KEY `mdl_survansw_sur_ix` (`survey`),
  KEY `mdl_survansw_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='the answers to each questions filled by the users';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_survey_answers`
--

LOCK TABLES `mdl_survey_answers` WRITE;
/*!40000 ALTER TABLE `mdl_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_questions`
--

DROP TABLE IF EXISTS `mdl_survey_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_survey_questions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `text` varchar(255) NOT NULL default '',
  `shorttext` varchar(30) NOT NULL default '',
  `multi` varchar(100) NOT NULL default '',
  `intro` varchar(50) NOT NULL default '',
  `type` smallint(3) NOT NULL default '0',
  `options` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='the questions conforming one survey';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_survey_questions`
--

LOCK TABLES `mdl_survey_questions` WRITE;
/*!40000 ALTER TABLE `mdl_survey_questions` DISABLE KEYS */;
INSERT INTO `mdl_survey_questions` VALUES (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);
/*!40000 ALTER TABLE `mdl_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag`
--

DROP TABLE IF EXISTS `mdl_tag`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_tag` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL default '',
  `rawname` varchar(255) NOT NULL default '',
  `tagtype` varchar(255) default NULL,
  `description` text,
  `descriptionformat` tinyint(2) unsigned NOT NULL default '0',
  `flag` smallint(4) unsigned default '0',
  `timemodified` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_tag_nam_uix` (`name`),
  KEY `mdl_tag_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag table - this generic table will replace the old "tags" t';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_tag`
--

LOCK TABLES `mdl_tag` WRITE;
/*!40000 ALTER TABLE `mdl_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_correlation`
--

DROP TABLE IF EXISTS `mdl_tag_correlation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_tag_correlation` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `tagid` bigint(10) unsigned NOT NULL,
  `correlatedtags` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_tagcorr_tag_ix` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The rationale for the ''tag_correlation'' table is performance';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_tag_correlation`
--

LOCK TABLES `mdl_tag_correlation` WRITE;
/*!40000 ALTER TABLE `mdl_tag_correlation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_instance`
--

DROP TABLE IF EXISTS `mdl_tag_instance`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_tag_instance` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `tagid` bigint(10) unsigned NOT NULL,
  `itemtype` varchar(255) NOT NULL default '',
  `itemid` bigint(10) unsigned NOT NULL,
  `ordering` bigint(10) unsigned default NULL,
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_taginst_iteitetag_uix` (`itemtype`,`itemid`,`tagid`),
  KEY `mdl_taginst_tag_ix` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tag_instance table holds the information of associations bet';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_tag_instance`
--

LOCK TABLES `mdl_tag_instance` WRITE;
/*!40000 ALTER TABLE `mdl_tag_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_timezone`
--

DROP TABLE IF EXISTS `mdl_timezone`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_timezone` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `year` bigint(11) NOT NULL default '0',
  `tzrule` varchar(20) NOT NULL default '',
  `gmtoff` bigint(11) NOT NULL default '0',
  `dstoff` bigint(11) NOT NULL default '0',
  `dst_month` tinyint(2) NOT NULL default '0',
  `dst_startday` smallint(3) NOT NULL default '0',
  `dst_weekday` smallint(3) NOT NULL default '0',
  `dst_skipweeks` smallint(3) NOT NULL default '0',
  `dst_time` varchar(6) NOT NULL default '00:00',
  `std_month` tinyint(2) NOT NULL default '0',
  `std_startday` smallint(3) NOT NULL default '0',
  `std_weekday` smallint(3) NOT NULL default '0',
  `std_skipweeks` smallint(3) NOT NULL default '0',
  `std_time` varchar(6) NOT NULL default '00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Rules for calculating local wall clock time for users';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_timezone`
--

LOCK TABLES `mdl_timezone` WRITE;
/*!40000 ALTER TABLE `mdl_timezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user`
--

DROP TABLE IF EXISTS `mdl_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `auth` varchar(20) NOT NULL default 'manual',
  `confirmed` tinyint(1) NOT NULL default '0',
  `policyagreed` tinyint(1) NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  `mnethostid` bigint(10) unsigned NOT NULL default '0',
  `username` varchar(100) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `idnumber` varchar(255) NOT NULL default '',
  `firstname` varchar(100) NOT NULL default '',
  `lastname` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `emailstop` tinyint(1) unsigned NOT NULL default '0',
  `icq` varchar(15) NOT NULL default '',
  `skype` varchar(50) NOT NULL default '',
  `yahoo` varchar(50) NOT NULL default '',
  `aim` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `phone1` varchar(20) NOT NULL default '',
  `phone2` varchar(20) NOT NULL default '',
  `institution` varchar(40) NOT NULL default '',
  `department` varchar(30) NOT NULL default '',
  `address` varchar(70) NOT NULL default '',
  `city` varchar(20) NOT NULL default '',
  `country` varchar(2) NOT NULL default '',
  `lang` varchar(30) NOT NULL default 'en_utf8',
  `theme` varchar(50) NOT NULL default '',
  `timezone` varchar(100) NOT NULL default '99',
  `firstaccess` bigint(10) unsigned NOT NULL default '0',
  `lastaccess` bigint(10) unsigned NOT NULL default '0',
  `lastlogin` bigint(10) unsigned NOT NULL default '0',
  `currentlogin` bigint(10) unsigned NOT NULL default '0',
  `lastip` varchar(15) NOT NULL default '',
  `secret` varchar(15) NOT NULL default '',
  `picture` tinyint(1) NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `description` text,
  `mailformat` tinyint(1) unsigned NOT NULL default '1',
  `maildigest` tinyint(1) unsigned NOT NULL default '0',
  `maildisplay` tinyint(2) unsigned NOT NULL default '2',
  `htmleditor` tinyint(1) unsigned NOT NULL default '1',
  `ajax` tinyint(1) unsigned NOT NULL default '1',
  `autosubscribe` tinyint(1) unsigned NOT NULL default '1',
  `trackforums` tinyint(1) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `trustbitmask` bigint(10) unsigned NOT NULL default '0',
  `imagealt` varchar(255) default NULL,
  `screenreader` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='One record for each person';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user`
--

LOCK TABLES `mdl_user` WRITE;
/*!40000 ALTER TABLE `mdl_user` DISABLE KEYS */;
INSERT INTO `mdl_user` VALUES (1,'manual',1,0,0,1,'guest','7b1a9816cec8c20427ef26e129b37d87','','Guest User',' ','root@localhost',0,'','','','','','','','','','','','','en_utf8','','99',0,0,0,0,'','',0,'','This user is a special user that allows read-only access to some courses.',1,0,2,1,1,1,0,1317663392,0,NULL,0),(2,'manual',1,0,0,1,'administrador','d0d546a0d3e17987c4e3903e31aa40b3','','Admin','User','root@localhost.tld',1,'','','','','','','','','','','Argentina','AR','es_ar_utf8','','99',0,1317666027,0,0,'192.168.1.109','',0,'','',1,0,1,1,1,1,0,1317663482,0,'',0);
/*!40000 ALTER TABLE `mdl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_category`
--

DROP TABLE IF EXISTS `mdl_user_info_category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_info_category` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customisable fields categories';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_info_category`
--

LOCK TABLES `mdl_user_info_category` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_data`
--

DROP TABLE IF EXISTS `mdl_user_info_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `fieldid` bigint(10) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_userinfodata_usefie_ix` (`userid`,`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Data for the customisable user fields';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_info_data`
--

LOCK TABLES `mdl_user_info_data` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_field`
--

DROP TABLE IF EXISTS `mdl_user_info_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_info_field` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `shortname` varchar(255) NOT NULL default 'shortname',
  `name` longtext NOT NULL,
  `datatype` varchar(255) NOT NULL default '',
  `description` longtext,
  `categoryid` bigint(10) unsigned NOT NULL default '0',
  `sortorder` bigint(10) unsigned NOT NULL default '0',
  `required` tinyint(2) unsigned NOT NULL default '0',
  `locked` tinyint(2) unsigned NOT NULL default '0',
  `visible` smallint(4) unsigned NOT NULL default '0',
  `forceunique` tinyint(2) unsigned NOT NULL default '0',
  `signup` tinyint(2) unsigned NOT NULL default '0',
  `defaultdata` longtext,
  `param1` longtext,
  `param2` longtext,
  `param3` longtext,
  `param4` longtext,
  `param5` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customisable user profile fields';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_info_field`
--

LOCK TABLES `mdl_user_info_field` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_lastaccess`
--

DROP TABLE IF EXISTS `mdl_user_lastaccess`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_lastaccess` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `courseid` bigint(10) unsigned NOT NULL default '0',
  `timeaccess` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To keep track of course page access times, used in online pa';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_lastaccess`
--

LOCK TABLES `mdl_user_lastaccess` WRITE;
/*!40000 ALTER TABLE `mdl_user_lastaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_lastaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_preferences`
--

DROP TABLE IF EXISTS `mdl_user_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_preferences` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `userid` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Allows modules to store arbitrary user preferences';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_preferences`
--

LOCK TABLES `mdl_user_preferences` WRITE;
/*!40000 ALTER TABLE `mdl_user_preferences` DISABLE KEYS */;
INSERT INTO `mdl_user_preferences` VALUES (1,2,'auth_forcepasswordchange','0'),(2,2,'email_bounce_count','1'),(3,2,'email_send_count','1');
/*!40000 ALTER TABLE `mdl_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_private_key`
--

DROP TABLE IF EXISTS `mdl_user_private_key`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_user_private_key` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `script` varchar(128) NOT NULL default '',
  `value` varchar(128) NOT NULL default '',
  `userid` bigint(10) unsigned NOT NULL,
  `instance` bigint(10) unsigned default NULL,
  `iprestriction` varchar(255) default NULL,
  `validuntil` bigint(10) unsigned default NULL,
  `timecreated` bigint(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl_userprivkey_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='access keys used in cookieless scripts - rss, etc.';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_user_private_key`
--

LOCK TABLES `mdl_user_private_key` WRITE;
/*!40000 ALTER TABLE `mdl_user_private_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_private_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_webdav_locks`
--

DROP TABLE IF EXISTS `mdl_webdav_locks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_webdav_locks` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `token` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `expiry` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `recursive` tinyint(1) unsigned NOT NULL default '0',
  `exclusivelock` tinyint(1) unsigned NOT NULL default '0',
  `created` bigint(10) unsigned NOT NULL default '0',
  `modified` bigint(10) unsigned NOT NULL default '0',
  `owner` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_webdlock_tok_uix` (`token`),
  KEY `mdl_webdlock_pat_ix` (`path`),
  KEY `mdl_webdlock_exp_ix` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Resource locks for WebDAV users';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_webdav_locks`
--

LOCK TABLES `mdl_webdav_locks` WRITE;
/*!40000 ALTER TABLE `mdl_webdav_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_webdav_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki`
--

DROP TABLE IF EXISTS `mdl_wiki`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_wiki` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `summary` text NOT NULL,
  `pagename` varchar(255) NOT NULL default '',
  `wtype` enum('teacher','group','student') NOT NULL default 'group',
  `ewikiprinttitle` smallint(4) unsigned NOT NULL default '1',
  `htmlmode` smallint(4) unsigned NOT NULL default '0',
  `ewikiacceptbinary` smallint(4) unsigned NOT NULL default '0',
  `disablecamelcase` smallint(4) unsigned NOT NULL default '0',
  `setpageflags` smallint(4) unsigned NOT NULL default '1',
  `strippages` smallint(4) unsigned NOT NULL default '1',
  `removepages` smallint(4) unsigned NOT NULL default '1',
  `revertchanges` smallint(4) unsigned NOT NULL default '1',
  `initialcontent` varchar(255) NOT NULL default '',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_wiki_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Main wik table';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_wiki`
--

LOCK TABLES `mdl_wiki` WRITE;
/*!40000 ALTER TABLE `mdl_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_entries`
--

DROP TABLE IF EXISTS `mdl_wiki_entries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_wiki_entries` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `wikiid` bigint(10) unsigned NOT NULL default '0',
  `course` bigint(10) unsigned NOT NULL default '0',
  `groupid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `pagename` varchar(255) NOT NULL default '',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_wikientr_cou_ix` (`course`),
  KEY `mdl_wikientr_gro_ix` (`groupid`),
  KEY `mdl_wikientr_use_ix` (`userid`),
  KEY `mdl_wikientr_pag_ix` (`pagename`),
  KEY `mdl_wikientr_wik_ix` (`wikiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds entries for each wiki start instance';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_wiki_entries`
--

LOCK TABLES `mdl_wiki_entries` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_locks`
--

DROP TABLE IF EXISTS `mdl_wiki_locks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_wiki_locks` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `wikiid` bigint(10) unsigned NOT NULL,
  `pagename` varchar(160) NOT NULL default '',
  `lockedby` bigint(10) unsigned NOT NULL default '0',
  `lockedsince` bigint(10) unsigned NOT NULL default '0',
  `lockedseen` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_wikilock_wikpag_uix` (`wikiid`,`pagename`),
  KEY `mdl_wikilock_loc_ix` (`lockedseen`),
  KEY `mdl_wikilock_wik_ix` (`wikiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores editing locks on Wiki pages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_wiki_locks`
--

LOCK TABLES `mdl_wiki_locks` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_pages`
--

DROP TABLE IF EXISTS `mdl_wiki_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_wiki_pages` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `pagename` varchar(160) NOT NULL default '',
  `version` bigint(10) unsigned NOT NULL default '0',
  `flags` bigint(10) unsigned default '0',
  `content` mediumtext,
  `author` varchar(100) default 'ewiki',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `created` bigint(10) unsigned default '0',
  `lastmodified` bigint(10) unsigned default '0',
  `refs` mediumtext,
  `meta` mediumtext,
  `hits` bigint(10) unsigned default '0',
  `wiki` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mdl_wikipage_pagverwik_uix` (`pagename`,`version`,`wiki`),
  KEY `mdl_wikipage_wik_ix` (`wiki`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the Wiki-Pages';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_wiki_pages`
--

LOCK TABLES `mdl_wiki_pages` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop`
--

DROP TABLE IF EXISTS `mdl_workshop`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `course` bigint(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `wtype` smallint(3) unsigned NOT NULL default '0',
  `nelements` smallint(3) unsigned NOT NULL default '1',
  `nattachments` smallint(3) unsigned NOT NULL default '0',
  `phase` tinyint(2) unsigned NOT NULL default '0',
  `format` tinyint(2) unsigned NOT NULL default '0',
  `gradingstrategy` tinyint(2) unsigned NOT NULL default '1',
  `resubmit` tinyint(2) unsigned NOT NULL default '0',
  `agreeassessments` tinyint(2) unsigned NOT NULL default '0',
  `hidegrades` tinyint(2) unsigned NOT NULL default '0',
  `anonymous` tinyint(2) unsigned NOT NULL default '0',
  `includeself` tinyint(2) unsigned NOT NULL default '0',
  `maxbytes` bigint(10) unsigned NOT NULL default '100000',
  `submissionstart` bigint(10) unsigned NOT NULL default '0',
  `assessmentstart` bigint(10) unsigned NOT NULL default '0',
  `submissionend` bigint(10) unsigned NOT NULL default '0',
  `assessmentend` bigint(10) unsigned NOT NULL default '0',
  `releasegrades` bigint(10) unsigned NOT NULL default '0',
  `grade` smallint(3) NOT NULL default '0',
  `gradinggrade` smallint(3) NOT NULL default '0',
  `ntassessments` smallint(3) unsigned NOT NULL default '0',
  `assessmentcomps` smallint(3) unsigned NOT NULL default '2',
  `nsassessments` smallint(3) unsigned NOT NULL default '0',
  `overallocation` smallint(3) unsigned NOT NULL default '0',
  `timemodified` bigint(10) unsigned NOT NULL default '0',
  `teacherweight` smallint(3) unsigned NOT NULL default '1',
  `showleaguetable` smallint(3) unsigned NOT NULL default '0',
  `usepassword` smallint(3) unsigned NOT NULL default '0',
  `password` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mdl_work_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines workshop';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop`
--

LOCK TABLES `mdl_workshop` WRITE;
/*!40000 ALTER TABLE `mdl_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_assessments`
--

DROP TABLE IF EXISTS `mdl_workshop_assessments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_assessments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `submissionid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `timegraded` bigint(10) unsigned NOT NULL default '0',
  `timeagreed` bigint(10) unsigned NOT NULL default '0',
  `grade` double NOT NULL default '0',
  `gradinggrade` smallint(3) NOT NULL default '0',
  `teachergraded` smallint(3) unsigned NOT NULL default '0',
  `mailed` smallint(3) unsigned NOT NULL default '0',
  `resubmission` smallint(3) unsigned NOT NULL default '0',
  `donotuse` smallint(3) unsigned NOT NULL default '0',
  `generalcomment` text,
  `teachercomment` text,
  PRIMARY KEY  (`id`),
  KEY `mdl_workasse_use_ix` (`userid`),
  KEY `mdl_workasse_mai_ix` (`mailed`),
  KEY `mdl_workasse_wor_ix` (`workshopid`),
  KEY `mdl_workasse_sub_ix` (`submissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about assessments by teacher and students';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_assessments`
--

LOCK TABLES `mdl_workshop_assessments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_comments`
--

DROP TABLE IF EXISTS `mdl_workshop_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_comments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `assessmentid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `mailed` tinyint(2) unsigned NOT NULL default '0',
  `comments` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_workcomm_use_ix` (`userid`),
  KEY `mdl_workcomm_mai_ix` (`mailed`),
  KEY `mdl_workcomm_wor_ix` (`workshopid`),
  KEY `mdl_workcomm_ass_ix` (`assessmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines comments';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_comments`
--

LOCK TABLES `mdl_workshop_comments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_elements`
--

DROP TABLE IF EXISTS `mdl_workshop_elements`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_elements` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `elementno` smallint(3) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `scale` smallint(3) unsigned NOT NULL default '0',
  `maxscore` smallint(3) unsigned NOT NULL default '1',
  `weight` smallint(3) unsigned NOT NULL default '11',
  `stddev` double NOT NULL default '0',
  `totalassessments` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_workelem_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about marking scheme of assignment';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_elements`
--

LOCK TABLES `mdl_workshop_elements` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_grades`
--

DROP TABLE IF EXISTS `mdl_workshop_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_grades` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `assessmentid` bigint(10) unsigned NOT NULL default '0',
  `elementno` bigint(10) unsigned NOT NULL default '0',
  `feedback` text NOT NULL,
  `grade` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_workgrad_wor_ix` (`workshopid`),
  KEY `mdl_workgrad_ass_ix` (`assessmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about individual grades given to each element';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_grades`
--

LOCK TABLES `mdl_workshop_grades` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_rubrics`
--

DROP TABLE IF EXISTS `mdl_workshop_rubrics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_rubrics` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `elementno` bigint(10) unsigned NOT NULL default '0',
  `rubricno` smallint(3) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_workrubr_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about the rubrics marking scheme';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_rubrics`
--

LOCK TABLES `mdl_workshop_rubrics` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_rubrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_stockcomments`
--

DROP TABLE IF EXISTS `mdl_workshop_stockcomments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_stockcomments` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `elementno` bigint(10) unsigned NOT NULL default '0',
  `comments` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `mdl_workstoc_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about the teacher comment bank';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_stockcomments`
--

LOCK TABLES `mdl_workshop_stockcomments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_stockcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_stockcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_submissions`
--

DROP TABLE IF EXISTS `mdl_workshop_submissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `mdl_workshop_submissions` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `workshopid` bigint(10) unsigned NOT NULL default '0',
  `userid` bigint(10) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `timecreated` bigint(10) unsigned NOT NULL default '0',
  `mailed` tinyint(2) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `gradinggrade` smallint(3) unsigned NOT NULL default '0',
  `finalgrade` smallint(3) unsigned NOT NULL default '0',
  `late` smallint(3) unsigned NOT NULL default '0',
  `nassessments` bigint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mdl_worksubm_use_ix` (`userid`),
  KEY `mdl_worksubm_mai_ix` (`mailed`),
  KEY `mdl_worksubm_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about submitted work from teacher and students';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `mdl_workshop_submissions`
--

LOCK TABLES `mdl_workshop_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_submissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-05 17:45:49
