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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_table_link`
--

LOCK TABLES `administration_table_link` WRITE;
/*!40000 ALTER TABLE `administration_table_link` DISABLE KEYS */;
INSERT INTO `administration_table_link` VALUES (1,'Очная форма обучения','och','Образование',1),(2,'Заочная форма обучения','zaoch','Образование',1),(3,'Иностранные слушатели','aus','Образование',1),(4,'Научные мероприятия','international','Образование',1),(5,'Международные соглашения','international_document','Образование',1),(6,'Программы мобильности','mobile','Образование',1),(7,'Обмен студентами','change','Образование',1),(8,'Информация о грантах','grant','Образование',1),(9,'Международные культурные мероприятия','cult_event','Культура',1),(10,'Соглашения / договора по отрасли культуры','cult_doc','Культура',1),(11,'Международные мероприятия','ec_events','Экономическая политика',1),(12,'Соглашения по отрасли экономической политики','ec_document','Экономическая политика',1),(13,'Международные мероприятия молодёжной политики','young','Молодёжная политика',1),(14,'Международные спортивные мероприятия','sport_inter','Физкультура и спорт',1),(15,'Соглашения / договора по отрасли культуры','sport_doc','Физкультура и спорт',1),(16,'Информация о труде и занятости','work','Труд и занятость',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aus`
--

LOCK TABLES `aus` WRITE;
/*!40000 ALTER TABLE `aus` DISABLE KEYS */;
INSERT INTO `aus` VALUES (1,'Алжир',1,1),(2,'Ангола',4,1),(3,'Афганистан ',11,1),(4,'Гаити',31,1),(5,'Гана',1,1),(6,'Гвинея',1,1),(7,'Египет',18,1),(8,'Замбия ',2,1),(9,'Израиль',5,1),(10,'Иордания',7,1),(11,'Ирак',4,1),(12,'Иран',1,1),(13,'Кения',1,1),(14,'Китай',1,1),(15,'Колумбия',13,1),(16,'Коморские Острова',2,1),(17,'Кот-Дивуар ',3,1),(18,'Ливан',3,1),(19,'Марокко',1,1),(20,'Монголия ',1,1),(21,'Нигерия',3,1),(22,'Оман',2,1),(23,'Палестина',1,1),(24,'Сербия',7,1),(25,'Сирия',2,1),(26,'Судан ',2,1),(27,'Эквадор',36,1);
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
  `fn` varchar(120) DEFAULT NULL,
  `descriptor_n` varchar(300) DEFAULT NULL,
  `isused` int(11) NOT NULL,
  `requred` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsu_form_data`
--

LOCK TABLES `bsu_form_data` WRITE;
/*!40000 ALTER TABLE `bsu_form_data` DISABLE KEYS */;
INSERT INTO `bsu_form_data` VALUES (1,'och','list','country','Страна прибытия',1,1),(2,'och','text','full_educ','Высшее образование',1,1),(3,'och','text','spo','СПО',1,1),(4,'och','text','aspir','Аспиранты',1,1),(5,'och','text','first_course','Принято на 1 курс',1,1),(6,'och','text','expelled','Отчислено',1,1),(7,'zaoch','list','country','Страна прибытия',1,1),(8,'zaoch','text','full_educ','Высшее образование',1,1),(9,'zaoch','text','spo','СПО',1,1),(10,'zaoch','text','aspir','Аспиранты',1,1),(11,'zaoch','text','first_course','Принято на 1 курс',1,1),(12,'zaoch','text','expelled','Отчислено',1,1),(13,'aus','list','country','Страна прибытия',1,1),(14,'aus','text','qua','Количество',1,1),(15,'international','text','event_name','Наименование мероприятия',1,1),(16,'international','date','event_start','Дата начала',1,1),(17,'international','date','event_stop','Дата окночания',1,1),(18,'international','text','event_location','Место проведения',1,1),(19,'international','text','event_qua','Количество участников',1,1),(20,'international','text','event_result','Кратко итоги',1,1),(21,'international_document','list','country','Страна',1,1),(22,'international_document','text','company','Учебное заведение',1,1),(23,'international_document','date','date_start','Дата заключения договра',1,1),(24,'international_document','date','actuality_date','Срок действия',1,1),(25,'international_document','text','subject','Предмет соглашения',1,1),(26,'mobile','list','country','Страна',1,1),(27,'mobile','text','mobile_program','Наименование программы мобильности',1,1),(28,'change','list','country','Страна',1,1),(29,'change','text','company','Университет',1,1),(30,'change','date','start','Дата начала',1,1),(31,'change','date','stop','Дата окончания',1,1),(32,'grant','text','fond_name','Наименование фонда',1,1),(33,'grant','text','grant_name','Наименование гранта',1,1),(34,'grant','list','country','Страна',1,1),(35,'grant','date','date','Период',1,1),(36,'cult_event','text','event_name','Наименование мероприятия',1,1),(37,'cult_event','text','event_target','Цель мероприятия',1,1),(38,'cult_event','date','event_date','Дата проведения',1,1),(39,'cult_event','text','event_qua','Количество участников',1,1),(40,'cult_event','text','event_location','Место проведения',1,1),(41,'cult_event','text','event_result','Кратко итоги',1,1),(42,'cult_event','text','event_status','Статус',1,1),(43,'cult_doc','list','country','Страна',1,1),(44,'cult_doc','text','company','Учреждение',1,1),(45,'cult_doc','date','agr_date','Дата заключения договра',1,1),(46,'cult_doc','date','actuality','Дата окончания договора',1,1),(47,'cult_doc','text','subject','Предмет соглашения',1,1),(48,'cult_doc','text','agr_status','Статус',1,1),(49,'young','text','event_name','Наименование мероприятия',1,1),(50,'young','text','event_target','Цель мероприятия',1,1),(51,'young','date','event_date','Дата проведения',1,1),(52,'young','text','qua','Количество участников',1,1),(53,'young','text','event_location','Место проведения',1,1),(54,'young','text','event_result','Кратко итоги',1,1),(55,'young','text','event_status','Статус',1,1),(56,'ec_events','text','event_name','Наименование мероприятия',1,1),(57,'ec_events','text','event_target','Цель мероприятия',1,1),(58,'ec_events','date','event_date','Дата проведения',1,1),(59,'ec_events','text','qua','Количество участников',1,1),(60,'ec_events','text','event_location','Место проведения',1,1),(61,'ec_events','text','event_result','Кратко итоги',1,1),(62,'ec_events','text','event_status','Статус приграничный',1,1),(63,'ec_document','list','country','Страна',1,1),(64,'ec_document','text','company','Учреждение',1,1),(65,'ec_document','date','agr_date','Дата заключения договра',1,1),(66,'ec_document','date','actuality','Дата окончания договора',1,1),(67,'ec_document','text','subject','Предмет соглашения',1,1),(68,'ec_document','text','event_status','Статус',1,1),(69,'sport_inter','text','event_name','Наименование мероприятия',1,1),(70,'sport_inter','text','event_target','Цель мероприятия',1,1),(71,'sport_inter','date','event_date','Дата проведения',1,1),(72,'sport_inter','text','event_qua','Количество участников',1,1),(73,'sport_inter','text','event_location','Место проведения',1,1),(74,'sport_inter','text','event_status','Статус мероприятия',1,1),(75,'sport_inter','text','event_result','Результаты мероприятия',1,1),(76,'sport_doc','list','country','Страна',1,1),(77,'sport_doc','text','first_c_agent','Учреждение (первая строна заключения договора)',1,1),(78,'sport_doc','text','second_c_agent','Учреждение (вторая строна заключения договора)',1,1),(79,'sport_doc','date','date_start','Дата заключения договра',1,1),(80,'sport_doc','date','date_stop','Срок действия',1,1),(81,'sport_doc','text','subject','Предмет соглашения / договора',1,1),(82,'sport_doc','text','status_doc','Статус ',1,1),(83,'work','text','munic_round','Муниципальный округ',1,1),(84,'work','text','grazhdanstvo','Гражданская принадлежность',1,1),(85,'work','text','sphera_d','Сфера деятельности',1,1),(86,'work','text','qua','Количество, чел',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change`
--

LOCK TABLES `change` WRITE;
/*!40000 ALTER TABLE `change` DISABLE KEYS */;
INSERT INTO `change` VALUES (1,'Заглушка',NULL,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cult_doc`
--

LOCK TABLES `cult_doc` WRITE;
/*!40000 ALTER TABLE `cult_doc` DISABLE KEYS */;
INSERT INTO `cult_doc` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,1),(2,'Литва','БГУ','2021-04-15','2021-04-15','Предмет соглашения','Прошло и то хорошо',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cult_event`
--

LOCK TABLES `cult_event` WRITE;
/*!40000 ALTER TABLE `cult_event` DISABLE KEYS */;
INSERT INTO `cult_event` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,NULL,1);
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
  `event_status` varchar(120) DEFAULT NULL,
  `status` varchar(120) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_document`
--

LOCK TABLES `ec_document` WRITE;
/*!40000 ALTER TABLE `ec_document` DISABLE KEYS */;
INSERT INTO `ec_document` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,'1');
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
  `event_status` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_events`
--

LOCK TABLES `ec_events` WRITE;
/*!40000 ALTER TABLE `ec_events` DISABLE KEYS */;
INSERT INTO `ec_events` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,NULL,'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grant`
--

LOCK TABLES `grant` WRITE;
/*!40000 ALTER TABLE `grant` DISABLE KEYS */;
INSERT INTO `grant` VALUES (1,'Заглушка',NULL,NULL,NULL,1),(2,'','','Выберите страну','0000-00-00',1),(3,'','','Выберите страну','0000-00-00',1),(4,'','','Выберите страну','0000-00-00',1),(5,'','','Выберите страну','0000-00-00',1),(6,'','','Выберите страну','0000-00-00',1),(7,'','','Выберите страну','0000-00-00',1),(8,'','','Выберите страну','0000-00-00',1),(9,'','','Выберите страну','0000-00-00',1),(10,'','','Выберите страну','0000-00-00',1),(11,'','','Выберите страну','0000-00-00',1),(12,'','','Выберите страну','0000-00-00',1),(13,'','','Выберите страну','0000-00-00',1),(14,'','','Выберите страну','0000-00-00',1),(15,'','','Выберите страну','0000-00-00',1),(16,'','','Выберите страну','0000-00-00',1),(17,'','','Выберите страну','0000-00-00',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international`
--

LOCK TABLES `international` WRITE;
/*!40000 ALTER TABLE `international` DISABLE KEYS */;
INSERT INTO `international` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,1),(2,'Siberian Industrial Design Days','2015-05-20','2016-05-20','Платформа видеоконференций \"Zoom\"',140,'Мероприятие посвящено таким темам, как дизайн, эстетика и искусство. По результатам форума опубликован сборник трудов, в который вошли научные работы, посвященные темам архитектурного дизайна, компьютерной графики и ее приложениям, а также дизайну товаров народного потребления.',1);
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
  `actuality_date` date DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_document`
--

LOCK TABLES `international_document` WRITE;
/*!40000 ALTER TABLE `international_document` DISABLE KEYS */;
INSERT INTO `international_document` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `international_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(100) DEFAULT NULL,
  `date` text,
  `time` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'Выгрузка отчёта по таблице och','2021-04-10','16:31:57','admguber'),(2,'Выгрузка отчёта по таблице och','2021-04-10','16:32:10','admguber'),(3,'Выгрузка отчёта по таблице och','2021-04-10','16:33:33','admguber'),(4,'Выгрузка отчёта по таблице mobile','2021-04-10','16:34:18','admguber'),(5,'Выгрузка отчёта по таблице mobile','2021-04-10','16:35:22','admguber'),(6,'Выгрузка отчёта по таблице mobile','2021-04-10','16:35:49','admguber'),(7,'Выгрузка отчёта по таблице mobile','2021-04-10','16:40:13','admguber'),(8,'Выгрузка отчёта по таблице mobile','2021-04-10','16:40:21','admguber'),(9,'Выгрузка отчёта по таблице sport_doc','2021-04-10','16:41:51','admguber');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` VALUES (1,'Заглушка',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `och`
--

LOCK TABLES `och` WRITE;
/*!40000 ALTER TABLE `och` DISABLE KEYS */;
INSERT INTO `och` VALUES (1,'Туркменистан',65,0,3,0,0,1),(2,'Конго',21,0,2,2,0,1),(3,'Йемен',30,0,2,0,0,1),(4,'Сирия',50,0,5,3,0,1),(5,'Ангола',47,0,0,0,0,1),(6,'Камерун',16,0,0,0,0,1),(7,'Украина',108,0,2,1,0,1),(8,'Бенин ',9,0,0,0,0,1),(9,'Узбекистан',193,0,0,0,0,1),(10,'Казахстан',20,0,0,0,0,1),(11,'Чад',4,0,0,0,0,1),(12,'Танзания',4,0,0,0,0,1),(13,'Молдова',11,0,0,0,0,1),(14,'Колумбия',33,0,1,0,0,1),(15,'Кот-Дивуар',17,0,1,1,0,1),(16,'Зимбабве',15,0,0,0,0,1),(17,'Мали',5,0,1,0,0,1),(18,'Египет',203,0,0,0,0,1),(19,'Абхазия',42,0,0,0,0,1),(20,'Гана',28,0,1,0,0,1),(21,'Марокко',20,0,1,1,0,1),(22,'Черногория',1,0,0,0,0,1),(23,'Нигерия',41,0,0,0,0,1),(24,'Таджикистан',25,0,1,0,0,1),(25,'Уганда',1,0,0,0,0,1),(26,'Судан',21,0,0,0,0,1),(27,'Эквадор ',76,0,0,0,0,1),(28,'Афганистан',21,0,0,0,0,1),(29,'Сенегал',10,0,0,0,0,1),(30,'Китай',29,0,5,3,0,1),(31,'Бразилия',2,0,0,0,0,1),(32,'Замбия',8,0,2,1,0,1),(33,'Свазиленд',3,0,0,0,0,1),(34,'Армения',1,0,0,0,0,1),(35,'Иордания',33,0,1,1,0,1),(36,'Ливан',5,0,0,0,0,1),(37,'Пакистан',2,0,0,0,0,1),(38,'Ирак',31,0,9,2,0,1),(39,'Киргизия',1,0,0,0,0,1),(40,'Палестина',7,0,3,1,0,1),(41,'Перу',6,0,0,0,0,1),(42,'Гвинея',2,0,0,0,0,1),(43,'Намибия',4,0,0,0,0,1),(44,'Алжир',4,0,0,0,0,1),(45,'Оман',0,0,1,0,0,1),(46,'Сербия',1,0,3,0,0,1),(47,'Эритрея',0,0,1,1,0,1),(48,'Гаити',40,0,0,0,0,1),(49,'Азербайджан',2,0,0,0,0,1),(50,'эсватини',3,0,0,0,0,1),(51,'Израиль',3,0,0,0,0,1),(52,'Доминиканская республика',1,0,0,0,0,1),(53,'Сьерра-Леоне',2,0,0,0,0,1),(54,'Саудовская Аравия',4,0,0,0,0,1),(55,'Турция',1,0,0,0,0,1),(56,'ДРК',14,0,0,0,0,1),(57,'Мозамбик',5,0,0,0,0,1),(58,'Ливия',1,0,0,0,0,1),(59,'Гвинея ',8,0,0,0,0,1),(60,'Кения',1,0,0,0,0,1),(61,'Боливия',1,0,0,0,0,1),(62,'Бурунди',3,0,0,0,0,1),(63,'Сомали',1,0,0,0,0,1),(64,'Тунис',1,0,0,0,0,1),(65,'Монголия',1,0,0,0,0,1),(66,'Габон',2,0,0,0,0,1),(67,'Германия',1,0,0,0,0,1),(68,'Панама',1,0,0,0,0,1),(69,'Бангладеш ',1,0,0,0,0,1),(70,'Венесуэла',1,0,0,0,0,1),(71,'Грузия',1,0,0,0,0,1),(72,'Мадагаскар',1,0,0,0,0,1),(73,'Южная Африка',2,0,0,0,0,1),(74,'Руанда',1,0,0,0,0,1),(75,'Беларусь',1,0,0,0,0,1);
/*!40000 ALTER TABLE `och` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_country`
--

DROP TABLE IF EXISTS `ref_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_country`
--

LOCK TABLES `ref_country` WRITE;
/*!40000 ALTER TABLE `ref_country` DISABLE KEYS */;
INSERT INTO `ref_country` VALUES (1,'Российская Федерация','Российская Федерация'),(2,'Абхазия','Республика Абхазия'),(3,'Азербайджан','Республика Азербайджан'),(4,'Армения','Республика Армения'),(6,'Грузия','Грузия'),(7,'Казахстан','Республика Казахстан'),(8,'Киргизия','Киргизская Республика'),(9,'Латвия','Латвийская Республика'),(10,'Литва','Литовская Республика'),(11,'Молдова','Республика Молдова'),(12,'Таджикистан','Республика Таджикистан'),(13,'Туркмения','Туркменистан'),(14,'Узбекистан','Республика Узбекистан'),(15,'Украина','Украина'),(17,'Южная Осетия','Республика Южная Осетия'),(18,'не определено',NULL),(19,'Аргентина','Аргентинская Республика'),(22,'Нигерия','Федеративная Республика Нигерия'),(23,'Палестина','Государство Палестина'),(24,'Китай','Китайская Народная Республика'),(27,'Бразилия','Федеративная Республика Бразилия'),(28,'Гана','Республика Гана'),(29,'Турция','Турецкая Республика'),(32,'Сирийская арабская республика','Сирийская арабская республика'),(33,'Перу','Республика Перу'),(34,'Иордания','Иорданское Хашимитское Королевство'),(35,'Чад','Республика Чад'),(36,'Эквадор','Республика Эквадор'),(37,'Сальвадор',' '),(38,'Ирак','Республика Ирак'),(39,'Султанат Оман','Султанат Оман'),(40,'Йемен','Йеменская Республика'),(41,'Ангола','Республика Ангола'),(42,'Индия','Республика Индия'),(43,'Колумбия','Республика Колумбия'),(44,'Туркменистан','Туркменистан'),(45,'Монголия','Монголия'),(47,'Германия','Федеративная Республика Германия'),(48,'Бурунди','Республика Бурунди'),(49,'Белорусcия','Республика Беларусь'),(50,'Ливан','Ливанская Республика'),(51,'Мексика','Мексиканские Соединенные Штаты'),(52,'Гондурас','Республика Гондурас'),(53,'Боливия','Многонациональное Государство Боливия'),(54,'Кот-д’Ивуар','Республика Кот д\'Ивуар'),(55,'Израиль','Государство Израиль'),(56,'Камбоджа','Королевство Камбоджа'),(57,'Венгрия','Венгрия'),(60,'Сeнегал','Республика Сенегал'),(61,'Кения','Республика Кения'),(62,'Гвинея','Гвинейская Республика'),(63,'Сомали','Федеративная Республика Сомали'),(64,'Экваториальная Гвинея','Республика Экваториальная Гвинея'),(66,'Замбия','Республика Замбия'),(67,'Мали','Республика Мали'),(68,'Венесуэла','Боливарианская Республика Венесуэла'),(69,'Марокко','Королевство Марокко'),(70,'Вьетнам','Социалистическая Республика Вьетнам'),(71,'Албания','Республика Албания'),(72,'Гаити','Республика Гаити'),(73,'Мозамбик','Республика Мозамбик'),(75,'Япония','Япония'),(76,'Коста-Рика','Республика Коста-Рика'),(77,'Гайана','Республика Гайана'),(79,'Панама','Республика Панама'),(81,'Гватемала','Республика Гватемала'),(82,'Кыргызстан','Киргизская Республика'),(83,'Ямайка','Ямайка'),(84,'Конго, Республика Конго','Республика Конго'),(85,'Малайзия','Малайзия'),(107,'Лицо без гражданства',NULL),(109,'Индонезия','Республика Индонезия'),(138,'Шри-Ланка','Демократическая Социалистическая Республика Шри-Ланка'),(139,'Кабо-Верде','Республика Кабо-Верде'),(141,'Италия','Итальянская Республика'),(143,'Ботсвана','Республика Ботсвана '),(239,'Афганистан','Переходное Исламское Государство Афганистан'),(240,'Судан','Республика Судан'),(241,'Египет','Арабская Республика Египет'),(242,'Бенин','Республика Бенин'),(243,'Чили','Республика Чили'),(245,'Мадагаскар','Республика Мадагаскар'),(246,'Польша','Республика Польша'),(247,'Танзания, Объединенная республика','Объединенная Республика Танзания'),(255,'Сьерра-Леоне','Республика Сьерра-Леоне'),(258,'Таиланд','Королевство Таиланд'),(259,'Тунис','Тунисская Республика'),(263,'Франция','Французская Республика'),(268,'Непал','Федеративная Демократическая Республика Непал'),(270,'Камерун','Республика Камерун'),(272,'Босния и Герцеговина','Босния и Герцеговина'),(279,'Македония','Республика Македония'),(280,'Конго, Демократическая Республика Конго','Демократическая Республика Конго');
/*!40000 ALTER TABLE `ref_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_doc`
--

DROP TABLE IF EXISTS `sport_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_c_agent` varchar(120) DEFAULT NULL,
  `second_c_agent` varchar(120) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_stop` date DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `status_doc` varchar(120) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_doc`
--

LOCK TABLES `sport_doc` WRITE;
/*!40000 ALTER TABLE `sport_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `sport_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_inter`
--

DROP TABLE IF EXISTS `sport_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport_inter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `event_target` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_qua` varchar(45) DEFAULT NULL,
  `event_location` varchar(45) DEFAULT NULL,
  `event_status` varchar(45) DEFAULT NULL,
  `event_result` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_inter`
--

LOCK TABLES `sport_inter` WRITE;
/*!40000 ALTER TABLE `sport_inter` DISABLE KEYS */;
INSERT INTO `sport_inter` VALUES (1,'Мировой грант','Белгородский Гос. Университет','2021-04-13','123','123','123','Крутой','1'),(2,'Мировой грант','Белгородский Гос. Университет','2021-04-06','Белгород','Белгород','11','Крутой','1'),(3,'Мировой грант','Белгородский Гос. Университет','2021-04-06','Белгород','Белгород','11','Крутой','1'),(4,'Чемпионат мира по волейболу 2022','Провести Чемпионат Мира','2021-04-01','1000000','Белгород, арена Белогорье','Прошло и то хорошо','Крутой','1');
/*!40000 ALTER TABLE `sport_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `ban` varchar(45) DEFAULT '0',
  `color_theme` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','9e62a9d10f8973ac230c0812c64f3f58','0',NULL),(2,'admguber','1c301ab70fafacae208e2a907d4bfbb0','0',NULL),(3,'depcadr','fbaf9851eaebbaa900abc461157f9c45','0',NULL),(4,'sciencemanagment','5ffc659aec045ee38c7ad7da4bd8feae','0',NULL),(5,'projmanagment','bf4912e497607474e37d42ba782ca2f4','0',NULL),(6,'youthmanagment','9bde793fccb1c1b03bc6715361d59786','0',NULL),(7,'depekonom','a90579d5b39961702d54b661817d7a0a','0',NULL),(8,'bsu','d16e8683b36ed0f65e51140011f22c75','0',NULL),(9,'bsusof','2a0024e7257b7823b1e0272acbedf79c','0',NULL),(10,'bstu','431585218d98fdaa0289b0401686c629','0',NULL),(11,'bgik','8f499b8980036c45ba17143da02ac62e','0',NULL),(12,'ordjonikidze','3afe0563e777207dfbdd5052f45ca2f7','0',NULL),(13,'bukep','189475d664e7d795a1006e882c8676c0','0',NULL),(14,'culturemanagment','c39e14e110a34b6073b8863e11bfb727','0',NULL),(15,'sti_misis','b606010141f5c582571c68625e883898','0',NULL),(16,'gf_misis','60536d7eca8f4b6d3fd979f41bbf6122','0',NULL),(17,'bsau','61e15a0ae8056e27703caf20b28e1315','0',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `munic_round` varchar(120) DEFAULT NULL,
  `grazhdanstvo` varchar(120) DEFAULT NULL,
  `sphera_d` varchar(120) DEFAULT NULL,
  `qua` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'Мировой грант','Белгородский Гос. Университет','Программирование','123','1'),(2,'Мировой грант','Белгородский Гос. Университет','Программирование','123','1'),(3,'Мировой грант','Белгородский Гос. Университет','Программирование','1000000','1');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
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
  `event_target` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `qua` int(11) DEFAULT NULL,
  `event_location` varchar(120) DEFAULT NULL,
  `event_result` varchar(120) DEFAULT NULL,
  `event_status` varchar(45) DEFAULT NULL,
  `status` varchar(120) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young`
--

LOCK TABLES `young` WRITE;
/*!40000 ALTER TABLE `young` DISABLE KEYS */;
INSERT INTO `young` VALUES (1,'Заглушка',NULL,NULL,NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `young` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaoch`
--

DROP TABLE IF EXISTS `zaoch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaoch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(120) DEFAULT NULL,
  `full_educ` int(11) DEFAULT NULL,
  `spo` int(11) DEFAULT NULL,
  `aspir` int(11) DEFAULT NULL,
  `first_course` int(11) DEFAULT NULL,
  `expelled` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaoch`
--

LOCK TABLES `zaoch` WRITE;
/*!40000 ALTER TABLE `zaoch` DISABLE KEYS */;
INSERT INTO `zaoch` VALUES (1,'Беларусь',137,0,0,0,0,1),(2,'Украина',77,0,0,0,0,1),(3,'Туркменистан',14,0,0,0,0,1),(4,'Молдова',3,0,0,0,0,1),(5,'Казахстан',14,0,3,0,0,1),(6,'Азербайджан',9,0,0,0,0,1),(7,'Германия',1,0,0,0,0,1),(8,'Узбекистан ',54,0,2,0,0,1),(9,'Таджикистан',3,0,0,0,0,1),(10,'Армения',6,0,0,0,0,1),(11,'Руанда',1,0,0,0,0,1),(12,'Грузия',1,0,0,0,0,1),(13,'Киргизия',3,0,0,0,0,1),(14,'Египет',1,0,0,0,0,1),(15,'Нигерия',1,0,0,0,0,1),(16,'Беларусь',137,0,0,0,0,1),(17,'Украина',77,0,0,0,0,1),(18,'Туркменистан',14,0,0,0,0,1),(19,'Молдова',3,0,0,0,0,1),(20,'Казахстан',14,0,3,0,0,1),(21,'Азербайджан',9,0,0,0,0,1),(22,'Германия',1,0,0,0,0,1),(23,'Узбекистан ',54,0,2,0,0,1),(24,'Таджикистан',3,0,0,0,0,1),(25,'Армения',6,0,0,0,0,1),(26,'Руанда',1,0,0,0,0,1),(27,'Грузия',1,0,0,0,0,1),(28,'Киргизия',3,0,0,0,0,1),(29,'Египет',1,0,0,0,0,1),(30,'Нигерия',1,0,0,0,0,1),(31,'Беларусь',137,0,0,0,0,1),(32,'Украина',77,0,0,0,0,1),(33,'Туркменистан',14,0,0,0,0,1),(34,'Молдова',3,0,0,0,0,1),(35,'Казахстан',14,0,3,0,0,1),(36,'Азербайджан',9,0,0,0,0,1),(37,'Германия',1,0,0,0,0,1),(38,'Узбекистан ',54,0,2,0,0,1),(39,'Таджикистан',3,0,0,0,0,1),(40,'Армения',6,0,0,0,0,1),(41,'Руанда',1,0,0,0,0,1),(42,'Грузия',1,0,0,0,0,1),(43,'Киргизия',3,0,0,0,0,1),(44,'Египет',1,0,0,0,0,1),(45,'Нигерия',1,0,0,0,0,1),(46,'Беларусь',137,0,0,0,0,1),(47,'Украина',77,0,0,0,0,1),(48,'Туркменистан',14,0,0,0,0,1),(49,'Молдова',3,0,0,0,0,1),(50,'Казахстан',14,0,3,0,0,1),(51,'Азербайджан',9,0,0,0,0,1),(52,'Германия',1,0,0,0,0,1),(53,'Узбекистан ',54,0,2,0,0,1),(54,'Таджикистан',3,0,0,0,0,1),(55,'Армения',6,0,0,0,0,1),(56,'Руанда',1,0,0,0,0,1),(57,'Грузия',1,0,0,0,0,1),(58,'Киргизия',3,0,0,0,0,1),(59,'Египет',1,0,0,0,0,1),(60,'Нигерия',1,0,0,0,0,1),(61,'Беларусь',137,0,0,0,0,1),(62,'Украина',77,0,0,0,0,1),(63,'Туркменистан',14,0,0,0,0,1),(64,'Молдова',3,0,0,0,0,1),(65,'Казахстан',14,0,3,0,0,1),(66,'Азербайджан',9,0,0,0,0,1),(67,'Германия',1,0,0,0,0,1),(68,'Узбекистан ',54,0,2,0,0,1),(69,'Таджикистан',3,0,0,0,0,1),(70,'Армения',6,0,0,0,0,1),(71,'Руанда',1,0,0,0,0,1),(72,'Грузия',1,0,0,0,0,1),(73,'Киргизия',3,0,0,0,0,1),(74,'Египет',1,0,0,0,0,1),(75,'Нигерия',1,0,0,0,0,1);
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

-- Dump completed on 2021-04-10 16:50:44
