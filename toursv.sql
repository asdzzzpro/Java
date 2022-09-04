-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: toursv
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id_news` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` varchar(4000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2022-08-30 00:39:00','Những khu resort phong cách mộc mạc','Nhìn từ xa, bạn có thể không nhận ra đây là các khu nghỉ cao cấp do vẻ ngoài mộc mạc, song chúng là một trong những resort có giá đắt nhất Việt Nam.','123','Vnexpress'),(2,'2022-08-24 00:39:00','Hàng nghìn du khách xem khinh khí cầu ở xứ núi','Từ sáng sớm dòng người tấp nập đổ về Khu thể thao du lịch Soài Chek - Tà Pạ (huyện Tri Tôn) nằm dưới chân núi Phụng Hoàng. Gần 7h, hàng nghìn người có mặt tại sân tổ chức lễ hội, hoà chung không khí khi quốc kỳ 200 m2 được những quả bóng bay kéo lên bầu trời mừng ngày Quốc khánh.','3123','Vnexpress'),(3,'2022-08-12 00:39:00','Sát lễ 2/9, tour miền núi vẫn dồn dập khách hỏi thăm','Lượng khách quan tâm đặt dịch vụ đến các tỉnh miền núi thuộc vùng Đông Tây Bắc sát lễ 2/9 vẫn cao, nhưng nhiều nơi đã kín phòng. Trong bốn ngày nghỉ lễ 2/9, Saigontourist dự kiến phục vụ hơn 12.000 lượt khách chỉ riêng đến các tỉnh miền Bắc, con số vượt ngưỡng thời điểm trước dịch, năm 2019. Với các chùm tour miền núi phía Bắc, công ty chủ yếu cung cấp các dịch vụ nghỉ dưỡng cao cấp, tour thường kéo dài 4-5 ngày, mức giá trung bình 9 đến 10 triệu đồng một tour.','414','Vnexpress');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newscomment`
--

DROP TABLE IF EXISTS `newscomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newscomment` (
  `id` int NOT NULL,
  `content` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_newscomment_user_idx` (`user_id`),
  KEY `fk_newscomment__idx` (`news_id`),
  CONSTRAINT `fk_newscomment_` FOREIGN KEY (`news_id`) REFERENCES `news` (`id_news`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_newscomment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newscomment`
--

LOCK TABLES `newscomment` WRITE;
/*!40000 ALTER TABLE `newscomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `newscomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `total` decimal(10,0) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `fk_order_user_idx` (`user_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `order_id` int NOT NULL,
  `unitprice` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `number` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour_orderdetail_idx` (`tour_id`),
  KEY `fk_order_orderdetail_idx` (`order_id`),
  CONSTRAINT `fk_order_orderdetail` FOREIGN KEY (`order_id`) REFERENCES `order` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tour_orderdetail` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`idTour`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_receipt_order_idx` (`order_id`),
  KEY `fk_receipt_user_idx` (`user_id`),
  CONSTRAINT `fk_receipt_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_receipt_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `idTour` int NOT NULL AUTO_INCREMENT,
  `nameTour` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `childprice` decimal(10,0) DEFAULT NULL,
  `adultprice` decimal(10,0) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`idTour`),
  KEY `fk_type_tour_idx` (`type_id`),
  CONSTRAINT `fk_type_tour` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tour Du lịch Phú Quốc','Khám Phá Grand World từ Sài Gòn 2022',500000,1000000,'123','2022-08-22 03:00:00',1),(2,'Du lịch Mùa Vàng Tây Bắc ','Nghĩa Lộ - Tú Lệ - Mù Cang Chải - Sapa',720000,1200000,'234','2022-08-22 03:00:00',1),(3,'Du lịch Hà Nội -thủ đô ngàn năm văn hiến','Hà Nội - Yên Tử - Hạ Long (Khách sạn 5 sao) - Trao gửi yêu thương',800000,1600000,'345','2022-08-22 03:00:00',1),(4,'Du lịch Seoul - Everland - Nami (3 đêm khách sạn)','TThăm Cung điện Hoàng Gia Gyeongbok, Khu Phố Hongdae ,...',2000000,2500000,'432','2022-08-22 03:00:00',2),(5,'du lich chau au','Experience our spacious 28 sqm Superior room, with a unique interior design that creates a relaxing and elegant ambience.',1200000,1600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,2),(6,'du lich chau a','Experience our spacious 28 sqm Superior room, with a unique interior design that creates a relaxing and elegant ambience.',1200000,1600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,1),(7,'du lich chau my','Experience our spacious 28 sqm Superior room, with a unique interior design that creates a relaxing and elegant ambience.',1200000,1600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,2);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourcomment`
--

DROP TABLE IF EXISTS `tourcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourcomment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tour_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_toru_idx` (`tour_id`),
  KEY `fk_comment_user_idx` (`user_id`),
  CONSTRAINT `fk_comment_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`idTour`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourcomment`
--

LOCK TABLES `tourcomment` WRITE;
/*!40000 ALTER TABLE `tourcomment` DISABLE KEYS */;
INSERT INTO `tourcomment` VALUES (1,'Chat luong tuyet voi',1,3,'2022-09-04 02:30:00'),(2,'Chat luong tuyet voi',1,3,'2022-09-04 16:12:16'),(3,'Chat luong tuyet voi',1,3,'2022-09-04 13:19:16'),(4,'Chat luong tuyet voi',2,3,'2022-09-04 11:27:16'),(5,'Rat tuyet',1,3,'2022-09-04 07:10:46'),(6,'Rat tuyet voi',1,3,'2022-09-04 16:19:16'),(7,'assssssssssssdsafafw',2,3,'2022-09-04 17:39:13'),(8,'fagwrgethrtutyeyert',3,3,'2022-09-04 17:45:08');
/*!40000 ALTER TABLE `tourcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Trong nuoc'),(2,'Ngoai Nuoc');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `userrole` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'Huy','Nguyen','huydnf','$2a$10$w/1Q47rzLjPKsrfGlCjlvOnR9MnfhewoV.Xeonf5gLoVilDOrqrHK','huygaming01@gmail.com','0363266625','ROLE_USER'),(4,'Nguyen Quang','Huy','admin','$2a$10$5k3ZWdc54/.qB6HoMm8VYe7TRE73qVByXFB0ZrSaroFkR4i8JB9Hy','qhuy@gmail.com','0363250123','ROLE_ADMIN'),(5,'Nguyen ','Huy1','asd123','$2a$10$K.RiWXLm5B/0eO1IcgbkWePMHVbXA.Ve5jL5WyvrfqTqS68OSE.E6','asd123@gmail.com','0123456789','ROLE_CUSTOMER'),(6,'Nguyen Van','Huy2','sele','$2a$10$acr9iGlHXbLtGgJgNuCfhO6fEN5jy/R3DpVzHxqEFNq6pZct750P.','seleniumtest1@gmail.com','0362541548','ROLE_CUSTOMER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'toursv'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 18:21:20
