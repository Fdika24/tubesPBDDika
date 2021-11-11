-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bumble
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bumble`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `id17903806_tubes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `id17903806_tubes`;

--
-- Table structure for table `block_user`
--

DROP TABLE IF EXISTS `block_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_user` (
  `user_pemberiblock_id` varchar(5) NOT NULL,
  `user_penerimablock_id` varchar(5) NOT NULL,
  KEY `fk_userpemberiblock` (`user_pemberiblock_id`),
  KEY `fk_userpenerimablock` (`user_penerimablock_id`),
  CONSTRAINT `fk_userpemberiblock` FOREIGN KEY (`user_pemberiblock_id`) REFERENCES `user_account` (`id`),
  CONSTRAINT `fk_userpenerimablock` FOREIGN KEY (`user_penerimablock_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_user`
--

LOCK TABLES `block_user` WRITE;
/*!40000 ALTER TABLE `block_user` DISABLE KEYS */;
INSERT INTO `block_user` (`user_pemberiblock_id`, `user_penerimablock_id`) VALUES ('U0009','U0100');
/*!40000 ALTER TABLE `block_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation` (
  `conversation_id` varchar(6) NOT NULL,
  `time_started` varchar(17) NOT NULL,
  `time_closed` varchar(17) NOT NULL,
  PRIMARY KEY (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` (`conversation_id`, `time_started`, `time_closed`) VALUES ('CV0001','8/6/2021 20:49:07','8/9/2021 10:34:23');
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_percakapan`
--

DROP TABLE IF EXISTS `data_percakapan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_percakapan` (
  `id` varchar(5) NOT NULL,
  `conversation_id` varchar(6) NOT NULL,
  `participant_id` varchar(5) NOT NULL,
  `message_id` varchar(5) NOT NULL,
  KEY `fk_idpercakapan` (`id`),
  KEY `fk_convopercakapan` (`conversation_id`),
  KEY `fk_partipercakapan` (`participant_id`),
  KEY `fk_messapercakapan` (`message_id`),
  CONSTRAINT `fk_convopercakapan` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`conversation_id`),
  CONSTRAINT `fk_idpercakapan` FOREIGN KEY (`id`) REFERENCES `user_account` (`id`),
  CONSTRAINT `fk_messapercakapan` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`),
  CONSTRAINT `fk_partipercakapan` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_percakapan`
--

LOCK TABLES `data_percakapan` WRITE;
/*!40000 ALTER TABLE `data_percakapan` DISABLE KEYS */;
INSERT INTO `data_percakapan` (`id`, `conversation_id`, `participant_id`, `message_id`) VALUES ('U0100','CV0001','U0090','M0001');
/*!40000 ALTER TABLE `data_percakapan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female`
--

DROP TABLE IF EXISTS `female`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female` (
  `gender_id` varchar(2) NOT NULL,
  `gender_name` varchar(6) NOT NULL,
  `user_account_id` varchar(5) NOT NULL,
  `id_type_female` varchar(2) NOT NULL,
  `type_female` varchar(11) NOT NULL,
  KEY `fk_genderid` (`gender_id`),
  CONSTRAINT `fk_genderid` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female`
--

LOCK TABLES `female` WRITE;
/*!40000 ALTER TABLE `female` DISABLE KEYS */;
INSERT INTO `female` (`gender_id`, `gender_name`, `user_account_id`, `id_type_female`, `type_female`) VALUES ('G2','Female','U0003','F1','Normal'),('G2','Female','U0004','F1','Normal'),('G2','Female','U0005','F1','Normal'),('G2','Female','U0008','F1','Normal'),('G2','Female','U0015','F2','Transgender'),('G2','Female','U0018','F1','Normal'),('G2','Female','U0019','F2','Transgender'),('G2','Female','U0020','F3','Transsexual'),('G2','Female','U0022','F1','Normal'),('G2','Female','U0027','F1','Normal'),('G2','Female','U0028','F2','Transgender'),('G2','Female','U0029','F2','Transgender'),('G2','Female','U0030','F1','Normal'),('G2','Female','U0033','F2','Transgender'),('G2','Female','U0035','F3','Transsexual'),('G2','Female','U0036','F1','Normal'),('G2','Female','U0037','F1','Normal'),('G2','Female','U0042','F2','Transgender'),('G2','Female','U0050','F3','Transsexual'),('G2','Female','U0051','F3','Transsexual'),('G2','Female','U0053','F1','Normal'),('G2','Female','U0054','F1','Normal'),('G2','Female','U0055','F2','Transgender'),('G2','Female','U0062','F2','Transgender'),('G2','Female','U0063','F1','Normal'),('G2','Female','U0064','F1','Normal'),('G2','Female','U0069','F1','Normal'),('G2','Female','U0072','F1','Normal'),('G2','Female','U0075','F1','Normal'),('G2','Female','U0077','F1','Normal'),('G2','Female','U0081','F1','Normal'),('G2','Female','U0082','F2','Transgender'),('G2','Female','U0091','F3','Transsexual'),('G2','Female','U0093','F3','Transsexual'),('G2','Female','U0098','F1','Normal'),('G2','Female','U0099','F2','Transgender'),('G2','Female','U0100','F2','Transgender');
/*!40000 ALTER TABLE `female` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `gender_id` varchar(2) NOT NULL,
  `gender_name` varchar(10) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES ('G1','Male'),('G2','Female'),('G3','Non-Binary');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_user`
--

DROP TABLE IF EXISTS `grade_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_user` (
  `user_pemberigrade_id` varchar(5) NOT NULL,
  `user_penerimagrade_id` varchar(5) NOT NULL,
  `grade` int(11) NOT NULL,
  KEY `fk_userpemberigrade` (`user_pemberigrade_id`),
  KEY `fk_userpenerimagrade` (`user_penerimagrade_id`),
  CONSTRAINT `fk_userpemberigrade` FOREIGN KEY (`user_pemberigrade_id`) REFERENCES `user_account` (`id`),
  CONSTRAINT `fk_userpenerimagrade` FOREIGN KEY (`user_penerimagrade_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_user`
--

LOCK TABLES `grade_user` WRITE;
/*!40000 ALTER TABLE `grade_user` DISABLE KEYS */;
INSERT INTO `grade_user` (`user_pemberigrade_id`, `user_penerimagrade_id`, `grade`) VALUES ('U0001','U0011',4),('U0002','U0012',5),('U0003','U0013',3),('U0004','U0014',5),('U0005','U0015',4),('U0006','U0016',3),('U0007','U0017',2),('U0008','U0018',3),('U0009','U0019',5),('U0010','U0020',4),('U0011','U0021',3),('U0012','U0022',4),('U0013','U0023',3),('U0014','U0024',5),('U0015','U0025',4),('U0016','U0026',4),('U0017','U0027',5),('U0018','U0028',5),('U0019','U0029',5),('U0020','U0030',4),('U0021','U0031',5),('U0022','U0032',4),('U0023','U0033',3),('U0024','U0034',5),('U0025','U0035',4),('U0026','U0036',3),('U0027','U0037',5),('U0028','U0038',4),('U0029','U0039',5),('U0030','U0040',5),('U0031','U0041',4),('U0032','U0042',3),('U0033','U0043',4),('U0034','U0044',5),('U0035','U0045',5),('U0036','U0046',3),('U0037','U0047',4),('U0038','U0048',5),('U0039','U0049',5),('U0040','U0050',5),('U0041','U0051',5),('U0042','U0052',4),('U0043','U0053',3),('U0044','U0054',5),('U0045','U0055',4),('U0046','U0056',3),('U0047','U0057',5),('U0048','U0058',5),('U0049','U0059',4),('U0050','U0060',5),('U0051','U0061',5),('U0052','U0062',4),('U0053','U0063',5),('U0054','U0064',4),('U0055','U0065',5),('U0056','U0066',4),('U0057','U0067',5),('U0058','U0068',3),('U0059','U0069',4),('U0060','U0070',5),('U0061','U0071',5),('U0062','U0072',5),('U0063','U0073',5),('U0064','U0074',4),('U0065','U0075',3),('U0066','U0076',5),('U0067','U0077',4),('U0068','U0078',3),('U0069','U0079',5),('U0070','U0080',5),('U0071','U0081',4),('U0072','U0082',5),('U0073','U0083',5),('U0074','U0084',4),('U0075','U0085',5),('U0076','U0086',4),('U0077','U0087',5),('U0078','U0088',4),('U0079','U0089',4),('U0080','U0090',3),('U0081','U0091',2),('U0082','U0092',3),('U0083','U0093',5),('U0084','U0094',4),('U0085','U0095',3),('U0086','U0096',4),('U0087','U0097',3),('U0088','U0098',5),('U0089','U0099',4),('U0090','U0100',4),('U0091','U0001',5),('U0092','U0002',5),('U0093','U0003',4),('U0094','U0004',5),('U0095','U0005',4),('U0096','U0006',3),('U0097','U0007',5),('U0098','U0008',4),('U0099','U0009',3),('U0100','U0010',5);
/*!40000 ALTER TABLE `grade_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interested_in_gender`
--

DROP TABLE IF EXISTS `interested_in_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interested_in_gender` (
  `interested_gender_id` varchar(6) NOT NULL,
  `gender_id` varchar(2) NOT NULL,
  PRIMARY KEY (`interested_gender_id`),
  KEY `fk_interestgenderid` (`gender_id`),
  CONSTRAINT `fk_interestgenderid` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interested_in_gender`
--

LOCK TABLES `interested_in_gender` WRITE;
/*!40000 ALTER TABLE `interested_in_gender` DISABLE KEYS */;
INSERT INTO `interested_in_gender` (`interested_gender_id`, `gender_id`) VALUES ('IG0001','G1'),('IG0002','G1'),('IG0003','G1'),('IG0004','G1'),('IG0005','G1'),('IG0006','G1'),('IG0007','G1'),('IG0008','G1'),('IG0009','G1'),('IG0010','G1'),('IG0011','G1'),('IG0012','G1'),('IG0013','G1'),('IG0014','G1'),('IG0015','G1'),('IG0016','G1'),('IG0017','G1'),('IG0018','G1'),('IG0019','G1'),('IG0020','G1'),('IG0021','G1'),('IG0022','G1'),('IG0023','G1'),('IG0024','G1'),('IG0025','G1'),('IG0026','G1'),('IG0027','G1'),('IG0028','G1'),('IG0029','G1'),('IG0030','G1'),('IG0031','G1'),('IG0032','G1'),('IG0033','G1'),('IG0034','G1'),('IG0035','G1'),('IG0036','G1'),('IG0037','G1'),('IG0092','G1'),('IG0093','G1'),('IG0094','G1'),('IG0095','G1'),('IG0096','G1'),('IG0097','G1'),('IG0098','G1'),('IG0099','G1'),('IG0100','G1'),('IG0101','G1'),('IG0102','G1'),('IG0103','G1'),('IG0038','G2'),('IG0039','G2'),('IG0040','G2'),('IG0041','G2'),('IG0042','G2'),('IG0043','G2'),('IG0044','G2'),('IG0045','G2'),('IG0046','G2'),('IG0047','G2'),('IG0048','G2'),('IG0049','G2'),('IG0050','G2'),('IG0051','G2'),('IG0052','G2'),('IG0053','G2'),('IG0054','G2'),('IG0055','G2'),('IG0056','G2'),('IG0057','G2'),('IG0058','G2'),('IG0059','G2'),('IG0060','G2'),('IG0061','G2'),('IG0062','G2'),('IG0063','G2'),('IG0064','G2'),('IG0065','G2'),('IG0066','G2'),('IG0067','G2'),('IG0068','G2'),('IG0069','G2'),('IG0070','G2'),('IG0071','G2'),('IG0072','G2'),('IG0073','G2'),('IG0074','G2'),('IG0075','G2'),('IG0076','G2'),('IG0077','G2'),('IG0078','G2'),('IG0079','G2'),('IG0080','G2'),('IG0081','G2'),('IG0082','G2'),('IG0083','G2'),('IG0084','G2'),('IG0085','G2'),('IG0086','G2'),('IG0087','G2'),('IG0088','G2'),('IG0089','G2'),('IG0090','G2'),('IG0091','G2');
/*!40000 ALTER TABLE `interested_in_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interested_in_relation`
--

DROP TABLE IF EXISTS `interested_in_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interested_in_relation` (
  `interested_relation_id` varchar(6) NOT NULL,
  `interested_user_id` varchar(5) NOT NULL,
  PRIMARY KEY (`interested_relation_id`),
  KEY `fk_interestid` (`interested_user_id`),
  CONSTRAINT `fk_interestid` FOREIGN KEY (`interested_user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interested_in_relation`
--

LOCK TABLES `interested_in_relation` WRITE;
/*!40000 ALTER TABLE `interested_in_relation` DISABLE KEYS */;
INSERT INTO `interested_in_relation` (`interested_relation_id`, `interested_user_id`) VALUES ('IR0001','U0001'),('IR0002','U0006'),('IR0003','U0009'),('IR0004','U0011'),('IR0005','U0012'),('IR0006','U0013'),('IR0007','U0016'),('IR0008','U0023'),('IR0009','U0024'),('IR0010','U0025'),('IR0011','U0031'),('IR0012','U0032'),('IR0013','U0038'),('IR0014','U0039'),('IR0015','U0041'),('IR0016','U0043'),('IR0017','U0045'),('IR0018','U0048'),('IR0019','U0049'),('IR0040','U0052'),('IR0020','U0056'),('IR0021','U0057'),('IR0041','U0058'),('IR0022','U0059'),('IR0023','U0060'),('IR0024','U0061'),('IR0025','U0065'),('IR0026','U0066'),('IR0042','U0067'),('IR0027','U0068'),('IR0028','U0070'),('IR0029','U0071'),('IR0043','U0073'),('IR0030','U0074'),('IR0031','U0076'),('IR0044','U0078'),('IR0032','U0079'),('IR0033','U0080'),('IR0034','U0083'),('IR0045','U0084'),('IR0035','U0085'),('IR0046','U0086'),('IR0036','U0087'),('IR0037','U0088'),('IR0047','U0089'),('IR0038','U0090'),('IR0048','U0092'),('IR0052','U0093'),('IR0049','U0095'),('IR0050','U0096'),('IR0051','U0096'),('IR0053','U0098'),('IR0054','U0099'),('IR0039','U0100');
/*!40000 ALTER TABLE `interested_in_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male`
--

DROP TABLE IF EXISTS `male`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male` (
  `gender_id` varchar(2) NOT NULL,
  `gender_name` varchar(4) NOT NULL,
  `user_account_id` varchar(5) NOT NULL,
  `id_type_male` varchar(2) NOT NULL,
  `type_male` varchar(11) NOT NULL,
  KEY `fk_malegenderid` (`gender_id`),
  CONSTRAINT `fk_malegenderid` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male`
--

LOCK TABLES `male` WRITE;
/*!40000 ALTER TABLE `male` DISABLE KEYS */;
INSERT INTO `male` (`gender_id`, `gender_name`, `user_account_id`, `id_type_male`, `type_male`) VALUES ('G1','Male','U0001','M1','Normal'),('G1','Male','U0006','M1','Normal'),('G1','Male','U0009','M2','Transgender'),('G1','Male','U0011','M1','Normal'),('G1','Male','U0012','M3','Transsexual'),('G1','Male','U0013','M2','Transgender'),('G1','Male','U0016','M1','Normal'),('G1','Male','U0023','M1','Normal'),('G1','Male','U0024','M1','Normal'),('G1','Male','U0025','M1','Normal'),('G1','Male','U0031','M1','Normal'),('G1','Male','U0032','M2','Transgender'),('G1','Male','U0038','M2','Transgender'),('G1','Male','U0039','M2','Transgender'),('G1','Male','U0041','M3','Transsexual'),('G1','Male','U0043','M3','Transsexual'),('G1','Male','U0045','M2','Transgender'),('G1','Male','U0048','M1','Normal'),('G1','Male','U0049','M1','Normal'),('G1','Male','U0056','M1','Normal'),('G1','Male','U0057','M2','Transgender'),('G1','Male','U0059','M3','Transsexual'),('G1','Male','U0060','M1','Normal'),('G1','Male','U0061','M1','Normal'),('G1','Male','U0065','M1','Normal'),('G1','Male','U0066','M1','Normal'),('G1','Male','U0068','M1','Normal'),('G1','Male','U0070','M2','Transgender'),('G1','Male','U0071','M3','Transsexual'),('G1','Male','U0074','M2','Transgender'),('G1','Male','U0076','M1','Normal'),('G1','Male','U0079','M1','Normal'),('G1','Male','U0080','M1','Normal'),('G1','Male','U0083','M1','Normal'),('G1','Male','U0085','M3','Transsexual'),('G1','Male','U0087','M2','Transgender'),('G1','Male','U0088','M1','Normal'),('G1','Male','U0090','M1','Normal'),('G1','Male','U0094','M1','Normal'),('G1','Male','U0097','M3','Transsexual');
/*!40000 ALTER TABLE `male` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` varchar(5) NOT NULL,
  `participant_id` varchar(5) NOT NULL,
  `message_text` varchar(2) NOT NULL,
  `timestamp` varchar(17) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `fk_messparticipant` (`participant_id`),
  CONSTRAINT `fk_messparticipant` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`message_id`, `participant_id`, `message_text`, `timestamp`) VALUES ('M0001','U0090','hi','8/7/2021 19:50:27');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `participant_id` varchar(5) NOT NULL,
  `conversation_id` varchar(6) NOT NULL,
  `time_joined` varchar(17) NOT NULL,
  `time_left` varchar(17) NOT NULL,
  PRIMARY KEY (`participant_id`),
  KEY `fk_particonvo` (`conversation_id`),
  CONSTRAINT `fk_particonvo` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` (`participant_id`, `conversation_id`, `time_joined`, `time_left`) VALUES ('U0090','CV0001','8/6/2021 20:49:07','8/9/2021 10:34:23');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relasiketertarikan`
--

DROP TABLE IF EXISTS `relasiketertarikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relasiketertarikan` (
  `interested_relation_id` varchar(6) NOT NULL,
  `id` varchar(5) NOT NULL,
  PRIMARY KEY (`interested_relation_id`),
  KEY `fk_relasiid` (`id`),
  CONSTRAINT `fk_relasiid` FOREIGN KEY (`id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relasiketertarikan`
--

LOCK TABLES `relasiketertarikan` WRITE;
/*!40000 ALTER TABLE `relasiketertarikan` DISABLE KEYS */;
INSERT INTO `relasiketertarikan` (`interested_relation_id`, `id`) VALUES ('IR0042','U0002'),('IR0043','U0002'),('IR0001','U0003'),('IR0002','U0004'),('IR0003','U0005'),('IR0044','U0007'),('IR0004','U0008'),('IR0045','U0010'),('IR0046','U0014'),('IR0005','U0015'),('IR0047','U0017'),('IR0006','U0018'),('IR0007','U0019'),('IR0008','U0020'),('IR0048','U0021'),('IR0009','U0022'),('IR0049','U0026'),('IR0010','U0027'),('IR0011','U0028'),('IR0012','U0029'),('IR0013','U0030'),('IR0014','U0033'),('IR0050','U0034'),('IR0015','U0035'),('IR0016','U0036'),('IR0017','U0037'),('IR0051','U0040'),('IR0018','U0042'),('IR0052','U0044'),('IR0053','U0046'),('IR0054','U0047'),('IR0019','U0050'),('IR0020','U0051'),('IR0021','U0053'),('IR0022','U0054'),('IR0023','U0055'),('IR0024','U0062'),('IR0025','U0063'),('IR0026','U0064'),('IR0027','U0069'),('IR0028','U0072'),('IR0029','U0075'),('IR0030','U0077'),('IR0031','U0081'),('IR0032','U0082'),('IR0039','U0090'),('IR0033','U0091'),('IR0034','U0093'),('IR0040','U0094'),('IR0041','U0097'),('IR0035','U0098'),('IR0036','U0099'),('IR0037','U0100'),('IR0038','U0100');
/*!40000 ALTER TABLE `relasiketertarikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship_type`
--

DROP TABLE IF EXISTS `relationship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship_type` (
  `relationship_id` varchar(2) NOT NULL,
  `name` varchar(9) NOT NULL,
  PRIMARY KEY (`relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship_type`
--

LOCK TABLES `relationship_type` WRITE;
/*!40000 ALTER TABLE `relationship_type` DISABLE KEYS */;
INSERT INTO `relationship_type` (`relationship_id`, `name`) VALUES ('R1','match'),('R2','not_match');
/*!40000 ALTER TABLE `relationship_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religion`
--

DROP TABLE IF EXISTS `religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `religion` (
  `religion_id` varchar(2) NOT NULL,
  `religion_name` varchar(9) NOT NULL,
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religion`
--

LOCK TABLES `religion` WRITE;
/*!40000 ALTER TABLE `religion` DISABLE KEYS */;
INSERT INTO `religion` (`religion_id`, `religion_name`) VALUES ('R1','Islam'),('R2','Kristen'),('R3','Katholik'),('R4','Hindu'),('R5','Buddha'),('R6','Konghuchu'),('R7','Atheis');
/*!40000 ALTER TABLE `religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiperelasi`
--

DROP TABLE IF EXISTS `tiperelasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiperelasi` (
  `interested_relation_id` varchar(6) NOT NULL,
  `relationship_id` varchar(2) NOT NULL,
  PRIMARY KEY (`interested_relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiperelasi`
--

LOCK TABLES `tiperelasi` WRITE;
/*!40000 ALTER TABLE `tiperelasi` DISABLE KEYS */;
INSERT INTO `tiperelasi` (`interested_relation_id`, `relationship_id`) VALUES ('IR0001','R2'),('IR0002','R2'),('IR0003','R2'),('IR0004','R2'),('IR0005','R2'),('IR0006','R2'),('IR0007','R2'),('IR0008','R2'),('IR0009','R2'),('IR0010','R2'),('IR0011','R2'),('IR0012','R2'),('IR0013','R2'),('IR0014','R2'),('IR0015','R2'),('IR0016','R2'),('IR0017','R2'),('IR0018','R2'),('IR0019','R2'),('IR0020','R2'),('IR0021','R2'),('IR0022','R2'),('IR0023','R2'),('IR0024','R2'),('IR0025','R2'),('IR0026','R2'),('IR0027','R2'),('IR0028','R2'),('IR0029','R2'),('IR0030','R2'),('IR0031','R2'),('IR0032','R2'),('IR0033','R2'),('IR0034','R2'),('IR0035','R2'),('IR0036','R2'),('IR0037','R2'),('IR0038','R1'),('IR0039','R1'),('IR0040','R2'),('IR0041','R2'),('IR0042','R2'),('IR0043','R2'),('IR0044','R2'),('IR0045','R2'),('IR0046','R2'),('IR0047','R2'),('IR0048','R2'),('IR0049','R2'),('IR0050','R2'),('IR0051','R2'),('IR0052','R2'),('IR0053','R2'),('IR0054','R2');
/*!40000 ALTER TABLE `tiperelasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_account`
--

DROP TABLE IF EXISTS `type_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_account` (
  `id` varchar(5) NOT NULL,
  `is_premium` varchar(5) NOT NULL,
  `days` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_account`
--

LOCK TABLES `type_account` WRITE;
/*!40000 ALTER TABLE `type_account` DISABLE KEYS */;
INSERT INTO `type_account` (`id`, `is_premium`, `days`) VALUES ('U0001','TRUE',7),('U0002','FALSE',0),('U0003','TRUE',90),('U0004','TRUE',7),('U0005','TRUE',90),('U0006','TRUE',180),('U0007','TRUE',30),('U0008','TRUE',7),('U0009','TRUE',30),('U0010','TRUE',180),('U0011','FALSE',0),('U0012','FALSE',0),('U0013','FALSE',0),('U0014','TRUE',30),('U0015','FALSE',0),('U0016','TRUE',7),('U0017','TRUE',90),('U0018','TRUE',180),('U0019','FALSE',0),('U0020','TRUE',7),('U0021','TRUE',7),('U0022','FALSE',0),('U0023','FALSE',0),('U0024','FALSE',0),('U0025','TRUE',180),('U0026','FALSE',0),('U0027','TRUE',90),('U0028','FALSE',0),('U0029','TRUE',7),('U0030','FALSE',0),('U0031','FALSE',0),('U0032','TRUE',90),('U0033','FALSE',0),('U0034','FALSE',0),('U0035','FALSE',0),('U0036','FALSE',0),('U0037','FALSE',0),('U0038','FALSE',0),('U0039','FALSE',0),('U0040','FALSE',0),('U0041','TRUE',180),('U0042','FALSE',0),('U0043','FALSE',0),('U0044','FALSE',0),('U0045','TRUE',30),('U0046','FALSE',0),('U0047','TRUE',30),('U0048','FALSE',0),('U0049','FALSE',0),('U0050','FALSE',0),('U0051','TRUE',30),('U0052','TRUE',30),('U0053','FALSE',0),('U0054','FALSE',0),('U0055','FALSE',0),('U0056','TRUE',180),('U0057','FALSE',0),('U0058','TRUE',90),('U0059','FALSE',0),('U0060','FALSE',0),('U0061','FALSE',0),('U0062','FALSE',0),('U0063','TRUE',7),('U0064','FALSE',0),('U0065','TRUE',90),('U0066','FALSE',0),('U0067','FALSE',0),('U0068','FALSE',0),('U0069','TRUE',7),('U0070','FALSE',0),('U0071','TRUE',180),('U0072','TRUE',30),('U0073','FALSE',0),('U0074','FALSE',0),('U0075','TRUE',7),('U0076','FALSE',0),('U0077','TRUE',30),('U0078','TRUE',7),('U0079','TRUE',180),('U0080','TRUE',180),('U0081','FALSE',0),('U0082','TRUE',90),('U0083','FALSE',0),('U0084','TRUE',30),('U0085','TRUE',7),('U0086','TRUE',30),('U0087','TRUE',180),('U0088','TRUE',7),('U0089','TRUE',7),('U0090','FALSE',0),('U0091','TRUE',30),('U0092','TRUE',180),('U0093','TRUE',7),('U0094','FALSE',0),('U0095','TRUE',90),('U0096','TRUE',7),('U0097','FALSE',0),('U0098','FALSE',0),('U0099','TRUE',30),('U0100','TRUE',7);
/*!40000 ALTER TABLE `type_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` varchar(5) NOT NULL,
  `name` varchar(17) NOT NULL,
  `gender_id` varchar(2) NOT NULL,
  `description` varchar(28) NOT NULL,
  `email` varchar(32) NOT NULL,
  `birthday_date` varchar(10) NOT NULL,
  `country` varchar(13) NOT NULL,
  `city` varchar(13) NOT NULL,
  `height` int(11) NOT NULL,
  `religion_id` varchar(2) NOT NULL,
  `school_name` varchar(82) NOT NULL,
  `isVerified` varchar(5) NOT NULL,
  `user_mode` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` (`id`, `name`, `gender_id`, `description`, `email`, `birthday_date`, `country`, `city`, `height`, `religion_id`, `school_name`, `isVerified`, `user_mode`) VALUES ('U0001','Joe Dun','G1','Hardworking','joedun@yahoo.co.en','11/12/1994','UK','London',183,'R2','Evangelische Hochschule für Soziale Arbeit Dresden (FH)','TRUE','date'),('U0002','Lucas Martin','G3','Simpel','lulucasn@ymail.com','02/27/1993','California','Los Angeles',153,'R2','Universiti Tun Hussein Onn Malaysia','TRUE','date'),('U0003','Fifiane Gold','G2','Suka belanja','fifidiamond@gmail.com','03/23/1997','New York','New York',169,'R2','IASE (Institute of Advanced Studies) Deemed University','TRUE','bff'),('U0004','Alicia Jontrun','G2','Pergi ke bulan','dumlicie@hotmail.com','06/07/2003','Indonesia','Yogyakarta',163,'R1','Ohio Valley College','TRUE','bff'),('U0005','Marie Paul','G2','suka lagu rock','paulmar123@ymail.com','05/20/2002','Perancis','Paris',159,'R3','Near East University','FALSE','bff'),('U0006','Fauce Benn','G1','mantan pacarnya iqbal','fben@gmail.com','12/06/1990','Indonesia','Jakarta',176,'R1','Universitas Diponegoro','TRUE','bff'),('U0007','Lo Mulo','G3','gak manja','l0mul0@yahoo.co.de','11/02/2004','Jerman','Munich',146,'R3','Latvian Academy of Music','TRUE','date'),('U0008','Ashley Giri','G2','self-independent banget','4shleyyy@gmail.com','03/26/1997','Belanda','Amsterdam',150,'R3','Universitas Dian Nuswantoro','TRUE','bff'),('U0009','Evans Loft','G1','love hiking','eeeev@gmail.com','10/27/1995','Jepang','Hokaido',182,'R7','Fukuoka International University','FALSE','bff'),('U0010','Antres Yact','G3','pemuda Bali','pantaikupantaimu@yahoo.com','01/29/1993','Indonesia','Denpasar',149,'R4','University Oil- Gas Ploiesti','TRUE','date'),('U0011','Benedict Cucumber','G1','Marvel lovers','scarletnyamati@ymail.com','11/10/1996','Texas','Nevada',177,'R3','Universidade Federal do Maranhao','TRUE','date'),('U0012','Chris Torta','G1','love my work','chr1555@gmail.com','05/29/2001','Indonesia','Medan',180,'R1','Universidad de Oriente','FALSE','date'),('U0013','Dante Astungish','G1','a nurse','danteast@yahoo.co.id','09/17/1997','Indonesia','Balikpapan',162,'R1','Abia State Polytechnic','FALSE','date'),('U0014','Eleanor Rossvelt','G3','programing is my life','eleross292929@hotmail.com','10/20/2002','Jerman','Berlin',173,'R2','University Lucian Blaga of Sibiu','TRUE','bff'),('U0015','Giancara Gultom','G2','design my own life','giancagul@outlook.com','03/17/2004','Indonesia','Balikpapan',147,'R1','Open University of Israel','TRUE','date'),('U0016','Hans Christian','G1','cat holic','hanshanshans@outlook.com','08/20/2001','Indonesia','Tangerang',146,'R1','Kwangwoon University','TRUE','bff'),('U0017','Ilene Mutin','G3','dog breeder','ilmutin99@gmail.com','10/25/1993','Indonesia','Pati',183,'R1','Amoud University','FALSE','date'),('U0018','Karen Nyet','G2','love myself','karen786@gmail.com','04/11/1997','Florida','Malibu',146,'R6','St. Petersburg State Electrotechnical University','TRUE','bff'),('U0019','Nua Nguaye','G2','producing music','nuanguye@studiomu.com','01/26/1998','Korea Selatan','Seoul',159,'R5','Brooklyn Law School','TRUE','date'),('U0020','Oprah Infry','G2','a stage planner','oprah0000@gmail.com','02/07/2004','RRC','Shenzhen',167,'R5','Lahore College for Women University','TRUE','bff'),('U0021','Paul Walker','G3','love to design new things','walkingarroundyou@dolb.com','11/05/1991','California','San Fransisco',189,'R2','Kenya Methodist University','TRUE','bff'),('U0022','Theres Waldof','G2','piano teacher','theres3i4@yahoo.com','08/26/1998','Mexico','Mexico City',157,'R3','Institut de Recherche et d\'Enseignement Supérieur aux Techniques de l\'électronique','TRUE','date'),('U0023','Rigo Eze','G1','freelancer','rigoeze123456@gmail.com','04/16/2004','Indonesia','Bandung',160,'R4','University of Health Sciences','TRUE','date'),('U0024','Sans Yuta','G1','penjual galon','99sans99yuta99@yahoo.co.en','07/26/1996','Brazil','Sao Paulo',165,'R3','Volgograd State University','TRUE','date'),('U0025','Atyu Mullen','G1','juragan pom bensin','pombensin@gmail.com','04/01/1995','Thailand','Bangkok',145,'R7','Islamic Azad University, Shahryar','TRUE','date'),('U0026','Bernie Edward','G3','penyuka lampu merah','berniemerah@hotmail.com','11/22/1998','Thailand','Chiang Mai',186,'R7','Université Michel de Montaigne (Bordeaux III )','FALSE','date'),('U0027','Puji Lestari','G2','zebra cross photographer','pujilestari1@hotmail.com','06/17/1991','Indonesia','Wonosobo',175,'R1','Institute of Accountancy Arusha','FALSE','date'),('U0028','Durawa Dirlaba','G2','tech enthusiasm','durawaatech@ymail.com','04/22/1994','RRC','Shanghai',149,'R7','Dong-A University','FALSE','bff'),('U0029','Shen Xiatong','G2','a writer','shenwritesyou@gmail.com','07/11/2000','RRC','Harbin',150,'R7','New York College of Podiatric Medicine','TRUE','bff'),('U0030','Ezaki Haru','G2','metro tv journalist','ezakiharu@metrotv.berita.com','07/22/1992','Jepang','Fukuoka',188,'R5','El Colegio de México','FALSE','date'),('U0031','Guten Razorg','G1','love to sleep','gutensleep@yahoo.com','08/21/2002','Jepang','Tokyo',164,'R5','Shomal University','TRUE','bff'),('U0032','Aufa Shidiw','G1','dog lovers','aufalovedog@hotmail.com','07/14/1990','Vietnam','Hanoi',151,'R6','Takestan Islamic Azad University','TRUE','bff'),('U0033','Theresa Martini','G2','sjw twitter','pancaindra@gmail.com','01/27/1990','Malaysia','Kuala Lumpur',158,'R1','Florida Metropolitan University, Fort Lauderdale College','TRUE','date'),('U0034','Sidi Siwi','G3','dorayaki seller','sidisiwi@yahoo.com','05/29/1992','Jepang','Osaka',162,'R5','Kanazawa University','FALSE','bff'),('U0035','Putri Anjelita','G2','kembaran scarlet johhanson','putrianjel66@hotmail.com','08/08/2003','Jepang','Kyoto',167,'R5','Universidad de Puerto Rico, Carolina','TRUE','bff'),('U0036','Veronica Adrianto','G2','lo gue end!!!','adriantohecks@hotmail.com','10/12/2000','Indonesia','Lombok',163,'R1','Columbia College South Carolina','TRUE','date'),('U0037','Liziana Ewat','G2','misi kang bakso lewat','kangbasomaujualan@gmail.com','09/26/1994','Rusia','Moskow',155,'R2','Yaba College of Technology','FALSE','bff'),('U0038','Seungkwan Boo','G1','aku nyari yang serius','sukanyanyi@pledisent.com','06/03/1998','Korea Selatan','Jeju',163,'R2','Universidad de Los Andes','FALSE','bff'),('U0039','Mozart Siegern','G1','lagi mau terbang nih','mozartpilot@garuda.com','05/21/1997','Korea Selatan','Daegu',186,'R2','Flinders University of South Australia','FALSE','date'),('U0040','Seungchol Kim','G3','pernah kepental','naiikmobil@gmail.com','12/16/1999','Korea Selatan','Incheon',172,'R2','Tianjin Polytechnic University','TRUE','bff'),('U0041','Amigdala Foo','G1','habis nangis jgn diganggu!!!','foohujan@yahoo.co.en','06/28/2001','Jepang','Tokyo',182,'R7','Centro de Estudios Investigación y Tecnología (CEIT)','FALSE','bff'),('U0042','Luina Sian','G2','nasi uduk enak loh','criggh1922@yahoo.com','03/15/1998','Indonesia','Banten',184,'R1','Université Quisqueya','TRUE','bff'),('U0043','Abura Baru','G1','suka diving','aburadiv@gmail.com','01/30/1996','Indonesia','Balikpapan',170,'R1','Tenri University','FALSE','date'),('U0044','Ugunda Rush','G3','pengen ke raja ampat','ampatking9999@gmail.com','05/22/2001','Indonesia','Brebes',154,'R3','Andhra University','TRUE','date'),('U0045','Wager Runi','G1','asal sumatera','runiwag@gmail.com','10/21/1998','Indonesia','Medan',152,'R3','Merlimau Polytechnic','FALSE','date'),('U0046','Jinyoung Bae','G3','medan boys','baejun@yahoo.com','03/25/2000','Korea Selatan','Busan',155,'R7','Universidad Ciencias Comerciales','FALSE','date'),('U0047','Amuro Toru','G3','conan lovers are welcome','amurawasabi@gmail.com','11/04/1991','Jepang','Osaka',158,'R4','Vietnam National University Hanoi','TRUE','date'),('U0048','Bang Si Hyuk','G1','lulusan SNU nich','bangsihyuk@hybeentertaiment.com','12/03/1997','Korea Selatan','Seoul',176,'R3','International University College of Technology Twintech (IUCTT)','FALSE','date'),('U0049','Rumanio Golf','G1','gasuka golf','rumania60lf@yahoo.com','08/15/2001','Thailand','Chiang Mai',151,'R1','Webster University, Thailand','FALSE','bff'),('U0050','Minjeong Kim','G2','suara emas','winter@hotmail.com','07/21/1993','Korea Selatan','Seoul',165,'R1','Ecole d\'Architecture de Nancy','FALSE','bff'),('U0051','Karina Lusiana','G2','kunjungi shopeeku ya!','karinalusiana@shopee.co.id','04/06/1996','Indonesia','Brebes',145,'R2','Universidad de Especialidades del Espíritu Santo','FALSE','date'),('U0052','Yizhou Ning','G3','pernah muncul di tv','ningning26@gmail.com','01/10/2001','RRC','Harbin',156,'R1','Nukus State Teachers Training Institute','FALSE','date'),('U0053','Uchinaga Aeri','G2','scarlet hearts','aeriuchinaga@go.ent.com','09/11/2003','Jepang','Tokyo',188,'R1','European Regional Educational Academy of Armenia','FALSE','date'),('U0054','Jeonghan Min','G2','mau ke tokyo','minjenghen@gmail.com','10/18/2004','Korea Selatan','Daegu',186,'R1','Webster University, Vienna','FALSE','bff'),('U0055','Petite Rush','G2','remote worker','joshlaboy22@gmail.com','11/16/1993','California','Los Angeles',187,'R6','Wayo Women\'s University','FALSE','bff'),('U0056','Hoshi Kwon','G1','electric guitars collector','hoshitiger3232@hotmail.com','04/24/1992','Korea Selatan','Ilsan',172,'R5','City University of New York, Brooklyn College','TRUE','bff'),('U0057','Donghuk Ji','G1','random anaknya','rabbitinvander@gmail.com','09/27/2001','Korea Selatan','Busan',151,'R5','Islamic Azad University, Yazd','FALSE','bff'),('U0058','Dino Usher','G3','takut ketinggian','dinosauruspergi@hotmail.com','07/24/1993','UK','Manchester',158,'R2','Banat\'s University of Agricultural Sciences','FALSE','bff'),('U0059','Vernon Choi','G1','gak bisa makan keju','penonmakansapi@gmail.com','01/15/1994','Florida','Malibu',174,'R7','Soai University','FALSE','date'),('U0060','Soco Bod','G1','suka udang','akunsoco@gmail.com','08/10/1996','Singapura','Singapura',158,'R5','Sri Sant Gajanan Maharaj College of Engineering','TRUE','date'),('U0061','Taehun Kang','G1','punya tambak udang','tahuntahunbersama@yahoo.com','06/23/1997','Singapura','Singapura',169,'R5','Ecole Nationale Supérieure du Pétrole et des Monteurs','FALSE','date'),('U0062','Lyla Paris','G2','hidup segan','pergikeparis@gmail.com','06/16/1994','Indonesia','Jakarta',172,'R6','Debrecen University of Agricultural Sciences','TRUE','date'),('U0063','Ashley Collins','G2','mati tak mau','ashleycollins@yahoo.com','02/10/1990','Indonesia','Denpasar',189,'R1','Regent University','FALSE','bff'),('U0064','Emma Watson','G2','bagai pinang','emmawatson@warnerbros.com','07/09/1998','Indonesia','Surabaya',178,'R5','Kanagawa Institute of Technology','FALSE','bff'),('U0065','Daniel Radcliffe','G1','dibelah dua','danielraddddd@warnerbros.com','12/20/2001','Indonesia','Semarang',167,'R5','Westmont College','FALSE','bff'),('U0066','Ruppert Grint','G1','sekali mendayung','ruppertgrint@warnerbros.com','05/06/2002','Indonesia','Lampung',148,'R1','Universidad de Cantabria','TRUE','bff'),('U0067','Bayu Sihir','G3','dua tiga','ronweasley@harpot.com','11/24/2003','Indonesia','Padang',152,'R2','Université Michel de Montaigne (Bordeaux III )','TRUE','bff'),('U0068','Irik Rayi','G1','pulau terlampaui','irikririkan@gmail.com','05/10/2002','Malaysia','Kuching',157,'R2','St. Edwards University','FALSE','bff'),('U0069','Lagiana Bungin','G2','suka angin','lagianalagiapa@yahoo.com','05/08/1998','Indonesia','Bogor',172,'R2','Tokyo University','FALSE','bff'),('U0070','Rush Tomoreow','G1','watching sunset rn','buruburumulu@hotmail.com','02/11/2000','Singapura','Singapura',189,'R2','Academy of Sports and Physical Training','FALSE','bff'),('U0071','Azik Zerbaji','G1','dodge ball lovers','azikzerbaj111@gmail.com','11/10/1993','Singapura','Singapura',176,'R7','Universidad Nacional Santiago Antúnez de Mayolo','TRUE','date'),('U0072','Berlaitium Bella','G2','NBA enthusiast','bellabellabellanegara2@gmail.com','01/05/2003','Malaysia','Selangor',155,'R1','University of Botswana','FALSE','date'),('U0073','Manuel Pasin','G3','pergi ke mekkah','mauumroh@gmail.com','12/17/2002','Indonesia','Pontianak',173,'R1','Victoria University of Wellington','TRUE','date'),('U0074','Hyunjin Hwang','G1','rap is my style','hwangsamuel@jyp.ent.com','01/20/1999','Korea Selatan','Seoul',157,'R1','Vilnius Pedagogical University','FALSE','date'),('U0075','Giselle Uchiha','G2','di pulau berpenghuni','uchihagisel@sm.ent.com','03/29/1997','Jepang','Tokyo',146,'R1','Universidad Católica Boliviana, Cochabamba','FALSE','date'),('U0076','Naruto Uzumaki','G1','jalan jalan','konohagakure@konoha.com','10/02/2001','Jepang','Kyoto',182,'R6','Tata Institute of Social Sciences','FALSE','date'),('U0077','Sakura Kohe','G2','ke pasar rebo','sakurak00@konoha.com','02/25/2001','Singapura','Singapura',145,'R5','Gordon College','FALSE','date'),('U0078','Sasuke Mari','G3','pulang ke rumah','sasasauke@konoha.com','08/01/1999','Jepang','Hokaido',149,'R5','Seoul Teological University','TRUE','date'),('U0079','Shinichi Kudo','G1','beli pisang dulu','shinichi@gmail.com','02/01/1992','Jepang','Tokyo',186,'R2','Tarbiat Modares University','FALSE','date'),('U0080','August Rift','G1','korek api','riftyourshoes@gmail.com','11/01/2002','Jerman','Frankfurt',169,'R7','Tomsk Polytechnic University','TRUE','bff'),('U0081','Mansae Rin','G2','gadis sampul','hebatrin@gmail.com','08/16/2000','Indonesia','Kudus',157,'R5','Portland State University','FALSE','bff'),('U0082','Wei Lian','G2','lulusan stanford','weilian23434@gmail.com','04/17/1996','Indonesia','Yogyakarta',174,'R5','Minneapolis College of Art and Design','FALSE','date'),('U0083','Wange Ught','G1','tinggal di maastricht dulu','orangpinggiran1@gmail.com','02/02/1998','Indonesia','Sidoarjo',157,'R6','Papua New Guinea University of Technology','FALSE','date'),('U0084','Taeyeong Lee','G3','bangun rumah','orangpinggiran2@gmail.com','12/31/2003','Indonesia','Bandung',174,'R1','Cornish College of the Arts','TRUE','date'),('U0085','Jaehyun Kim','G1','desain baju','orangpinggiran3@gmail.com','10/16/1990','Indonesia','Solo',170,'R5','Gardner Webb University','FALSE','date'),('U0086','Jaemin Park','G3','naik delman','orangpinggiran4@gmail.com','04/01/2000','Indonesia','Klaten',188,'R5','Ecole Supérieure des Techniques Industrielles et des Textiles','TRUE','date'),('U0087','Jisung Park','G1','lagi ke kota','orangpinggiran5@gmail.com','09/20/2002','Indonesia','Yogyakarta',145,'R5','National Dairy Research Institute','TRUE','date'),('U0088','Luigi Bae','G1','duduk sama ayah','hahaahihuhe@gmail.com','07/08/1997','Indonesia','Jakarta',187,'R1','École nationale d\'administration publique, Université du Québec','FALSE','bff'),('U0089','Astaga Naga','G3','pak kusir','naikdelman@yahoo.co.en','04/30/1995','Indonesia','Palembang',175,'R2','Pillsbury Baptist Bible College','FALSE','bff'),('U0090','Sdnoces Oga','G1','misi mau lewat','puntenkangmasmbakyu@gmail.com','10/27/1998','Indonesia','Denpasar',158,'R2','Cleveland State University','TRUE','bff'),('U0091','Alymud Rose','G2','punten','alymudant2923890@gmail.com','04/15/2000','Jerman','Berlin',158,'R2','Islamic University in Uganda','FALSE','bff'),('U0092','Aster Hubgit','G3','titipan Tuhan','akunpalsu@gmail.com','12/23/2001','Jerman','Bremen',168,'R2','Concordia College, Seward','TRUE','date'),('U0093','Qulaires Tyre','G2','pergi ke kafe','kamupikiriiniasli@gmail.com','11/09/2002','Jerman','Aanchen',190,'R7','Keiai University','TRUE','date'),('U0094','Bang Rowper','G1','suka kamu','ihbangih@gmail.com','04/05/1994','Jerman','Munich',170,'R1','Université Paris-Sorbonne (Paris IV)','TRUE','date'),('U0095','Adit Sanjaya','G3','benci lo','bangetbenget@gmail.com','03/31/1994','Jerman','Berlin',147,'R1','University of Science and Technology','TRUE','date'),('U0096','Mario Lari','G3','pergi aja sono','kelautaja@yahoo.co.id','05/10/2001','Jerman','Frankfurt',148,'R1','Universidad Autónoma \"Benito Juárez\" de Oaxaca','FALSE','date'),('U0097','Adrian Wijarnata','G1','polaroid lovers','perikemauan@gmail.com','05/15/1991','Indonesia','Klaten',148,'R1','Fachhochschule Potsdam','TRUE','date'),('U0098','Sarah Monte','G2','koleksi boneka','anakayam@gmail.com','12/09/1991','Indonesia','Yogyakarta',155,'R1','Universidad Autónoma de Querétaro','FALSE','date'),('U0099','Deka Rusmiana','G2','koleksi hewan','maubeli12@gmail.com','01/26/1996','Indonesia','Jakarta',186,'R7','Fundaçao Educacional de Ituverava','TRUE','date'),('U0100','Paula Asher','G2','coffee shop owner','espresso@gmail.com','05/07/2004','Indonesia','Palembang',187,'R7','Utsunomiya University','TRUE','date');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace`
--

DROP TABLE IF EXISTS `workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace` (
  `id` varchar(5) NOT NULL,
  `workplace_name` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace`
--

LOCK TABLES `workplace` WRITE;
/*!40000 ALTER TABLE `workplace` DISABLE KEYS */;
INSERT INTO `workplace` (`id`, `workplace_name`) VALUES ('U0001','Skinte'),('U0002','Muxo'),('U0003','Feedspan'),('U0004','Janyx'),('U0005','Browsetype'),('U0006','Tagtune'),('U0007','Tagopia'),('U0008','Yambee'),('U0009','Npath'),('U0010','Leexo'),('U0011','Talane'),('U0012','Vidoo'),('U0013','Roodel'),('U0014','Gabtune'),('U0015','Aimbu'),('U0016','Oozz'),('U0017','Rhyloo'),('U0018','Latz'),('U0019','Feedfire'),('U0020','Lazzy'),('U0021','Kwilith'),('U0022','Browsezoom'),('U0023','Youfeed'),('U0024','Yombu'),('U0025','Flipbug'),('U0026','Dabvine'),('U0027','Realbridge'),('U0028','Bubblebox'),('U0029','Zoombeat'),('U0030','Shuffledrive'),('U0031','Topicstorm'),('U0032','Oyonder'),('U0033','Midel'),('U0034','Kayveo'),('U0035','Trupe'),('U0036','Gabtype'),('U0037','Flashdog'),('U0038','Bubblebox'),('U0039','Meemm'),('U0040','Twimm'),('U0041','Tazzy'),('U0042','Zoozzy'),('U0043','Tagopia'),('U0044','Zoomlounge'),('U0045','Ntag'),('U0046','Wordify'),('U0047','Skibox'),('U0048','Oyondu'),('U0049','Gabcube'),('U0050','Jazzy'),('U0051','Youbridge'),('U0052','Tagpad'),('U0053','Rhybox'),('U0054','Trilia'),('U0055','Skiptube'),('U0056','Thoughtsphere'),('U0057','Linkbuzz'),('U0058','Jatri'),('U0059','Flipopia'),('U0060','Skimia'),('U0061','Edgeclub'),('U0062','Jabbersphere'),('U0063','Avaveo'),('U0064','Twitterbeat'),('U0065','Miboo'),('U0066','Pixoboo'),('U0067','Browsedrive'),('U0068','Avavee'),('U0069','Viva'),('U0070','Voomm'),('U0071','Edgeblab'),('U0072','Kaymbo'),('U0073','Meeveo'),('U0074','Midel'),('U0075','Yabox'),('U0076','Omba'),('U0077','JumpXS'),('U0078','Abata'),('U0079','Yodo'),('U0080','Dabjam'),('U0081','Midel'),('U0082','Mynte'),('U0083','Yodo'),('U0084','Lazzy'),('U0085','Rhycero'),('U0086','Edgewire'),('U0087','Edgepulse'),('U0088','Quaxo'),('U0089','Wikizz'),('U0090','Npath'),('U0091','Centidel'),('U0092','Avavee'),('U0093','Photobean'),('U0094','Jabberstorm'),('U0095','Topicblab'),('U0096','Skyble'),('U0097','Quatz'),('U0098','Buzzdog'),('U0099','Flashdog'),('U0100','Edgepulse');
/*!40000 ALTER TABLE `workplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 18:45:15
