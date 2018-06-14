-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: security
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`product_id`),
  KEY `IDX_BA388B7A76ED395` (`user_id`),
  KEY `IDX_BA388B74584665A` (`product_id`),
  CONSTRAINT `FK_BA388B74584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D34A04AD989D9B62` (`slug`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`),
  KEY `IDX_D34A04AD8DE820D9` (`seller_id`),
  CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `FK_D34A04AD8DE820D9` FOREIGN KEY (`seller_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,2,'GIGABYTE GeForce® GTX 1070 (2)','A deserunt laudantium quibusdam enim nostrum. Qui ipsam non ipsum velit reiciendis aperiam. Fuga doloribus nisi placeat cumque. Ducimus temporibus modi saepe architecto unde non dicta.','5b122f28b65f4.png',89,147.21,'2004-08-27 19:50:36','gigabyte-geforce-r-gtx-1070-2',NULL),(8,4,'Sony ILCE-6500Z (8)','Quia ipsum voluptatibus est accusantium eveniet. Atque possimus aut dolores quis totam incidunt ducimus aperiam. Est quia assumenda minima sunt. Similique ut culpa natus consequatur reiciendis sit.','5b122f28b92e2.png',80,352.57,'2004-09-25 14:36:51','sony-ilce-6500z-8',NULL),(15,4,'Beats Headphones RED (15)','Rerum consequatur laudantium nisi quo. Rerum esse eveniet debitis omnis voluptatem voluptatem et eaque. Et praesentium est velit molestiae porro. Quos hic animi nobis doloribus.','5b122f28bb418.jpg',5,206.18,'1997-07-14 01:58:56','beats-headphones-red-15',NULL),(16,5,'Dell Alienware Area 51 (16)','Et ipsam omnis saepe dolor in perspiciatis sit. Temporibus voluptate laborum hic hic. Culpa rerum soluta in dicta molestiae asperiores consequuntur sit.','5b122f28bb802.png',78,310.18,'1971-06-28 12:14:57','dell-alienware-area-51-16',NULL),(23,3,'WD Purple 1TB (23)','Eos omnis inventore perferendis voluptatem nisi. Consequatur ullam voluptas et tempora. Corporis excepturi sint dolores quaerat odit quia nisi accusantium. Voluptatem ut explicabo corporis eligendi ut ut.','5b122f28bfb85.jpg',96,483.07,'2000-10-02 22:25:12','wd-purple-1tb-23',NULL),(25,1,'WD Purple 1TB (25)','Consequatur dicta ipsa temporibus sit. Cupiditate doloremque odio ad asperiores quaerat eius accusamus. Dolorem earum ut consequatur facilis molestias quo.','5b122f28c0cec.png',55,139.23,'2016-09-24 19:42:29','wd-purple-1tb-25',NULL),(27,3,'Mirrorless Sony Alpha (27)','Explicabo quia sed ea aperiam unde voluptatem. Beatae neque eum est molestiae. Laboriosam dolor odit omnis. Excepturi similique quia quas beatae et.','5b122f28c1373.png',66,468.95,'1975-06-28 09:46:49','mirrorless-sony-alpha-27',NULL),(29,5,'Монитор Philips 18.5\'\' (29)','Non qui est maiores aliquid. Autem qui est velit excepturi et necessitatibus tenetur doloremque. Quibusdam fuga beatae voluptas iure rerum. Necessitatibus eius commodi odio ut aliquid.','5b122f28c1746.jpg',80,9.40,'1994-08-27 16:36:29','monitor-philips-18-5-29',NULL),(32,2,'Samsung Galaxy S8 (32)','Qui fugiat dolores placeat reprehenderit nesciunt architecto quas. Similique consequatur nisi fuga dolores aut. Illo illum sint voluptas a aperiam. Aut qui neque minus eos fugit nostrum non.','5b122f28c1cd0.jpg',50,399.51,'1975-06-24 18:50:32','samsung-galaxy-s8-32',NULL),(33,4,'Gorenje SB800W (33)','Enim velit qui nam nesciunt non dolore. Et eius et et omnis eaque. Non ea vel omnis rerum explicabo inventore quam. Qui accusamus eveniet dolorem voluptatem est. Tenetur aut sit aliquam provident et voluptatem.','5b122f28c20e5.png',89,183.98,'2004-03-23 20:22:15','gorenje-sb800w-33',NULL),(35,1,'Монитор Philips 18.5\'\' (35)','Est in reprehenderit reiciendis accusamus. Quia et mollitia deleniti qui nostrum doloremque. Aut molestiae sapiente est consequatur. Tempore similique ut debitis consequatur.','5b122f28c250d.jpg',75,310.55,'1973-05-23 01:38:31','monitor-philips-18-5-35',NULL),(36,3,'Samsung Galaxy S8 (36)','Error fuga ut perspiciatis quia quasi sit. Ad sunt est impedit itaque. Officiis ut quis quisquam consequatur asperiores voluptatem. Nostrum ea corrupti voluptatem molestiae.','5b122f28c26ca.png',52,471.17,'2001-01-13 02:55:41','samsung-galaxy-s8-36',NULL),(44,1,'Samsung QLED KLJ75 (44)','Ratione enim velit ullam tempore autem sapiente id consequuntur. Dolore qui in et quasi incidunt rerum ex. Aut itaque nesciunt sit quidem fugit sapiente ullam.','5b122f28c3623.jpg',89,124.69,'1979-03-23 05:03:21','samsung-qled-klj75-44',NULL),(46,3,'Gorenje SB800W (46)','Qui sit rem consequatur. Incidunt et sunt tempora sunt aliquam mollitia id repudiandae. Doloremque placeat ut esse. Aut ratione cumque commodi.','5b122f28c3d68.jpg',48,338.13,'1999-02-01 18:59:03','gorenje-sb800w-46',NULL),(48,5,'Samsung Galaxy S8 (48)','Quasi corporis rerum quo ut accusantium omnis quibusdam. Aut culpa dolores consectetur quod. Quisquam aut cupiditate aperiam. Adipisci veritatis vel voluptas voluptatem cumque sed. Odit excepturi accusamus vel quae.','5b122f28c4141.png',61,327.95,'1996-03-27 21:41:24','samsung-galaxy-s8-48',NULL),(50,3,'iPhone 7 64GB (50)','Exercitationem nisi quaerat numquam voluptatem harum. Quia et aliquid neque voluptas est totam.','5b122f28c44ae.jpg',53,286.80,'2001-05-23 10:00:59','iphone-7-64gb-50',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CDFC73565E237E06` (`name`),
  UNIQUE KEY `UNIQ_CDFC7356989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Books','books'),(2,'Games','games'),(3,'TV','tv'),(4,'Photo','photo'),(5,'Auto Accessoirs','auto-accessoirs');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_order`
--

DROP TABLE IF EXISTS `products_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `products` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_15706D48A76ED395` (`user_id`),
  CONSTRAINT `FK_15706D48A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_order`
--

LOCK TABLES `products_order` WRITE;
/*!40000 ALTER TABLE `products_order` DISABLE KEYS */;
INSERT INTO `products_order` VALUES (1,2,'2018-06-02 07:48:38',0,'{\"samsung-galaxy-s8-41\":\"Samsung Galaxy S8 (41)\"}',3.6876);
/*!40000 ALTER TABLE `products_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6A5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (3,'ROLE_ADMIN'),(2,'ROLE_EDITOR'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `funds` decimal(14,2) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@webshop.eu','Admin Account',23580.72,'b9a6e0793e9092d61e8732dc05663132961b1797'),(2,'editor@webshop.eu','Editor Account',1034.28,'b9a6e0793e9092d61e8732dc05663132961b1797'),(3,'blacksantzero@gmail.com','Santiago',329.19,'b9a6e0793e9092d61e8732dc05663132961b1797');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_51498A8EA76ED395` (`user_id`),
  KEY `IDX_51498A8ED60322AC` (`role_id`),
  CONSTRAINT `FK_51498A8EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_51498A8ED60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,2),(1,3),(2,2),(3,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 22:56:22
