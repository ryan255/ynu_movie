-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: moviesys_db
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_pw` varchar(45) NOT NULL,
  `admin_phone` varchar(45) DEFAULT NULL,
  `admin_identity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`),
  KEY `fk_idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditorium`
--

DROP TABLE IF EXISTS `auditorium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditorium` (
  `idAuditorium` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `auditorium_num` int(11) DEFAULT NULL,
  `auditorium_col` int(11) DEFAULT NULL,
  `auditorium_row` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAuditorium`),
  KEY `idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_auditorium_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditorium`
--

LOCK TABLES `auditorium` WRITE;
/*!40000 ALTER TABLE `auditorium` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditorium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `idCity` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idCity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification` (
  `idClass` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edition`
--

DROP TABLE IF EXISTS `edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edition` (
  `idEdition` int(11) NOT NULL AUTO_INCREMENT,
  `edition_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idEdition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edition`
--

LOCK TABLES `edition` WRITE;
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;
/*!40000 ALTER TABLE `edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_infor`
--

DROP TABLE IF EXISTS `film_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_infor` (
  `idFilm` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `f_director` varchar(45) DEFAULT NULL,
  `f_star` varchar(45) DEFAULT NULL,
  `idClass` int(11) NOT NULL,
  `f_country` varchar(45) DEFAULT NULL,
  `f_time` varchar(45) NOT NULL,
  `f_level` int(11) DEFAULT NULL,
  `f_click` int(11) DEFAULT NULL,
  `f_comment` varchar(45) DEFAULT NULL,
  `f_introduce` varchar(45) DEFAULT NULL,
  `f_cover_s` varchar(45) DEFAULT NULL,
  `f_cover_b` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFilm`),
  KEY `idClass_idx` (`idClass`),
  CONSTRAINT `fk_film_idClass` FOREIGN KEY (`idClass`) REFERENCES `classification` (`idClass`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_infor`
--

LOCK TABLES `film_infor` WRITE;
/*!40000 ALTER TABLE `film_infor` DISABLE KEYS */;
/*!40000 ALTER TABLE `film_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level` (
  `idLevel` int(11) NOT NULL AUTO_INCREMENT,
  `level_point` int(11) NOT NULL,
  `level_discount` float NOT NULL,
  PRIMARY KEY (`idLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idprice` int(11) NOT NULL,
  `true_price` decimal(10,0) NOT NULL,
  `order_number` int(11) NOT NULL,
  `order_total` decimal(10,0) NOT NULL,
  `order_state` int(11) NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_order_idUser_idx` (`idUser`),
  KEY `fk_order_state_idx` (`order_state`),
  KEY `fk_order_idPrice` (`idprice`),
  CONSTRAINT `fk_order_idPrice` FOREIGN KEY (`idprice`) REFERENCES `price` (`idPrice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_state` FOREIGN KEY (`order_state`) REFERENCES `state` (`idState`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play`
--

DROP TABLE IF EXISTS `play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play` (
  `idPlay` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `play_on` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `play_ontime` datetime NOT NULL,
  `play_uptime` datetime NOT NULL,
  PRIMARY KEY (`idPlay`),
  KEY `fk_play_idFilm_idx` (`idFilm`),
  KEY `fk_play_idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_play_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `film_infor` (`idFilm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_play_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play`
--

LOCK TABLES `play` WRITE;
/*!40000 ALTER TABLE `play` DISABLE KEYS */;
/*!40000 ALTER TABLE `play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `idPrice` int(11) NOT NULL AUTO_INCREMENT,
  `idPlay1` int(11) NOT NULL,
  `idAuditorium1` int(11) NOT NULL,
  `idEdition1` int(11) NOT NULL,
  `price_screens` varchar(45) NOT NULL,
  `prices` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idPrice`),
  KEY `fk_price_idPlay_idx` (`idPlay1`),
  KEY `fk_price_idAuditorium_idx` (`idAuditorium1`),
  KEY `fk_price_idEdition_idx` (`idEdition1`),
  CONSTRAINT `fk_price_idAuditorium` FOREIGN KEY (`idAuditorium1`) REFERENCES `auditorium` (`idAuditorium`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_price_idEdition` FOREIGN KEY (`idEdition1`) REFERENCES `edition` (`idEdition`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_price_idPlay` FOREIGN KEY (`idPlay1`) REFERENCES `play` (`idPlay`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `idSeat` int(11) NOT NULL,
  `seat_num` int(11) DEFAULT NULL,
  `seat_state` varchar(45) DEFAULT NULL,
  `seat_order` varchar(45) DEFAULT NULL,
  `fk_seat_idAuditorium` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSeat`),
  KEY `idAuditorium_idx` (`fk_seat_idAuditorium`),
  CONSTRAINT `idAuditorium` FOREIGN KEY (`fk_seat_idAuditorium`) REFERENCES `auditorium` (`idAuditorium`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `idState` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idState`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `idStudio` int(11) NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(45) NOT NULL,
  `studio_online` varchar(45) NOT NULL,
  `studio_address` varchar(45) NOT NULL,
  `studio_phone` varchar(45) NOT NULL,
  `studio_text` varchar(45) NOT NULL,
  PRIMARY KEY (`idStudio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_pw` varchar(45) NOT NULL,
  `usersex` varchar(45) DEFAULT NULL,
  `user_birth` varchar(45) DEFAULT NULL,
  `user_phone` varchar(45) DEFAULT NULL,
  `user_mail` varchar(45) DEFAULT NULL,
  `user_point` int(11) NOT NULL DEFAULT '0',
  `idLevel` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `fk_user_idLevel_idx` (`idLevel`),
  CONSTRAINT `fk_user_idLevel` FOREIGN KEY (`idLevel`) REFERENCES `level` (`idLevel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-08 15:15:32
