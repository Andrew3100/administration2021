-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: administration2021
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `administration_table_link`
--

DROP TABLE IF EXISTS `administration_table_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_table_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkname` varchar(120) DEFAULT NULL,
  `link_get` varchar(120) DEFAULT NULL,
  `header` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_table_link`
--

LOCK TABLES `administration_table_link` WRITE;
/*!40000 ALTER TABLE `administration_table_link` DISABLE KEYS */;
INSERT INTO `administration_table_link` VALUES (1,'Очная форма обучения','och','Образование',1),(2,'Заочная форма обчуниея','zaoch','Образование',1),(3,'Иностранные слушатели','aus','Образование',1),(4,'Научные мероприятия','international','Образование',1),(5,'Международные соглашения','international_document','Образование',1),(6,'Программы мобильности','mobile','Образование',1),(7,'Обмен студентами','change','Образование',1),(8,'Информация о грантах','grant','Образование',1),(9,'Международные культурные мероприятия','cult_event','Культура',1),(10,'Соглашения / договора по отрасли культуры','cult_doc','Культура',1),(11,'Международные мероприятия','ec_events','Экономическая политика',1),(12,'Соглашения по отрасли экономической политики','ec_document','Экономическая политика',1),(13,'Международные мероприятия молодёжной политики','young','Молодёжная политика',1);
/*!40000 ALTER TABLE `administration_table_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aus`
--

DROP TABLE IF EXISTS `aus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `qua` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aus`
--

LOCK TABLES `aus` WRITE;
/*!40000 ALTER TABLE `aus` DISABLE KEYS */;
/*!40000 ALTER TABLE `aus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bsu_form_data`
--

DROP TABLE IF EXISTS `bsu_form_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsu_form_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `get_name` text NOT NULL,
  `type_name` text NOT NULL,
  `descriptor_n` varchar(300) DEFAULT NULL,
  `isused` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsu_form_data`
--

LOCK TABLES `bsu_form_data` WRITE;
/*!40000 ALTER TABLE `bsu_form_data` DISABLE KEYS */;
INSERT INTO `bsu_form_data` VALUES (1,'och','list','Страна прибытия',1),(2,'och','text','Высшее образование',1),(3,'och','text','СПО',1),(4,'och','text','Аспиранты',1),(5,'och','text','Принято на 1 курс',1),(6,'och','text','Отчислено',1),(7,'zaoch','list','Страна прибытия',1),(8,'zaoch','text','Высшее образование',1),(9,'zaoch','text','СПО',1),(10,'zaoch','text','Аспиранты',1),(11,'zaoch','text','Принято на 1 курс',1),(12,'zaoch','text','Отчислено',1),(13,'aus','list','Страна прибытия',1),(14,'aus','text','Количество',1),(15,'international','text','Наименование мероприятия',1),(16,'international','date','Дата начала',1),(17,'international','date','Дата окночания',1),(18,'international','text','Место проведения',1),(19,'international','text','Количество участников',1),(20,'international','text','Кратко итоги',1),(21,'international_document','list','Страна',1),(22,'international_document','text','Учебное заведение',1),(23,'international_document','date','Дата заключения договра',1),(24,'international_document','date','Срок действия',1),(25,'international_document','text','Предмет соглашения',1),(26,'mobile','list','Страна',1),(27,'mobile','text','Наименование программы мобильности',1),(28,'change','list','Страна',1),(29,'change','text','Университет',1),(30,'change','date','Дата начала',1),(31,'change','date','Дата окончания',1),(32,'grants','text','Наименование фонда',1),(33,'grants','text','Наименование гранта',1),(34,'grants','list','Страна',1),(35,'grants','date','Период',1),(36,'cult_event','text','Наименование мероприятия',1),(37,'cult_event','text','Цель мероприятия',1),(38,'cult_event','date','Дата проведения',1),(39,'cult_event','text','Количество участников',1),(40,'cult_event','text','Место проведения',1),(41,'cult_event','text','Кратко итоги',1),(42,'cult_event','text','Статус',1),(43,'cult_doc','list','Страна',1),(44,'cult_doc','text','Учреждение',1),(45,'cult_doc','date','Дата заключения договра',1),(46,'cult_doc','date','Дата окончания договора',1),(47,'cult_doc','text','Предмет соглашения',1),(48,'cult_doc','text','Статус',1),(49,'young','text','Наименование мероприятия',1),(50,'young','text','Цель мероприятия',1),(51,'young','date','Дата проведения',1),(52,'young','text','Количество участников',1),(53,'young','text','Место проведения',1),(54,'young','text','Кратко итоги',1),(55,'young','text','Статус',1),(56,'ec_events','text','Наименование мероприятия',1),(57,'ec_events','text','Цель мероприятия',1),(58,'ec_events','date','Дата проведения',1),(59,'ec_events','text','Количество участников',1),(60,'ec_events','text','Место проведения',1),(61,'ec_events','text','Кратко итоги',1),(62,'ec_events','text','Статус приграничный',1),(63,'ec_document','list','Страна',1),(64,'ec_document','text','Учреждение',1),(65,'ec_document','date','Дата заключения договра',1),(66,'ec_document','date','Дата окончания договора',1),(67,'ec_document','text','Предмет соглашения',1),(68,'ec_document','text','Статус',1);
/*!40000 ALTER TABLE `bsu_form_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change`
--

DROP TABLE IF EXISTS `change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `stop` date DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change`
--

LOCK TABLES `change` WRITE;
/*!40000 ALTER TABLE `change` DISABLE KEYS */;
/*!40000 ALTER TABLE `change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cult_doc`
--

DROP TABLE IF EXISTS `cult_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cult_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `agr_date` date DEFAULT NULL,
  `actuality` date DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `agr_status` varchar(120) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cult_doc`
--

LOCK TABLES `cult_doc` WRITE;
/*!40000 ALTER TABLE `cult_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cult_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cult_event`
--

DROP TABLE IF EXISTS `cult_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cult_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(120) DEFAULT NULL,
  `event_target` varchar(120) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `qua` int(11) DEFAULT NULL,
  `event_location` varchar(120) DEFAULT NULL,
  `event_result` varchar(120) DEFAULT NULL,
  `event_status` varchar(120) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cult_event`
--

LOCK TABLES `cult_event` WRITE;
/*!40000 ALTER TABLE `cult_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `cult_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_document`
--

DROP TABLE IF EXISTS `ec_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `agr_date` date DEFAULT NULL,
  `actuality` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_document`
--

LOCK TABLES `ec_document` WRITE;
/*!40000 ALTER TABLE `ec_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_events`
--

DROP TABLE IF EXISTS `ec_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(120) DEFAULT NULL,
  `event_target` varchar(120) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `qua` int(11) DEFAULT NULL,
  `event_location` varchar(120) DEFAULT NULL,
  `event_result` varchar(120) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_events`
--

LOCK TABLES `ec_events` WRITE;
/*!40000 ALTER TABLE `ec_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grant`
--

DROP TABLE IF EXISTS `grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fond_name` varchar(120) DEFAULT NULL,
  `grant_name` varchar(120) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant`
--

LOCK TABLES `grant` WRITE;
/*!40000 ALTER TABLE `grant` DISABLE KEYS */;
INSERT INTO `grant` VALUES (1,'ПутЕнский Грант','ПуТен','Киргизия','2021-03-10',1),(2,'ПутЕнский Грант','ПуТен','Киргизия','2021-03-10',2);
/*!40000 ALTER TABLE `grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `international`
--

DROP TABLE IF EXISTS `international`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `international` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(120) DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_stop` date DEFAULT NULL,
  `event_location` varchar(120) DEFAULT NULL,
  `event_qua` int(11) DEFAULT NULL,
  `event_result` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_clients = @saved_cs_client */;

--
-- Dumping data for table `international`
--

LOCK TABLES `international` WRITE;
/*!40000 ALTER TABLE `international` DISABLE KEYS */;
/*!40000 ALTER TABLE `international` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `international_document`
--

DROP TABLE IF EXISTS `international_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `international_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_document`
--

LOCK TABLES `international_document` WRITE;
/*!40000 ALTER TABLE `international_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `international_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `mobile_program` varchar(120) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `och`
--

DROP TABLE IF EXISTS `och`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `och` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `full_educ` int(11) DEFAULT NULL,
  `spo` int(11) DEFAULT NULL,
  `aspir` int(11) DEFAULT NULL,
  `first_course` int(11) DEFAULT NULL,
  `expelled` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `och`
--

LOCK TABLES `och` WRITE;
/*!40000 ALTER TABLE `och` DISABLE KEYS */;
INSERT INTO `och` VALUES (1,'Паль',0,0,0,0,0,0),(2,'Россия',1,1,1,1,1,1),(3,'Германия',1,1,1,1,1,1);
/*!40000 ALTER TABLE `och` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young`
--

DROP TABLE IF EXISTS `young`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `young` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(120) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `qua` int(11) DEFAULT NULL,
  `event_location` varchar(120) DEFAULT NULL,
  `event_result` varchar(120) DEFAULT NULL,
  `event_status` varchar(45) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young`
--

LOCK TABLES `young` WRITE;
/*!40000 ALTER TABLE `young` DISABLE KEYS */;
INSERT INTO `young` VALUES (1,'Пьянка',NULL,1000,'Белгород','Напились',NULL,'Крутой');
/*!40000 ALTER TABLE `young` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaoch`
--

DROP TABLE IF EXISTS `zaoch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaoch` (
  `id` int(11) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `full_educ` int(11) DEFAULT NULL,
  `spo` int(11) DEFAULT NULL,
  `aspir` int(11) DEFAULT NULL,
  `first_course` int(11) DEFAULT NULL,
  `expelled` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaoch`
--

LOCK TABLES `zaoch` WRITE;
/*!40000 ALTER TABLE `zaoch` DISABLE KEYS */;
/*!40000 ALTER TABLE `zaoch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'administration2021'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 18:48:13
