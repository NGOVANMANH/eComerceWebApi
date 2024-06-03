CREATE DATABASE  IF NOT EXISTS `ecomercewebdatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomercewebdatabase`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecomercewebdatabase
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `ward_id` int DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (2,1,'Đội 1 bình đông, Tịnh Bình',51,527,21193,NULL,NULL,'0705288268','2024-05-25 07:32:27','2024-05-29 02:33:49'),(4,1,'Đường 154 tân phú Quận 9',79,763,26836,NULL,NULL,'0705288268','2024-05-25 14:09:39','2024-05-29 02:52:46'),(5,1,'Chung cư c3 man thiện',79,763,26839,NULL,NULL,'0987654321','2024-05-25 14:11:34','2024-05-29 02:53:23'),(6,17,'Đội 1 bình đông, Tịnh Bình',51,527,21193,NULL,NULL,'0987654321','2024-05-25 14:14:57','2024-06-02 07:56:18'),(7,17,'Nhà 2 của tôi',51,527,21193,NULL,NULL,'1234','2024-05-25 14:15:26','2024-05-28 03:56:31'),(8,67,'Đội 1 bình đông an thiết',51,527,21193,NULL,NULL,'0705288268','2024-05-28 12:57:57','2024-05-28 12:57:57'),(9,2,'Tịnh Bình',51,527,21193,NULL,NULL,'0705288268','2024-06-02 08:33:47','2024-06-02 08:33:47'),(10,3,'Thái Bình',34,336,12460,NULL,NULL,'0987654321','2024-06-02 10:16:08','2024-06-02 10:17:36');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `logo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'BOBUI','BOBUI (đọc là Bo Bụi) là một thương hiệu thời trang được thành lập vào năm 2014 bởi Nguyễn Thanh Dũng. Các sản phẩm tại BOBUI theo đuổi chính là phong cách hip hop, rock, đường phố,...','BOBUI luôn thay đổi, nâng cao chất lượng mẫu mã để phù hợp với thị hiếu của\n    người sử dụng. Do đó, BOBUI luôn nhận được rất nhiều lời khen ngợi về chất lượng vải, mẫu mã đa dạng, style trẻ trung, dẫn đầu xu hướng. Đặc biệt, cách tư vấn của BOBUI cũng sẽ khiến bạn vô cùng hài lòng đấy.','https://localbrand.vn/wp-content/uploads/2020/04/Logo-BOBUI.jpg','2024-05-12 06:08:39','2024-05-12 06:08:39'),(3,'5theway','5theway vô cùng nổi tiếng trong cộng đồng đồ local brand tại Sài Gòn với Instagram 1 triệu người theo dõi và 4 chi nhánh tại trung tâm thành phố. 5theway đã táo bạo tạo nên sự phá cách thời trang dựa trên tông màu chủ đạo vàng và đen.','5theway được yêu thích bởi mẫu mã đa dạng, hợp thời trang mà giá tiền lại phù hợp với túi tiền. 5theway còn vinh hạnh là nơi thiết kế và sản xuất sản phẩm cho chương trình Rap Việt với những chiếc áo thêu tên 4 vị huấn luyện viên bán cực chạy vào năm 2020.','https://theme.hstatic.net/1000162482/1000911230/14/share_fb_home.jpg?v=789','2024-05-12 06:25:35','2024-05-12 06:25:35'),(5,'BAMA bag','BAMA bag là thương hiệu đồ local brand riêng về balo, túi đeo chéo đa dạng và bền bỉ dành cho cả nam và nữ. Nhóm khách hàng mà BAMA bag hướng tới là học sinh phổ thông, sinh viên.','Với mức giá tiền phù hợp và những thiết kế độc nhất vô nhị, BAMA bag nhận được rất nhiều sự yêu thích, ủng hộ của giới trẻ. Balo của BAMA mang đi học cũng được, mang đi chơi lại càng dễ thương luôn đấy.','https://localbrand.vn/wp-content/uploads/2021/06/bama-bag-local-brand-3.jpg','2024-05-12 06:41:26','2024-05-12 06:41:26'),(6,'YAME','','','https://localbrand.vn/wp-content/uploads/2021/07/YaMe-3.jpg','2024-05-19 13:21:59','2024-05-19 13:21:59'),(7,'Hardmode','','','https://localbrand.vn/wp-content/uploads/2021/12/Local-brand-HARDMODE-5.jpg','2024-05-19 13:27:35','2024-05-19 13:27:35'),(8,'nike','just do it','just do it','https://amis.misa.vn/wp-content/uploads/2022/10/y-nghia-logo-cua-nike-1.jpg','2024-05-29 02:03:45','2024-05-29 02:03:45');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `products_sku_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `products_sku_id` (`products_sku_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`products_sku_id`) REFERENCES `products_skus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (19,8,25,1,244150,'2024-05-24 10:01:25','2024-05-24 10:01:25'),(42,4,31,1,187110,'2024-05-31 09:42:08','2024-05-31 09:42:26'),(43,6,32,1,5813100,'2024-06-02 07:54:50','2024-06-02 07:54:50');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `is_checkout` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (4,1,187110,0,'2024-05-21 02:47:07','2024-05-31 09:42:26'),(5,2,0,0,'2024-05-21 04:35:40','2024-06-02 09:20:08'),(6,17,5813100,0,'2024-05-24 08:00:01','2024-06-02 07:54:53'),(7,26,0,0,'2024-05-24 09:15:49','2024-05-24 09:15:49'),(8,64,244150,0,'2024-05-24 10:01:16','2024-06-02 07:44:37'),(9,67,0,0,'2024-05-28 11:08:27','2024-05-28 12:57:57'),(10,3,0,0,'2024-06-02 10:14:19','2024-06-02 17:43:30');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,NULL,'Áo','Áo thời trang thoải mái và bền bỉ','The \"Áo\" is a versatile and essential piece of clothing suitable for various occasions. Made from high-quality materials, this item ensures comfort and durability. It is designed to be worn as a top, offering a perfect blend of style and functionality.\n\n- **Material**: Crafted from premium fabrics that provide a soft and comfortable feel against the skin.\n- **Design**: Features a classic and timeless design that can easily be paired with different types of bottoms such as jeans, skirts, or trousers.\n- **Fit**: Available in multiple sizes to ensure a perfect fit for everyone.\n- **Care Instructions**: Easy to care for; can be machine washed and tumble dried without losing its shape or color.\n\nWhether you’re dressing up for a formal event or keeping it casual, the \"Áo\" is a must-have addition to your wardrobe.','2024-05-19 03:34:08','2024-05-19 03:34:08'),(6,NULL,'Quần','Quần thời trang và thoải mái','The \"Quần\" is a versatile and essential piece of clothing suitable for various occasions. Made from high-quality materials, this item ensures comfort and durability. It is designed to be worn as a bottom, offering a perfect blend of style and functionality.\n\n- **Material**: Crafted from premium fabrics that provide a soft and comfortable feel against the skin.\n- **Design**: Features a modern and timeless design that can easily be paired with different types of tops such as shirts, blouses, or t-shirts.\n- **Fit**: Available in multiple sizes to ensure a perfect fit for everyone.\n- **Care Instructions**: Easy to care for; can be machine washed and tumble dried without losing its shape or color.\n\nWhether you’re dressing up for a formal event or keeping it casual, the \"Quần\" is a must-have addition to your wardrobe.','2024-05-19 03:34:15','2024-05-19 03:34:15'),(7,NULL,'Giày','Giày thời trang và thoải mái','The \"Giày\" is designed to provide both style and comfort for your feet. Made from high-quality materials, these shoes are perfect for various occasions.\n\n- **Material**: Crafted from durable and breathable materials to ensure long-lasting comfort.\n- **Design**: Features a modern and versatile design that can be paired with different outfits.\n- **Fit**: Available in multiple sizes to ensure a perfect fit for everyone.\n- **Care Instructions**: Easy to maintain; can be cleaned with a damp cloth and mild detergent.\n\nWhether you’re heading to work, a casual outing, or a formal event, the \"Giày\" will keep you comfortable and stylish.','2024-05-19 03:34:23','2024-05-19 03:34:23'),(8,NULL,'Tất','Tất mềm mại và bền bỉ','The \"Tất\" is an essential item for everyday wear, offering comfort and durability. Made from high-quality materials, these socks keep your feet cozy and protected.\n\n- **Material**: Crafted from soft and breathable fabrics to ensure maximum comfort.\n- **Design**: Features a simple and classic design that complements any footwear.\n- **Fit**: Available in multiple sizes to ensure a perfect fit for everyone.\n- **Care Instructions**: Machine washable and easy to care for.\n\nPerfect for any activity, the \"Tất\" is a must-have addition to your wardrobe.','2024-05-19 03:34:33','2024-05-19 03:34:33'),(9,NULL,'Vòng tay','Vòng tay thời trang và thanh lịch','The \"Vòng tay\" is a beautiful accessory that adds a touch of elegance to any outfit. Made from high-quality materials, this bracelet is both stylish and durable.\n\n- **Material**: Crafted from premium metals and stones to ensure durability and shine.\n- **Design**: Features a sophisticated and timeless design that complements any look.\n- **Fit**: Adjustable to fit various wrist sizes comfortably.\n- **Care Instructions**: Keep away from harsh chemicals and clean with a soft cloth to maintain its shine.\n\nPerfect for any occasion, the \"Vòng tay\" is a versatile piece that enhances your style.','2024-05-19 03:34:47','2024-05-19 03:34:47'),(10,NULL,'Kính mắt','Kính mắt thời trang và bảo vệ','The \"Kính mắt\" provides both style and protection for your eyes. Made from high-quality materials, these glasses are perfect for daily wear.\n\n- **Material**: Crafted from durable and lightweight materials for maximum comfort.\n- **Design**: Features a modern and trendy design that suits various face shapes.\n- **Fit**: Available in different sizes to ensure a perfect fit for everyone.\n- **Care Instructions**: Clean with a soft cloth and store in a protective case to prevent scratches.\n\nWhether you’re out in the sun or working at a computer, the \"Kính mắt\" will keep your eyes protected and your style on point.','2024-05-19 03:34:52','2024-05-19 03:34:52'),(11,NULL,'Bag','','','2024-05-19 13:32:07','2024-05-19 13:32:07'),(13,NULL,'Dây chuyền','','','2024-05-19 13:32:54','2024-05-19 13:32:54'),(14,5,'Áo thun','Không có','Không có','2024-05-19 13:34:45','2024-05-19 13:34:45'),(15,5,'Áo hoodie','','','2024-05-19 13:37:58','2024-05-19 13:37:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_sku_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `order_items_ibfk_2` (`product_sku_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_sku_id`) REFERENCES `products_skus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (13,36,28,2,187110,'2024-05-25 13:02:04','2024-05-25 13:02:04'),(14,36,27,1,102500,'2024-05-25 13:02:04','2024-05-25 13:02:04'),(15,37,23,3,540000,'2024-05-25 14:15:26','2024-05-25 14:15:26'),(16,37,31,1,187110,'2024-05-25 14:15:26','2024-05-25 14:15:26'),(17,38,23,3,540000,'2024-05-25 14:19:20','2024-05-25 14:19:20'),(18,38,31,1,187110,'2024-05-25 14:19:20','2024-05-25 14:19:20'),(19,38,25,1,244150,'2024-05-25 14:19:20','2024-05-25 14:19:20'),(20,39,28,2,187110,'2024-05-28 10:21:02','2024-05-28 10:21:02'),(21,39,27,1,102500,'2024-05-28 10:21:02','2024-05-28 10:21:02'),(22,40,31,1,187110,'2024-05-28 12:57:57','2024-05-28 12:57:57'),(23,40,26,1,185000,'2024-05-28 12:57:57','2024-05-28 12:57:57'),(24,41,32,2,5813100,'2024-05-29 02:32:29','2024-05-29 02:32:29'),(25,42,24,1,185000,'2024-05-29 05:34:36','2024-05-29 05:34:36'),(26,43,32,2,5813100,'2024-06-02 08:33:47','2024-06-02 08:33:47'),(27,44,32,2,5813100,'2024-06-02 08:35:56','2024-06-02 08:35:56'),(28,45,32,1,5813100,'2024-06-02 09:20:08','2024-06-02 09:20:08'),(29,46,32,1,5813100,'2024-06-02 10:16:08','2024-06-02 10:16:08'),(30,47,28,1,187110,'2024-06-02 17:43:30','2024-06-02 17:43:30'),(31,47,31,1,162000,'2024-06-02 17:43:30','2024-06-02 17:43:30'),(32,48,28,1,187110,'2024-06-02 17:46:17','2024-06-02 17:46:17'),(33,48,31,1,162000,'2024-06-02 17:46:17','2024-06-02 17:46:17'),(34,49,28,1,187110,'2024-06-02 17:46:25','2024-06-02 17:46:25'),(35,49,31,1,162000,'2024-06-02 17:46:25','2024-06-02 17:46:25'),(36,50,28,1,187110,'2024-06-02 17:48:36','2024-06-02 17:48:36'),(37,50,31,1,162000,'2024-06-02 17:48:36','2024-06-02 17:48:36');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `voucher_id` int DEFAULT NULL,
  `status` enum('Pending','Awaiting_Payment','Confirmed','Processing','On_Hold','In_Progress','Shipped','Out_For_Delivery','Delivered','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `address_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `voucher_id` (`voucher_id`),
  KEY `orders_ibfk_3_idx` (`address_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (36,1,476720,NULL,'Delivered',2,'2024-05-25 13:02:04','2024-05-29 02:35:00'),(37,17,1807110,NULL,'Out_For_Delivery',7,'2024-05-25 14:15:26','2024-05-29 02:35:20'),(38,17,2051260,NULL,'Awaiting_Payment',7,'2024-05-25 14:19:20','2024-06-02 17:32:28'),(39,1,476720,NULL,'Awaiting_Payment',2,'2024-05-28 10:21:02','2024-06-02 17:32:33'),(40,67,372110,NULL,'Awaiting_Payment',8,'2024-05-28 12:57:57','2024-06-02 17:32:37'),(41,1,11626200,NULL,'Awaiting_Payment',2,'2024-05-29 02:32:29','2024-06-02 07:17:56'),(42,1,85000,3,'Awaiting_Payment',2,'2024-05-29 05:34:36','2024-06-02 07:18:07'),(43,2,11626200,NULL,'Pending',9,'2024-06-02 08:33:47','2024-06-02 08:33:47'),(44,2,11626200,NULL,'Pending',9,'2024-06-02 08:35:56','2024-06-02 08:35:56'),(45,2,5813100,NULL,'Awaiting_Payment',9,'2024-06-02 09:20:08','2024-06-02 09:23:09'),(46,3,5813100,NULL,'Processing',10,'2024-06-02 10:16:08','2024-06-02 10:17:55'),(47,3,349110,NULL,'Pending',10,'2024-06-02 17:43:30','2024-06-02 17:43:30'),(48,3,349110,NULL,'Pending',10,'2024-06-02 17:46:17','2024-06-02 17:46:17'),(49,3,349110,NULL,'Pending',10,'2024-06-02 17:46:25','2024-06-02 17:46:25'),(50,3,349110,NULL,'Pending',10,'2024-06-02 17:48:36','2024-06-02 17:48:36'),(51,3,0,NULL,'Pending',10,'2024-06-02 18:13:54','2024-06-02 18:13:54'),(52,3,0,NULL,'Pending',10,'2024-06-02 18:22:25','2024-06-02 18:22:25');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Done','Pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('color','size') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
INSERT INTO `product_attributes` VALUES (9,'color','#4287F5','2024-05-19 04:01:38','2024-05-19 04:01:38'),(10,'size','S','2024-05-19 04:01:38','2024-05-19 04:01:38'),(11,'size','XL','2024-05-19 04:31:53','2024-05-19 04:31:53'),(12,'size','XXL','2024-05-19 04:33:23','2024-05-19 04:33:23'),(13,'size','M','2024-05-19 06:29:20','2024-05-19 06:29:20'),(14,'size','11','2024-05-19 06:34:11','2024-05-19 06:34:11'),(15,'color','9','2024-05-19 06:34:11','2024-05-19 06:34:11'),(16,'color','red','2024-05-19 06:36:57','2024-05-19 06:36:57'),(17,'color','test color','2024-05-19 06:39:37','2024-05-19 06:39:37'),(18,'color','#F13737','2024-05-19 09:13:43','2024-05-19 09:13:43'),(19,'color','#179b69','2024-05-19 09:22:27','2024-05-19 09:22:27'),(20,'color','#0D0C0C','2024-05-19 09:24:29','2024-05-19 09:24:29'),(21,'color','#C62F2F','2024-05-19 09:37:02','2024-05-19 09:37:02'),(22,'size','L','2024-05-19 09:38:45','2024-05-19 09:38:45'),(23,'color','#F8D80D','2024-05-19 09:41:29','2024-05-19 09:41:29'),(24,'color','#0B0909','2024-05-19 13:38:49','2024-05-19 13:38:49'),(25,'color','#585555','2024-05-19 13:39:15','2024-05-19 13:39:15'),(26,'color','#FFFFFF','2024-05-19 13:42:01','2024-05-19 13:42:01'),(27,'color','#b92d2d','2024-05-19 13:43:40','2024-05-19 13:43:40'),(28,'color','#231f1f','2024-05-19 13:45:51','2024-05-19 13:45:51'),(29,'color','#fbf1b1','2024-05-19 13:46:34','2024-05-19 13:46:34'),(30,'color','#ff0088','2024-05-19 13:46:44','2024-05-19 13:46:44'),(31,'color','#dee090','2024-05-19 13:47:16','2024-05-19 13:47:16'),(32,'color','#1B1818','2024-05-21 10:01:30','2024-05-21 10:01:30'),(33,'color','#e1e273','2024-05-21 15:02:10','2024-05-21 15:02:10'),(34,'color','#181616','2024-05-22 20:47:25','2024-05-22 20:47:25'),(35,'color','#0A0A0A','2024-05-29 02:05:35','2024-05-29 02:05:35'),(36,'size','40','2024-05-29 02:05:35','2024-05-29 02:05:35'),(37,'color','#f2f2f2','2024-05-31 07:27:09','2024-05-31 07:27:09'),(38,'color','#f0f0f0','2024-05-31 07:27:19','2024-05-31 07:27:19'),(39,'color','#e5e7eb','2024-05-31 07:27:31','2024-05-31 07:27:31'),(40,'color','#efebeb','2024-05-31 07:27:39','2024-05-31 07:27:39'),(41,'color','#e1e2e5','2024-05-31 07:27:46','2024-05-31 07:27:46'),(42,'color','#cf4f4f','2024-06-02 07:47:25','2024-06-02 07:47:25'),(43,'color','#bf2222','2024-06-02 07:47:43','2024-06-02 07:47:43'),(44,'color','#ba1c1c','2024-06-02 07:48:15','2024-06-02 07:48:15'),(45,'color','#9c0d0d','2024-06-02 07:48:26','2024-06-02 07:48:26'),(46,'color','#aa0909','2024-06-02 07:48:35','2024-06-02 07:48:35'),(47,'color','BLACK','2024-06-02 17:55:17','2024-06-02 17:55:17');
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_ibfk_1` (`brand_id`),
  KEY `products_ibfk_2` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,'áo thun oversized *7as ovp*','','','https://down-vn.img.susercontent.com/file/993a3443f551523e3a1fa40d6538ec95',1,5,'2024-05-19 04:01:38','2024-06-02 07:47:11'),(20,'áo flannel ngắn tay','','','https://cf.shopee.vn/file/835f2cf831fc92643b9e78f5ef917511',1,5,'2024-05-19 09:13:43','2024-05-21 15:02:10'),(21,'blacksheeps hilarious ss tee','','','https://product.hstatic.net/1000162482/product/vn-11134207-7r98o-ltmci2quf8y28d_f374a8e120794a0998f23e3fe3c4e758_master.jpg',3,5,'2024-05-19 09:24:29','2024-05-19 09:24:29'),(22,'áo polo cổ bẻ tay dài vải cotton 2 chiều thấm hút biểu tượng dáng vừa giá tốt seventy seven 20','','','https://cdn2.yame.vn/pimg/ao-polo-co-be-tay-dai-vai-cotton-2-chieu-tham-hut-bieu-tuong-dang-vua-on-gian-seventy-seven-20-0023248/0f0d2685-0212-0100-bc1a-001b4ed4f5db.jpg?w=540&h=756',1,5,'2024-05-19 09:37:02','2024-05-19 13:45:37'),(23,'blacksheeps \'cơm sườn\' ss tee','','','https://product.hstatic.net/1000162482/product/untitled_session0135_2_9bd4762d0fff47afb4b4a622147161e0_master.png',3,5,'2024-05-19 09:41:29','2024-05-19 09:41:29'),(24,'áo khoác có nón vải dù mỏng nhẹ phối màu dáng vừa đơn giản y2010 originals ver54','','','https://cdn2.yame.vn/pimg/ao-khoac-classic-on-gian-y-nguyen-ban-ver54-0020926/2e7d498f-a1ac-1700-4d41-001a1db60ea1.jpg?w=540&h=756',6,15,'2024-05-19 13:38:49','2024-05-19 13:38:49'),(25,'áo polo cổ bẻ tay ngắn vải cotton 2 chiều thấm hút biểu tượng dáng rộng bst thiết kế the seafarer 09','','','https://cdn2.yame.vn/pimg/ao-polo-the-seafarer-09-0022786/ee00f9cf-6a03-1f00-31d8-001b407fa10a.jpg?w=540&h=756',6,5,'2024-05-19 13:42:01','2024-05-19 13:42:01'),(26,'áo thun hardmode đen','','cotton co giãn 4 chiều','https://laz-img-sg.alicdn.com/p/19512c34587ca93bcf33266af9ef6b58.jpg',7,5,'2024-05-21 10:01:30','2024-05-21 10:01:30'),(27,'air jordan 9 g','','','https://www.resellzonecesena.com/cdn/shop/files/air-jordan-4-retro-bred-reimagined-fv5029-006-resellzone-9.jpg?v=1714130945',8,7,'2024-05-29 02:05:35','2024-05-29 02:07:12'),(28,'Áo thun','','','',NULL,5,'2024-06-02 17:55:17','2024-06-02 17:55:17'),(29,'Áo thun','','','',NULL,5,'2024-06-02 17:57:30','2024-06-02 17:57:30'),(30,'Áo thun 1','','','',NULL,5,'2024-06-02 18:01:08','2024-06-02 18:01:08');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_skus`
--

DROP TABLE IF EXISTS `products_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_skus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size_attribute_id` int NOT NULL,
  `color_attribute_id` int NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `discount_percent` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_skus_ibfk_1` (`product_id`),
  KEY `products_skus_ibfk_2` (`size_attribute_id`),
  KEY `products_skus_ibfk_3` (`color_attribute_id`),
  CONSTRAINT `products_skus_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_skus_ibfk_2` FOREIGN KEY (`size_attribute_id`) REFERENCES `product_attributes` (`id`),
  CONSTRAINT `products_skus_ibfk_3` FOREIGN KEY (`color_attribute_id`) REFERENCES `product_attributes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_skus`
--

LOCK TABLES `products_skus` WRITE;
/*!40000 ALTER TABLE `products_skus` DISABLE KEYS */;
INSERT INTO `products_skus` VALUES (18,19,10,46,'',550000,0.1,95,'2024-05-19 04:01:38','2024-06-02 10:29:46'),(19,19,12,45,'',550000,0.05,100,'2024-05-19 04:22:33','2024-06-02 07:48:26'),(20,19,10,44,'',550000,0.05,92,'2024-05-19 04:22:37','2024-06-02 07:48:15'),(21,19,11,43,'',550000,0.05,100,'2024-05-19 04:31:53','2024-06-02 07:47:43'),(22,19,12,42,'',550000,0.05,92,'2024-05-19 04:33:23','2024-06-02 07:47:25'),(23,20,10,33,'',600000,0.1,94,'2024-05-19 09:13:43','2024-05-25 14:19:20'),(24,21,13,20,'',370000,0.5,98,'2024-05-19 09:24:29','2024-06-02 07:18:07'),(25,22,10,28,'',257000,0.05,99,'2024-05-19 09:37:02','2024-05-25 14:19:20'),(26,21,22,20,'',370000,0.5,98,'2024-05-19 09:38:45','2024-06-02 07:18:00'),(27,23,11,31,'',410000,0.75,97,'2024-05-19 09:41:29','2024-06-02 07:18:04'),(28,24,10,25,'',207900,0.1,40,'2024-05-19 13:38:49','2024-06-02 17:48:36'),(30,26,11,32,'',129000,0.1,100,'2024-05-21 10:01:30','2024-06-02 16:28:01'),(31,24,11,34,'',180000,0.1,92,'2024-05-22 20:47:25','2024-06-02 17:48:36'),(32,27,36,35,'',6459000,0.1,45,'2024-05-29 02:05:35','2024-06-02 15:45:11');
/*!40000 ALTER TABLE `products_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_of_date` date DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','employee','customer') COLLATE utf8mb4_unicode_ci DEFAULT 'customer',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'https://cdn.openart.ai/uploads/image_WsyXXCRR_1689685834461_512.webp','Ngô','Văn Mạnh','vanmanh','vanmanh0888@gmail.com','admin','2003-10-29','0705288268','admin','2024-05-10 09:03:18','2024-05-28 10:32:07'),(2,'https://img-cdn.pixlr.com/image-generator/history/65ba5701b4f4f4419f746bc3/806ecb58-167c-4d20-b658-a6a6b2f221e9/medium.webp','Ngô','Văn Mạnh','customer1','customer1@gmail.com','123123','2009-01-06','0987654321','customer','2024-05-10 13:15:51','2024-06-02 08:32:14'),(3,'https://th.bing.com/th/id/OIG4.LgUj9FIjzUbdTSMn0mRg','Trần ','Thị Kim Anh','customer2','customer2@gmail.com','123123','2020-10-19','0987654321','customer','2024-05-10 13:16:30','2024-06-02 10:15:12'),(5,'customer3.jpg','Test','Customer3','customer3','customer3@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:21:30','2024-05-10 13:21:30'),(6,'customer4.jpg','Test','Customer4','customer4','customer4@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:21:43','2024-05-10 13:21:43'),(7,'customer5.jpg','Test','Customer5','customer5','customer5@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:22:40','2024-05-10 13:22:40'),(8,'customer8.jpg','Test','Customer8','customer8','customer8@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:18','2024-05-10 13:23:18'),(9,'customer9.jpg','Test','Customer9','customer9','customer9@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:18','2024-05-10 13:23:18'),(10,'customer10.jpg','Test','Customer10','customer10','customer10@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:19','2024-05-10 13:23:19'),(11,'customer11.jpg','Test','Customer11','customer11','customer11@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:19','2024-05-10 13:23:19'),(12,'customer12.jpg','Test','Customer12','customer12','customer12@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:19','2024-05-10 13:23:19'),(13,'customer13.jpg','Test','Customer13','customer13','customer13@gmail.com','123123','2020-10-20','0987654321','customer','2024-05-10 13:23:19','2024-05-10 13:23:19'),(14,NULL,NULL,NULL,'123','123@gmail.com','admin',NULL,NULL,'customer','2024-05-10 15:04:46','2024-05-10 15:04:46'),(15,'xx.jpg','Văn Mạnh','Ngô','vanmanhne','21522328@gmail.com','123123','2003-10-30','0987654321','customer','2024-05-18 01:22:23','2024-05-18 01:29:09'),(16,'xx.jpg','Văn Mạnh','Ngô','vanmanhne1','21522328@gmail.com1','123123','2003-10-30','0987654321','customer','2024-05-18 01:32:43','2024-05-18 01:33:14'),(17,'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg','ngô','văn mạnh','test','test@gmail.com','123123','2003-10-14','0705288268','employee','2024-05-18 02:51:05','2024-06-02 07:51:57'),(19,NULL,'Ngo','Manh','test1','test1@gmail.com','123123','2003-10-30','0987654321','employee','2024-05-18 02:52:03','2024-05-18 02:52:03'),(25,NULL,'Ngo','Manh','test2','test2@gmail.com','123123','2003-10-30','0987654321','employee','2024-05-18 02:56:13','2024-05-18 02:56:13'),(26,'/static/media/user_default.5cdc0aad9e8706cf7258.jpg','ngô','mạnh','vanmanh10','test10@gmail.com','123123',NULL,'0705288268','employee','2024-05-18 03:04:36','2024-05-18 03:04:36'),(27,'/static/media/user_default.5cdc0aad9e8706cf7258.jpg','ngô','mạnh','vanmanh11','test11@gmail.com','123123',NULL,'0705288268','customer','2024-05-18 03:08:49','2024-05-18 03:08:49'),(61,'/static/media/user_default.5cdc0aad9e8706cf7258.jpg','mạnh','qưeqwe','test100','test100@gmail.com','ưqweqwe',NULL,'0705288268','customer','2024-05-18 03:17:30','2024-05-18 03:17:30'),(64,'https://st5.depositphotos.com/35914836/63547/i/450/depositphotos_635479520-stock-photo-background-texture-old-brick-wall.jpg','mạnh','ngô văn','ngomanh','21522328@gm.uit.edu.vn','12312','2003-10-30','0705288268','customer','2024-05-19 09:52:17','2024-06-02 07:40:16'),(65,'blob:http://localhost:3000/ecc31d48-6957-4ad0-b9a7-f99fda4c176f','mạnh','ngô văn','manhne','vanmanh@gmail.com','123123',NULL,'0705288268','employee','2024-05-21 15:10:26','2024-05-21 15:10:26'),(66,NULL,NULL,NULL,'testne','testvanmanh@gmail.com','123123',NULL,NULL,'customer','2024-05-21 15:38:36','2024-05-21 15:38:36'),(67,'/static/media/user_default.5cdc0aad9e8706cf7258.jpg','Tui là','Nhân viên','employee','employee@gmail.com','123123','2003-09-15','0705288268','employee','2024-05-28 11:07:36','2024-05-28 13:35:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_vouchers`
--

DROP TABLE IF EXISTS `users_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_vouchers` (
  `user_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `is_usable` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`voucher_id`),
  KEY `voucher_id` (`voucher_id`),
  CONSTRAINT `users_vouchers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_vouchers_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_vouchers`
--

LOCK TABLES `users_vouchers` WRITE;
/*!40000 ALTER TABLE `users_vouchers` DISABLE KEYS */;
INSERT INTO `users_vouchers` VALUES (1,2,0,'2024-05-19 03:27:48','2024-05-19 03:27:48'),(1,3,1,'2024-05-19 03:27:06','2024-05-19 03:27:06');
/*!40000 ALTER TABLE `users_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `discount_type` enum('percentage','fixed_amount') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_value` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `minimum_order_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (2,'test','hehehe','w','percentage',0.05,'2024-01-01','2024-10-30',100000,1,100,'2024-05-19 03:06:54','2024-06-03 09:08:05'),(3,'zxczxc','1','1','fixed_amount',100000,'2024-05-16','2024-06-06',200000,1,10,'2024-05-19 03:08:05','2024-05-31 09:44:18'),(4,'hehehe','Voucher tinh nhan','Nhan dip ngay tinh nhan tang 500 voucher','percentage',0.1,'2003-10-30','2024-10-30',0,1,500,'2024-05-29 06:43:09','2024-05-29 06:43:09');
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 21:05:54
