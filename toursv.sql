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
  `content` varchar(10000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2022-08-30 00:39:00','Những khu resort phong cách mộc mạc','Nhìn từ xa, bạn có thể không nhận ra đây là các khu nghỉ cao cấp do vẻ ngoài mộc mạc, song chúng là một trong những resort có giá đắt nhất Việt Nam. Zannier Hotels Bai San Ho ở thị xã Sông Cầu, Phú Yên, nằm trên bãi biển gọi là Bãi Tràm, do trước đây khu vực này toàn cây tràm. Nhìn từ trên cao, khu nghỉ như một làng chài mộc mạc bên biển, với các mái nhà lợp lá và ngói. Có vẻ ngoài giản dị, mang đậm màu sắc truyền thống Việt Nam nhưng đây lại là một trong những khu nghỉ cao cấp nhất, với giá phòng cao nhất từ 85 triệu đồng một đêm. Các phòng nghỉ được thiết kế chủ đạo bằng gỗ, hài hoà với cảnh quan thiên nhiên xung quanh. Các villa có ban công lớn để du khách ngoài ở trong phòng còn tối đa hoá các khoảnh khắc ngoài trời. Đặc biệt, khu nghỉ không dùng điều hoà mà sử dụng quạt và lưu thông khí tự nhiên, không có TV và điện thoại trong phòng nghỉ để tiết kiệm năng lượng, bảo vệ môi trường. Khu nghỉ có chủ đề trải nghiệm đa giác quan. Du khách đến đây được thoả mãn thị giác khi ngắm nhìn thiên nhiên và cảnh biển, tiếng sóng lại giúp kích hoạt vị giác, tạo cảm giác gây đói, còn khứu giác được chiêu đãi bởi mùi hương của hoa sứ và gió biển. Từ tháng 9, resort có combo 4,5 triệu đồng hai đêm nghỉ cho hai khách, kéo dài đến hết tháng.','https://i1-dulich.vnecdn.net/2022/09/05/79600556-10221688072901668-714-4112-1872-1662361981.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=XbjG6t1HXuuhROMSt06Chw','Vnexpress'),(2,'2022-08-24 00:39:00','Hàng nghìn du khách xem khinh khí cầu ở xứ núi','Từ sáng sớm dòng người tấp nập đổ về Khu thể thao du lịch Soài Chek - Tà Pạ (huyện Tri Tôn) nằm dưới chân núi Phụng Hoàng. Gần 7h, hàng nghìn người có mặt tại sân tổ chức lễ hội, hoà chung không khí khi quốc kỳ 200 m2 được những quả bóng bay kéo lên bầu trời mừng ngày Quốc khánh. Theo kế hoạch hai khinh khí cầu cỡ lớn (cao 22 m) sử dụng để du khách bay trải nghiệm, trong đó một đặt cố định cho khách tham quan chụp hình. 14 khinh khí cầu cấp 1 bay treo ở độ cao 20-40 m vòng quanh sân lễ để trang trí. Tuy nhiên sáng nay do gió lớn nên các khinh khí cầu chỉ treo tại chỗ, chưa cho người dân bay. Lễ hội Vía Bà Chúa Xứ núi Sam là lễ hội truyền thống được giữ gìn và thực hành qua nhiều thế hệ tại Tp. Châu Đốc, tỉnh An Giang. Năm 2014, lễ hội được Bộ Văn hóa, Thể thao và Du lịch đưa vào danh mục Di sản văn hóa phi vật thể quốc gia. Hằng năm, Lễ hội Vía Bà Chúa Xứ núi Sam thu hút hàng triệu lượt người đến tham quan, chiêm bái, góp phần thúc đẩy ngành du lịch phát triển.','https://cdn2.ivivu.com/2022/04/08/18/ivivu-wat-phra-yai2.gif','Vnexpress'),(3,'2022-08-12 00:39:00','Sát lễ 2/9, tour miền núi vẫn dồn dập khách hỏi thăm','Lượng khách quan tâm đặt dịch vụ đến các tỉnh miền núi thuộc vùng Đông Tây Bắc sát lễ 2/9 vẫn cao, nhưng nhiều nơi đã kín phòng. Trong bốn ngày nghỉ lễ 2/9, Saigontourist dự kiến phục vụ hơn 12.000 lượt khách chỉ riêng đến các tỉnh miền Bắc, con số vượt ngưỡng thời điểm trước dịch, năm 2019. Với các chùm tour miền núi phía Bắc, công ty chủ yếu cung cấp các dịch vụ nghỉ dưỡng cao cấp, tour thường kéo dài 4-5 ngày, mức giá trung bình 9 đến 10 triệu đồng một tour.\"Khách miền Nam sau những tháng hè đi biển đến dịp này lại đặc biệt quan tâm đến các tour núi. Nhiều người quan tâm tour phía Bắc hơn Tây Nguyên do có \"đặc sản mùa vàng\". Trong đó, Sa Pa là nơi đắt khách nhất bởi ở đây có nhiều dịch vụ du lịch cao cấp\", đại diện công ty cho biết. Đại diện Công ty Lữ hành Saigontourist cho biết các điểm đến như Sa Pa (Lào Cai), Hoà Bình, Yên Bái, Hà Giang, Cao Bằng... nằm trong các chùm tour Đông Tây Bắc là những sản phẩm hot trong dịp lễ 2/9. Vẫn còn nhiều khách hỏi nhưng công ty đã ngừng nhận các tour từ 28/8 để đảm bảo đặt phòng, vé máy bay và các dịch vụ liên quan cho khách. Một số khách lẻ đặt phòng sẽ phải chấp nhận mức giá đắt - rẻ theo niêm yết tại thời điểm đặt, chứ không còn mức giá công bố ban đầu.','https://cdn2.ivivu.com/2018/01/26/14/ivivu-tour-thai-lan-5n4d-kham-pha-xu-so-chua-vang-coral.jpg','Vnexpress');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newscomment`
--

DROP TABLE IF EXISTS `newscomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newscomment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_newscomment_user_idx` (`user_id`),
  KEY `fk_newscomment__idx` (`news_id`),
  CONSTRAINT `fk_newscomment_` FOREIGN KEY (`news_id`) REFERENCES `news` (`id_news`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_newscomment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newscomment`
--

LOCK TABLES `newscomment` WRITE;
/*!40000 ALTER TABLE `newscomment` DISABLE KEYS */;
INSERT INTO `newscomment` VALUES (1,'blablabla',1,3,'2022-08-09 00:32:00'),(2,'test2',1,3,'2022-08-09 00:32:00'),(3,'test 1',2,3,'2022-10-15 14:44:18'),(4,'test admin comment\n',3,4,'2022-10-16 00:20:56'),(5,'test',2,5,'2022-10-19 03:12:26'),(6,'chất lượng ở nơi đây rất tuyệt',3,8,'2022-10-22 18:36:20');
/*!40000 ALTER TABLE `newscomment` ENABLE KEYS */;
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
  `unitprice` decimal(10,0) DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour_orderdetail_idx` (`tour_id`),
  KEY `fk_order_orderdetail_idx` (`order_id`),
  CONSTRAINT `fk_order_orderdetail` FOREIGN KEY (`order_id`) REFERENCES `receipt` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tour_orderdetail` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`idTour`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,1,1,1000000,2),(2,4,2,2500000,1),(3,5,3,1600000,2),(4,1,3,10000000,1),(5,4,9,2000000,1),(6,7,9,1200000,1),(7,8,9,12000006,1),(8,8,10,12000006,1),(9,3,11,800000,1),(10,11,12,1000000,5),(11,1,13,1000000,1),(12,1,14,1000000,2),(13,2,15,1200000,2),(14,4,15,2500000,2),(15,1,16,1000000,1),(16,3,17,1800000,1),(17,7,17,2800000,1),(18,3,18,1800000,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `total` decimal(10,0) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `fk_order_user_idx` (`user_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,2000000,'2022-08-05 04:24:00',3),(2,2500000,'2022-08-10 04:24:00',3),(3,3200000,'2022-08-14 04:24:00',3),(8,800000,'2022-10-16 02:05:05',3),(9,15200006,'2022-10-16 02:07:38',6),(10,12000006,'2022-10-16 02:09:15',6),(11,800000,'2022-10-16 02:12:26',6),(12,5000000,'2022-10-16 02:25:43',5),(13,1000000,'2022-10-19 03:44:41',5),(14,2000000,'2022-10-19 03:47:19',5),(15,7400000,'2022-10-19 03:48:02',5),(16,1000000,'2022-10-20 00:50:35',5),(17,4600000,'2022-10-22 16:15:58',5),(18,1800000,'2022-10-22 18:29:16',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tour Du lịch Phú Quốc','Khám Phá Grand World từ Sài Gòn 2022',NULL,1000000,'123','2022-08-22 03:00:00',1),(2,'Tour Du lịch Tây Bắc ','Nghĩa Lộ - Tú Lệ - Mù Cang Chải - Sapa',NULL,1200000,'234','2022-08-22 03:00:00',1),(3,'Tour Du lịch Hà Nội ','Hà Nội - Yên Tử - Hạ Long (Khách sạn 5 sao) - Trao gửi yêu thương',1,1800000,'345','2022-08-22 03:00:00',1),(4,'Tour du lịch Seoul - Everland - Nami','TThăm Cung điện Hoàng Gia Gyeongbok, Khu Phố Hongdae ,...',1,2500000,'432','2022-08-22 03:00:00',2),(5,'Tour Bali 4 ngày','Check in Cổng trời Lempuyang đẹp nhất Bali. Khám phá những giá trị thiên nhiên kỳ vĩ: Đảo Nusa Penida, cánh đồng lúa Tegalalang,..',1,1600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,2),(6,'Tour Du lịch thiên đường Maldives','Du ngoạn Sandbank, khám phá những nét đặc sắc tạo ra thương hiệu thiên đường biển xanh của Quốc Đảo Maldives.',1,1900000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,1),(7,'Tour du lịch Bangkok – Pattaya','Hàng loạt điểm đến hot nhất Thái Lan: Chùa Phật Vàng, Thành Phố Cổ Muang Boran, Chợ Nổi Bốn Miền, Chùa Thuyền Wat Yannawa,...',1,2800000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,2),(8,'Tour Hàn Quốc 5 ngày 4 đêm','Thỏa sức tham quan, mua sắm tại các cửa hàng miễn thuế, cửa hàng bán đồ mỹ phẩm Hàn Quốc, nhân sâm và các trung tâm mua sắm khác',1,5000000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,2),(9,'Tour Singapore Malaysia','Tham quan các công trình lịch sử\" thành phố cổ Malacca, động Batu, chùa Thiên Hậu',1,3600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,1),(10,'Tour Du Lịch Thổ Nhĩ Kỳ','Khám phá thành phố cổ Pamukkale: Lâu đài Bông Cotton, Hierapolis, khu lăng mộ Necropolis',1,2600000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,1),(11,'Tour Campuchia 4 ngày 3 đêm','Khám phá những kỳ quan kiến trúc cổ xưa: Cầu Rồng Kompong Kdei, quần thể Angkor Thom với đền Bayon, Angkor Wat đền Ta Prohm.',1,1900000,'https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourcomment`
--

LOCK TABLES `tourcomment` WRITE;
/*!40000 ALTER TABLE `tourcomment` DISABLE KEYS */;
INSERT INTO `tourcomment` VALUES (1,'Chat luong tuyet voi',1,3,'2022-09-04 02:30:00'),(2,'Chat luong tuyet voi',1,3,'2022-09-04 16:12:16'),(3,'Chat luong tuyet voi',1,3,'2022-09-04 13:19:16'),(4,'Chat luong tuyet voi',2,3,'2022-09-04 11:27:16'),(5,'Rat tuyet',1,3,'2022-09-04 07:10:46'),(6,'Rat tuyet voi',1,3,'2022-09-04 16:19:16'),(23,'perfect',1,3,'2022-09-07 18:47:05'),(24,'grfweq3r',1,3,'2022-09-07 18:58:16'),(25,'43253',2,4,'2022-09-07 18:58:16'),(26,'133rqewtwr',2,3,'2022-09-07 23:49:23'),(27,'testarea',1,3,'2022-09-08 01:00:18'),(28,'testarea1',1,3,'2022-09-08 01:00:29'),(29,'3regsfbhtju6e6',1,3,'2022-09-08 01:41:01'),(30,'regrjyr6u4ut',1,3,'2022-09-08 01:41:13'),(31,'feewgwr',1,3,'2022-09-08 01:56:39'),(32,'quao',1,3,'2022-09-08 02:31:27'),(33,'test1',1,3,'2022-09-10 07:54:15'),(34,'1234556',3,3,'2022-10-02 13:52:46'),(35,'test3',3,3,'2022-10-02 13:55:56'),(36,'testbinhluan news',1,3,'2022-10-02 14:05:36'),(37,'test2binhluan',6,3,'2022-10-02 14:09:19'),(38,'testbinhluan1',1,3,'2022-10-13 11:21:24'),(39,'test2',1,3,'2022-10-13 11:24:22'),(40,'testnews1',1,3,'2022-10-13 13:16:34'),(41,'greetret',1,3,'2022-10-14 23:45:28'),(42,'test1',6,3,'2022-10-14 23:45:39'),(43,'test 2',6,3,'2022-10-14 23:45:44'),(44,'123',4,3,'2022-10-15 01:00:48'),(45,'123456',7,3,'2022-10-15 01:01:07'),(46,'test1',7,3,'2022-10-15 01:02:43'),(47,'test admin cmt',7,4,'2022-10-15 01:34:29'),(48,'test asd 123 cmt',3,5,'2022-10-15 01:36:50'),(49,'tst',1,5,'2022-10-19 03:12:02'),(50,'chất lượng rất tốt',11,8,'2022-10-22 18:06:17');
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
INSERT INTO `type` VALUES (1,'Du lịch trong nước'),(2,'Du lịch quốc tế');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'Huy','Nguyen','huydnf','$2a$10$w/1Q47rzLjPKsrfGlCjlvOnR9MnfhewoV.Xeonf5gLoVilDOrqrHK','huygaming01@gmail.com','0363266625','ROLE_USER'),(4,'Nguyen Quang','Huy','admin','$2a$10$5k3ZWdc54/.qB6HoMm8VYe7TRE73qVByXFB0ZrSaroFkR4i8JB9Hy','qhuy@gmail.com','0363250123','ROLE_ADMIN'),(5,'Nguyen ','Huy1','asd123','$2a$10$K.RiWXLm5B/0eO1IcgbkWePMHVbXA.Ve5jL5WyvrfqTqS68OSE.E6','asd123@gmail.com','0123456789','ROLE_CUSTOMER'),(6,'Nguyen Van','Huy2','sele','$2a$10$acr9iGlHXbLtGgJgNuCfhO6fEN5jy/R3DpVzHxqEFNq6pZct750P.','seleniumtest1@gmail.com','0362541548','ROLE_CUSTOMER'),(8,'Nguyá»n Quang','Huy','huynq','$2a$10$R1umdLfxB3liRMG5Uu9PyuCwju9BY5dPzd/JyITKJ3EfFQo53gTTq','huydnf@gmail.com','0363266625','ROLE_CUSTOMER');
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

-- Dump completed on 2022-10-23  3:30:23
