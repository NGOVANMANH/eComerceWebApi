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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_insert_cart_item` AFTER INSERT ON `cart_items` FOR EACH ROW BEGIN
    DECLARE _total DOUBLE;

    -- Calculate the new total for the cart
    SELECT SUM(quantity * price) INTO _total
    FROM cart_items
    WHERE cart_id = NEW.cart_id;

    -- Update the total in the carts table
    UPDATE carts
    SET total = _total
    WHERE id = NEW.cart_id;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_cart_item` AFTER UPDATE ON `cart_items` FOR EACH ROW BEGIN
    DECLARE _total DOUBLE;

    -- Calculate the new total for the cart
    SELECT SUM(quantity * price) INTO _total
    FROM cart_items
    WHERE cart_id = NEW.cart_id;

    -- Update the total in the carts table
    UPDATE carts
    SET total = _total
    WHERE id = NEW.cart_id;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_cart_item` AFTER DELETE ON `cart_items` FOR EACH ROW BEGIN
    Update carts
    set total = total - (OLD.quantity * OLD.price)
    where id = OLD.cart_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_check_out_stock_order_item` AFTER INSERT ON `order_items` FOR EACH ROW BEGIN
    DECLARE available_qty INT;
    DECLARE error_message VARCHAR(255);

    -- Get the current available quantity of the product
    SELECT quantity INTO available_qty
    FROM products_skus
    WHERE id = NEW.product_sku_id;
    
    -- Check if there is enough stock available
    IF available_qty < NEW.quantity THEN
        -- Set the error message
        SET error_message = CONCAT('Not enough stock available for product SKU ID: ', NEW.product_sku_id);
        
        -- Raise an error if there is not enough stock
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    ELSE
        -- Update the inventory to deduct the ordered quantity
        UPDATE products_skus
        SET quantity = quantity - NEW.quantity
        WHERE id = NEW.product_sku_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_ins_users_vouchers` BEFORE INSERT ON `users_vouchers` FOR EACH ROW BEGIN
    DECLARE is_active_voucher TINYINT;
    
    set is_active_voucher = 0;
    
    -- Attempt to select the is_active value from the vouchers table
    SELECT is_active INTO is_active_voucher
    FROM vouchers 
    WHERE id = NEW.voucher_id
    LIMIT 1;

    -- Set the is_usable field in the new row based on the voucher's active status
    SET NEW.is_usable = is_active_voucher;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_num_voucher` AFTER INSERT ON `users_vouchers` FOR EACH ROW BEGIN
    DECLARE available_voucher_quantity INT;
    DECLARE err_message VARCHAR(255);
    
    -- Get the current available quantity of the voucher
    SELECT quantity INTO available_voucher_quantity
    FROM vouchers
    WHERE id = NEW.voucher_id;
    
    -- Check if there is enough stock available
    IF available_voucher_quantity = 0 THEN
        -- Set error message
        SET err_message = CONCAT('No available quantity for voucher ID: ', NEW.voucher_id);
        
        -- Raise an error if there is no available quantity
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    ELSE
        -- Update the available quantity of the voucher
        UPDATE vouchers
        SET quantity = quantity - 1
        WHERE id = NEW.voucher_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_ins_handle_active_voucher` BEFORE INSERT ON `vouchers` FOR EACH ROW BEGIN
    IF NOW() BETWEEN NEW.start_date AND NEW.end_date THEN
        SET NEW.is_active = 1;
    ELSE
        SET NEW.is_active = 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_handle_active_voucher` BEFORE UPDATE ON `vouchers` FOR EACH ROW BEGIN
    IF NOW() BETWEEN NEW.start_date AND NEW.end_date THEN
        SET NEW.is_active = 1;
    ELSE
        SET NEW.is_active = 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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

--
-- Dumping events for database 'ecomercewebdatabase'
--

--
-- Dumping routines for database 'ecomercewebdatabase'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_check_voucher_user_is_usable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_voucher_user_is_usable`(in_user_id INT, in_voucher_code VARCHAR(255), order_total double) RETURNS int
BEGIN
    -- Declare variables
    DECLARE voucher_is_usable TINYINT(1);
    DECLARE in_voucher_id INT;
    
    -- Check if voucher exists and is usable
    SELECT id INTO in_voucher_id
    FROM vouchers
    WHERE `code` = in_voucher_code
      AND NOW() <= end_date
      AND NOW() >= start_date
      AND minimum_order_value <= order_total
      AND quantity > 0
      AND is_active = 1;
    
    -- If the voucher does not exist, return 0
    IF in_voucher_id IS NULL THEN
        RETURN 0;
    ELSE
        -- Check if the user has the voucher and if it is usable
        SELECT is_usable INTO voucher_is_usable
        FROM users_vouchers
        WHERE user_id = in_user_id
          AND voucher_id = in_voucher_id;
        
        -- If the voucher is usable, return 1, otherwise return 0
        IF voucher_is_usable IS NULL OR voucher_is_usable = 0 THEN
            RETURN 0;
        ELSE
            RETURN in_voucher_id;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_count_new_users_by_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_count_new_users_by_date_range`(start_date DATE, end_date DATE) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE user_count INT;

    SELECT IFNULL(COUNT(*), 0) INTO user_count
    FROM users
    WHERE created_at BETWEEN start_date AND end_date;

    RETURN user_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_count_orders_by_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_count_orders_by_date_range`(start_date DATE, end_date DATE, order_status ENUM('Pending', 'Awaiting_Payment', 'Confirmed', 'Processing', 'On_Hold', 'In_Progress', 'Shipped', 'Out_For_Delivery', 'Delivered', 'Cancelled')) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE order_count INT;

    SELECT IFNULL(COUNT(*), 0) INTO order_count
    FROM orders
    WHERE status = order_status
      AND created_at BETWEEN start_date AND end_date;

    RETURN order_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_find_id_of_product_attribute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_find_id_of_product_attribute`(
	in_type varchar(255),
    in_value varchar(255)
) RETURNS int
BEGIN
	declare pa_id int;
    
    if in_value is null then return null; end if;
    
    select id into pa_id from product_attributes where type = in_type and value = in_value;
    
    if pa_id is null then
		insert into product_attributes(type, value) values(in_type, in_value);
        set pa_id = last_insert_id();
	end if;
    
RETURN pa_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_cart_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_cart_id`(
	in_user_id int
) RETURNS int
BEGIN
	declare cart_id int;
    
    if in_user_id is null then return null; end if;
    
	select id into cart_id
    from carts
    where user_id = in_user_id and is_checkout = 0
    limit 1;
    
    if(cart_id is null) then
		insert into carts(user_id, total, is_checkout) values(in_user_id, 0, 0);
        set cart_id = last_insert_id();
	end if;
    
    return cart_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_sales_by_date_range` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_sales_by_date_range`(start_date DATE, end_date DATE) RETURNS double
    DETERMINISTIC
BEGIN
    DECLARE sales_total DOUBLE;

    SELECT IFNULL(SUM(total), 0.0) INTO sales_total
    FROM orders
    WHERE status = 'Delivered'
      AND created_at BETWEEN start_date AND end_date;

    RETURN sales_total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_brand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_brand`(
	in in_name varchar(255),
    in in_short_description longtext,
    in in_description longtext,
    in in_logo_url varchar(255)
)
BEGIN
	INSERT INTO brands (name, short_description, description, logo_url) 
    VALUES (in_name, in_short_description, in_description, in_logo_url);
    
    Select * from brands where name = in_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_category`(
	in in_parent_id integer,
    in in_name varchar(255),
    in in_short_description longtext,
    in in_description longtext
)
BEGIN
     -- Insert into the category table
    INSERT INTO categories (parent_id, name, short_description, description)
    VALUES (in_parent_id, in_name, in_short_description, in_description);
    
    -- Select the newly inserted category
    SELECT * FROM categories WHERE name = in_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_product`(
	in in_name varchar(255),
    in in_description longtext,
    in in_short_description longtext,
    in in_thumbnail varchar(255),
    in in_brand_id int,
    in in_category_id int
)
BEGIN
	 -- Check if a product with the same name, brand, and category already exists
    IF EXISTS (
        SELECT 1 
        FROM `products` 
        WHERE `name` = in_name 
        AND `brand_id` = in_brand_id 
        AND `category_id` = in_category_id
    ) THEN
        -- Signal an error if the product already exists
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Product with the same name, brand, and category already exists';
    ELSE
        -- Insert the new product
        INSERT INTO `products` (
            `name`, 
            `description`, 
            `short_description`, 
            `thumbnail`, 
            `brand_id`, 
            `category_id`
        ) VALUES (
            in_name, 
            in_description, 
            in_short_description, 
            in_thumbnail, 
            in_brand_id, 
            in_category_id
        );
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product_attribute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_product_attribute`(
	in in_type varchar(255),
    in in_value varchar(255)
)
BEGIN
    DECLARE old_attribute_id int;
    DECLARE attribute_id int;
    
    select id into old_attribute_id from product_attributes where type = in_type and value = in_value;
    
    if(old_attribute_id is null) then
		INSERT INTO product_attributes(type, value)
		VALUES (in_type, in_value);
        SET attribute_id = last_insert_id();
	else
		SET attribute_id = old_attribute_id;
    end if;
    -- Return the newly inserted row
    SELECT * FROM product_attributes WHERE id = attribute_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_product_detail`(
	in in_name varchar(255),
	in in_description varchar(255),
	in in_short_description varchar(255),
	in in_thumbnail varchar(255),
	in in_brand_id int,
	in in_category_id int,
    in in_product_size varchar(255),
    in in_product_color varchar(255),
    in in_sku varchar(255),
    in in_price double,
    in in_discountPercent double,
    in in_quantity integer
)
BEGIN
	declare is_exist_product int;
	declare is_exist_color int;
	declare is_exist_size int;
	declare product_id integer;
    declare product_sku_id int;
	declare color_id integer;
	declare size_id integer;
    
    set in_product_size = upper(in_product_size);
    set in_product_color = upper(in_product_color);
    
    set is_exist_product = 1;
    set is_exist_color = 1;
    set is_exist_size = 1;
    
    start transaction;
    -- insert new product into table products
    select id into product_id from products
    where name = in_name and thumbnail = in_thumbnail and category_id = in_category_id and brand_id = in_brand_id;
    
    if(product_id is null) then
    begin
		INSERT INTO products (name, description, short_description, thumbnail, brand_id, category_id)
		VALUES (in_name, in_description, in_short_description, in_thumbnail, in_brand_id, in_category_id);
		set product_id = last_insert_id();
        set is_exist_product = 0;
    end;
    end if;
    
    -- Check if color exists, if not, insert and get the new id
    SELECT id INTO color_id FROM product_attributes
    WHERE `type` = 'color' AND `value` = in_product_color;
    
    IF color_id IS NULL THEN
		INSERT INTO product_attributes(type, value) VALUES ('color', in_product_color);
		SELECT LAST_INSERT_ID() INTO color_id;
        set is_exist_color = 0;
    END IF;
    
    -- Check if size exists, if not, insert and get the new id
    SELECT id INTO size_id FROM product_attributes
    WHERE `type` = 'size' AND `value` = in_product_size;
    
    IF size_id IS NULL THEN
        INSERT INTO product_attributes(type, value) VALUES ('size', in_product_size);
        SELECT LAST_INSERT_ID() INTO size_id;
        set is_exist_size = 0;
    END IF;
    
    -- Check if all necessary data exists
	IF is_exist_product = 1 AND is_exist_color = 1 AND is_exist_size = 1 THEN
		-- Raise error if any necessary data is missing
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Product, color, or size is exist.';
	ELSE
		-- Insert product SKU and get its ID
		CALL sp_add_product_sku(product_id, size_id, color_id, in_sku, in_price, in_discountPercent, in_quantity);
		SET product_sku_id = LAST_INSERT_ID();
		
		-- Get product detail by SKU ID
		CALL sp_get_product_detail_by_sku__id(product_sku_id);
	END IF;
    commit;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product_sku` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_product_sku`(
	in in_product_id int,
    in in_size_attribute_id int,
    in in_color_attribute_id int,
    in in_sku varchar(255),
    in in_price double,
    in in_discount_percent double,
    in in_quantity int
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        -- You can customize error handling here if needed
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An error occurred while adding product SKU';
    END;

    -- Start transaction
    START TRANSACTION;

    -- Insert the SKU into products_skus table
    INSERT INTO products_skus (product_id, size_attribute_id, color_attribute_id, sku, price, discount_percent, quantity)
    VALUES (in_product_id, in_size_attribute_id, in_color_attribute_id, in_sku, in_price, in_discount_percent, in_quantity);

    -- Commit the transaction
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product_to_wishlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_product_to_wishlist`(
    IN in_user_id INT,
    IN in_product_id INT
)
BEGIN
    INSERT INTO `wishlist` (
        `user_id`,
        `product_id`
    ) VALUES (
        in_user_id,
        in_product_id
    )
    ON DUPLICATE KEY UPDATE
        `updated_at` = CURRENT_TIMESTAMP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_to_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_to_cart`(
    IN in_user_id INT,
    IN in_product_sku_id INT,
    IN in_quantity INT
)
BEGIN
    declare in_cart_id int;
    declare product_price double;
    declare product_discount_percent double;
    declare exist_product_sku_id int;
    
    if in_quantity < 0 then
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Invalid quantity. Quantity must be non-negative.';
    end if;
    
    set in_cart_id = fn_get_cart_id(in_user_id);
    
    select products_sku_id into exist_product_sku_id
    from cart_items
    where products_sku_id = in_product_sku_id and cart_id = in_cart_id;
    
    select price, discount_percent into product_price, product_discount_percent from products_skus where id = in_product_sku_id;
    
    set product_price = product_price - product_price * ifnull(product_discount_percent, 1.0);
	
	if product_price is not null then
		if exist_product_sku_id is null then
			insert into cart_items(cart_id, products_sku_id, quantity, price)
			values(in_cart_id, in_product_sku_id, in_quantity, product_price);
		else
			update cart_items
            set quantity =  quantity + in_quantity
            where cart_id = in_cart_id and products_sku_id = in_product_sku_id;
        end if;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_user`(
    IN avartar VARCHAR(255),
    IN first_name VARCHAR(255),
    IN last_name VARCHAR(255),
    IN username VARCHAR(255),
    IN email VARCHAR(255),
    IN password VARCHAR(255),
    IN birth_of_date DATE,
    IN phone_number VARCHAR(255),
    IN role VARCHAR(255)
)
BEGIN
    IF role != 'admin' THEN
        INSERT INTO `users` (`avatar`, `first_name`, `last_name`, `username`, `email`, `password`, `birth_of_date`, `phone_number`, `role`)
        VALUES (avartar, first_name, last_name, username, email, password, birth_of_date, phone_number, role);
        select * from users where id = last_insert_id();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add user with admin role';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_user_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_user_address`(
    IN in_user_id INT,
    IN in_title VARCHAR(255),
    IN in_province_id VARCHAR(255),
    IN in_district_id VARCHAR(255),
    IN in_ward_id VARCHAR(255),
    IN in_postal_code VARCHAR(255),
    IN in_landmark VARCHAR(255),
    IN in_phone_number VARCHAR(255)
)
BEGIN
    INSERT INTO `addresses` (
        `user_id`,
        `title`,
        `province_id`,
        `district_id`,
        `ward_id`,
        `postal_code`,
        `landmark`,
        `phone_number`
    ) VALUES (
        in_user_id,
        in_title,
        in_province_id,
        in_district_id,
        in_ward_id,
        in_postal_code,
        in_landmark,
        in_phone_number
    );
    
    select * from addresses where id = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_user_voucher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_user_voucher`(
	in in_user_id int,
    in in_voucher_id int
)
BEGIN
	insert into users_vouchers(user_id, voucher_id)
    values(in_user_id, in_voucher_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_voucher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_voucher`(
    IN in_code VARCHAR(255),
    IN in_name VARCHAR(255),
    IN in_description VARCHAR(255),
    IN in_discount_type VARCHAR(50), -- assuming discount type is a short string
    IN in_discount_value DECIMAL(10, 2), -- assuming discount value is a decimal
    IN in_start_date DATE,
    IN in_end_date DATE,
    IN in_minimum_order_value DECIMAL(10, 2), -- assuming minimum order value is a decimal
    IN in_quantity INT -- assuming quantity is an integer
)
BEGIN
    INSERT INTO `vouchers`(
        `code`,
        `name`,
        `description`,
        `discount_type`,
        `discount_value`,
        `start_date`,
        `end_date`,
        `minimum_order_value`,
        `quantity`
    )
    VALUES (
        in_code,
        in_name,
        in_description,
        in_discount_type,
        in_discount_value,
        in_start_date,
        in_end_date,
        in_minimum_order_value,
        in_quantity
    );
    
    select * from vouchers where id = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cancel_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cancel_order`(
    IN in_order_id INT
)
BEGIN
   DECLARE order_status VARCHAR(50);
    DECLARE sku_id INT;
    DECLARE p_quantity INT;
    DECLARE done INT DEFAULT 0;
    DECLARE order_not_found CONDITION FOR SQLSTATE '45000'; -- Custom error for order not found
    DECLARE invalid_status CONDITION FOR SQLSTATE '45001'; -- Custom error for invalid status
    DECLARE cur CURSOR FOR 
        SELECT product_sku_id, quantity FROM order_items WHERE order_id = in_order_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Start transaction
    START TRANSACTION;

    -- Select the current order status
    SELECT status INTO order_status
    FROM orders
    WHERE id = in_order_id
    FOR UPDATE; -- Locks the row for update

    -- Check if the order exists
    IF order_status IS NULL THEN
        ROLLBACK;
        SIGNAL order_not_found
        SET MESSAGE_TEXT = 'Order not found';
    ELSE
        -- Check if the order status is 'Pending'
        IF order_status = 'Pending' THEN
            -- Update order status to 'Cancelled'
            UPDATE orders
            SET status = 'Cancelled'
            WHERE id = in_order_id;

            -- Open the cursor
            OPEN cur;
            -- Read each row from the cursor
            read_loop: LOOP
                FETCH cur INTO sku_id, p_quantity;
                IF done THEN
                    LEAVE read_loop;
                END IF;

                -- Update product quantities
                UPDATE products_skus
                SET quantity = quantity + p_quantity
                WHERE id = sku_id;
            END LOOP;
            CLOSE cur;

            -- Select the updated order for verification
            SELECT * FROM orders WHERE id = in_order_id;

            -- Commit transaction
            COMMIT;
        ELSE
            -- Rollback transaction in case of invalid status
            ROLLBACK;
            SIGNAL invalid_status
            SET MESSAGE_TEXT = 'Only pending orders can be cancelled';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_user`(
    IN user_id INT
)
BEGIN
    DELETE FROM `users` WHERE `id` = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_user_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_user_address`(
    IN in_address_id INT
)
BEGIN
    DELETE FROM `addresses`
    WHERE `id` = in_address_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_empty_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_empty_cart`(
    IN in_cart_id INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        -- Rollback the transaction in case of any error
        ROLLBACK;
    END;

    -- Start a transaction
    START TRANSACTION;

    -- Delete all products from the cart
    DELETE FROM cart_items
    WHERE cart_id = in_cart_id;

    -- Commit the transaction
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_all_brand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_brand`(
	IN `limit` INT,
    IN `offset` INT
)
BEGIN
	IF `limit` IS NOT NULL THEN
        IF `offset` IS NOT NULL THEN
            SELECT * FROM brands LIMIT `limit` OFFSET `offset`;
        ELSE
            SELECT * FROM brands LIMIT `limit`;
        END IF;
    ELSE
        SELECT * FROM brands;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_all_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_category`(
	IN `limit` INT,
    IN `offset` INT
)
BEGIN
	IF `limit` IS NOT NULL THEN
        IF `offset` IS NOT NULL THEN
            SELECT * FROM categories LIMIT `limit` OFFSET `offset`;
        ELSE
            SELECT * FROM categories LIMIT `limit`;
        END IF;
    ELSE
        SELECT * FROM categories;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_all_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_product`(
    IN `limit` INT,
    IN `offset` INT
)
BEGIN
    DECLARE total INT;

    -- Calculate the total number of products
    SELECT COUNT(*) INTO total FROM products_skus;

    -- Fetch product details with pagination
    IF `limit` IS NOT NULL THEN
        IF `offset` IS NOT NULL THEN
            -- Fetch products with both limit and offset
            SELECT
                ps.id,
                p.id as product_id,
                p.name,
                p.description,
                p.short_description,
                p.thumbnail,
                b.name AS brand_name,
                c.name AS category_name,
                pa1.value AS size,
                pa2.value AS color,
                ps.sku AS sku,
                ps.price AS price,
                ps.discount_percent,
                ps.quantity AS quantity,
                total as total_count
            FROM
                products p
            LEFT JOIN
                products_skus ps ON p.id = ps.product_id
            LEFT JOIN
                product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
            LEFT JOIN
                product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
            LEFT JOIN
                brands b ON p.brand_id = b.id
            LEFT JOIN
                categories c ON p.category_id = c.id
            ORDER BY
                ps.created_at DESC
            LIMIT `limit` OFFSET `offset`;
        ELSE
            -- Fetch products with only limit
            SELECT
                ps.id,
                p.id as product_id,
                p.name,
                p.description,
                p.short_description,
                p.thumbnail,
                b.name AS brand_name,
                c.name AS category_name,
                pa1.value AS size,
                pa2.value AS color,
                ps.sku AS sku,
                ps.price AS price,
                ps.discount_percent,
                ps.quantity AS quantity,
                total as total_count
            FROM
                products p
            LEFT JOIN
                products_skus ps ON p.id = ps.product_id
            LEFT JOIN
                product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
            LEFT JOIN
                product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
            LEFT JOIN
                brands b ON p.brand_id = b.id
            LEFT JOIN
                categories c ON p.category_id = c.id
            ORDER BY
                ps.created_at DESC
            LIMIT `limit`;
        END IF;
    ELSE
        -- Fetch all products
        SELECT
            ps.id,
            p.id as product_id,
            p.name,
            p.description,
            p.short_description,
            p.thumbnail,
            b.name AS brand_name,
            c.name AS category_name,
            pa1.value AS size,
            pa2.value AS color,
            ps.sku AS sku,
            ps.price AS price,
            ps.discount_percent,
            ps.quantity AS quantity,
            total as total_count
        FROM
            products p
        LEFT JOIN
            products_skus ps ON p.id = ps.product_id
        LEFT JOIN
            product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
        LEFT JOIN
            product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
        LEFT JOIN
            brands b ON p.brand_id = b.id
        LEFT JOIN
            categories c ON p.category_id = c.id
        ORDER BY
            ps.created_at DESC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_all_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_user`(
    IN `limit` INT,
    IN `offset` INT
)
BEGIN
	DECLARE total INT;

    -- Calculate the total number of products
    SELECT COUNT(*) INTO total FROM users;

	IF `limit` is null and `offset` is null then
		SELECT *, total as total_count FROM users;
	else 
    begin
    IF `limit` IS NOT NULL THEN
        IF `offset` IS NOT NULL THEN
            SELECT *, total as total_count FROM users LIMIT `limit` OFFSET `offset`;
        ELSE
            SELECT *, total as total_count FROM users LIMIT `limit`;
        END IF;
	End if;
    end;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_cart`(
    IN in_user_id INT
)
BEGIN
    DECLARE in_cart_id INT;
	DECLARE cur CURSOR FOR 
        SELECT product_id FROM cart_items WHERE cart_id = in_cart_id;
    -- Corrected the variable name to in_cart_id
    SET in_cart_id = fn_get_cart_id(in_user_id);
    
	SELECT
    ci.cart_id,
    ps.id,
    p.id as product_id,
    p.name,
    p.description,
    p.short_description,
    p.thumbnail,
    b.name AS brand_name,
    c.name AS category_name,
    pa1.value AS size,
    pa2.value AS color,
    ps.sku AS sku,
    ci.price,
    ci.quantity
FROM
    products p
LEFT JOIN
    products_skus ps ON p.id = ps.product_id
LEFT JOIN
    product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
LEFT JOIN
    product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
LEFT JOIN
    brands b ON p.brand_id = b.id
LEFT JOIN
    categories c ON p.category_id = c.id
LEFT JOIN
    cart_items ci ON ps.id = ci.products_sku_id AND ci.cart_id = in_cart_id
WHERE
    ci.products_sku_id IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_orders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_orders`(
    IN `limit` INT,
    IN `offset` INT
)
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM orders;

    IF `limit` IS NULL AND `offset` IS NULL THEN
        -- Case 1: Both limit and offset are NULL, return all rows
        SELECT o.*, 
               CONCAT(u.first_name, ' ', u.last_name) AS customer_name, 
               v.discount_type, 
               v.discount_value, 
               a.title AS address_title, 
               total AS total_count
        FROM orders o
        LEFT JOIN addresses a ON a.id = o.address_id
        LEFT JOIN users u ON u.id = o.user_id
        LEFT JOIN vouchers v ON v.id = o.voucher_id
        ORDER BY o.created_at DESC;
    ELSEIF `limit` IS NOT NULL AND `offset` IS NULL THEN
        -- Case 2: Only limit is provided
        SELECT o.*, 
               CONCAT(u.first_name, ' ', u.last_name) AS customer_name, 
               v.discount_type, 
               v.discount_value, 
               a.title AS address_title, 
               total AS total_count
        FROM orders o
        LEFT JOIN addresses a ON a.id = o.address_id
        LEFT JOIN users u ON u.id = o.user_id
        LEFT JOIN vouchers v ON v.id = o.voucher_id
        ORDER BY o.created_at DESC
        LIMIT `limit`;
    ELSEIF `limit` IS NULL AND `offset` IS NOT NULL THEN
        -- Case 3: Only offset is provided
        SELECT o.*, 
               CONCAT(u.first_name, ' ', u.last_name) AS customer_name, 
               v.discount_type, 
               v.discount_value, 
               a.title AS address_title, 
               total AS total_count
        FROM orders o
        LEFT JOIN addresses a ON a.id = o.address_id
        LEFT JOIN users u ON u.id = o.user_id
        LEFT JOIN vouchers v ON v.id = o.voucher_id
        ORDER BY o.created_at DESC
        LIMIT 18446744073709551615 OFFSET `offset`;
    ELSE
        -- Case 4: Both limit and offset are provided
        SELECT o.*, 
               CONCAT(u.first_name, ' ', u.last_name) AS customer_name, 
               v.discount_type, 
               v.discount_value, 
               a.title AS address_title, 
               total AS total_count
        FROM orders o
        LEFT JOIN addresses a ON a.id = o.address_id
        LEFT JOIN users u ON u.id = o.user_id
        LEFT JOIN vouchers v ON v.id = o.voucher_id
        ORDER BY o.created_at DESC
        LIMIT `limit` OFFSET `offset`;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_order_by_order_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_order_by_order_id`(
    IN in_order_id INT
)
BEGIN
    SELECT
        o.id AS order_id,
        o.user_id,
        o.total,
        o.voucher_id,
        o.status,
        o.address_id,
        a.title as address_title,
        a.province_id,
        a.district_id,
        a.phone_number,
        a.ward_id,
        CONCAT(u.first_name, ' ', u.last_name) as customer_name,
        v.discount_type,
        v.discount_value,
        o.created_at,
        oi.product_sku_id AS sku_id,
        p.name,
        p.description,
        p.short_description,
        p.thumbnail,
        b.name AS brand_name,
        c.name AS category_name,
        pa1.value AS size,
        pa2.value AS color,
        ps.sku,
        oi.price,
        oi.quantity
    FROM
        orders o
    LEFT JOIN
        order_items oi ON o.id = oi.order_id
    LEFT JOIN
        products_skus ps ON oi.product_sku_id = ps.id
    LEFT JOIN
        products p ON ps.product_id = p.id
    LEFT JOIN
        product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
    LEFT JOIN
        product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
    LEFT JOIN
        brands b ON p.brand_id = b.id
    LEFT JOIN
        categories c ON p.category_id = c.id
	LEFT JOIN
		addresses a ON o.address_id = a.id
	LEFT JOIN
		vouchers v ON o.voucher_id = v.id
	LEFT JOIN 
		users u on u.id = o.user_id
    WHERE
        o.id = in_order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_order_by_user_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_order_by_user_id`(
	in in_user_id int
)
BEGIN
	select * from orders where user_id = in_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_product_attribute_by_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_product_attribute_by_type`(
	in in_type varchar(255)
)
BEGIN
	select * from product_attributes
    where type = in_type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_product_detail_by_sku__id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_product_detail_by_sku__id`(
	in in_sku_id int
)
BEGIN
	SELECT
		ps.id,
        p.id as product_id,
		p.name,
		p.description,
		p.short_description,
		p.thumbnail,
		b.name AS brand_name,
        b.id as brand_id,
		c.name AS category_name,
        c.id as category_id,
		pa1.value AS size,
		pa2.value AS color,
		ps.sku AS sku,
		ps.price AS price,
		ps.discount_percent,
		ps.quantity AS quantity
	FROM
		products p
	LEFT JOIN
		products_skus ps ON p.id = ps.product_id
	LEFT JOIN
		product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
	LEFT JOIN
		product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
	LEFT JOIN
		brands b ON p.brand_id = b.id
	LEFT JOIN
		categories c ON p.category_id = c.id
	WHERE
		ps.id = in_sku_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_product_full_by_sku__id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_product_full_by_sku__id`(
	in in_sku_id int
)
BEGIN
	SELECT
		ps.id,
		p.name,
		p.description,
		p.short_description,
		p.thumbnail,
		b.name AS brand_name,
		c.name AS category_name,
		pa1.value AS size,
		pa2.value AS color,
		ps.sku AS sku,
		ps.price AS price,
		ps.discount_percent,
		ps.quantity AS quantity
	FROM
		products p
	LEFT JOIN
		products_skus ps ON p.id = ps.product_id
	LEFT JOIN
		product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
	LEFT JOIN
		product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
	LEFT JOIN
		brands b ON p.brand_id = b.id
	LEFT JOIN
		categories c ON p.category_id = c.id
	WHERE
		ps.id = in_sku_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_product_skus_from_product_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_product_skus_from_product_id`(
	in in_product_id int
)
BEGIN
	select 
		pk.id,
		p.name,
		p.description,
		p.short_description,
		p.thumbnail,
		b.name AS brand_name,
		c.name AS category_ame,
		pa_size.value AS size,
		pa_color.value AS color,
		pk.sku AS sku,
		pk.price AS price,
		pk.discount_percent,
		pk.quantity AS quantity    
	from products_skus pk
	left join products p on pk.product_id = p.id
	left join brands b on p.brand_id = b.id
	left join categories c on p.category_id = c.id
	left join product_attributes pa_size on pk.size_attribute_id = pa_size.id and pa_size.type = 'size'
	left join product_attributes pa_color on pk.color_attribute_id = pa_color.id  and pa_color.type = 'color'
	where pk.product_id = in_product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_user_addresses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_user_addresses`(
    IN in_user_id INT
)
BEGIN
    select * from addresses
    where user_id = in_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_user_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_user_by_id`(
    IN `user_id` INT
)
BEGIN
    SELECT * FROM users WHERE id = `user_id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_voucher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_voucher`(
	in in_user_id int,
    in in_voucher_code varchar(255),
    in in_order_total double
)
BEGIN
	DECLARE exist_voucher INT;

    -- Check if the voucher is usable by the user and get the voucher ID
    SET exist_voucher = fn_check_voucher_user_is_usable(in_user_id, in_voucher_code, in_order_total);

    -- If the voucher is not usable, raise an error
    IF exist_voucher = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Voucher is not usable';
    ELSE
        -- If the voucher is usable, select the voucher details
        -- Ensuring we only select one voucher in case multiple rows are returned
        SELECT * FROM vouchers WHERE id = exist_voucher LIMIT 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_vouchers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_vouchers`(
    IN in_limit INT,
    IN in_offset INT
)
BEGIN
    DECLARE total_count INT;
    -- Tính tổng số hàng trong bảng vouchers
    SELECT COUNT(*) INTO total_count FROM vouchers;
    
    IF in_limit IS NULL AND in_offset IS NULL THEN
        -- Trường hợp cả limit và offset đều là NULL, trả về tất cả các hàng cùng với total_count
        SELECT *, total_count AS total_count FROM vouchers;
    ELSEIF in_limit IS NOT NULL AND in_offset IS NULL THEN
        -- Trường hợp chỉ có limit không phải NULL, trả về số lượng hàng nhất định cùng với total_count
        SET @query := CONCAT('SELECT *, ', total_count, ' AS total_count FROM vouchers LIMIT ', in_limit);
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSEIF in_limit IS NULL AND in_offset IS NOT NULL THEN
        -- Trường hợp chỉ có offset không phải NULL, trả về tất cả các hàng từ một vị trí cụ thể cùng với total_count
        SET @query := CONCAT('SELECT *, ', total_count, ' AS total_count FROM vouchers LIMIT 10000 OFFSET ', in_offset);
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSE
        -- Trường hợp cả limit và offset đều không phải NULL, trả về số lượng hàng nhất định từ một vị trí cụ thể cùng với total_count
        SET @query := CONCAT('SELECT *, ', total_count, ' AS total_count FROM vouchers LIMIT ', in_limit, ' OFFSET ', in_offset);
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_user_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_user_address`(
    IN in_user_id INT,
    IN in_title VARCHAR(255),
    IN in_province VARCHAR(255),
    IN in_district VARCHAR(255),
    IN in_city VARCHAR(255),
    IN in_postal_code VARCHAR(255),
    IN in_landmark VARCHAR(255),
    IN in_phone_number VARCHAR(255)
)
BEGIN
    INSERT INTO `addresses` (
        `user_id`,
        `title`,
        `province`,
        `district`,
        `city`,
        `postal_code`,
        `landmark`,
        `phone_number`
    ) VALUES (
        in_user_id,
        in_title,
        in_province,
        in_district,
        in_city,
        in_postal_code,
        in_landmark,
        in_phone_number
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_login_with_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login_with_email`(
	in in_email varchar(255),
    in in_password varchar(255)
)
BEGIN
	DECLARE user_count INT;

    -- Check if the email exists
    SELECT COUNT(*) INTO user_count FROM users WHERE email = in_email;

    -- If user exists, verify the password
    IF user_count > 0 THEN
        -- Verify the password
        SELECT * FROM users WHERE email = in_email AND password = in_password;
    ELSE
        -- Return an empty result set if the user does not exist
        SELECT NULL;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_login_with_username` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login_with_username`(
	in in_username varchar(255),
    in in_password varchar(255)
)
BEGIN
	 DECLARE user_count INT;
    -- Check if the username exists
    SELECT COUNT(*) INTO user_count FROM users WHERE username = in_username;

    -- If user exists, verify the password
    IF user_count > 0 THEN
        -- Verify the password
        SELECT * FROM users WHERE username = in_username AND password = in_password;
    ELSE
        -- Return an empty result set if the user does not exist
        SELECT NULL;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_make_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_make_order`(
    IN in_user_id INT,
    IN in_order_items JSON,
    IN in_voucher_code VARCHAR(255),
    IN in_address_id INT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE item_size INT;
    DECLARE p_id INT;
    DECLARE p_price DOUBLE;
    DECLARE p_quantity INT;
    DECLARE is_usable_voucher INT DEFAULT NULL;
    DECLARE voucher_type VARCHAR(255);
    DECLARE voucher_value DOUBLE;
    DECLARE order_total DOUBLE DEFAULT 0.0;
    DECLARE order_id INT;

    START TRANSACTION;

    SET item_size = JSON_LENGTH(in_order_items);
    
    WHILE i < item_size DO
        SET p_id = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].productSkuId')));
        SET p_price = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].price')));
        SET p_quantity = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].quantity')));
        
        IF p_price < 0 OR p_quantity < 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price or Quantity must be non-negative.';
        END IF;
        
        SET order_total = order_total + p_price * p_quantity;
        SET i = i + 1;
    END WHILE;
    
    IF in_voucher_code IS NOT NULL THEN
        SET is_usable_voucher = fn_check_voucher_user_is_usable(in_user_id, in_voucher_code, order_total);
        
        IF is_usable_voucher = 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Voucher code is not usable';
        END IF;
        
        SELECT discount_type, discount_value INTO voucher_type, voucher_value
        FROM vouchers WHERE id = is_usable_voucher;
        
        IF voucher_type = 'percentage' THEN
            SET voucher_value = order_total * (voucher_value / 100);
        END IF;
        
        SET order_total = order_total - voucher_value;
    END IF;
    
    INSERT INTO orders(user_id, total, voucher_id, address_id)
    VALUES(in_user_id, order_total, is_usable_voucher, in_address_id);
    
    SET order_id = LAST_INSERT_ID();
    
    SET i = 0;
    WHILE i < item_size DO
        SET p_id = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].productSkuId')));
        SET p_price = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].price')));
        SET p_quantity = JSON_UNQUOTE(JSON_EXTRACT(in_order_items, CONCAT('$[', i, '].quantity')));
        
        INSERT INTO order_items(order_id, product_sku_id, quantity, price)
        VALUES(order_id, p_id, p_quantity, p_price);
        
        SET i = i + 1;
    END WHILE;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_make_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_make_payment`(
    IN in_user_id INT,
    IN in_order_id INT,
    IN in_amount DOUBLE,
    IN in_provider VARCHAR(255)
)
BEGIN
    DECLARE order_total DOUBLE;

    -- Fetch the total amount for the specified order and user
    SELECT total INTO order_total
    FROM orders
    WHERE id = in_order_id AND user_id = in_user_id;

    -- Check if the input amount matches the order total
    IF (in_amount != order_total) THEN
        -- Raise an error if the amounts do not match
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The amount provided does not match the order total.';
    ELSE
        -- Insert the payment record if the amounts match
        INSERT INTO payments (order_id, amount, provider, status)
        VALUES (in_order_id, in_amount, in_provider, 'Pending');
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mark_done_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mark_done_payment`(
	in in_payment_id int
)
BEGIN
	update payments
    set status = 'Done'
    where id = in_payment_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_register`(
	in _email varchar(255),
	in _username varchar(255),
	in _password varchar(255)
)
BEGIN
	DECLARE duplicate_email INT;
    DECLARE duplicate_username INT;

    -- Check if the email already exists
    SELECT COUNT(*) INTO duplicate_email FROM users WHERE email = _email;

    -- Check if the username already exists
    SELECT COUNT(*) INTO duplicate_username FROM users WHERE username = _username;

    -- If email or username already exists, return an error
    IF duplicate_email > 0 or duplicate_username > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email or Username already exists';
    ELSE
        -- Insert the new user
        INSERT INTO users (email, username, password) VALUES (_email, _username, _password);

        -- Return the newly inserted user data
        SELECT * FROM users WHERE email = _email;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_remove_from_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_remove_from_cart`(
    IN in_cart_id INT,
    IN in_product_sku_id INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        -- Rollback the transaction in case of any error
        ROLLBACK;
    END;

    -- Start a transaction
    START TRANSACTION;

    -- Delete the product from the cart
    DELETE FROM cart_items
    WHERE cart_id = in_cart_id AND products_sku_id = in_product_sku_id;

    -- Commit the transaction
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_cart_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_cart_item`(
    IN in_cart_id INT,
    IN in_product_sku_id INT,
    IN in_quantity INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        -- Rollback the transaction in case of any error
        ROLLBACK;
    END;

    -- Start a transaction
    START TRANSACTION;

    -- Update the quantity of the product in the cart
    UPDATE cart_items
    SET quantity = in_quantity
    WHERE cart_id = in_cart_id AND products_sku_id = in_product_sku_id;

    -- Commit the transaction
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_product_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_product_by_id`(
	in in_product_sku_id int,
    in in_product_name varchar(255),
    in in_product_description longtext,
    in in_product_short_description longtext,
    in in_product_thumbnail varchar(255),
    in in_product_brand_id int,
    in in_product_category_id int,
    in in_product_size varchar(255),
    in in_product_color varchar(255),
    in in_product_sku varchar(255),
    in in_product_price double,
    in in_product_discount_percent double,
    in in_product_quantity int
)
BEGIN
	declare in_product_id int;
    declare product_size_id int;
    declare product_color_id int;
    
    select product_id into in_product_id from products_skus
    where id = in_product_sku_id;
    
    set product_size_id = fn_find_id_of_product_attribute('size', in_product_size);
    set product_color_id = fn_find_id_of_product_attribute('color', in_product_color);
    
    if in_product_id is null then
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Product does not exist.';
	else 

		UPDATE products
		SET
			name = IFNULL(in_product_name, name),
			description = IFNULL(in_product_description, description),
			short_description = IFNULL(in_product_short_description, short_description),
			thumbnail = IFNULL(in_product_thumbnail, thumbnail),
			brand_id = IFNULL(in_product_brand_id, brand_id),
			category_id = IFNULL(in_product_category_id, category_id)
		WHERE id = in_product_id;

		UPDATE products_skus
		SET
			size_attribute_id = IFNULL(product_size_id, size_attribute_id),
			color_attribute_id = IFNULL(product_color_id, color_attribute_id),
			sku = IFNULL(in_product_sku, sku),
			price = IFNULL(in_product_price, price),
			discount_percent = IFNULL(in_product_discount_percent, discount_percent),
			quantity = IFNULL(in_product_quantity, quantity)
		WHERE id = in_product_sku_id;
        
        call sp_get_product_detail_by_sku__id(in_product_sku_id);
        
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_status_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_status_order`(
    IN in_order_id INT,
    IN in_status ENUM('Pending', 'Awaiting_Payment', 'Confirmed', 'Processing', 'On_Hold', 'In_Progress', 'Shipped', 'Out_For_Delivery', 'Delivered', 'Cancelled')
)
BEGIN
    DECLARE orderExists INT;
    DECLARE current_status ENUM('Pending', 'Awaiting_Payment', 'Confirmed', 'Processing', 'On_Hold', 'In_Progress', 'Shipped', 'Out_For_Delivery', 'Delivered', 'Cancelled');
    DECLARE sku_id INT;
    DECLARE p_quantity INT;
    DECLARE done INT DEFAULT 0;
    DECLARE insufficient_stock CONDITION FOR SQLSTATE '45002'; -- Custom error for insufficient stock
    DECLARE stock_quantity INT DEFAULT 0;
    DECLARE cur CURSOR FOR 
        SELECT product_sku_id, quantity FROM order_items WHERE order_id = in_order_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Check if the order exists
    SELECT COUNT(*) INTO orderExists FROM orders WHERE id = in_order_id;

    IF orderExists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Order not found.';
    ELSE
        -- Retrieve the current status of the order
        SELECT status INTO current_status FROM orders WHERE id = in_order_id;

        -- Check if the current status is 'Cancelled' and the new status is not 'Cancelled'
        IF current_status = 'Cancelled' AND in_status <> 'Cancelled' THEN
            -- Start transaction
            START TRANSACTION;

            -- Open the cursor to update product quantities
            OPEN cur;
            read_loop: LOOP
                FETCH cur INTO sku_id, p_quantity;
                IF done THEN
                    LEAVE read_loop;
                END IF;
                SELECT quantity INTO stock_quantity FROM products_skus WHERE id = sku_id;
                -- Check stock availability
                IF stock_quantity < p_quantity THEN
                    ROLLBACK;
                    SIGNAL insufficient_stock SET MESSAGE_TEXT = 'Insufficient stock for product.';
                END IF;

                -- Update product quantities
                UPDATE products_skus
                SET quantity = quantity - p_quantity
                WHERE id = sku_id;
            END LOOP;
            CLOSE cur;

            -- Commit transaction
            COMMIT;
        END IF;

        -- Update the order status
        UPDATE orders SET status = in_status WHERE id = in_order_id;

        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Failed to update order status.';
        ELSE
            SELECT * FROM orders WHERE id = in_order_id;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_user_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_user_address`(
    IN in_address_id INT,
    IN in_title VARCHAR(255),
    IN in_province_id VARCHAR(255),
    IN in_district_id VARCHAR(255),
    IN in_ward_id VARCHAR(255),
    IN in_postal_code VARCHAR(255),
    IN in_landmark VARCHAR(255),
    IN in_phone_number VARCHAR(255)
)
BEGIN
    UPDATE `addresses`
    SET
        `title` = in_title,
        `province_id` = in_province_id,
        `district_id` = in_district_id,
        `ward_id` = in_ward_id,
        `postal_code` = in_postal_code,
        `landmark` = in_landmark,
        `phone_number` = in_phone_number
    WHERE `id` = in_address_id;
    
    select * from addresses where id = in_address_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_user_by_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_user_by_email`(
    IN user_email VARCHAR(255),
    IN avartar VARCHAR(255),
    IN first_name VARCHAR(255),
    IN last_name VARCHAR(255),
    IN birth_of_date DATE,
    IN phone_number VARCHAR(255),
    IN new_role VARCHAR(255)
)
BEGIN
	DECLARE user_role varchar(255);
    SELECT role into user_role FROM users where email = user_email;
    
    if user_role = 'admin' then
		UPDATE `users` 
		SET 
			`avatar` = IF(avartar IS NOT NULL, avartar, `avatar`),
			`first_name` = IF(first_name IS NOT NULL, first_name, `first_name`),
			`last_name` = IF(last_name IS NOT NULL, last_name, `last_name`),
			`birth_of_date` = IF(birth_of_date IS NOT NULL, birth_of_date, `birth_of_date`),
			`phone_number` = IF(phone_number IS NOT NULL, phone_number, `phone_number`),
			`role` = IF(new_role IS NOT NULL, new_role, `role`)
		WHERE `email` = user_email;
	else 
		UPDATE `users` 
		SET 
			`avatar` = IF(avartar IS NOT NULL, avartar, `avatar`),
			`first_name` = IF(first_name IS NOT NULL, first_name, `first_name`),
			`last_name` = IF(last_name IS NOT NULL, last_name, `last_name`),
			`birth_of_date` = IF(birth_of_date IS NOT NULL, birth_of_date, `birth_of_date`),
			`phone_number` = IF(phone_number IS NOT NULL, phone_number, `phone_number`)
		WHERE `email` = user_email;
	end if;
    
    select * from users where email=user_email limit 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_voucher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_voucher`(
    IN p_id INT,
    IN p_code VARCHAR(255),
    IN p_name VARCHAR(255),
    IN p_description TEXT,
    IN p_discountType VARCHAR(50),
    IN p_discountValue DECIMAL(10,2),
    IN p_startDate DATE,
    IN p_endDate DATE,
    IN p_minimumOrderValue DECIMAL(10,2),
    IN p_quantity INT
)
BEGIN
    UPDATE vouchers
    SET 
        code = p_code,
        name = p_name,
        description = p_description,
        discount_type = p_discountType,
        discount_value = p_discountValue,
        start_date = p_startDate,
        end_date = p_endDate,
        minimum_order_value = p_minimumOrderValue,
        quantity = p_quantity
    WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 21:10:44
