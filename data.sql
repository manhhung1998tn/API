CREATE DATABASE  IF NOT EXISTS `caigicungco` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `caigicungco`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: caigicungco
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods_issue_electronic`
--

DROP TABLE IF EXISTS `goods_issue_electronic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_issue_electronic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `electronic_id` bigint(20) DEFAULT NULL,
  `goods_issue_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmecjwu53s341luas82s8ac30h` (`electronic_id`),
  KEY `FKr22ttv72c75tuh9ekff46rp3w` (`goods_issue_id`),
  CONSTRAINT `FKm6vixfsjmyens1lleifwl3ma4` FOREIGN KEY (`electronic_id`) REFERENCES `tblelectronic` (`id`),
  CONSTRAINT `FKr22ttv72c75tuh9ekff46rp3w` FOREIGN KEY (`goods_issue_id`) REFERENCES `tblgoods_issue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_issue_electronic`
--

LOCK TABLES `goods_issue_electronic` WRITE;
/*!40000 ALTER TABLE `goods_issue_electronic` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_issue_electronic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKiexvi97djv2qv19pw4gg1edjq` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (1,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'flagship 2019','mobile','flagship-2019'),(2,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'Điện Thoại Giá Rẻ','mobile','dien-thoai-gia-re'),(3,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'Laptop Gaming','laptop','laptop-gaming'),(4,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'Laptop Văn Phòng','laptop','laptop-van-phong'),(5,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'Laptop Sinh Viên','laptop','laptop-sinh-vien'),(6,'hdz','2019-09-23 16:55:38.000000',NULL,NULL,'Điện Thoại Tầm Trung','mobile','dien-thoai-tam-trung');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcpu`
--

DROP TABLE IF EXISTS `tblcpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `base_clock` double DEFAULT NULL,
  `cache` tinyint(4) DEFAULT NULL,
  `core` int(11) DEFAULT NULL,
  `max_clock` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `socket` varchar(255) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcpu`
--

LOCK TABLES `tblcpu` WRITE;
/*!40000 ALTER TABLE `tblcpu` DISABLE KEYS */;
INSERT INTO `tblcpu` VALUES (1,'admin','2019-09-12 02:25:10.000000',NULL,NULL,NULL,NULL,NULL,NULL,'A13',NULL,NULL);
/*!40000 ALTER TABLE `tblcpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5ojtd8fb7pom9u6bb637guc6q` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblelectronic`
--

DROP TABLE IF EXISTS `tblelectronic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblelectronic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `describes` varchar(1028) DEFAULT NULL,
  `guarantee` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `highlights` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture_title` varchar(255) DEFAULT NULL,
  `port_connector` varchar(1028) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `resolution_display` varchar(255) DEFAULT NULL,
  `secondary_mamory` varchar(255) DEFAULT NULL,
  `size_display` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thickness` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `cpu_id` bigint(20) DEFAULT NULL,
  `gpu_id` bigint(20) DEFAULT NULL,
  `producer_id` bigint(20) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKoiiy0vd0whwji35q93xk6aahf` (`uri`),
  UNIQUE KEY `UK1pm0olf7gx2slid6tp9rw4wub` (`uri`),
  KEY `FKe8oo5koy97d8p947yn85gvdxn` (`cpu_id`),
  KEY `FKj0nmwaym1k7utkckst4hlxieh` (`gpu_id`),
  KEY `FKh5vgkjqa99yivl0eq9wgs9ml3` (`producer_id`),
  KEY `FK8yrv6qrh0n68kq20ub6i5qbjk` (`category_id`),
  CONSTRAINT `FK8yrv6qrh0n68kq20ub6i5qbjk` FOREIGN KEY (`category_id`) REFERENCES `tblcategory` (`id`),
  CONSTRAINT `FKe8oo5koy97d8p947yn85gvdxn` FOREIGN KEY (`cpu_id`) REFERENCES `tblcpu` (`id`),
  CONSTRAINT `FKh5vgkjqa99yivl0eq9wgs9ml3` FOREIGN KEY (`producer_id`) REFERENCES `tblproducer` (`id`),
  CONSTRAINT `FKj0nmwaym1k7utkckst4hlxieh` FOREIGN KEY (`gpu_id`) REFERENCES `tblgpu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblelectronic`
--

LOCK TABLES `tblelectronic` WRITE;
/*!40000 ALTER TABLE `tblelectronic` DISABLE KEYS */;
INSERT INTO `tblelectronic` VALUES (1,'admin','2019-09-11 20:00:07.747000',NULL,NULL,'Sản Phẩm Đắt VL ~Sản Phẩm Xấu VL ~Nhưng vẫn nhiều người mua ok',12,0,'hot~new','iphone 11 PRO',NULL,'Tai nghe ~Cổng sạc',12,'1920x1080','128G',5.5,0,0,'mobile',0,1,1,1,'iphone-11-pro',NULL),(4,'admin','2019-09-11 20:04:24.802000',NULL,NULL,'Sản Phẩm Đắt VL ~Sản Phẩm Xấu VL ~Nhưng vẫn nhiều người mua ok',12,0,'hot','iphone 11',NULL,NULL,12,NULL,'128G',0,0,0,'mobile',0,NULL,NULL,NULL,'iphone-11',NULL);
/*!40000 ALTER TABLE `tblelectronic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgoods_issue`
--

DROP TABLE IF EXISTS `tblgoods_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgoods_issue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7mj66karg1xp5ja1rae8340y2` (`customer_id`),
  CONSTRAINT `FK7mj66karg1xp5ja1rae8340y2` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgoods_issue`
--

LOCK TABLES `tblgoods_issue` WRITE;
/*!40000 ALTER TABLE `tblgoods_issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgpu`
--

DROP TABLE IF EXISTS `tblgpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `base_clock` double DEFAULT NULL,
  `core` int(11) DEFAULT NULL,
  `max_clock` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgpu`
--

LOCK TABLES `tblgpu` WRITE;
/*!40000 ALTER TABLE `tblgpu` DISABLE KEYS */;
INSERT INTO `tblgpu` VALUES (1,'admin','2019-09-12 02:23:32.000000',NULL,NULL,NULL,NULL,NULL,'GTX 1080'),(2,'HDZ','2019-09-24 15:39:56.015000',NULL,NULL,5.3,168,4.6,'GTX 2080');
/*!40000 ALTER TABLE `tblgpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducer`
--

DROP TABLE IF EXISTS `tblproducer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproducer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(1028) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducer`
--

LOCK TABLES `tblproducer` WRITE;
/*!40000 ALTER TABLE `tblproducer` DISABLE KEYS */;
INSERT INTO `tblproducer` VALUES (1,'admin','2019-09-12 02:26:07.000000',NULL,NULL,NULL,NULL,'APPLE',NULL),(2,'HDZ','2019-09-24 16:14:45.966000',NULL,NULL,'Cô Re A','samsung','SAMSUNG','Điện Thoại  Có Màn Hình Đắt VL');
/*!40000 ALTER TABLE `tblproducer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblversion`
--

DROP TABLE IF EXISTS `tblversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblversion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime(6) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `electronic_id` bigint(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo804fra8gmisqkvnmolvbetvr` (`electronic_id`),
  CONSTRAINT `FKo804fra8gmisqkvnmolvbetvr` FOREIGN KEY (`electronic_id`) REFERENCES `tblelectronic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblversion`
--

LOCK TABLES `tblversion` WRITE;
/*!40000 ALTER TABLE `tblversion` DISABLE KEYS */;
INSERT INTO `tblversion` VALUES (1,'admin','2019-09-11 20:02:34.145000',NULL,NULL,'RED',NULL,999,NULL,NULL),(2,'admin','2019-09-11 20:04:24.803000',NULL,NULL,'RED',NULL,999,4,NULL);
/*!40000 ALTER TABLE `tblversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK872xec3woupu3gw59b04pj3sa` (`user_id`,`role_id`),
  KEY `FKrx2sj9hvashk8t3im2cd4g4g8` (`role_id`),
  CONSTRAINT `FKpdvjqaet4jxbp8xljv29tl5nx` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`id`),
  CONSTRAINT `FKrx2sj9hvashk8t3im2cd4g4g8` FOREIGN KEY (`role_id`) REFERENCES `tblrole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-27 22:34:22
