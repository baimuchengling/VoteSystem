-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: vote
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKt8o6pivur7nn124jehx7cygw5` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `create_time`, `name`, `rank`) VALUES (11,'2020-05-05 19:30:53.241000','计算机',2),(13,'2021-10-13 00:00:17.087000','游戏',3),(14,'2021-10-13 22:25:39.471000','工作',2),(15,'2021-10-13 22:25:39.471000','学习',0),(16,'2021-10-13 22:25:39.471000','娱乐',0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `poll_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK1i68hpih40n447wqx4lpef6ot` (`poll_id`) USING BTREE,
  CONSTRAINT `FK1i68hpih40n447wqx4lpef6ot` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
INSERT INTO `choices` (`id`, `text`, `poll_id`) VALUES (89,'Spring In Action',13),(90,'Spring Boot In Action',13),(91,'Java编程思想',13),(92,'C程序设计语言',13),(93,'代码大全',13),(94,'算法4',13),(95,'EDG',14),(96,'FPX',14),(97,'RNG',14),(98,'LNG',14),(99,'钉钉',15),(100,'IDEA',15),(101,'VSCODE',15),(102,'语鹊',15),(103,'sub line',15),(104,'Google',15),(105,'阿里郎',15),(106,'终端',15),(107,'其它',15),(108,'星期一',16),(109,'星期二',16),(110,'星期三',16),(111,'星期四',16),(112,'星期五',16),(113,'星期六',16),(114,'星期日',16);
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comment_status` tinyint DEFAULT NULL,
  `commentator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `commentator_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reply_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reply_create_time` datetime(6) DEFAULT NULL,
  `poll_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKshp333wo5iq9vwns7l2wp4m95` (`poll_id`) USING BTREE,
  CONSTRAINT `FKshp333wo5iq9vwns7l2wp4m95` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `avatar`, `comment_status`, `commentator`, `commentator_ip`, `content`, `create_time`, `email`, `reply_body`, `reply_create_time`, `poll_id`) VALUES (8,'/dist/img/avatar/girl1.png',0,'开发测试2','0:0:0:0:0:0:0:1','ok','2021-10-12 22:04:59.894000','12345678@qq.com',NULL,NULL,13),(9,'/dist/img/avatar/girl1.png',1,'开发测试2','0:0:0:0:0:0:0:1','123','2021-10-12 22:15:19.623000','12345678@qq.com',NULL,NULL,13),(10,'/dist/img/avatar/girl1.png',0,'开发测试2','0:0:0:0:0:0:0:1','123','2021-10-12 22:17:03.217000','12345678@qq.com',NULL,NULL,13),(11,'/dist/img/avatar/girl1.png',1,'开发测试2','0:0:0:0:0:0:0:1','123','2021-10-13 00:02:45.540000','12345678@qq.com',NULL,NULL,14),(12,'/dist/img/avatar/girl1.png',1,'开发测试2','0:0:0:0:0:0:0:1','123','2021-10-13 00:07:38.914000','12345678@qq.com',NULL,NULL,14),(13,'/dist/img/avatar/girl1.png',0,'开发测试2','0:0:0:0:0:0:0:1','3','2021-10-13 00:18:11.357000','12345678@qq.com',NULL,NULL,14),(14,'/dist/img/avatar/girl1.png',1,'开发测试3','0:0:0:0:0:0:0:1','test','2021-10-13 07:55:20.281000','123456@163.com',NULL,NULL,13),(15,'/dist/img/avatar/girl1.png',0,'开发测试3','0:0:0:0:0:0:0:1','23','2021-10-13 07:56:15.690000','123456@163.com',NULL,NULL,13),(16,'/dist/img/avatar/girl4.png',1,'开发测试3','0:0:0:0:0:0:0:1','差评呀','2021-10-13 22:22:49.614000','123456@163.com',NULL,NULL,15);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_tags`
--

DROP TABLE IF EXISTS `poll_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_tags` (
  `poll_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  KEY `FKr5mf5shm4vill4qvbp90c54ry` (`tag_id`) USING BTREE,
  KEY `FKivojvp8bmt4o9bvvij6pxr8co` (`poll_id`) USING BTREE,
  CONSTRAINT `FKivojvp8bmt4o9bvvij6pxr8co` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKr5mf5shm4vill4qvbp90c54ry` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_tags`
--

LOCK TABLES `poll_tags` WRITE;
/*!40000 ALTER TABLE `poll_tags` DISABLE KEYS */;
INSERT INTO `poll_tags` (`poll_id`, `tag_id`) VALUES (13,1),(13,17),(14,19),(14,18),(14,20),(15,21),(16,22);
/*!40000 ALTER TABLE `poll_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `limit_count` int DEFAULT NULL,
  `mode` tinyint DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `expiration_date_time` datetime(6) NOT NULL,
  `summary` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKngvibdputrxevf73lci9hppyb` (`category_id`) USING BTREE,
  KEY `FKrmn4rau93pxxyqgi57dqng2rl` (`user_id`) USING BTREE,
  CONSTRAINT `FKngvibdputrxevf73lci9hppyb` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrmn4rau93pxxyqgi57dqng2rl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
INSERT INTO `polls` (`id`, `limit_count`, `mode`, `create_time`, `expiration_date_time`, `summary`, `title`, `category_id`, `user_id`, `count`) VALUES (13,-1,2,'2020-05-05 19:32:09.923000','2020-05-12 00:00:00.000000','读书测试','下面有哪些书籍是你喜欢的？',11,1,1),(14,2,2,'2021-10-13 00:00:29.907000','2021-10-14 00:00:00.000000','哪个LPL会夺冠','哪个LPL会夺冠',13,11,2),(15,3,2,'2021-10-13 22:13:40.968000','2021-10-20 00:00:00.000000','办公软件大比拼，选出你最常用办公软件','程序员常用办公软件有哪些？',14,10,2),(16,3,2,'2021-10-13 22:25:39.475000','2021-10-19 00:00:00.000000','一周你喜欢哪一天了','你最喜欢星期几？',14,12,1);
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`) VALUES (1,'ROLE_ADMIN'),(5,'ROLE_NAVY'),(3,'ROLE_PIRATES'),(4,'ROLE_PIRATE_KING'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKt48xdq560gs3gap9g7jg36kgc` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `create_time`, `name`) VALUES (1,'2020-05-05 19:29:42.000000','读书'),(17,'2020-05-05 19:32:09.906000','计算机'),(18,'2021-10-12 22:43:43.993000','LPL'),(19,'2021-10-12 23:22:28.691000','LOL'),(20,'2021-10-12 23:33:41.168000','TOPIC'),(21,'2021-10-13 22:13:40.917000','软件'),(22,'2021-10-13 22:25:39.459000','日常');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_polls`
--

DROP TABLE IF EXISTS `tags_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_polls` (
  `tag_id` bigint NOT NULL,
  `polls_id` bigint NOT NULL,
  KEY `FKbawhyq1pj1nvafpikll052g8w` (`polls_id`) USING BTREE,
  KEY `FKtndl3ckcx89ri3669xp2llbxl` (`tag_id`) USING BTREE,
  CONSTRAINT `FKbawhyq1pj1nvafpikll052g8w` FOREIGN KEY (`polls_id`) REFERENCES `polls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtndl3ckcx89ri3669xp2llbxl` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_polls`
--

LOCK TABLES `tags_polls` WRITE;
/*!40000 ALTER TABLE `tags_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`) USING BTREE,
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES (1,1),(11,1),(1,2),(10,2),(11,2),(12,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_login_time` datetime(6) DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `motto` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`) USING BTREE,
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `avatar`, `create_time`, `email`, `last_login_time`, `name`, `password`, `status`, `username`, `motto`) VALUES (1,'/dist/img/avatar/girl1.png','2020-05-05 19:21:29.076000','1394466835@qq.com','2021-10-13 08:15:39.128000','超级管理员','$2a$10$oNgJUXkmh7CdTIL9u9MNkuPwuHXbZv5RfhV7kaECyqbsX5JmOkoQq',NULL,'admin',NULL),(10,'/dist/img/avatar/girl2.png','2021-10-12 07:28:59.807000','123456789@163.com','2021-10-13 21:31:52.335000','开发测试1','$2a$10$oNgJUXkmh7CdTIL9u9MNkuPwuHXbZv5RfhV7kaECyqbsX5JmOkoQq',NULL,'test1','长风破浪会有时，直挂云帆济沧海'),(11,'/dist/img/avatar/girl3.png','2021-10-12 22:02:55.526000','12345678@qq.com','2021-10-13 21:30:57.938000','开发测试2','$2a$10$7xiNLo6r3kRxw/9I5yuLj.ogTsuMbjRuQEXlxK/0IKChPdcUXuFG6',NULL,'test2',NULL),(12,'/dist/img/avatar/girl4.png','2021-10-13 07:48:44.972000','123456@163.com','2021-10-13 22:21:51.639000','开发测试3','$2a$10$oNgJUXkmh7CdTIL9u9MNkuPwuHXbZv5RfhV7kaECyqbsX5JmOkoQq',NULL,'test3','123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `choice_id` bigint NOT NULL,
  `poll_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKomskymhxde3qq9mcukyp1puio` (`choice_id`) USING BTREE,
  KEY `FK7trt3uyihr4g13hva9d31puxg` (`poll_id`) USING BTREE,
  KEY `FKli4uj3ic2vypf5pialchj925e` (`user_id`) USING BTREE,
  CONSTRAINT `FK7trt3uyihr4g13hva9d31puxg` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKli4uj3ic2vypf5pialchj925e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKomskymhxde3qq9mcukyp1puio` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` (`id`, `create_time`, `update_time`, `choice_id`, `poll_id`, `user_id`) VALUES (70,'2020-05-05 19:34:43.899000',NULL,91,13,1),(71,'2020-05-05 19:34:43.908000',NULL,92,13,1),(72,'2020-05-05 19:34:43.914000',NULL,93,13,1),(73,'2021-10-13 00:01:54.557000',NULL,95,14,11),(74,'2021-10-13 00:01:54.568000',NULL,96,14,11),(75,'2021-10-13 07:49:12.423000',NULL,95,14,12),(76,'2021-10-13 07:49:12.444000',NULL,98,14,12),(77,'2021-10-13 22:15:10.167000',NULL,99,15,10),(78,'2021-10-13 22:15:10.176000',NULL,101,15,10),(79,'2021-10-13 22:15:10.180000',NULL,104,15,10),(80,'2021-10-13 22:22:00.808000',NULL,99,15,12),(81,'2021-10-13 22:22:00.814000',NULL,100,15,12),(82,'2021-10-13 22:22:00.819000',NULL,101,15,12),(83,'2021-10-13 22:26:09.672000',NULL,112,16,12),(84,'2021-10-13 22:26:09.680000',NULL,113,16,12),(85,'2021-10-13 22:26:09.683000',NULL,114,16,12);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-13 23:36:23
