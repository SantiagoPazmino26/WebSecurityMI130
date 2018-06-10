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
INSERT INTO `cart` VALUES (1,1),(1,2),(1,3),(1,4),(3,45),(4,4),(5,45),(6,29),(7,40),(8,14),(9,10),(10,35);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20170414125935'),('20170415153116'),('20170415154415'),('20170417095748'),('20170424130912'),('20170424135537');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
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
INSERT INTO `product` VALUES (1,16,'iPhone 7 64GB (1)','Voluptas aut laudantium sit repudiandae esse perspiciatis dignissimos. Et itaque quibusdam tempora velit porro ut. Soluta explicabo eligendi occaecati debitis. Saepe eum sint dolorem delectus enim ipsum inventore.','5b122f28b5e4b.png',11,334.92,'1989-11-28 21:50:57','iphone-7-64gb-1',NULL),(2,2,'GIGABYTE GeForce® GTX 1070 (2)','A deserunt laudantium quibusdam enim nostrum. Qui ipsam non ipsum velit reiciendis aperiam. Fuga doloribus nisi placeat cumque. Ducimus temporibus modi saepe architecto unde non dicta.','5b122f28b65f4.png',89,147.21,'2004-08-27 19:50:36','gigabyte-geforce-r-gtx-1070-2',NULL),(3,13,'Samsung Galaxy S8 (3)','Cupiditate sit vitae voluptas sint. Voluptates ut optio quos qui. Error nihil laborum vero.','5b122f28b7597.jpg',95,294.47,'1984-09-11 22:28:07','samsung-galaxy-s8-3',NULL),(4,11,'Acer Aspire 15KM (4)','Provident esse hic eligendi quos culpa ut ab. Sed a nam et sint autem inventore aut. Aut aut blanditiis et ducimus eos odit.','5b122f28b7b6e.png',18,308.83,'1996-01-26 16:09:45','acer-aspire-15km-4',NULL),(5,14,'Монитор Philips 18.5\'\' (5)','Molestiae quidem ut sunt et quidem. Accusamus aut nemo fuga est placeat rerum ut. Enim ex eveniet facere sunt. Delectus aut nam et eum.','5b122f28b8147.jpg',7,58.13,'1972-07-23 07:30:40','monitor-philips-18-5-5',NULL),(6,9,'GIGABYTE GeForce® GTX 1070 (6)','Ex esse veritatis voluptate vel possimus. Aut incidunt sunt cumque asperiores incidunt iure sequi.','5b122f28b8721.jpg',67,289.16,'1970-06-09 08:11:21','gigabyte-geforce-r-gtx-1070-6',NULL),(7,16,'Монитор Philips 18.5\'\' (7)','Est rem dicta voluptas fuga. Reiciendis qui architecto fugiat nemo omnis. Recusandae qui cupiditate eos. Veritatis vel optio provident non incidunt magnam molestias.','5b122f28b8d15.png',24,397.75,'1972-05-21 22:47:42','monitor-philips-18-5-7',NULL),(8,4,'Sony ILCE-6500Z (8)','Quia ipsum voluptatibus est accusantium eveniet. Atque possimus aut dolores quis totam incidunt ducimus aperiam. Est quia assumenda minima sunt. Similique ut culpa natus consequatur reiciendis sit.','5b122f28b92e2.png',80,352.57,'2004-09-25 14:36:51','sony-ilce-6500z-8',NULL),(9,13,'Beats Headphones RED (9)','Iure molestiae et dolore quaerat molestiae iste. Dolores harum rerum sequi quia quasi quae. Saepe numquam tempora et quo aperiam natus ut doloribus.','5b122f28b98de.jpg',12,36.83,'1971-09-17 01:09:04','beats-headphones-red-9',NULL),(10,6,'Sony ILCE-6500Z (10)','Ad sed architecto quod nulla maxime voluptas. Inventore esse harum accusantium rerum nulla voluptatem voluptas. Quos sed autem voluptatibus eum aut nesciunt.','5b122f28b9cba.png',75,10.24,'2015-04-18 04:32:37','sony-ilce-6500z-10',NULL),(11,14,'Samsung QLED KLJ75 (11)','Sit id labore similique ut voluptatem laudantium. Eveniet quam vero fuga.','5b122f28ba289.png',48,275.37,'2006-02-01 17:09:33','samsung-qled-klj75-11',NULL),(12,6,'Corsair K70 RGB (12)','Laudantium quod magni non voluptas fuga. Autem non non explicabo et. Itaque ex quaerat ut aut. Consequatur non rerum in cupiditate voluptas molestiae fuga. Cum non qui quaerat cupiditate incidunt id sunt.','5b122f28baa50.png',16,32.13,'1970-09-04 18:21:00','corsair-k70-rgb-12',NULL),(13,14,'Beats Headphones RED (13)','Ut iure possimus ab in hic molestiae odio. Vitae maiores ex beatae reprehenderit. Corrupti dolorem reprehenderit ut ducimus.','5b122f28bac55.jpg',55,462.24,'2014-06-26 04:28:19','beats-headphones-red-13',NULL),(14,16,'Samsung Galaxy S8 (14)','Qui doloremque aperiam qui rerum accusamus beatae. Enim et doloribus voluptatibus perspiciatis. Sapiente quia suscipit doloribus.','5b122f28bb02d.png',52,412.53,'2002-06-15 01:37:01','samsung-galaxy-s8-14',NULL),(15,4,'Beats Headphones RED (15)','Rerum consequatur laudantium nisi quo. Rerum esse eveniet debitis omnis voluptatem voluptatem et eaque. Et praesentium est velit molestiae porro. Quos hic animi nobis doloribus.','5b122f28bb418.jpg',5,206.18,'1997-07-14 01:58:56','beats-headphones-red-15',NULL),(16,5,'Dell Alienware Area 51 (16)','Et ipsam omnis saepe dolor in perspiciatis sit. Temporibus voluptate laborum hic hic. Culpa rerum soluta in dicta molestiae asperiores consequuntur sit.','5b122f28bb802.png',78,310.18,'1971-06-28 12:14:57','dell-alienware-area-51-16',NULL),(17,8,'Монитор Philips 18.5\'\' (17)','Nesciunt eum non in esse et. Quis corporis voluptate ullam placeat non. Eaque possimus quia optio explicabo. Repellat tempore quod tempore totam iste quidem eum. Velit voluptatibus in laudantium voluptatem.','5b122f28bba50.jpg',87,190.92,'1990-10-31 15:18:40','monitor-philips-18-5-17',NULL),(18,10,'Corsair K70 RGB (18)','Quam quia voluptatem quibusdam. In maiores nisi eius quibusdam. Quia recusandae aut numquam laboriosam sint enim reiciendis quod.','5b122f28bdf19.jpg',29,426.74,'1995-07-21 07:35:03','corsair-k70-rgb-18',NULL),(19,8,'Samsung QLED KLJ75 (19)','Amet sunt vitae enim sapiente. Natus assumenda reiciendis similique et laudantium vel. Ea itaque est et nihil beatae. Voluptatibus quae sit veniam vel eos officiis et.','5b122f28be110.png',68,171.42,'1979-01-27 16:32:54','samsung-qled-klj75-19',NULL),(20,12,'Kingston SSD 125GB (20)','Totam aut nisi non omnis voluptatem. Nesciunt eligendi eos sint ut voluptates. Incidunt omnis aut enim nihil repellat ut culpa.','5b122f28be8f2.jpg',24,236.77,'2007-05-05 08:18:33','kingston-ssd-125gb-20',NULL),(21,11,'GIGABYTE GeForce® GTX 1070 (21)','Autem nihil esse repudiandae pariatur. Assumenda error consequatur fugit ad iste.','5b122f28beec5.png',73,150.44,'2004-07-19 17:09:23','gigabyte-geforce-r-gtx-1070-21',NULL),(22,7,'WD Purple 1TB (22)','Nostrum ea dolores doloremque fuga labore qui. Molestias hic minus et omnis porro voluptatibus. Quia reprehenderit magni fugiat consequatur officiis. Alias et et quis quae.','5b122f28bf2c0.jpg',65,74.77,'2014-01-13 22:42:28','wd-purple-1tb-22',NULL),(23,3,'WD Purple 1TB (23)','Eos omnis inventore perferendis voluptatem nisi. Consequatur ullam voluptas et tempora. Corporis excepturi sint dolores quaerat odit quia nisi accusantium. Voluptatem ut explicabo corporis eligendi ut ut.','5b122f28bfb85.jpg',96,483.07,'2000-10-02 22:25:12','wd-purple-1tb-23',NULL),(24,8,'GIGABYTE GeForce® GTX 1070 (24)','Amet velit aut delectus iure sed alias. Perspiciatis deserunt omnis inventore mollitia unde id in id. Molestiae in maxime sint doloremque similique aut est.','5b122f28c08d8.jpg',13,95.73,'2006-05-28 08:22:47','gigabyte-geforce-r-gtx-1070-24',NULL),(25,1,'WD Purple 1TB (25)','Consequatur dicta ipsa temporibus sit. Cupiditate doloremque odio ad asperiores quaerat eius accusamus. Dolorem earum ut consequatur facilis molestias quo.','5b122f28c0cec.png',55,139.23,'2016-09-24 19:42:29','wd-purple-1tb-25',NULL),(26,12,'Corsair K70 RGB (26)','Accusantium autem suscipit quia et. Dolorum quos aliquam delectus accusantium quidem. Eius a corrupti totam placeat delectus voluptatem. Officiis sed autem ut voluptatem est quod alias iste.','5b122f28c10d2.png',56,402.49,'2011-02-26 03:38:17','corsair-k70-rgb-26',NULL),(27,3,'Mirrorless Sony Alpha (27)','Explicabo quia sed ea aperiam unde voluptatem. Beatae neque eum est molestiae. Laboriosam dolor odit omnis. Excepturi similique quia quas beatae et.','5b122f28c1373.png',66,468.95,'1975-06-28 09:46:49','mirrorless-sony-alpha-27',NULL),(28,6,'Samsung Galaxy S8 (28)','Temporibus qui ad est. Et cum eius voluptas numquam quam occaecati. Aut in laudantium omnis et aut laborum.','5b122f28c157a.jpg',52,151.67,'2017-03-04 00:42:46','samsung-galaxy-s8-28',NULL),(29,5,'Монитор Philips 18.5\'\' (29)','Non qui est maiores aliquid. Autem qui est velit excepturi et necessitatibus tenetur doloremque. Quibusdam fuga beatae voluptas iure rerum. Necessitatibus eius commodi odio ut aliquid.','5b122f28c1746.jpg',80,9.40,'1994-08-27 16:36:29','monitor-philips-18-5-29',NULL),(30,14,'Acer Aspire 15KM (30)','Aliquid repudiandae qui voluptatem distinctio modi officiis eos. Facilis vel ut modi quia recusandae. Eligendi quo voluptas totam asperiores ab tenetur voluptatem. Reiciendis cum accusamus ut et nobis iste accusantium quaerat.','5b122f28c18fd.jpg',29,420.56,'2016-04-09 04:19:27','acer-aspire-15km-30',NULL),(31,7,'GIGABYTE GeForce® GTX 1070 (31)','Vero eos voluptatem at qui eaque nihil aliquid. Fugit natus quaerat quibusdam alias omnis accusamus aut. Perspiciatis itaque doloribus qui dicta eligendi quae. Facere quo beatae deleniti quia molestiae alias quo quis.','5b122f28c1afb.jpg',5,409.47,'1986-02-17 13:29:57','gigabyte-geforce-r-gtx-1070-31',NULL),(32,2,'Samsung Galaxy S8 (32)','Qui fugiat dolores placeat reprehenderit nesciunt architecto quas. Similique consequatur nisi fuga dolores aut. Illo illum sint voluptas a aperiam. Aut qui neque minus eos fugit nostrum non.','5b122f28c1cd0.jpg',50,399.51,'1975-06-24 18:50:32','samsung-galaxy-s8-32',NULL),(33,4,'Gorenje SB800W (33)','Enim velit qui nam nesciunt non dolore. Et eius et et omnis eaque. Non ea vel omnis rerum explicabo inventore quam. Qui accusamus eveniet dolorem voluptatem est. Tenetur aut sit aliquam provident et voluptatem.','5b122f28c20e5.png',89,183.98,'2004-03-23 20:22:15','gorenje-sb800w-33',NULL),(34,15,'Samsung Galaxy S8 (34)','Perferendis sit est magnam ut nemo possimus. Totam iste perspiciatis harum animi et ad rerum. Fugiat et facere quisquam. Quod velit velit ut rem repellendus ut sit laudantium.','5b122f28c2308.png',12,439.45,'1997-08-05 00:01:50','samsung-galaxy-s8-34',NULL),(35,1,'Монитор Philips 18.5\'\' (35)','Est in reprehenderit reiciendis accusamus. Quia et mollitia deleniti qui nostrum doloremque. Aut molestiae sapiente est consequatur. Tempore similique ut debitis consequatur.','5b122f28c250d.jpg',75,310.55,'1973-05-23 01:38:31','monitor-philips-18-5-35',NULL),(36,3,'Samsung Galaxy S8 (36)','Error fuga ut perspiciatis quia quasi sit. Ad sunt est impedit itaque. Officiis ut quis quisquam consequatur asperiores voluptatem. Nostrum ea corrupti voluptatem molestiae.','5b122f28c26ca.png',52,471.17,'2001-01-13 02:55:41','samsung-galaxy-s8-36',NULL),(37,6,'Sony ILCE-6500Z (37)','Nulla voluptatem aperiam ipsa eius repellat. Reiciendis voluptas doloremque esse dolor. Illo placeat harum voluptatem at enim. Voluptas ut dolorem voluptates deserunt.','5b122f28c28f4.jpg',53,280.85,'2010-05-23 21:07:43','sony-ilce-6500z-37',NULL),(38,17,'iPhone 7 64GB (38)','Quia reprehenderit sint mollitia sed facere. Sit delectus ad iusto molestias iusto. Laboriosam nulla earum eius repellat culpa. Harum voluptatem sit nihil laboriosam sed.','5b122f28c2ad9.png',93,342.42,'2012-11-07 10:31:56','iphone-7-64gb-38',NULL),(39,6,'Acer Aspire 15KM (39)','Voluptas cupiditate aut consequatur aut ullam qui. Voluptatem aut cum vitae nostrum non. Non omnis aut quos ut ad est quidem eum. Voluptates laboriosam ea porro blanditiis eos enim non aut. Sunt eligendi sapiente et et fuga recusandae.','5b122f28c2cab.jpg',2,142.73,'1972-02-25 09:58:35','acer-aspire-15km-39',NULL),(40,13,'Corsair K70 RGB (40)','Dolore explicabo nisi a aut architecto et aut. Nam cum tempore doloremque. Aut qui perferendis praesentium cupiditate iste. Provident qui debitis nisi ad ipsa magni nihil voluptatem.','5b122f28c2e6e.jpg',25,220.55,'2015-04-11 17:14:58','corsair-k70-rgb-40',NULL),(41,16,'Samsung Galaxy S8 (41)','Ut repellendus officiis nihil reprehenderit non ut rem. Magnam iure enim sed velit aut. Quod cupiditate culpa nisi eos cupiditate quibusdam eveniet. Provident quas omnis voluptatem quia soluta recusandae id.','5b122f28c3075.png',70,52.68,'2003-06-12 13:35:39','samsung-galaxy-s8-41',NULL),(42,10,'Sony ILCE-6500Z (42)','Accusantium nesciunt voluptas et aut sunt reiciendis velit voluptas. Eum et eos fugiat voluptas voluptatem. Nostrum culpa in quod voluptatem.','5b122f28c324d.jpg',4,221.05,'1993-07-02 16:53:19','sony-ilce-6500z-42',NULL),(43,12,'Samsung Galaxy S8 (43)','Possimus accusamus sint hic ut atque expedita. Minima aut ut reiciendis ut. Numquam animi culpa velit dignissimos molestias tenetur a. Ut et rerum dolore consectetur et beatae. Nulla quisquam labore saepe perspiciatis doloremque.','5b122f28c3459.jpg',91,273.43,'2012-02-20 18:58:43','samsung-galaxy-s8-43',NULL),(44,1,'Samsung QLED KLJ75 (44)','Ratione enim velit ullam tempore autem sapiente id consequuntur. Dolore qui in et quasi incidunt rerum ex. Aut itaque nesciunt sit quidem fugit sapiente ullam.','5b122f28c3623.jpg',89,124.69,'1979-03-23 05:03:21','samsung-qled-klj75-44',NULL),(45,10,'Beats Headphones RED (45)','Quia vitae iure voluptatibus dolorem totam laboriosam sit enim. Sint velit rerum autem quia. Ducimus odio fuga vitae expedita. Vero animi fugiat corporis.','5b122f28c3b9c.png',13,400.00,'1981-09-17 15:31:09','beats-headphones-red-45',NULL),(46,3,'Gorenje SB800W (46)','Qui sit rem consequatur. Incidunt et sunt tempora sunt aliquam mollitia id repudiandae. Doloremque placeat ut esse. Aut ratione cumque commodi.','5b122f28c3d68.jpg',48,338.13,'1999-02-01 18:59:03','gorenje-sb800w-46',NULL),(47,10,'Kingston SSD 125GB (47)','Est quam provident vel tenetur asperiores. Ipsa dolorum optio odio aspernatur qui dolor. Suscipit ipsum veniam neque omnis dolor. Molestiae quia voluptatem quisquam sed.','5b122f28c3f1f.png',0,103.39,'2011-08-02 00:59:44','kingston-ssd-125gb-47',NULL),(48,5,'Samsung Galaxy S8 (48)','Quasi corporis rerum quo ut accusantium omnis quibusdam. Aut culpa dolores consectetur quod. Quisquam aut cupiditate aperiam. Adipisci veritatis vel voluptas voluptatem cumque sed. Odit excepturi accusamus vel quae.','5b122f28c4141.png',61,327.95,'1996-03-27 21:41:24','samsung-galaxy-s8-48',NULL),(49,10,'Mirrorless Sony Alpha (49)','Id consequatur accusantium quia. Minus voluptates dignissimos est officiis est repudiandae est. Odio inventore sed ipsum omnis maiores.','5b122f28c4325.jpg',41,342.10,'1972-11-20 23:42:11','mirrorless-sony-alpha-49',NULL),(50,3,'iPhone 7 64GB (50)','Exercitationem nisi quaerat numquam voluptatem harum. Quia et aliquid neque voluptas est totam.','5b122f28c44ae.jpg',53,286.80,'2001-05-23 10:00:59','iphone-7-64gb-50',NULL);
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
INSERT INTO `product_category` VALUES (1,'Books','books'),(2,'Games','games'),(3,'TV','tv'),(4,'Photo','photo'),(5,'Auto Accessoirs','auto-accessoirs'),(6,'Computers','computers'),(7,'Smart Phones','smart-phones'),(8,'Notebooks','notebooks'),(9,'Audio','audio'),(10,'Medicine','medicine'),(11,'Health','health'),(12,'Music','music'),(13,'CDs','cds'),(14,'Videos','videos'),(15,'XXX','xxx'),(16,'Other','other'),(17,'Software','software');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_promotions`
--

DROP TABLE IF EXISTS `product_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_promotions` (
  `product_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`promotion_id`),
  KEY `IDX_797C6F1F4584665A` (`product_id`),
  KEY `IDX_797C6F1F139DF194` (`promotion_id`),
  CONSTRAINT `FK_797C6F1F139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_797C6F1F4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_promotions`
--

LOCK TABLES `product_promotions` WRITE;
/*!40000 ALTER TABLE `product_promotions` DISABLE KEYS */;
INSERT INTO `product_promotions` VALUES (5,3),(10,2),(30,1),(30,5),(31,1),(31,5),(32,2),(32,5),(33,3),(33,5),(34,1),(34,2),(35,3),(35,4),(36,2),(36,3),(37,1),(37,2),(38,1),(38,3),(39,1),(39,3),(40,4),(40,5),(41,1),(41,4),(42,1),(42,2),(43,1),(43,4),(44,2),(44,5),(45,2),(45,4),(50,2),(50,4),(50,5);
/*!40000 ALTER TABLE `product_promotions` ENABLE KEYS */;
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
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C11D7DD15E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Adah Promo',72,'2018-06-03 17:12:13','2018-08-01 00:30:19'),(2,'Maude Promo',99,'2018-06-03 00:34:22','2018-07-19 10:28:43'),(3,'Lily Promo',19,'2018-05-31 20:57:30','2018-07-13 12:36:02'),(4,'Gordon Promo',93,'2018-05-30 12:34:23','2018-07-24 00:35:25'),(5,'Emory Promo',32,'2018-05-31 01:04:25','2018-06-19 08:44:28');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_794381C64584665A` (`product_id`),
  KEY `IDX_794381C6A76ED395` (`user_id`),
  CONSTRAINT `FK_794381C64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,49,2,'Voluptas rerum quia et harum dolor quaerat. Et repellat rerum voluptas dolore explicabo vero. Fugit officiis explicabo ipsa libero sit ducimus minima. Suscipit id tempore voluptatibus recusandae et deleniti tenetur. Illo sunt possimus esse et porro consequatur totam et.',2,'2018-04-08 18:05:41'),(2,5,5,'Consequatur aliquid quis repudiandae temporibus blanditiis sit. Quo pariatur qui pariatur cumque hic sunt harum alias. Quibusdam asperiores aliquid ducimus fuga temporibus consequuntur omnis.',1,'2018-05-13 22:53:50'),(3,20,10,'Recusandae eligendi vel est repellat. Vitae neque optio quod et consectetur ut expedita ratione. Qui sed ut repudiandae.',4,'2017-12-05 13:03:38'),(4,10,7,'Cumque et quod hic aut nulla. Minus dolores sit iusto rerum. Et neque pariatur vel laudantium et laborum. Dolores dolorum ad in et.',1,'2018-01-11 12:04:34'),(5,25,5,'Eveniet voluptas est accusantium. Rerum architecto commodi est omnis distinctio eum sit. Voluptatum quis debitis et aliquam qui vel debitis qui. Perferendis ut dolorum excepturi deleniti.',1,'2018-02-11 04:53:00'),(6,25,2,'Ipsum dolores in dolor necessitatibus. Corrupti et non quos quia repellat expedita laudantium. Qui odit et sed illo minima. Expedita necessitatibus accusamus sed iure.',3,'2018-03-05 07:24:38'),(7,1,3,'Iusto voluptatem quasi consequatur modi. Eveniet est voluptatem culpa dolores. Sunt occaecati est nihil vel aut.',2,'2018-04-03 04:01:09'),(8,6,2,'Nihil quidem vel doloremque modi est qui. Voluptate quos a minus. Laudantium porro quibusdam voluptatem suscipit quo consequatur. Repellendus voluptas quam culpa.',1,'2018-05-20 00:28:03'),(9,34,1,'Eveniet nesciunt dolore et id aspernatur sapiente. Sint eum nobis et et et. Fugit consequatur cum esse laborum sequi sit.',5,'2018-01-12 22:58:04'),(10,9,7,'Voluptates error ut recusandae quis labore facilis sit. Quia velit quia laudantium ea et. Enim molestias sunt odio aperiam tenetur.',5,'2017-12-03 20:15:01'),(11,16,2,'Maxime voluptatem quidem quo similique vel consequatur. Id sed veniam aut velit perferendis.',3,'2018-01-27 12:27:19'),(12,30,2,'Omnis quo aspernatur quod voluptas quibusdam exercitationem ab unde. Rem sunt perferendis repellendus sapiente accusamus dolor. Alias dignissimos nobis expedita repellat. Velit cumque optio qui.',1,'2018-01-18 04:37:25'),(13,48,8,'Optio voluptatibus et non ab necessitatibus exercitationem nemo et. Culpa praesentium mollitia et veniam eaque et.',5,'2018-03-13 07:23:34'),(14,12,2,'Molestias sed dicta molestiae illo possimus qui. Velit dolorem facere officiis nostrum dolore nulla. Ea quo fugiat unde alias sunt rerum fuga. Placeat corporis hic odio.',4,'2018-02-25 05:46:53'),(15,6,3,'Voluptas maiores consequatur excepturi impedit ducimus. Voluptatum quia voluptatem est quo. Reprehenderit inventore quibusdam in eum et. Voluptatem libero et illo ducimus consectetur est.',3,'2017-12-20 00:53:10');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@videlin.eu','Admin Account',23580.72,'b9a6e0793e9092d61e8732dc05663132961b1797'),(2,'editor@videlin.eu','Editor Account',1034.28,'b9a6e0793e9092d61e8732dc05663132961b1797'),(3,'lrutherford@yahoo.com','Scot Parker',329.19,'$2y$13$7f53pfg4JCgKu6RzPbT4I.Vh2DnRqWvwMW4Pxl5WNTHvUD8/RQSDG'),(4,'fisher.emmett@ruecker.com','Ray Metz',502.72,'$2y$13$dLHO3l1HAmWQHa/xtqMaDu4udUqIFD/szTKjhxZfLdp9dqnxVnwf.'),(5,'jayde.trantow@gmail.com','Dr. Javon Maggio',300.47,'$2y$13$wlr4Yc0nbH/VY//Dg69jpublM7VjEgfwFPMFyfiO6ySIkGtJNhzkO'),(6,'hailey.borer@pollich.info','Dr. Timothy Smitham',191.15,'$2y$13$GYh.hPlD/csHIDePgUhM9u9iXYgKS1sx2Bw8nvwC4NgHS5eSAAby6'),(7,'alexander29@yahoo.com','Miss Alisha Ondricka',431.89,'$2y$13$YG0y1kb7Hnhav6sAHfGufuDFWfR9kwsfU8N0qtu/BzRj6FamDlY/O'),(8,'rhiannon70@murphy.biz','Ms. Keira Ward IV',335.18,'$2y$13$3LVCnGvHcIlC4JfmJVJ5EunE.2tfLJhJwEHXNiwDMtEqJVxjJHQPi'),(9,'jerrod12@hotmail.com','Joyce Schneider DDS',315.40,'$2y$13$4yf7fJmCma7XMYneUwoMSuiL0tv23UoBlFAmTkkNP1xDC6VCZkkBm'),(10,'colton39@gmail.com','Laurence Quitzon Jr.',220.94,'$2y$13$ge8kLvAkhMoh0Y4yOibhvO9zBiNrVj18qiG8G2D2q9OJWd0/J2db.'),(11,'santzero@hotmail.com','Santiago',2000.00,'$2y$13$/f6hDIXM/ewRcWeqyswyn.xLWRhWBE9nMSDYuudIw5ovVZ1K1jCDe');
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
INSERT INTO `users_roles` VALUES (1,2),(1,3),(2,2),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1);
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

-- Dump completed on 2018-06-10 22:05:57
