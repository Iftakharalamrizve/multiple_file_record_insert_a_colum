/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.5-10.1.32-MariaDB : Database - ajaxpractice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ajaxpractice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ajaxpractice`;

/*Table structure for table `ajxcruds` */

DROP TABLE IF EXISTS `ajxcruds`;

CREATE TABLE `ajxcruds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ajxcruds` */

insert  into `ajxcruds`(`id`,`firstname`,`lastname`,`email`,`created_at`,`updated_at`) values (1,'Brand zone','Solution','Iftakharalam321@gmail.com','2018-07-15 16:04:13','2018-07-15 18:09:27'),(2,'Brand','Zone','Iftakharalam32@gmail.com','2018-07-15 16:12:13','2018-07-15 16:12:13'),(3,'Brand','Zone','Iftakharalam32@gmail.com','2018-07-15 16:12:41','2018-07-15 16:12:41'),(4,'Brand','Zone','Iftakhar32@gmail.com','2018-07-15 16:12:55','2018-07-15 16:12:55'),(5,'Brand','Zone','admin@admin.com','2018-07-15 16:22:54','2018-07-15 16:22:54');

/*Table structure for table `api` */

DROP TABLE IF EXISTS `api`;

CREATE TABLE `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `crated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `api` */

insert  into `api`(`id`,`name`,`email`,`crated_at`) values (1,'Iftakhar alam','iftakahralalm32@gmail.com','2018-07-25 23:45:50'),(3,'Asraful islam','asrafulalam@gmail.com','2018-07-26 12:55:45');

/*Table structure for table `fileuploads` */

DROP TABLE IF EXISTS `fileuploads`;

CREATE TABLE `fileuploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `fileuploads` */

insert  into `fileuploads`(`id`,`image`,`created_at`,`updated_at`) values (4,'user-04.jpg','2018-07-16 05:34:30','2018-07-16 05:34:30'),(5,'user-05.jpg','2018-07-16 05:34:38','2018-07-16 05:34:38'),(6,'user-03.jpg','2018-07-16 05:34:47','2018-07-16 05:34:47');

/*Table structure for table `image_uploads` */

DROP TABLE IF EXISTS `image_uploads`;

CREATE TABLE `image_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `image_uploads` */

insert  into `image_uploads`(`id`,`image`,`created_at`,`updated_at`) values (7,'uploaded/31-08-2018-22-30-23-32280470_207487210039685_4478778272632537088_n.jpg;uploaded/31-08-2018-22-30-23-database_design.png;uploaded/31-08-2018-22-30-23-rizve.jpg;',NULL,NULL);

/*Table structure for table `listinfos` */

DROP TABLE IF EXISTS `listinfos`;

CREATE TABLE `listinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `listinfos` */

insert  into `listinfos`(`id`,`itemname`,`created_at`,`updated_at`) values (6,'Oil','2018-07-15 05:41:30','2018-07-15 05:41:30'),(7,'Oil','2018-07-15 05:42:20','2018-07-15 05:42:20'),(8,'Oil','2018-07-15 05:42:32','2018-07-15 05:42:32'),(9,'ha ha ha','2018-07-15 05:52:45','2018-07-15 05:52:45'),(10,'he  he he','2018-07-15 05:57:09','2018-07-15 05:57:09'),(11,'ho ho ho','2018-07-15 05:57:22','2018-07-15 05:57:22'),(12,'ohe ohe ohe','2018-07-15 06:01:41','2018-07-15 06:01:41');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `menus` */

insert  into `menus`(`id`,`parent_id`,`title`,`url`,`sort`,`published`) values (1,0,'Menu 1','test.php',1,1),(2,0,'Menu  2','test.2php',2,1),(3,0,'Menu 3','test3.php',3,1),(4,0,'Menu 4','test4.php',4,1),(5,1,'Sub Menu 1','submenu1.php',1,1),(6,1,'Sub Menu 2','submenu2.php',2,1),(7,5,'Child Sub Menu 1','childsubmenu1.php',1,1),(8,7,'Grand Child Sub Menu 1','grandchildsubmenu1.php',1,1),(9,1,'Another Test Menu','#',5,1),(10,5,'Child Sub Menu 1','#',0,1),(11,7,'Grand Child Sub Menu 1','#',0,1);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_07_14_180036_create_listinfos_table',1),(4,'2018_07_15_094853_create_fileuploads_table',2),(5,'2018_07_15_151919_create_ajaxcruds_table',2),(6,'2018_07_15_192112_create_fileuploads_table',3),(7,'2018_08_29_194628_create_image_uploads_table',4);

/*Table structure for table `name` */

DROP TABLE IF EXISTS `name`;

CREATE TABLE `name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `name` */

/*Table structure for table `order_detailes` */

DROP TABLE IF EXISTS `order_detailes`;

CREATE TABLE `order_detailes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` int(11) NOT NULL,
  `price` varchar(56) NOT NULL,
  `comments` varchar(56) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Forignkey` (`orderNumber`),
  CONSTRAINT `order_detailes_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `order_detailes` */

insert  into `order_detailes`(`id`,`orderNumber`,`price`,`comments`) values (1,1,'6788','aha hello bangladesh'),(2,2,'67888','hjghhfhgdf fgd '),(3,2,'56456546','fdg fg fr vg'),(4,3,'87565','jkj tert jkjs');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `customernumber` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orderNumber`,`comment`,`status`,`customernumber`,`created_at`) values (1,'hello bangladesh','good','345324534534','2018-07-26 15:11:20'),(2,'hello bangladesh','bad','3708907899','2018-07-26 15:56:45'),(3,'ohe sam tomare','not bad','4543545','2018-07-26 16:08:47');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_value` int(45) NOT NULL,
  `user_id` int(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `rating` */

insert  into `rating`(`id`,`rating_value`,`user_id`) values (1,1,2);

/*Table structure for table `tbl_categoryes` */

DROP TABLE IF EXISTS `tbl_categoryes`;

CREATE TABLE `tbl_categoryes` (
  `categoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_categoryes` */

insert  into `tbl_categoryes`(`categoryId`,`categoryName`,`categoryDescription`,`publicationStatus`,`created_at`,`updated_at`) values (8,'Phone','This is Phone category&nbsp;',1,NULL,NULL),(9,'Computer','This is Compute category&nbsp;',1,NULL,NULL),(10,'Women','THis is women category',1,NULL,NULL),(11,'Men','This is man Category',1,NULL,NULL),(12,'Nails Art & Tools','This this Nails Art And tools',1,NULL,NULL);

/*Table structure for table `tbl_products` */

DROP TABLE IF EXISTS `tbl_products`;

CREATE TABLE `tbl_products` (
  `productId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `manufactureId` int(11) NOT NULL,
  `shortDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `longDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `productImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` double(8,2) NOT NULL,
  `productSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_products` */

insert  into `tbl_products`(`productId`,`productName`,`categoryId`,`manufactureId`,`shortDescription`,`longDescription`,`publicationStatus`,`productImage`,`productPrice`,`productSize`,`productColor`,`created_at`,`updated_at`) values (1,'Fab-ct_12',10,7,'Lorem Ipsum: usage. Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups.','Lorem Ipsum: usage. Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups.',1,'image/N45xoErtR8PP09svMaJy.jpg',6000.00,'57MofTx','Black,White',NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
