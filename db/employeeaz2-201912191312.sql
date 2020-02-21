CREATE DATABASE  IF NOT EXISTS `employeeaz2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employeeaz2`;
-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: 68.183.66.167    Database: employeeaz2
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_country_id_idx` (`country_id`),
  KEY `fk_address_city_id_idx` (`city_id`),
  CONSTRAINT `fk_address_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_address_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,12,4,'Spain Rayonu',1,'2019-10-25 16:39:19',NULL),(2,2,2,'Nizami',1,'2019-11-20 06:26:21',NULL),(3,2,2,'',1,'2019-11-20 06:26:32',NULL),(4,2,2,'Sumqayit',1,'2019-11-20 06:32:08',NULL),(5,2,2,'',1,'2019-11-20 06:33:08',NULL),(6,2,2,'',1,'2019-11-20 06:34:32',NULL),(7,2,2,'',1,'2019-11-20 06:36:30',NULL),(8,2,1,'Qarayev',1,'2019-11-30 17:05:11',NULL),(9,6,3,'Tiblisi qesebesi 021',1,'2019-11-30 17:28:01',NULL),(10,8,4,'Shamkir qesebesi 19',1,'2019-12-01 12:49:07',NULL),(11,1,1,'ooo',1,'2019-12-14 12:54:20',NULL),(12,1,1,'gg',1,'2019-12-14 22:22:41',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `profile_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `degree_id` int(11) DEFAULT NULL COMMENT '?',
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `salary_min` decimal(10,0) DEFAULT NULL,
  `salary_max` decimal(10,0) DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gitlab` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_candidate_user_id_idx` (`user_id`),
  KEY `fk_candidate_address_id_idx` (`address_id`),
  KEY `fk_candidate_degree_id_idx` (`degree_id`),
  CONSTRAINT `fk_candidate_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_candidate_degree_id` FOREIGN KEY (`degree_id`) REFERENCES `education_level` (`id`),
  CONSTRAINT `fk_candidate_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,1,'1986-03-31','test.png',NULL,1,1,1,'2019-10-25 16:42:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(3,4,'2019-11-22','','',2,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(4,5,'2019-11-22','','',1,3,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(5,7,'2019-11-22','','',4,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(6,8,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(7,9,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(8,10,'2019-11-22','','',2,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(9,11,'2019-11-22','','',1,4,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(10,12,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(11,13,'2019-11-22','','',2,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(12,14,'2019-11-22','','',1,2,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(13,15,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(14,16,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(15,18,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(16,19,'2019-11-22','','',1,2,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(17,22,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(18,24,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(19,26,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(20,27,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(21,32,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(22,37,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(23,48,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(24,52,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(25,54,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(26,55,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(27,56,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(28,60,'2019-11-22','','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(29,61,'2019-11-22','29\\20191212032554.jpg','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(30,62,'2019-11-22','30\\20191212203012.jpg','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(31,63,'2019-11-22','31/20191211200915.png','',1,5,1,'2019-11-22 15:47:26',NULL,1000,2000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(33,66,'1994-02-15','33/20191211200748.png',NULL,1,5,1,'2019-11-24 08:28:50',NULL,2000,5000,'Developer',NULL,NULL,NULL,NULL,NULL,NULL),(34,103,'1990-11-06',NULL,NULL,1,5,1,'2019-11-24 08:28:50',NULL,100,500,'Developer',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_job`
--

DROP TABLE IF EXISTS `candidate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'status: 0 - deleted, 1 - pending, 2 - accepted, 3 - rejected',
  PRIMARY KEY (`id`),
  KEY `fk_candidate_job_1_idx` (`candidate_id`),
  KEY `fk_candidate_job_2_idx` (`job_id`),
  CONSTRAINT `fk_candidate_job_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  CONSTRAINT `fk_candidate_job_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_job`
--

LOCK TABLES `candidate_job` WRITE;
/*!40000 ALTER TABLE `candidate_job` DISABLE KEYS */;
INSERT INTO `candidate_job` VALUES (1,1,5,'2019-11-20',1);
/*!40000 ALTER TABLE `candidate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_date` date NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `candidate_id` int(11) NOT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_certificate_candidate_id_idx` (`candidate_id`),
  CONSTRAINT `fk_certificate_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (1,'2019-10-25','Komputer','AVEY','file',1,31,'2019-10-25 16:35:07',NULL);
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_city_country_id_idx` (`country_id`),
  CONSTRAINT `fk_city_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,1,'Toronto','2019-10-25 16:37:37',NULL,1),(2,2,'Baku','2019-11-20 06:26:16',NULL,1),(3,2,'Gancha','2019-11-30 14:58:06',NULL,1),(4,2,'Shamkir','2019-11-30 14:58:06',NULL,1),(5,2,'Fuzuli','2019-11-30 14:58:06',NULL,1),(6,2,'Shaki','2019-11-30 14:58:06',NULL,1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'this is organization name,can''t be null',
  `industry_id` int(11) NOT NULL COMMENT 'org\\\\\\\\nanization''s business type ,can''t be null',
  `head_office` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'this is organization''s head office address,can''t be null',
  `create_date` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'organization create date,can''t be null',
  `num_of_employee` int(11) DEFAULT NULL COMMENT 'the number of employees ,can \\\\\\\\nbe null',
  `annual_revenue` decimal(10,0) DEFAULT NULL COMMENT 'organization''s annual r\nevenue ,can be null',
  `is_global` int(11) NOT NULL DEFAULT '0' COMMENT '0-global , 1-local',
  `rating` int(11) DEFAULT NULL COMMENT 'organization''s rating ,can''t be null',
  `about` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'about the organization ,can''t be null',
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='thi\ns is Organization table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Azercell Telekom MMC',1,'Tbilisi, 149, Baki','1996',1200,10000000,0,9,'Olkenin aparici mobil operatoru',1,'2019-10-25 15:50:58',NULL,'012121212','0515555555','azercell.com','azercell@azercell.com','20191215153510.png'),(2,'Connect MMC',1,'Yasamal rayonu, Sherifzade 158','2000',700,200000,0,1,'Internet Provider',1,'2019-11-20 06:36:34',NULL,'0233212','034213221','ooool.com','connect@gmail.com','20191215153915.JPG'),(3,'Focus Optika MMC',2,'Bakı şəhəri, Xətai rayonu, Qaçaq Nəbi 3A (“Sərhədçi” İdman Olimpiya Mərkəzinin arxası)','2015',600,150000,0,5,'Olkenin aparici optika sirketi',1,'2019-11-20 06:47:08',NULL,'05555555','08188881','gbox.az','m@box.az','20191215153938.PNG'),(4,'HajMa Group of Companies Design',4,'Azadliq prospekti, 149','2002',333,444444,0,6,'Olkenin aparici media sirketi',1,'2019-11-20 06:53:55',NULL,'0222222','05555555','sfsf.com','cbb@box.az','20191215154021.jpg'),(5,'KamNicMMC',1,'Hezi Aslanov','1998',120,100000,0,9,'Oyun Istehsalcisi',1,'2019-11-20 06:59:47',NULL,'225345','363636','hfhf.az','cf@box.az',NULL),(6,'\"Azərbaycan Sənaye Korporasiyası\" ASC',5,'Cəfər Cabbarlı küçəsi,','2005',555,555555,0,10,'Dovlet muessisesi',1,'2019-11-20 07:12:20',NULL,'36363','22525','wteyety.az','sgsg@box.az',NULL),(7,'worker',1,'Azercell','2222',222,2222220,0,9,'Azercell',1,'2019-11-25 11:55:57',NULL,'363636','252525','wrrrr.az','worker@azercell.com',NULL),(8,'Nail',1,'memmedov','2002',444,220000,0,8,'memmedov',1,'2019-11-25 11:58:27',NULL,'2525','235235','dhdh.az','nailmemmed@gmail.com',NULL),(9,'Super',1,'Nnn','2004',111,222222,0,1,'Nnn',1,'2019-11-25 11:58:27',NULL,'2523','235235','sfsf.az','ggdgdf@box.az',NULL),(10,'Wayne',2,'Baki','2001',1111,22222,0,3,'Alaqaqa',1,'2019-11-25 11:58:27',NULL,'23424','25235','fs.az','dgd@mail.ru',NULL),(11,'LCHolding',3,'Hong-Kong','1990',122,2222,0,4,'HH',1,'2019-11-25 11:58:27',NULL,'fsfs','234','2434.com','rwwer@g.sp',NULL),(12,'GMFM',4,'HJH','444',444,444,0,4,'dgd',1,'2019-11-25 11:58:27',NULL,'dgdg','2424','2434.com','rwwer@g.sp',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_user`
--

DROP TABLE IF EXISTS `company_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_user`
--

LOCK TABLES `company_user` WRITE;
/*!40000 ALTER TABLE `company_user` DISABLE KEYS */;
INSERT INTO `company_user` VALUES (1,2,1,'2019-11-20 06:42:49',NULL,1),(2,3,5,'2019-11-20 08:25:26',NULL,1),(3,1,70,'2019-11-25 14:12:45',NULL,1),(4,6,3,'2019-11-25 14:12:45',NULL,1),(6,5,103,'2019-12-14 07:43:45',NULL,1);
/*!40000 ALTER TABLE `company_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_owner_id` int(11) NOT NULL,
  `contact_type_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_contact_contact_type_id_idx` (`contact_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,1,1,'press@azercell.com','https://www.azercell.com','2019-10-25 15:51:54',NULL,1),(2,1,2,'sf.safarova@connect.az','http://www.connect.az','2019-11-20 06:30:53',NULL,1),(3,3,2,'ali@gmail.com','http://www.employee.az','2019-11-20 06:34:44',NULL,1),(4,4,1,'hajma@gmail.com','http://www.hajma.az','2019-11-20 06:55:06',NULL,1);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Canada',1,'2019-10-25 16:37:19',NULL),(2,'Azerbaijan',1,'2019-11-20 06:25:44',NULL),(3,'Russia',1,'2019-11-30 10:09:14',NULL),(4,'Turkey',1,'2019-11-30 10:09:14',NULL),(5,'England',1,'2019-11-30 10:09:14',NULL),(6,'Georgia',1,'2019-11-30 10:09:15',NULL),(7,'France',1,'2019-11-30 10:09:15',NULL),(8,'Gemany',1,'2019-11-30 10:09:15',NULL),(9,'Niderland',1,'2019-11-30 10:09:15',NULL),(10,'Swedan',1,'2019-11-30 10:09:16',NULL),(11,'Italia',1,'2019-11-30 10:09:16',NULL),(12,'Spain',1,'2019-11-30 10:09:16',NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_level_relation`
--

DROP TABLE IF EXISTS `edu_level_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `edu_level_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edu_level_id` int(11) NOT NULL,
  `edu_org_name_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edu_level_id_idx` (`edu_level_id`),
  KEY `edu_org_name_id_idx` (`edu_org_name_id`),
  CONSTRAINT `edu_level_id` FOREIGN KEY (`edu_level_id`) REFERENCES `education_level` (`id`),
  CONSTRAINT `edu_org_name_id` FOREIGN KEY (`edu_org_name_id`) REFERENCES `education_org` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_level_relation`
--

LOCK TABLES `edu_level_relation` WRITE;
/*!40000 ALTER TABLE `edu_level_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_level_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `education_level_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `education_org_id` int(11) DEFAULT NULL,
  `education_org_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduated` tinyint(4) NOT NULL COMMENT '1. graduated\n2. continuing\n3. lefted',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `education_level_id_idx` (`education_level_id`),
  KEY `education_org-id_idx` (`education_org_id`),
  KEY `fk_education_candidate_id_idx` (`candidate_id`),
  KEY `fk_education_country_id_idx` (`country_id`),
  CONSTRAINT `education_level-id` FOREIGN KEY (`education_level_id`) REFERENCES `education_level` (`id`),
  CONSTRAINT `education_org-id` FOREIGN KEY (`education_org_id`) REFERENCES `education_org` (`id`),
  CONSTRAINT `fk_education_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  CONSTRAINT `fk_education_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,31,6,'2011-10-25','2014-10-28',2,1,'MIT',1,'2019-10-25 00:00:00',NULL,1),(2,31,5,'2009-09-15','2011-06-15',2,2,'Harvard',1,'2019-11-24 09:13:26',NULL,1),(3,33,5,'2011-09-15','2016-06-11',2,2,'KTU',1,'2019-11-24 12:35:20',NULL,1);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_level`
--

DROP TABLE IF EXISTS `education_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `education_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_level`
--

LOCK TABLES `education_level` WRITE;
/*!40000 ALTER TABLE `education_level` DISABLE KEYS */;
INSERT INTO `education_level` VALUES (1,'Secondary school',1,'2019-10-25 07:18:24',NULL),(2,'Vocational school',1,'2019-10-25 07:18:24',NULL),(3,'College',1,'2019-10-25 07:18:24',NULL),(4,'Bachelor degree',1,'2019-10-25 07:18:24',NULL),(5,'Master degree',1,'2019-10-25 07:18:24',NULL),(6,'PHD',1,'2019-10-25 07:18:24',NULL);
/*!40000 ALTER TABLE `education_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_org`
--

DROP TABLE IF EXISTS `education_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `education_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_org`
--

LOCK TABLES `education_org` WRITE;
/*!40000 ALTER TABLE `education_org` DISABLE KEYS */;
INSERT INTO `education_org` VALUES (1,'MIT',1,'2019-09-25 00:00:00','2019-10-23 00:00:00'),(2,'KTU',1,'2019-11-24 11:39:41',NULL);
/*!40000 ALTER TABLE `education_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Telecom',1,'2019-10-25 15:48:38',NULL),(2,'Optika',1,'2019-11-20 06:45:41',NULL),(3,'Entertainment',1,'2019-11-20 06:51:06',NULL),(4,'Media',1,'2019-11-20 06:51:12',NULL),(5,'Korporasiya',1,'2019-11-20 06:55:50',NULL);
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_min` decimal(10,2) DEFAULT NULL,
  `salary_max` decimal(10,2) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deadline` date DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  `experience_min` int(11) DEFAULT NULL,
  `experience_max` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `job_category_id` int(11) NOT NULL DEFAULT '1',
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job-type-id_idx` (`job_type_id`),
  KEY `fk_job_user_id_idx` (`user_id`),
  KEY `fk_job_address_id_idx` (`address_id`),
  CONSTRAINT `fk_job_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `job-type-id` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,3,'İNTERNET QURAŞDIRMA VƏ SERVİS ÜZRƏ TEXNİK','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti:\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',2,2,NULL,1,3,1,'2019-11-20 06:28:04',NULL,97,1),(2,3,'OFİS MENECERİ',' Ofis daxili işlərin icra olunması  \n- Arayış,məktub,protokol və s.sənədlərin düzgün tərtib edilməsi \n- Daxil olan telefon zənglərinin qəbul edilməsi  \n- İşgüzar danışıqların aparılması \n- İş yeri Ayna Sultanova yaxin ərazidə \n- Rəhbərlik tərəfindən verilən tapşırıqların yerinə yetirilməsi\n- İş qrafiki: 09:00-dan 19:00-dək \n- Həftədə 1 dəfə istirahət günü ','Namizədə tələblər\n- Xanım və bəy namizədlər \n- Azərbaycan dilində səlis danışıq (rus dili arzu olunandır) \n- Türk dilini bilməli \n- 1C programını bilməli \n- Kompüter bilikləri: MS Office yaxşı səviyyədə bilməsi \n- Kollektivlə işləmə bacarigi \n- Nitq mədəniyyəti',700.00,900.00,'2019-11-20 06:28:24','2019-12-19',2,2,NULL,1,3,1,'2019-11-20 06:28:24',NULL,105,6),(3,3,'PİLATES TRENERİ',' İş barədə məlumat\n- İş qrafiki: 8 saat + 1 saat nahar \n- Həftənin 6 günü iş günü \n- İstirahət bazar günü \n- 1 ay sınaq müddətini müvəffəqiyyətlə başa vurmuş namizədlər \nmərkəz tərəfindən təlimlərə göndərilərək sertifikatla\n təmin olunur və müqavilə əsasında mərkəzə işə götürülür','- Cinsi qadın \n- Azəri dili mükəmməl rus dili orta \n- Səliqəli punktual xoş görünüşlü olmalı \n- Ünsiyyətcil olmalı \n- Komandada işləmə bacarığı olmalı \n- İşə məsuliyyətli yanaşmalı \n- İdmana həvəsli olmalı',800.00,1000.00,'2019-11-20 06:32:38','2020-01-19',4,2,NULL,3,5,1,'2019-11-20 06:32:38',NULL,105,6),(4,3,'OPTİK MƏSLƏHƏTÇİ','- Optik məhsulların satışının həyata keçirilməsi\n- Müştərilərə ətraflı məlumat vermək\n- Optik bölmənin səliqəsinə nəzarət\n- İş qrafiki 09:00-dan 20:00-dək\n- Əmək haqqı 300-350-400 AZN + satışdan 5% və əlavə bonuslar\n- Karyera imkanları\n- AR Əmək məcəlləsinə uyğun sənədləşmə','- 26 yaşdan yuxarı ali təhsilli xanımlar\n- Azərbaycan dilində səlis və gözəl nitqə sahib olmaq\n- Rus və ingilis dili bilikləri arzuolunandır\n- Yüksək mənimsəmə qabiliyyəti\n- Ünsiyyətcil, gülərüz və məsuliyyətli olmaq\n\nSeçilən namizədlər peşəkarlar tərəfindən keçirilən təlimlərdən sonra işlə təmin olunacaqdır.',300.00,400.00,'2019-11-15 10:27:55','2019-12-15',2,2,NULL,1,1,1,'2019-11-20 06:33:11',NULL,107,6),(5,3,'WORDPRESS PROGRAMÇI','- Proqram təminatını yazmaq\n- Mövcud proqramların üzərində dəyişiklik etmək\n- Texniki şərtə uyğun alqoritm hazırlamaq və yazılacaq proqramın işləmə mexanizmini tərtib etmək\n- Sistem problemlərinin həlli və diaqnostikası\n- İşləri tələb olunan vaxtda yekunlaşdırmaq\n- İş şəraiti\n- 10:00-dan 18:00-dək\n- Caspian Plaza, Cəfər Cabbarlı 44\n- İşə frilancer olaraq başlanacaq\n- Mehriban kollektiv\n- Karyera imkanı\n- Uzunmüddətli əməkdaşlıq','- Proqram təminatını yazmaq\n- Mövcud proqramların üzərində dəyişiklik etmək\n- Texniki şərtə uyğun alqoritm hazırlamaq və yazılacaq proqramın işləmə mexanizmini tərtib etmək\n- Sistem problemlərinin həlli və diaqnostikası\n- İşləri tələb olunan vaxtda yekunlaşdırmaq\n- İş şəraiti\n- 10:00-dan 18:00-dək\n- Caspian Plaza, Cəfər Cabbarlı 44\n- İşə frilancer olaraq başlanacaq\n- Mehriban kollektiv\n- Karyera imkanı\n- Uzunmüddətli əməkdaşlıq',500.00,800.00,'2019-11-08 10:27:55','2019-12-08',2,2,NULL,1,3,1,'2019-11-20 06:33:37',NULL,91,6),(6,3,'HardwarE ÜZRƏ MÜTƏXƏSSİS','- İş qrafiki: həftənin 6 günü. Həftə içi 10:00-17:00, şənbə günü isə 10:00-15:00\r\n- Ümumi kompüter bilikləri\r\n- Kompüter və printer avadanlıqlarının fəaliyyətini təmin etmək və avadanlıqlarda baş vermiş nasazlıqları yerində həll etmək\r\n- Qısa müddət ərzində problemi aşkar etmək və aradan qaldırmaq bacarığı\r\n- İT sahəsində geniş bacarıqlara malik olmalı\r\n- Verilənlər bazalarının qurulması\r\n- İstifadəçilərin üzləşdikləri çətinliklərin çevik həll olunması\r\n- Mütəmadi profilaktik tədbirlərin görülməsi\r\n- Networking\r\n- Şəbəkə kabel çəkilişi biliklərinə malik olmaq\r\n- Yaddaş qurğuları ilə işləmək bacarığı\r\n- Server və yaddaş qurğularında qarşıya çıxan problemlərin həlli\r\n- İnformasiya sistemlərinin təhlükəsizliyinin təmin edilməsi üzrə həllər\r\n- İnformasiya sistemlərinin şəbəkə, aralıq serverlər, məlumat bazaları və s. digər səviyyələrdə təhlükəsizliyin daimi nəzarətdə saxlanılması\r\n- Kompüter şəbəkələrinin monitorinqini aparmaq və şəbəkələrdə yaranmış nasazlıqları aradan qaldırmaq\r\n- Proqram təminatında texniki probemləri aradan qaldırmaq\r\n- Windows əməliyyat sistemlərinin idarə edilməsi\r\n- Əməliyyat sistemlərinin və proqram təminatlarının yazılması, ayarlanması və yaranan problemlərin həll olunması\r\n- Proqramlaşdırma sahəsi üzrə\r\n- Məlumat bazaları inzibatçılığı üzrə\r\n- Verilənlər bazalarının qurulması\r\n- İstifadəçilərin üzləşdikləri çətinliklərin çevik həll olunması\r\n- Müxtəlif proyektlərin həcminin müəyyənləşdirilərək müvafiq verilənlər bazalarının təşkili\r\n- Ehtiyat nüsxələrin alınması, mütəmadi olaraq bu nüsxələrdən bərpanın mümkünlüyünün yoxlanılması\r\n- Linux Unix C əməliyyat sistemlərinin idarə edilməsi\r\n- Yaddaş qurğuları ilə işləmək bacarığı\r\n- Müvafiq qaydaların yaradılması və tətbiqinin təmini\r\nNamizədə tələblər\r\nDövlət ali təhsil müəssisələrinin məzunlarına (Kompüter elmləri, Kompüter mühəndisliyi, İnformasiya texnologiyaları və sistemləri mühəndisliyi, Tətbiqi riyaziyyat, Fizika, Elektronika, Telekommunikasiya və digər mühəndis ixtisasları üzrə) üstünlük veriləcəkdir.','- Dövlət ali təhsil müəssisələrinin məzunlarına (Kompüter elmləri, Kompüter mühəndisliyi, İnformasiya texnologiyaları və sistemləri mühəndisliyi, Tətbiqi riyaziyyat, Fizika, Elektronika, Telekommunikasiya və digər mühəndis ixtisasları üzrə) üstünlük veriləcəkdir.\r\n- Ümumi tələblər:\r\n- Nizam-intizamlı\r\n- 5 ildən yuxarı əmək stajı\r\n- Yüksək səviyyəli məntiqi-analitik düşüncə qabiliyyəti və riyazi biliklər\r\n- Kollektivlə işləmək bacarığı, diqqətlilik, məsuliyyət və düzgünlük kimi müsbət xarakterlərə malik olan\r\n- Texniki səviyyədə ingilis dili (daha yaxşı bilənlərə üstünlük verilir)\r\n- İş prosesində Müəssisə rəhbərliyinin tapşırıqlarını vaxtında və lazımi qaydada yerinə yetirmək\r\n\r\nCV göndərərkən mövzu hissəsində \"İT mütəxəssis\" vakansiyasını qeyd etməklə gunel.aliyeva@yenihayat.az elektron ünvanına göndərməyiniz xahiş olunur.',800.00,1000.00,'2019-11-13 10:27:55','2019-12-11',2,3,NULL,6,10,1,'2019-11-20 06:34:32',NULL,95,1),(7,3,'İNFORMASİYA TEXNOLOGİYALARI ŞÖBƏSİNİN MÜDİRİ','- İş vaxtı: Həftənin 5 günü, 9:00-dan 18:00-dək\n- Cəmiyyətin və törəmə müəssisələrinin İnformasiya Texnologiyaları şöbəsinin fəaliyyətinin effektiv idarə olunması və mütəmadi optimizasiyası\n- Cəmiyyətin İT infrastrukturu daxilində fəaliyyət göstərən server və servislərin idarə olunması və təhlükəsizliyinin təmin olunması\n- Sistemlərin və məlumatların mütəmadi rezerv nüsxələnməsini təmin etmək\n- Cəmiyyətin cari və perspektiv inkişafının İT şöbəsi tərəfindən dəstəklənməsi və inkişafında iştirak\n- Şöbənin cari və gələcək fəaliyyətini istiqamətləndirən plan, təlimat, qayda və sair sənədlərin hazırlanması\n','- Ali texniki və ya iqtisadi təhsil mütləqdir\n- Müxtəlif inteqrasiyaların keçirilməsində təcrübə\n- Windows əməliyyat sistemləri (10 / 2012 / 2016),\nvirtualizasiya (Vmware), Office365, rezerv nüsxələmə sistem və servisləri üzrə biliklər və təcrübə\n- MBİS (MS SQL, POSTGRES), ERP (1C) üzrə biliklər və təcrübə\n- İT layihələrinin idarəolunması üzrə təcrübə\n- Zərurət yarandıqdan ezamiyyətlərə getmək\n- Azərbaycan dilində sərbəst yazı, rus və ingilis dili bilikləri arzuolunandır\n- İnformasiya Texnologiyaları sahəsində 5 ildən yuxarı, rəhbər vazifədə 2 ildən az olmayaraq iş təcrübəsi',800.00,1500.00,'2019-10-14 10:27:55','2019-12-14',1,1,NULL,1,3,1,'2019-11-20 06:39:26',NULL,97,1),(8,3,'FULL STACK VEB PROQRAMÇI',' İnternet üzərindən reklamın idarə edilməsi sisteminin qurulması və təkmilləşdirilməsində iştirak etmək\n- Uzunmüddətli (bir neçə il) əməkdaşlığa hazır olmaq, yaxın illərdə əsgərlik, xaricdə təhsil almaq və s. planların olmaması\n- İş vaxtı: I - V günlər, saat 09:00-dan 18:00-dək\n- İş yeri: World Business Centre, 309 S. Rəhimov küç., 12-ci mərtəbə\n- Müraciətlər yalnız CV şəklində qəbul olunacaqdır. CV ilə yanaşı Portfolionu da göndərmək üstünlükdür. Məktubunuzun \"Subject\" hissəsində veb proqramçı qeyd edin',' PHP (Codeigniter), MySQL\n- VueJS (VueJS bilənlərə üstünlük verilir)\n- Analitik düşünmə və düzgün dəyərləndirmə qabiliyyəti\n- Səliqəli və oxunaqlı kodun yazılması',700.00,1500.00,'2019-11-19 10:27:55','2019-12-19',2,2,NULL,1,3,1,'2019-11-20 06:45:44',NULL,97,8),(9,3,'MANTAJÇI','- Çox mənzilli domofon avadanlığının quraşdırılması\n- Nasaz olan domofon avadanlığının təmiri\n- Cihazlardakı proqram və texniki nasazlıqların aradan qaldırılması\n- Abunəçilər tərəfindən şirkətə verilmiş sifarişlərin yerinə yetirilməsi\n- İşlərin keyfiyyətlə həyata keçirilməsinin təmin edilməsi\n- Rəhbərliyin tapşırıq və göstərişlərinin yerinə yetirilməsi\n- Təhlükəsizlik texnikasına, əmək mühafizəsinin qaydalarına riayət edilməsi\n- Kabelləşmə işləri\n- Şirkətin daxili iş qaydalarına riayət edilməsi.\n- 5 günlük iş qrafiki\n- İş qrafiki: 09:00-dan 18:00-dək','- 25-45 yaş arası\n- Domofon avadanlığının montaj və təmir metodlarını bilməli\n- Müvafiq sahədə iş təcrübəsi 1 ildən az olmamaq şərtilə\n- Təhlükəsizlik Sistemləri sahəsində müəyyən təcrübəsi olması vacibdir\n- Texniki sənədləri , sxemləri və planları oxumaq bacarığı\n- Ustaya lazım olan alətlərlə işləməyi bacaran: Drel, perfarator, multimer və.s\n-Elektrik işindən anlayışı olmalı\n- Kollektiv ilə işləmə bacarığı\n- Stressə davamlı, diqqətli, çevik və məsuliyyətli.\n- Avadanlığın təmirdən sonra qəbul və təhvil verilmə qaydasını bilməli\n- Yaxşı şəxsiyyətlərarası və ünsiyyət bacarıqları.\n- Nəqliyyat vasitəsi (avtomobil,moped , motosikl) olanlara üstünlük veriləcək\n\nCV göndərərkən mövzu yerində vəzifəni qeyd edin vəzifə qeyd olunmayan CV-lər baxilmayacag',500.00,700.00,'2019-11-19 10:27:55','2019-12-18',2,2,NULL,1,3,1,'2019-11-20 06:45:44',NULL,96,9),(10,1,'Maliyyə / Kassir','- DALGA market yasamalda inşaatçılar metrosu\n- İş saati: səhər: 09:00-dan 21:00-dək\n- Gecə smen: 21:00-dan 09:00-dək\n- Nahar market tərəfindən verilir\n- Ayda 3 istirahət\n','\n- Təcrubəli olmalıdır\n- Kassir xanım ya bəy tələb olunur\n- Satıcı sürlük şöbəsi',800.00,1000.00,'2019-11-19 10:27:55','2019-12-19',2,2,NULL,1,3,1,'2019-11-20 06:58:25',NULL,97,3),(11,1,'WORKSHOP TECHNİCİAN INTERN','- Work schedule- monday-friday (08:00-17:00)\n- Perform maintenance/testing on subsea equipment according to scope description in service orders and\nprocedures\n- Perform sja\n- Contribute to risk analyses\n- Report executed maintenance and testing\n- Report need for maintenance and calibration of workshop tools\n- Troubleshoot workshop tools and relevant subsea products\n- Interpret and read hydraulic circuits\n- Troubleshoot hydraulic equipment\n- Interpret and read electric circuits\n- Troubleshoot electro mechanics equipment\n- Contribute to improve workshop processes and documentation\n- Make sure working area and workshop is tidy/clean and safe\n- Take part in modifications and project assignment when required','- Certificate of relevant apprenticeship (subsea Installation, mechanic, automation, electro etc.)\n- Relevant experience\n- Knowledge about relevant subsea equipment and tools is preferred\n- Good oral and written english language skills',1200.00,1500.00,'2019-11-10 11:27:55','2019-12-20',2,2,NULL,1,3,1,'2019-11-20 07:16:30',NULL,97,2),(12,1,'İNTERNET QURAŞDIRMA VƏ SERVİS ÜZRƏ TEXNİK','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',2,2,NULL,1,2,1,'2019-11-28 09:58:32',NULL,97,3),(13,1,'İNTERNET QURAŞDIRMA VƏ SERVİS ÜZRƏ TEXNİK','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',2,1,NULL,1,4,1,'2019-11-28 09:58:46',NULL,97,1),(14,1,'Proqramist','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',2,1,NULL,1,4,1,'2019-11-28 09:59:05',NULL,97,2),(15,1,'Proqramist','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:29:59',NULL,1,2),(16,1,'Excel','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:30:26',NULL,1,2),(17,1,'Hesabat','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:30:32',NULL,1,2),(18,1,'Finance','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\n- Modem və routerin ayarlanması\n- Kabellər haqqında biliklər\n- Kompyuter bilikləri\n- Antivirus bilikləri\n- İnternet və Kompyuter səbəkələri haqqında biliklər\n- Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\n- Splitterin düzgün qoşulma qaydası\n- Disconnect zamanı yaranan problemlər, lost carrier, user request\n- Modemin modulyasiyaları və xüsusiyyətləri\n- ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\n- NAT-Network adress translation-haqqında məlumat.\n- DHCP-nədir\n- WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\n- Statik İp ilə dinamik İP-nin fərqi\n- ADSL və fiber internetin fərqi, üstün cəhətləri\n- Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:30:58',NULL,1,2),(19,1,'Engieener','- Şirkətə daxil olan ADSL və FO sifarişləri əsasında ünvanda - İnternet qoşulması və abunəçi ünvanlarında yaranana\n- İnternet problemlərin aradan qaldırılması\n- İş şəraiti: Ela seviyye\n- İş qrafiki: Həftəiçi hər gün saat 09:00-dan 18:00-dək\n- İstirahət günləri: şənbə və bazar','- Sürücülük vəsiqəsi və sürücülük stajının olması vacibdir\r - Modem və routerin ayarlanması\r - Kabellər haqqında biliklər\r - Kompyuter bilikləri\r - Antivirus bilikləri\r - İnternet və Kompyuter səbəkələri haqqında biliklər\r - Xətt parametrləri necə olmalıdır.SNR, Line attunation, CRC\r - Splitterin düzgün qoşulma qaydası\r - Disconnect zamanı yaranan problemlər, lost carrier, user request\r - Modemin modulyasiyaları və xüsusiyyətləri\r - ADSL 2+, gdmt, g-lite modulyasiyaların fərqi\r - NAT-Network adress translation-haqqında məlumat.\r - DHCP-nədir\r - WIFi şəbəkəsinin qurulması və problemlərin araşdırılması\r - Statik İp ilə dinamik İP-nin fərqi\r - ADSL və fiber internetin fərqi, üstün cəhətləri\r - Assimmetrik və simmetrik yayım arasında fərq',300.00,600.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:31:46',NULL,1,2),(20,3,'Engieenerrer','sfsf','- Sürücülük vəsiqəsi vttə sürücülük stajının olması vacibdir',200.00,300.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,4,1,'2019-11-28 10:31:46',NULL,1,3),(21,4,'Microsoft','adaffffsss','- Sürücülük vəsiqəsi vttə sürücülük stajının olması vacibdir',400.00,2000.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,1,3,1,'2019-11-28 10:31:46',NULL,1,4),(22,5,'R','sfsfs fs','- Sürücülük vəsiqəsi vttə sürücülük stajının olması vacibdir',200.00,20000.00,'2019-11-19 10:27:55','2019-12-19',1,1,NULL,2,3,1,'2019-11-28 10:31:46',NULL,1,3),(39,103,'mm','kk','- Sürücülük vəsiqəsi vttə sürücülük stajının olması vacibdir',200.00,500.00,'2019-12-14 12:54:20','2019-12-19',11,1,NULL,1,3,1,'2019-12-14 12:54:20',NULL,91,5),(40,103,'mm','zzcxcvxcv','DFSDFSD',250.00,200.00,'2019-12-14 16:38:07','2019-12-19',11,1,NULL,2,4,1,'2019-12-14 16:38:07',NULL,1,4),(41,103,'gg','gg','gg',111.00,222.00,'2019-12-14 22:22:41','1990-11-10',12,2,NULL,1,3,0,'2019-12-14 22:22:41',NULL,99,5);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_category`
--

DROP TABLE IF EXISTS `job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `icon_class` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_job_category_parent_id_idx` (`parent_id`),
  CONSTRAINT `fk_job_category_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `job_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_category`
--

LOCK TABLES `job_category` WRITE;
/*!40000 ALTER TABLE `job_category` DISABLE KEYS */;
INSERT INTO `job_category` VALUES (90,'İnformasiya texnologiyaları',NULL,1,'2019-10-25 07:29:35',NULL,'fa fa-code'),(91,'Proqramlaşdırma',90,1,'2019-10-25 07:29:35',NULL,NULL),(92,'Sistem idarəetməsi',90,1,'2019-10-25 07:29:35',NULL,NULL),(93,'Məlumat bazasının idarə edilməsi və inkişafı',90,1,'2019-10-25 07:29:35',NULL,NULL),(94,'İT mütəxəssisi / məsləhətçi',90,1,'2019-10-25 07:29:35',NULL,NULL),(95,'İT layihələrin idarə edilməsi',90,1,'2019-10-25 07:29:35',NULL,NULL),(96,'Texniki avadanlıq mütəxəssisi',90,1,'2019-10-25 07:29:35',NULL,NULL),(97,'Digər',90,1,'2019-10-25 07:29:35',NULL,NULL),(98,'Marketinq',NULL,1,'2019-10-25 07:29:35',NULL,NULL),(99,'Marketinq menecment',98,1,'2019-10-25 07:29:35',NULL,NULL),(100,'İctimaiyyətlə əlaqələr',98,1,'2019-10-25 07:29:35',NULL,NULL),(101,'Reklam',98,1,'2019-10-25 07:29:35',NULL,NULL),(102,'Kopiraytinq',98,1,'2019-10-25 07:29:35',NULL,NULL),(103,'Inzibati',NULL,1,'2019-11-20 06:59:30',NULL,NULL),(105,'Ofis menecment',103,1,'2019-11-20 07:04:12',NULL,NULL),(106,'Tibb və əczaçılıq',NULL,1,'2019-11-20 07:10:19',NULL,'fa fa-medkit'),(107,'Tibb təmsilçisi',106,1,'2019-11-20 07:13:52',NULL,'fas fa-user-md'),(109,'Accounting',NULL,1,'2019-12-03 11:10:44',NULL,NULL),(110,'Technology',NULL,1,'2019-12-03 11:10:44',NULL,NULL),(111,'',NULL,1,'2019-12-03 11:11:24',NULL,NULL);
/*!40000 ALTER TABLE `job_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of work experience table.',
  `candidate_id` int(11) NOT NULL COMMENT 'Foreign key to candidate_id column of the candidate table.',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `country_id` int(11) NOT NULL COMMENT 'Foreign key to country_id column of the country  table.',
  `city_id` int(11) NOT NULL COMMENT 'Foreign key to city_id column of the city  table.',
  `company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_work_experience_candidate_idx` (`candidate_id`),
  KEY `fk_work_experience_country_idx` (`country_id`),
  KEY `fk_work_experience_city_idx` (`city_id`),
  CONSTRAINT `fk_work_experience_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  CONSTRAINT `fk_work_experience_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_work_experience_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_history`
--

LOCK TABLES `job_history` WRITE;
/*!40000 ALTER TABLE `job_history` DISABLE KEYS */;
INSERT INTO `job_history` VALUES (1,31,'proqramci','2019-11-22','2019-11-22',1,1,'Azercell','java',1,'2019-11-22 16:40:11',NULL),(2,31,'proqramci','2019-11-22','2019-11-22',1,1,'Bakcell','java',1,'2019-11-22 16:40:21',NULL),(3,31,'proqramci','2019-11-22','2019-11-22',1,1,'Nar','java',1,'2019-11-22 16:40:25',NULL),(4,33,'proqramci','2019-04-01',NULL,1,1,'iService','java',1,'2019-11-24 09:35:45',NULL);
/*!40000 ALTER TABLE `job_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'part_time',1,'2019-10-25 07:28:48',NULL),(2,'full_time',1,'2019-10-25 07:28:48',NULL),(3,'remote',1,'2019-10-25 07:28:48',NULL),(4,'internship',1,'2019-10-25 07:28:48',NULL);
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_user`
--

DROP TABLE IF EXISTS `job_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Hansı user, hansı job-a apply eliyib';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_user`
--

LOCK TABLES `job_user` WRITE;
/*!40000 ALTER TABLE `job_user` DISABLE KEYS */;
INSERT INTO `job_user` VALUES (141,1,7,'2019-12-04 18:05:17',NULL,0),(142,2,4,'2019-12-04 18:05:21',NULL,0),(143,3,3,'2019-12-04 18:05:33',NULL,0),(144,4,3,'2019-12-04 18:05:40',NULL,0),(145,5,10,'2019-12-04 18:05:48',NULL,0),(146,8,3,'2019-12-04 18:09:07',NULL,0),(147,39,103,'2019-12-14 12:54:20',NULL,0),(148,41,103,'2019-12-14 12:54:20',NULL,0),(149,41,3,'2019-12-14 12:54:20',NULL,0),(150,2,3,'2019-12-17 10:21:08',NULL,0),(151,6,3,'2019-12-17 10:29:59',NULL,0),(152,11,3,'2019-12-17 10:37:20',NULL,0),(153,7,3,'2019-12-17 10:40:40',NULL,0),(154,9,3,'2019-12-18 10:29:51',NULL,0);
/*!40000 ALTER TABLE `job_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'english',1,'2019-10-25 16:35:07',NULL),(2,'rusisan',1,'2019-10-26 16:35:07',NULL);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_skill`
--

DROP TABLE IF EXISTS `language_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `language_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `reading` int(11) NOT NULL,
  `speaking` int(11) NOT NULL,
  `writing` int(11) NOT NULL,
  `listening` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_language_skill_candidate_id_idx` (`candidate_id`),
  KEY `fk_language_skill_lang_id_idx` (`language_id`),
  CONSTRAINT `fk_language_skill_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  CONSTRAINT `fk_language_skill_lang_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_skill`
--

LOCK TABLES `language_skill` WRITE;
/*!40000 ALTER TABLE `language_skill` DISABLE KEYS */;
INSERT INTO `language_skill` VALUES (1,1,1,2,3,4,31,1,'2019-10-25 16:35:07',NULL),(2,2,5,6,7,8,31,1,'2019-10-26 16:35:07',NULL);
/*!40000 ALTER TABLE `language_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_type`
--

DROP TABLE IF EXISTS `owner_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owner_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_type`
--

LOCK TABLES `owner_type` WRITE;
/*!40000 ALTER TABLE `owner_type` DISABLE KEYS */;
INSERT INTO `owner_type` VALUES (1,'job',1,'2019-10-25 16:00:50',NULL),(2,'candidate',1,'2019-10-25 16:00:50',NULL),(3,'organization',1,'2019-10-25 16:00:50',NULL);
/*!40000 ALTER TABLE `owner_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'candidate',1,'2019-10-25 16:34:19',NULL),(2,'company',1,'2019-10-25 16:34:19',NULL),(3,'admin',1,'2019-11-18 07:09:34',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of skill table.',
  `candidate_id` int(11) NOT NULL COMMENT 'Foreign key to candidate_id column of the candidat\ne table.',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `info` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,31,'Avtosluq',10,'Qeşeng maşın sürə bilirəm',1,'2019-10-25 16:35:07',NULL),(2,31,'Derzi',3,'Dərzilərin likdə mənə çatan olmaz',1,'2019-10-28 16:35:07',NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `social_account_type` int(11) NOT NULL,
  `info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_account_type` (`social_account_type`),
  KEY `fk_social_account_contact_id_idx` (`contact_id`),
  CONSTRAINT `fk_social_account_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`),
  CONSTRAINT `social_account_ibfk_1` FOREIGN KEY (`social_account_type`) REFERENCES `social_account_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account`
--

LOCK TABLES `social_account` WRITE;
/*!40000 ALTER TABLE `social_account` DISABLE KEYS */;
INSERT INTO `social_account` VALUES (1,1,1,'https://www.facebook.com/azercell',1,'2019-10-25 15:56:01',NULL),(2,1,2,'https://www.twitter.com/Azercell',1,'2019-10-25 15:56:01',NULL),(3,1,3,'https://www.linkedin.com/azercell',1,'2019-10-25 15:56:01',NULL);
/*!40000 ALTER TABLE `social_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account_type`
--

DROP TABLE IF EXISTS `social_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account_type`
--

LOCK TABLES `social_account_type` WRITE;
/*!40000 ALTER TABLE `social_account_type` DISABLE KEYS */;
INSERT INTO `social_account_type` VALUES (1,'Facebook',1,'2019-10-25 15:54:55',NULL),(2,'Twitter',1,'2019-10-25 15:54:56',NULL),(3,'LinkedIn',1,'2019-10-25 15:54:56',NULL),(4,'Instagram',1,'2019-10-25 15:54:56',NULL);
/*!40000 ALTER TABLE `social_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains all tags which are jobs, companies, organizations. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'telecom',1,'2019-10-25 15:57:34',NULL),(2,'azercell',1,'2019-10-25 15:57:34',NULL),(3,'mobil',1,'2019-10-25 15:57:34',NULL),(4,'rabite',1,'2019-10-25 15:57:34',NULL);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_owner`
--

DROP TABLE IF EXISTS `tag_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tag_owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type_id` int(11) NOT NULL COMMENT '1-job, 2-candidate, 3-organization',
  `tag_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tag_owner_tag_id_idx` (`tag_id`),
  KEY `fk_tag_owner_owner_type_id_idx` (`owner_type_id`),
  CONSTRAINT `fk_tag_owner_owner_type_id` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_type` (`id`),
  CONSTRAINT `fk_tag_owner_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_owner`
--

LOCK TABLES `tag_owner` WRITE;
/*!40000 ALTER TABLE `tag_owner` DISABLE KEYS */;
INSERT INTO `tag_owner` VALUES (4,1,2,3,1,'2019-10-25 16:02:46',NULL),(5,1,3,2,1,'2019-10-25 16:02:46',NULL),(6,1,3,3,1,'2019-10-25 16:02:46',NULL);
/*!40000 ALTER TABLE `tag_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (58,'Test Task 11','asdasdasd','2019-11-14','2019-10-31','Tofiq'),(59,'Test Task 2','test description','2019-10-31','2019-11-20','Ali');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) NOT NULL,
  `generation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_date` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `token_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'as123asndqwe4iu34ijkasndasd','2019-10-30 07:30:43','2019-11-11 07:29:43',3,1,'2019-10-30 07:30:43',NULL,0,0),(2,'aa0f53c2197a70c78616581bec39b583a70bfcab9379fce9a7cab4639089a790','2019-10-31 19:57:09','2019-11-05 19:57:09',10,1,'2019-10-31 19:58:45',NULL,0,0),(3,'db875cffc7f034c81a2d4247384e242a4be3300946d6d1d4bf9c3c8ef9031bb9','2019-11-01 16:05:50','2019-11-04 16:05:50',16,1,'2019-11-01 16:05:51',NULL,0,0),(4,'e79e0091326af499c49272dec0d73265a3c80cb013fb1bf07e752e30d3e1d6de','2019-11-03 17:46:38','2019-11-06 17:46:38',19,1,'2019-11-03 17:46:38',NULL,0,0),(5,'cd34cbd8af17e25d72813af66c9edf0a07cfcbaa764e197a8921faf7f3f3d1dc','2019-11-05 13:42:35','2019-11-08 13:42:35',20,1,'2019-11-05 13:42:34',NULL,0,0),(6,'aa47f20ec89e7c81dc7fdc946419fe2943bec04c2721df036637544869fceacf','2019-11-05 21:45:17','2019-11-08 21:45:17',21,1,'2019-11-05 21:46:57',NULL,0,0),(7,'da713805aab433da579ffc599bf9bb55c90cd6aa810db54c6e8c492a3d33bd13','2019-11-05 23:07:22','2019-11-08 23:07:22',22,1,'2019-11-05 23:09:02',NULL,0,0),(8,'544e9d8aa7145952f3ab2b87e373b9d3015a21698901d14bd98438f5d7cfa061','2019-11-06 07:46:40','2019-11-09 07:46:40',24,1,'2019-11-06 07:46:40',NULL,0,0),(10,'4efcd478074912cc6bfad2dca5c7063a38ef234806baae7819c3718735b4903e','2019-11-07 19:45:58','2019-11-10 19:45:58',26,1,'2019-11-07 19:45:57',NULL,0,0),(11,'5e85eb027972fb511d249451a888c013af667c1b63030b3169906195f384a1c4','2019-11-08 07:29:06','2019-11-11 07:29:06',27,1,'2019-11-08 07:29:06',NULL,0,0),(16,'2a474c8d470851a326e9198b0fbd83ae93f6043b65d7e2349d4c3fe04ff4ab1c','2019-11-09 10:22:10','2019-11-12 10:22:10',32,1,'2019-11-09 10:22:10',NULL,0,0),(19,'effd0c37ab7d084f25d887091212e14b87182123fa3467e33af126af98f436d1','2019-11-09 13:31:02','2019-11-12 13:31:02',37,1,'2019-11-09 13:31:02',NULL,0,0),(27,'05c6818cd08a706789227bbede7aea869d084c3a048e1c9cc19719575a10a4b5','2019-11-09 19:24:55','2019-11-12 19:24:55',46,1,'2019-11-09 19:24:54',NULL,0,0),(33,'e4858cb973fda28692857085990de6b0109c0493447547b053cba45217c53f9f','2019-11-09 20:01:43','2019-11-12 20:01:43',52,1,'2019-11-09 20:01:42',NULL,0,0),(35,'697d7dd78e884a864a94fa0f6df776bb7c4c372462134427be925f559b2ad838','2019-11-09 20:02:43','2019-11-12 20:02:43',54,1,'2019-11-09 20:04:25',NULL,0,0),(36,'30d6aa3fa7631d7fcbfa2535daf13cb3bfce6c4eb656cc75a95bb9c55f53290f','2019-11-10 19:10:28','2019-11-13 19:10:28',55,1,'2019-11-10 19:12:11',NULL,0,0),(37,'4b625aab0d0fb59d757ddffc5218848692227e50f00ed4a418278efc5e53f58b','2019-11-11 16:06:18','2019-11-14 16:06:18',56,1,'2019-11-11 16:06:18',NULL,0,0),(40,'863d7fb30909c70ac38604832a4b01b4554c57a831c5b98123eaeb3bca8c6dc8','2019-11-11 22:32:51','2019-11-14 22:32:51',60,1,'2019-11-11 22:32:53',NULL,0,0),(41,'7bbebe84d597f343af6a88bbe5178330aa99d4118e4875c6e2bc9e464873f919','2019-11-12 07:53:22','2019-11-15 07:53:22',61,1,'2019-11-12 07:53:22',NULL,0,0),(42,'a8ba23ebb11b00de9f82737a9142aa23e8c7a611f926b0b7b80e1cf121d7bb95','2019-11-16 19:57:03','2019-11-19 19:57:03',62,1,'2019-11-16 19:58:50',NULL,0,0),(43,'d564cd034093d6bb86cc790d0cc658c88c4ef65717aac57328a2f03818cd5f5a','2019-11-18 11:41:17','2019-11-21 11:41:17',63,1,'2019-11-18 11:41:17',NULL,0,0),(44,'9a11aa8ac0bea2e1e8a8269984ad053c74656128d1fb57126a35dab4dabccb05','2019-11-23 13:22:28','2019-11-26 13:22:28',66,1,'2019-11-23 13:22:28',NULL,0,0),(45,'638a5e7ae7d7c03f201879ad3b76a9e5a1a3e6d5cdfea9f3aff5448e6365dd30','2019-11-23 19:06:07','2019-11-26 19:06:07',67,1,'2019-11-23 19:06:07',NULL,0,0),(46,'48fc7b0b7505a3b18f92bb08ed432870a28a4faad53aa5e6cb8b0357a988caad','2019-11-23 19:11:31','2019-11-26 19:11:31',68,1,'2019-11-23 19:11:30',NULL,0,0),(47,'f25f9ebce312ee94b1fbf0de5468363889be685e715edc1dd289f4966539368c','2019-11-24 14:09:17','2019-11-27 14:09:17',70,1,'2019-11-24 14:09:16',NULL,0,0),(48,'1115eccfb8557e5806d5eff4554f79fcdb12331a7705fd013eb509fa3f0909ac','2019-12-01 20:00:25','2019-12-04 20:00:25',101,1,'2019-12-01 20:02:25',NULL,0,0),(49,'b04a7bcda19c5b42b2e8e48b3b58e381b30acc924740fdb4abd5d34d4dd19b45','2019-12-01 20:03:27','2019-12-04 20:03:27',102,1,'2019-12-01 20:05:26',NULL,0,0),(50,'bcb5a7e1a49de2bd0950b51ef2b53a75963e2d656f3bf2c819a2210f6772c6d6','2019-12-02 09:11:09','2019-12-05 09:11:09',103,1,'2019-12-02 09:11:09',NULL,0,0),(51,'ecfae95d5311287478914c36c1a982968c7de538445c622846732571ce1b436f','2019-12-06 08:32:50','2019-12-09 08:32:50',104,1,'2019-12-06 08:32:50',NULL,0,1),(52,'3e229419376ce027e0614f46072c49a11a05c7ddfeb6323632410911a27e1fb8','2019-12-18 15:34:18','2019-12-21 15:34:18',105,1,'2019-12-18 15:34:18',NULL,0,1);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_type`
--

DROP TABLE IF EXISTS `token_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `token_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_type`
--

LOCK TABLES `token_type` WRITE;
/*!40000 ALTER TABLE `token_type` DISABLE KEYS */;
INSERT INTO `token_type` VALUES (0,'activation',1,'2019-10-25 16:45:35',NULL),(1,'reset password',1,'2019-10-25 16:45:35',NULL);
/*!40000 ALTER TABLE `token_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status_id` int(11) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-active, 2-deleted, 3-locked',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tofiq','Mammadov',NULL,1,'2019-10-25 16:35:07',1,'','',NULL,NULL),(3,'Ali','Mammadov',NULL,1,'2019-10-28 08:50:04',1,'Ali@gmail.com','$2a$10$Vniugm896dUiHpYdM7jGne8TijJ9ea.oSwbCnUf4GYOpuHi7YThHS','0555555','0702225566'),(4,'Qurban','Qurbanov',NULL,1,'2019-10-30 12:54:32',1,'Qurban@gmail.com','$2a$10$HWvW3G3q99sgdvQLfZk8x.EbuwPdVtnrxBYlGrclp91NTnUXvwOaW',NULL,NULL),(5,'Alim','Qasimov',NULL,1,'2019-10-30 13:04:11',1,'Alim@gmail.com','$2a$10$Vniugm896dUiHpYdM7jGne8TijJ9ea.oSwbCnUf4GYOpuHi7YThHS',NULL,NULL),(6,'Cavid','Baghirov',NULL,0,'2019-10-31 10:33:54',1,'Baghirov@gmail.com','$2a$10$BV233MQEVMrl535TSwrkcucQdN8ZnkdfwK48uV3cQYSmwLX6rGBeS',NULL,NULL),(7,'Ruslan','Dadashov',NULL,1,'2019-10-31 12:45:19',1,'ruslan@gmail.com','$2a$10$FOhbw9bDyRHPVjprc9K10OdEvIDn.oLVaAktFs8p05tlQxJ.sdHBm',NULL,NULL),(8,'Cavid','Nezerov',NULL,1,'2019-10-31 12:47:51',1,'cavid@gmail.com','$2a$10$512HxuCRXL2Gsgt8ouvYOeyK/zaR.hPSnnvfvWyajHYDFBK1Bu1ty',NULL,NULL),(9,'Keanu','Reeves',NULL,1,'2019-10-31 12:50:49',1,'reeves@gmail.com','$2a$10$6VSxIWXHH6PxlVkick36TeQe2Vpjodu3TFgLBQG3psKvTCCvkxF5S',NULL,NULL),(10,'Marshall','Bruce',NULL,1,'2019-10-31 19:58:45',1,'amrahovnurlan@gmail.com','$2a$10$drPtIT4Hq3N5hTF.TANJmObxwZ9b7/.dOD5iVjAPp9QprGalwrPX6',NULL,NULL),(11,'Abbas','Abbasov',NULL,1,'2019-10-31 20:15:15',1,'Abbasov@gmail.com','$2a$10$7s76qZZXealrJ8QtA05FwulInSu4T.WNzeyGocaC1G4tnV4Dqk1X6',NULL,NULL),(12,'Rza','Rzayev',NULL,1,'2019-11-01 08:00:35',1,'rza22@gmail.com','$2a$10$WS6MGE1yL4Br8.ZFBrJAo.i.c2P0FKo7gZ/vsNxFscGiknJ/e5.H2',NULL,NULL),(13,'Rza','Mammadov',NULL,1,'2019-11-01 08:06:50',1,'rza44@gmail.com','$2a$10$11XHh6wnHQULqgB2nhp/6uo3GffCaeU4XWbu6cEso8J5o3TwAL5M6',NULL,NULL),(14,'Emil','Quliyev',NULL,1,'2019-11-01 09:14:56',1,'emil@kerim.com','$2a$10$wltBVqhPD4U2ogvWYvmPGuKEeJ31/YhI2TsqS2LcOBJjBXMqjfHwK',NULL,NULL),(15,'Cavid','Quliyev',NULL,1,'2019-11-01 09:24:09',1,'cavid@gmail.com','$2a$10$K7ZyFm9tCWEOQ3e1iWdHwuElUKgs/VLRen51g91VQxLdoQ4mVGUc2',NULL,NULL),(16,'Field','Marshal',NULL,1,'2019-11-01 16:05:50',1,'fm@box.az','$2a$10$wSfjJiPGXQolnXm3T8IEVebLbO4oWGnFY/raGzgWvD8lWe9Ut6QrG',NULL,NULL),(17,'Abbasqulu','Abbaszadeh',NULL,0,'2019-11-02 11:06:05',1,'Abbaszadeh@gmail.com','$2a$10$Robc.aM6LUBVnj4NOiS95Oh4ASOdKQKiAEEebHTE/lnQ3ETeibXIu',NULL,NULL),(18,'salam','salamov',NULL,1,'2019-11-03 07:32:49',1,'salam@gmail.com','$2a$10$sZsv1Buk9vhTPqzrHo6qo.Z84ZJWW2iWtT3hnGs.YGUqJE6L7uMAu',NULL,NULL),(19,'Hesen','Eliyev',NULL,1,'2019-11-03 17:46:38',1,'samir@box.az','$2a$10$JrAokkcemH10tikAU0lGqO1D2rCMT14V9AdVFVZydNWJ69yfvH56O',NULL,NULL),(22,'sfsf','ssfsf',NULL,1,'2019-11-05 23:09:01',0,'050@gmail.com','$2a$10$l1q41vhHT8fud/M6AqwXLeb86XrQG0a23gzAbWsBFDu25Gue3z0uO',NULL,NULL),(24,'Rza','Rzayev',NULL,1,'2019-11-06 07:46:40',1,'rza.rzayev@gmail.com','$2a$10$4i74Niwca3LXIERgid9llukp1KqecFYfHf0YutHxaMaSwYExtk66i',NULL,NULL),(26,'Nail','memmedov',NULL,1,'2019-11-07 19:45:57',0,'nailmemmed@gmail.com','$2a$10$Y9B0ff3aBbqbYoBARlvF9efBj3QDhHq0Zrfq0KTGJqxtwi7WleGaq',NULL,NULL),(27,'Mammad','Karimov',NULL,1,'2019-11-08 07:29:06',0,'mammad@gmail.com','$2a$10$xM5zXYN15vpzQod6Y160wONeudYpnlswXEsBpkoIFGKnDFOlZd8xm',NULL,NULL),(32,'Alin','Alin',NULL,1,'2019-11-09 10:22:10',0,'alin@gmail.com','$2a$10$unS1P4lEhSZLhhWwlxazeeRa9pgtgiFIAzIbQhuqhiaDSKfcHfSzq',NULL,NULL),(37,'Memmed','Memmedov',NULL,1,'2019-11-09 13:31:02',0,'memmed@gmail.com','$2a$10$6wL2WZ29FJ/IzdNifoqQg.IWq5pp4lFlJ9bCHFgRc8bF5SYY1QEtG',NULL,NULL),(48,'Sfsdf','Hsfsdf',NULL,1,'2019-11-09 19:45:19',0,'ssdfsdf@gmail.com','$2a$10$RDTtElD1eSEVdQ9uDu70qOzvAOG2IW9cRjtdv32kKCNrt7c3sGufe',NULL,NULL),(52,'Ramin','Orucov',NULL,1,'2019-11-09 20:01:42',0,'ramin.orucov@gmail.com','$2a$10$TQohCtsdtCYQlHYKavpP9.O/g9DzTxsPn.UdUBsNUeVdyni2kLPVG',NULL,NULL),(54,'Super','Nnn',NULL,1,'2019-11-09 20:04:25',0,'ggdgdf@box.az','$2a$10$LxWAGh3OTpD9EXJ6blDfCeroKteAz7LqyzHKfaVWTjCDhyPRYTvxi',NULL,NULL),(55,'Hh','Hm',NULL,1,'2019-11-10 19:12:11',0,'hmssfs@gmail.com','$2a$10$hoGm7vfTHzc73yUMbTFKbukUjuwFpkdMUALWRFRILSHGgaK.8krj2',NULL,NULL),(56,'Ilham','Eliyev',NULL,1,'2019-11-11 16:06:18',1,'mr.president@gmail.com','$2a$10$g3ycVSK/sUDXTxuOD7gnv.hglKgXQRBqZopBEWSQSXq5gwXodPxlK',NULL,NULL),(60,'Rza','Rzayev',NULL,1,'2019-11-11 22:32:53',0,'Rza.Rzayev@Gmail.com','$2a$10$HLsMHP3YRXEKisQQOV/6U.z.dFsctX8PXk5F74YV6BL3KzWCN9lFS',NULL,NULL),(61,'Mahatma','G',NULL,1,'2019-11-12 07:53:22',0,'gandi@gmail.com','$2a$10$LaOeSg5T2rU.tzp424asmeIWXs.yr7q4ASJ.QQhJB4RBRY9fYYSDm',NULL,NULL),(62,'Pehilvan','Demirkisiyev',NULL,1,'2019-11-16 19:58:49',0,'pehlivan123@gmail.com','$2a$10$fSqBjIfdfiTGtcfnuL.69uxpNHKSZ201x5E4iE77TSXXkTcRkPyYe',NULL,NULL),(63,'Kamran','Semedov',NULL,1,'2019-11-18 11:41:16',1,'Kamransemedov@gmail.com','$2a$10$dNw/DKSl.ZQLEm/.iPdc3eq1pCKvh4f/xQyMJfQ6cqWmGofkTaRmS','018-65-5-55-55','055-556-66-68'),(66,'Ceyhun','Abdullayev',NULL,1,'2019-11-23 13:22:28',1,'ceyhun@gmail.com','$2a$10$RySDdJzF9JWCdbkdKpJuy.UPc1YECNjeley3kcNNzmAC6FkpuXj9q','018-65-5-55-55','055-556-66-68'),(67,'Nigar','Guliyeva',NULL,1,'2019-11-23 19:06:06',0,'nquliyeva980@gmail.com','$2a$10$jryyz/D6dw3M4pjhr83Bcerp6N5Yo1Z9MRaB6n6rk5TraoJR2VN7C',NULL,NULL),(68,'Test','Testov',NULL,1,'2019-11-23 19:11:30',0,'nquliyeva980@gmail.com','$2a$10$AItfbXjDAW/G4SUWdulx2eF8HeNTy7e5OoF3qFm0qCXKVIFz6i25m',NULL,NULL),(69,'Azercell','Iscisi',NULL,1,'2019-11-24 13:50:21',1,'isci@azercell.com','$10$Vniugm896dUiHpYdM7jGne8TijJ9ea.oSwbCnUf4GYOpuHi7YThHS',NULL,NULL),(70,'worker','Azercell',NULL,1,'2019-11-24 14:09:16',1,'worker@azercell.com','$2a$10$Vniugm896dUiHpYdM7jGne8TijJ9ea.oSwbCnUf4GYOpuHi7YThHS',NULL,NULL),(100,'test','test',NULL,1,'2019-11-25 12:28:28',0,'dasdas@mail.ru','pdasdas',NULL,NULL),(101,'Nurlan','Amrahov',NULL,1,'2019-12-01 20:02:25',1,'amrahovnurlan@gmail.com','$2a$10$0wciaGANvwX2.bZzBlHU4.AKHQqSH9tLPCgJWL2urZSDe80ITRuCG',NULL,NULL),(102,'Hesen','Hesenov',NULL,1,'2019-12-01 20:05:26',1,'orxanemrahli313@mail.ru','$2a$10$v3.4aLiKfiVmOwnES/gzr.gfGFDmwZn5W.1W8PZ9mJY6qOfvWVz62','018-65-5-55-55','018-65-5-55-55'),(103,'Nicat','Nicatov',NULL,1,'2019-12-02 09:11:09',1,'nici@gmail.com','$2a$10$76iCfTbaMDBzZN.cLwjYd.wcl6M0y5XTwMCGK7rpiDmOj2reH93tu','018-65-5-55-55','018-65-5-55-55'),(104,'Nigar','Guliyeva',NULL,1,'2019-12-06 08:32:50',0,'nguliyeva2020@ada.edu.az','$2a$10$tz9I455tm2TMX9JEjfwsAufn1DO1dtwEs8lqaY2sS7tHihvD1/Wly',NULL,NULL),(105,'Aygun','Sadiqova',NULL,1,'2019-12-18 15:34:18',0,'aygun@gmail.com','$2a$10$RTYlILXo.d9NVyOb0h99PuBTeJnfqCndW/UX4JvRk3y6c0dspHmsS',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `idate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_role_user_id_idx` (`user_id`),
  KEY `fk_user_role_role_id_idx` (`role_id`),
  CONSTRAINT `fk_user_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_user_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='user can have multiple roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,'2019-11-18 07:00:57',NULL,1),(2,3,3,'2019-11-18 07:00:57',NULL,1),(3,4,1,'2019-11-18 07:00:57',NULL,1),(4,5,2,'2019-11-18 07:00:57',NULL,1),(5,7,1,'2019-11-18 07:00:57',NULL,1),(6,8,1,'2019-11-18 07:00:57',NULL,1),(7,9,1,'2019-11-18 07:00:57',NULL,1),(8,10,1,'2019-11-18 07:00:57',NULL,1),(9,11,1,'2019-11-18 07:00:57',NULL,1),(10,12,1,'2019-11-18 07:00:57',NULL,1),(11,13,1,'2019-11-18 07:00:57',NULL,1),(12,14,1,'2019-11-18 07:00:57',NULL,1),(13,15,1,'2019-11-18 07:00:57',NULL,1),(14,16,1,'2019-11-18 07:00:57',NULL,1),(15,18,1,'2019-11-18 07:00:57',NULL,1),(16,19,1,'2019-11-18 07:00:57',NULL,1),(17,22,1,'2019-11-18 07:00:57',NULL,1),(18,24,1,'2019-11-18 07:00:57',NULL,1),(19,26,1,'2019-11-18 07:00:57',NULL,1),(20,27,1,'2019-11-18 07:00:57',NULL,1),(21,32,1,'2019-11-18 07:00:57',NULL,1),(22,37,1,'2019-11-18 07:00:57',NULL,1),(23,48,1,'2019-11-18 07:00:57',NULL,1),(24,52,1,'2019-11-18 07:00:57',NULL,1),(25,54,1,'2019-11-18 07:00:57',NULL,1),(26,55,1,'2019-11-18 07:00:57',NULL,1),(27,56,1,'2019-11-18 07:00:57',NULL,1),(28,60,1,'2019-11-18 07:00:57',NULL,1),(29,61,1,'2019-11-18 07:00:57',NULL,1),(30,62,1,'2019-11-18 07:00:57',NULL,1),(34,63,2,'2019-11-18 11:41:16',NULL,1),(35,66,1,'2019-11-23 13:30:11',NULL,1),(36,70,2,'2019-11-24 14:10:59',NULL,1),(37,101,1,'2019-11-24 14:10:59',NULL,1),(38,103,2,'2019-11-24 14:10:59',NULL,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `idate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (0,'pending',1,NULL,NULL),(1,'active',1,NULL,NULL),(2,'deleted',1,NULL,NULL),(3,'locked',1,NULL,NULL);
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-19 13:13:44
