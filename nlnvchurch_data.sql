# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.19)
# Database: nlnvchurch
# Generation Time: 2017-11-13 01:15:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;

INSERT INTO `albums` (`id`, `title`, `date`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'교회건물','20160225','building','2016-02-25 00:00:00','2016-02-25 00:00:00'),
	(2,'마더와이즈','20160308','motherwise','2016-03-08 00:00:00','2016-03-08 00:00:00'),
	(3,'체육대회','20160625','PE','2016-06-25 00:00:00','2016-06-25 00:00:00'),
	(4,'한글학교 - 첫 학기','20161217','korean','2016-12-17 00:00:00','2016-12-17 00:00:00'),
	(5,'2016년 성탄 주일','20161225','christmas','2016-12-25 00:00:00','2016-12-25 00:00:00'),
	(6,'전교인 캠핑','20170702','camping','2017-07-02 00:00:00','2017-07-02 00:00:00'),
	(7,'한글학교 - 송편 만들기 체험','20170930','korean','2017-09-30 00:00:00','2017-09-30 00:00:00');

/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bulletins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bulletins`;

CREATE TABLE `bulletins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `bulletins` WRITE;
/*!40000 ALTER TABLE `bulletins` DISABLE KEYS */;

INSERT INTO `bulletins` (`id`, `file`, `version`, `thumbnail`, `created_at`, `updated_at`)
VALUES
	(1,'20171105','제 4권 45호','v4','2017-11-07 15:23:50','2017-11-07 15:23:51'),
	(2,'20171112','제 4권 46호','v4','2017-11-07 15:25:07','2017-11-07 15:25:08');

/*!40000 ALTER TABLE `bulletins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2017_10_20_061251_create_videos_table',1),
	(2,'2017_10_25_041721_create_series_table',1),
	(3,'2017_11_01_052837_create_albums_table',1),
	(4,'2017_11_04_160446_create_photos_table',1),
	(5,'2017_11_07_051714_create_news_table',1),
	(6,'2017_11_07_231207_create_bulletins_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `image`, `title`, `subtitle`, `description`, `details`, `date`, `featured`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'read-bible.jpg','함께 성경읽기','Read the word of God.','매일 하루에 3장씩 성경을 읽으므로 하나님의 말씀을 사모합시다.','함께 성경읽기 (3장/day)\n11/6(월) - 11/12(주일)\n레위기 26장 - 민수기 19장','Daily',1,1,'2017-11-06 21:23:03','2017-11-06 21:23:03'),
	(2,'homeless-ministry.jpg','홈리스 사역','Share the love of God.','홈리스 사역은 홈리스들의 영적인 갈급함을 풀어줌으로 인하여 그들의 삶의 목적이 바뀌어 세상에 빛과 소금과 같은 존재로 바뀔 수 있도록 도와주는 사역입니다.','물품: Canned Foods, Cereal, 물, 등등','Daily',0,1,'2017-11-06 21:23:53','2017-11-06 21:23:53'),
	(3,'korean-school.jpg','NLNV 한글학교','Fall 2017 Class Begins!','매주 토요일 9:30AM - 11:30AM','New Life New Vision Korean School designed for those who have no prior (or very limited) knowledge in Korean. There is no restrictive age limitation but if you are under the age of 12, we would recommend you to take different Korean course that we have. Our church divided 3 different levels of Korean classes. There is Kids School (age 5-7), Children School (age 8-12), and Korean language course (age 13 & above). For details regarding Korean School, please contact or visit us anytime you are available.','9.23.2017',1,1,'2017-11-06 21:24:36','2017-11-06 21:24:36'),
	(4,'3rd-anniversary.jpg','창립 3주년 기념예배','추수 감사주일 초청 잔치','한 사람 / 한 가정 초대하기','11/19 (주일) 2부예배','11.19.2017',1,1,'2017-11-07 09:52:17','2017-11-07 09:52:19');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_thumbnail` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;

INSERT INTO `photos` (`id`, `path`, `photo_thumbnail`, `album_id`, `created_at`, `updated_at`)
VALUES
	(1,'1.jpg',0,1,'2017-11-04 09:45:00','2017-11-04 09:45:00'),
	(2,'2.jpg',0,1,'2017-11-04 09:45:04','2017-11-04 09:45:04'),
	(3,'3.jpg',1,1,'2017-11-04 09:45:07','2017-11-04 09:45:07'),
	(4,'4.jpg',0,1,'2017-11-04 09:45:12','2017-11-04 09:45:12'),
	(5,'5.jpg',0,1,'2017-11-04 09:45:16','2017-11-04 09:45:16'),
	(6,'6.jpg',0,1,'2017-11-04 09:45:21','2017-11-04 09:45:21'),
	(7,'1.jpg',0,2,'2017-11-04 09:45:44','2017-11-04 09:45:44'),
	(8,'2.jpg',0,2,'2017-11-04 09:45:57','2017-11-04 09:45:57'),
	(9,'3.jpg',0,2,'2017-11-04 09:46:13','2017-11-04 09:46:13'),
	(10,'4.jpg',0,2,'2017-11-04 09:46:24','2017-11-04 09:46:24'),
	(11,'5.jpg',1,2,'2017-11-04 09:46:35','2017-11-04 09:46:35'),
	(12,'6.jpg',0,2,'2017-11-04 09:46:46','2017-11-04 09:46:46'),
	(13,'7.jpg',0,2,'2017-11-04 09:46:59','2017-11-04 09:46:59'),
	(14,'8.jpg',0,2,'2017-11-04 09:47:09','2017-11-04 09:47:09'),
	(15,'9.jpg',0,2,'2017-11-04 09:47:18','2017-11-04 09:47:18'),
	(16,'10.jpg',0,2,'2017-11-04 09:47:28','2017-11-04 09:47:28'),
	(17,'11.jpg',0,2,'2017-11-04 09:47:42','2017-11-04 09:47:42'),
	(18,'12.jpg',0,2,'2017-11-04 09:47:51','2017-11-04 09:47:51'),
	(19,'13.jpg',0,2,'2017-11-04 09:47:59','2017-11-04 09:47:59'),
	(20,'1.jpg',0,3,'2017-11-04 09:49:49','2017-11-04 09:49:49'),
	(21,'2.jpg',0,3,'2017-11-04 09:50:02','2017-11-04 09:49:50'),
	(22,'3.jpg',0,3,'2017-11-04 09:50:03','2017-11-04 09:49:50'),
	(23,'4.jpg',0,3,'2017-11-04 09:50:03','2017-11-04 09:49:51'),
	(24,'5.jpg',0,3,'2017-11-04 09:50:03','2017-11-04 09:49:51'),
	(25,'6.jpg',0,3,'2017-11-04 09:50:04','2017-11-04 09:49:51'),
	(26,'7.jpg',1,3,'2017-11-04 09:50:04','2017-11-04 09:49:52'),
	(27,'8.jpg',0,3,'2017-11-04 09:50:04','2017-11-04 09:49:52'),
	(28,'9.jpg',0,3,'2017-11-04 09:50:05','2017-11-04 09:49:52'),
	(29,'10.jpg',0,3,'2017-11-04 09:50:05','2017-11-04 09:49:52'),
	(30,'11.jpg',0,3,'2017-11-04 09:50:05','2017-11-04 09:49:53'),
	(31,'12.jpg',0,3,'2017-11-04 09:50:05','2017-11-04 09:49:53'),
	(32,'13.jpg',0,3,'2017-11-04 09:50:06','2017-11-04 09:49:53'),
	(33,'14.jpg',0,3,'2017-11-04 09:50:06','2017-11-04 09:49:54'),
	(34,'15.jpg',0,3,'2017-11-04 09:50:06','2017-11-04 09:49:54'),
	(35,'16.jpg',0,3,'2017-11-04 09:50:08','2017-11-04 09:49:55'),
	(36,'1.jpg',1,4,'2017-11-04 09:51:00','2017-11-04 09:51:05'),
	(37,'2.jpg',0,4,'2017-11-04 09:51:00','2017-11-04 09:51:06'),
	(38,'3.jpg',0,4,'2017-11-04 09:51:01','2017-11-04 09:51:06'),
	(39,'4.jpg',0,4,'2017-11-04 09:51:01','2017-11-04 09:51:07'),
	(40,'5.jpg',0,4,'2017-11-04 09:51:02','2017-11-04 09:51:07'),
	(41,'1.jpg',0,6,'2017-11-04 09:53:32','2017-11-04 09:53:52'),
	(42,'2.jpg',0,6,'2017-11-04 09:53:32','2017-11-04 09:53:52'),
	(43,'3.jpg',0,6,'2017-11-04 09:53:35','2017-11-04 09:53:52'),
	(44,'4.jpg',0,6,'2017-11-04 09:53:35','2017-11-04 09:53:53'),
	(45,'5.jpg',0,6,'2017-11-04 09:53:36','2017-11-04 09:53:54'),
	(46,'6.jpg',0,6,'2017-11-04 09:53:36','2017-11-04 09:53:54'),
	(47,'7.jpg',0,6,'2017-11-04 09:53:37','2017-11-04 09:53:55'),
	(48,'8.jpg',0,6,'2017-11-04 09:53:37','2017-11-04 09:53:55'),
	(49,'9.jpg',0,6,'2017-11-04 09:53:37','2017-11-04 09:53:55'),
	(50,'10.jpg',0,6,'2017-11-04 09:53:38','2017-11-04 09:53:56'),
	(51,'11.jpg',0,6,'2017-11-04 09:53:38','2017-11-04 09:53:56'),
	(52,'12.jpg',0,6,'2017-11-04 09:53:38','2017-11-04 09:53:57'),
	(53,'13.jpg',0,6,'2017-11-04 09:53:39','2017-11-04 09:53:57'),
	(54,'14.jpg',0,6,'2017-11-04 09:53:39','2017-11-04 09:53:58'),
	(55,'15.jpg',0,6,'2017-11-04 09:53:40','2017-11-04 09:53:58'),
	(56,'16.jpg',0,6,'2017-11-04 09:53:40','2017-11-04 09:53:59'),
	(57,'17.jpg',0,6,'2017-11-04 09:53:40','2017-11-04 09:53:59'),
	(58,'18.jpg',0,6,'2017-11-04 09:53:41','2017-11-04 09:53:59'),
	(59,'19.jpg',0,6,'2017-11-04 09:53:41','2017-11-04 09:54:00'),
	(60,'20.jpg',0,6,'2017-11-04 09:53:41','2017-11-04 09:54:00'),
	(61,'21.jpg',0,6,'2017-11-04 09:53:42','2017-11-04 09:54:01'),
	(62,'22.jpg',0,6,'2017-11-04 09:53:42','2017-11-04 09:54:01'),
	(63,'23.jpg',0,6,'2017-11-04 09:53:43','2017-11-04 09:54:02'),
	(64,'24.jpg',0,6,'2017-11-04 09:53:43','2017-11-04 09:54:02'),
	(65,'25.jpg',1,6,'2017-11-04 09:53:43','2017-11-04 09:54:03'),
	(66,'26.jpg',0,6,'2017-11-04 09:53:44','2017-11-04 09:54:03'),
	(67,'27.jpg',0,6,'2017-11-04 09:53:44','2017-11-04 09:54:03'),
	(68,'28.jpg',0,6,'2017-11-04 09:53:45','2017-11-04 09:54:04'),
	(69,'29.jpg',0,6,'2017-11-04 09:53:45','2017-11-04 09:54:04'),
	(70,'30.jpg',0,6,'2017-11-04 09:53:46','2017-11-04 09:54:05'),
	(71,'31.jpg',0,6,'2017-11-04 09:53:46','2017-11-04 09:54:05'),
	(72,'32.jpg',0,6,'2017-11-04 09:53:46','2017-11-04 09:54:06'),
	(73,'33.jpg',0,6,'2017-11-04 09:53:47','2017-11-04 09:54:06'),
	(74,'34.jpg',0,6,'2017-11-04 09:53:48','2017-11-04 09:54:07'),
	(75,'1.jpg',0,7,'2017-11-04 09:56:40','2017-11-04 09:56:49'),
	(76,'2.jpg',0,7,'2017-11-04 09:56:41','2017-11-04 09:56:49'),
	(77,'3.jpg',1,7,'2017-11-04 09:56:41','2017-11-04 09:56:49'),
	(78,'4.jpg',0,7,'2017-11-04 09:56:42','2017-11-04 09:56:50'),
	(79,'5.jpg',0,7,'2017-11-04 09:56:42','2017-11-04 09:56:50'),
	(80,'6.jpg',0,7,'2017-11-04 09:56:42','2017-11-04 09:56:50'),
	(81,'7.jpg',0,7,'2017-11-04 09:56:43','2017-11-04 09:56:51'),
	(82,'8.jpg',0,7,'2017-11-04 09:56:43','2017-11-04 09:56:51'),
	(83,'9.jpg',0,7,'2017-11-04 09:56:43','2017-11-04 09:56:51'),
	(84,'10.jpg',0,7,'2017-11-04 09:56:44','2017-11-04 09:56:52'),
	(85,'11.jpg',0,7,'2017-11-04 09:56:44','2017-11-04 09:56:52'),
	(86,'12.jpg',0,7,'2017-11-04 09:56:44','2017-11-04 09:56:52'),
	(87,'13.jpg',0,7,'2017-11-04 09:56:45','2017-11-04 09:56:53'),
	(88,'14.jpg',0,7,'2017-11-04 09:56:46','2017-11-04 09:56:55'),
	(89,'1.jpg',0,5,'2017-11-12 17:12:28','2017-11-12 17:12:28'),
	(90,'2.jpg',0,5,'2017-11-12 17:13:15','2017-11-12 17:13:15'),
	(91,'3.jpg',0,5,'2017-11-12 17:13:19','2017-11-12 17:13:39'),
	(92,'4.jpg',1,5,'2017-11-12 17:13:19','2017-11-12 17:13:39'),
	(93,'5.jpg',0,5,'2017-11-12 17:13:31','2017-11-12 17:13:40'),
	(94,'6.jpg',0,5,'2017-11-12 17:13:28','2017-11-12 17:13:41'),
	(95,'7.jpg',0,5,'2017-11-12 17:13:29','2017-11-12 17:13:41'),
	(96,'8.jpg',0,5,'2017-11-12 17:13:33','2017-11-12 17:13:41'),
	(97,'9.jpg',0,5,'2017-11-12 17:13:34','2017-11-12 17:13:42'),
	(98,'10.jpg',0,5,'2017-11-12 17:13:34','2017-11-12 17:13:42'),
	(99,'11.jpg',0,5,'2017-11-12 17:13:36','2017-11-12 17:13:44');

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table series
# ------------------------------------------------------------

DROP TABLE IF EXISTS `series`;

CREATE TABLE `series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;

INSERT INTO `series` (`id`, `title`, `created_at`, `updated_at`)
VALUES
	(1,'그 외','2017-10-24 21:22:22','2017-10-24 21:22:22'),
	(2,'지극히 평범한 사람 엘리야','2017-10-24 21:23:16','2017-10-24 21:23:16'),
	(3,'자기 관리','2017-10-24 21:24:24','2017-10-24 21:24:24'),
	(4,'멋진 삶 만들기','2017-10-24 21:24:52','2017-10-24 21:24:52'),
	(5,'진짜 사나이','2017-10-24 21:26:10','2017-10-24 21:26:10'),
	(6,'로마서 이야기','2017-10-24 21:26:55','2017-10-24 21:26:55'),
	(7,'내가 원하는 한 가지','2017-10-24 21:28:27','2017-10-24 21:28:27'),
	(8,'여호수아 강해','2017-10-24 21:29:06','2017-10-24 21:29:06'),
	(9,'하나님이 정말 원하시는 교회','2017-10-24 21:29:49','2017-10-24 21:29:49'),
	(10,'삶','2017-10-24 21:30:47','2017-10-24 21:30:47'),
	(11,'성령의 열매','2017-10-25 21:03:56','2017-10-25 21:03:56');

/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `video_id`, `video_description`, `video_date`, `created_at`, `updated_at`, `series_id`)
VALUES
	(1,'RaHUt9ai3d4','평안\n빌립보서(Philemon) 4:6-7','20131218','2017-10-21 22:47:33','2017-10-21 22:47:33',1),
	(2,'M87cYtpXHdE','방향의 중요성\n마가복음(Mark) 10:45','20131229','2017-10-21 22:47:42','2017-10-21 22:47:44',1),
	(3,'BORQg5p9GSM','무력증\n학개(Haggai) 1:1-6','20140108','2017-10-22 00:59:11','2017-10-22 00:59:13',1),
	(4,'7_xqxk66Brw','기도하면\n열왕기하(2 Kings) 19:14-19','20140109','2017-10-22 00:59:14','2017-10-22 00:59:14',1),
	(5,'HDnbP8ScJ98','신앙 관리\n디모데전서(1 Timothy) 4:1-8','20140112','2017-10-22 00:59:16','2017-10-22 00:59:16',1),
	(6,'Bk66-vg4rX4','참된 예배\n창세기(Genesis) 22:1-19','20140202','2017-10-22 00:59:19','2017-10-22 00:59:19',1),
	(7,'pVdCCGh7wGI','예배는 거룩한 투자이다\n창세기(Genesis) 4:1-15','20140223','2017-10-22 00:59:26','2017-10-22 00:59:26',1),
	(8,'VyluZZt6vTc','작은 감사, 큰 축복\n누가복음(Luke) 9:10-17','20140316','2017-10-22 00:59:27','2017-10-22 00:59:27',1),
	(9,'2zZHQOb3Wow','꼭 자랑하라\n갈라디아서(Galatians) 6:11-18','20140413','2017-10-22 00:59:28','2017-10-22 00:59:28',1),
	(10,'rzs4DEmep2c','따뜻함의 미학\n사도행전(The Acts) 2:37-47','20140511','2017-10-22 00:59:31','2017-10-22 00:59:31',1),
	(11,'x3aKz0BRVzc','위로의 아들\n사도행전(The Acts) 4:36-37','20140525','2017-10-22 00:59:32','2017-10-22 00:59:32',1),
	(12,'535UOPyRtbg','놀라운 사건\n요나(Jonah) 3:1-10','20140629','2017-10-22 00:59:34','2017-10-22 00:59:34',1),
	(13,'JNV4Q_7gq_0','지극히 평범한 사람 엘리야 #1\n말씀에 사로잡힌 사람\n열왕기상(1 Kings) 17:1-7','20140713','2017-10-22 00:59:35','2017-10-22 00:59:35',2),
	(14,'DtJTvjyeeR0','지극히 평범한 사람 엘리야 #2\n그릿 시냇가 훈련\n열왕기상(1 Kings) 17:2-7','20140720','2017-10-22 00:59:37','2017-10-22 00:59:37',2),
	(15,'WCfSoIWX_00','지극히 평범한 사람 엘리야 #3\n사르밧 훈련\n열왕기상(1 Kings) 17:8-16','20140727','2017-10-22 00:59:39','2017-10-22 00:59:39',2),
	(16,'1nGP7Vkd_jU','지극히 평범한 사람 엘리야 #4\n드리는 훈련\n열왕기상(1 Kings) 17:8-16','20140803','2017-10-22 00:59:40','2017-10-22 00:59:40',2),
	(17,'hFKZ1e9HZjo','지극히 평범한 사람 엘리야 #5\n숨은 위인 오바댜\n열왕기상(1 Kings) 18:1-15','20140810','2017-10-22 00:59:42','2017-10-22 00:59:42',2),
	(18,'ygS-I6rIlaA','지극히 평범한 사람 엘리야 #6\n어느 때까지 둘 사이에서 머뭇머뭇 하려느냐\n열왕기상(1 Kings) 18:16-29','20140817','2017-10-22 00:59:43','2017-10-22 00:59:43',2),
	(19,'s02aA5ye_ck','지극히 평범한 사람 엘리야 #7\n무너진 제단을 수축하라\n열왕기상(1 Kings) 18:30-40','20140824','2017-10-22 00:59:46','2017-10-22 00:59:46',2),
	(20,'waszsT5PWHk','지극히 평범한 사람 엘리야 #8\n하늘 문을 열고 닫은 기도\n열왕기상(1 Kings) 18:41-46','20140831','2017-10-22 00:59:49','2017-10-22 00:59:49',2),
	(21,'9kbENxqOEYk','살맛나는 아름다운 세상\n역대상(1 Chronicles) 11:15-19','20140907','2017-10-22 00:59:50','2017-10-22 00:59:50',1),
	(22,'FD56SmY851A','자기 관리 #1\n시간 관리\n마태복음(Matthew) 24:44-51','20140914','2017-10-22 00:59:51','2017-10-22 00:59:51',3),
	(23,'l2eiQai2Ixk','간절함\n마가복음(Mark) 10:46-52','20140921','2017-10-22 00:59:53','2017-10-22 00:59:53',1),
	(24,'lTmSumNfYQE','자기 관리 #2\n물질 관리\n마태복음(Matthew) 19:16-22','20140928','2017-10-22 00:59:54','2017-10-22 00:59:54',3),
	(25,'BEjbjrovLcg','자기 관리 #3\n건강 관리\n고린도전서(1 Corinthians) 6:12-20','20141005','2017-10-22 00:59:56','2017-10-22 00:59:56',3),
	(26,'d4Y5JyaAUHM','자기 관리 #4\n목표 관리\n빌립보서(Philippians) 3:12-14','20141012','2017-10-22 00:59:58','2017-10-22 00:59:58',3),
	(27,'-rXjuauxzrU','자기 관리 #5\n신앙 관리\n디모데전서(1 Timothy) 4:1-8','20141019','2017-10-22 00:59:59','2017-10-22 00:59:59',3),
	(28,'dbHLO3uGTxE','예수님의 제자라면\n누가복음(Luke) 17:1-10','20141026','2017-10-22 01:00:01','2017-10-22 01:00:01',1),
	(29,'cQlFEhHUVa0','예수안에서 기쁘게 삽시다\n빌립보서(Philippians) 1:1-11','20141102','2017-10-22 01:00:03','2017-10-22 01:00:03',1),
	(30,'TMPTO2L3CF8','너희 마음에 묵은 땅을 갈아라\n호세아(Hosea) 10:12-15','20141109','2017-10-22 01:00:04','2017-10-22 01:00:04',1),
	(31,'nmI7X16XaWc','교회는 합창입니다\n고린도전서(1 Corinthians) 12:12-27','20141116','2017-10-22 01:00:06','2017-10-22 01:00:06',1),
	(32,'EhG2hySHOu0','예수님 눈이 뜨인 감사\n누가복음(Luke) 17:11-19','20141123','2017-10-22 01:00:07','2017-10-22 01:00:07',1),
	(33,'aKfpq0JPgA8','겨울에도 씨를 뿌리는 사람\n디모데후서(2 Timothy) 4:9-14','20141130','2017-10-22 01:00:09','2017-10-22 01:00:09',1),
	(34,'ByvbA4Rj3jg','가장 중요한 순간에 기도하라\n마가복음(Mark) 14:32-42','20141207','2017-10-22 01:00:10','2017-10-22 01:00:10',1),
	(35,'isHTarp3rUo','무엇보다 먼저 해결 되어야 할 것\n마태복음(Matthew) 3:16-17','20141214','2017-10-22 01:00:12','2017-10-22 01:00:12',1),
	(36,'-grepJV9p6Y','성탄, 기적 중에 기적\n누가복음(Luke) 1:26-38','20141221','2017-10-22 01:00:14','2017-10-22 01:00:14',1),
	(37,'6_e82Fxz71o','성탄, 축복의 시작입니다\n마태복음(Matthew) 1:18-25','20141225','2017-10-22 01:00:16','2017-10-22 01:00:16',1),
	(38,'nVThvjZggl0','신나게 시작합니다\n느혜미야(Nehemiah) 2:1-10','20150104','2017-10-22 01:00:17','2017-10-22 01:00:17',1),
	(39,'4dXeBCLEpOw','오리 말고, 십리 인생을 살라\n마태복음(matthew) 5:38-48','20150111','2017-10-22 01:00:19','2017-10-22 01:00:19',1),
	(40,'tL-vqDfO0No','작지만 꼭 필요한 사람\n마태복음(Matthew) 10:2-4','20150118','2017-10-22 01:00:21','2017-10-22 01:00:21',1),
	(41,'BbfVeDEy8Zo','멋진 삶 만들기 #1\n어떻게 살고 있나요\n시편(Psalms) 90:10-12','20150125','2017-10-22 01:00:22','2017-10-22 01:00:22',4),
	(42,'TWGEGi25yig','멋진 삶 만들기 #2\n열정적으로 살라\n마가복음(Mark) 2:3-5','20150201','2017-10-22 01:00:24','2017-10-22 01:00:24',4),
	(43,'QUHVSiW2IWw','멋진 삶 만들기 #3\n온전히 사랑하라\n요한복음(John) 13:1','20150208','2017-10-22 01:00:26','2017-10-22 01:00:26',4),
	(44,'2XqqoIQjJEo','멋진 삶 만들기 #4\n겸손히 배우라\n빌립보서(Philemon) 2:5-11','20150215','2017-10-22 01:00:28','2017-10-22 01:00:28',3),
	(45,'REkVkvye9vk','진짜 사나이 #1\n진리의 허리띠를 띠라\n예베소서(Ephesians) 6:13-14','20150222','2017-10-22 01:00:32','2017-10-22 01:00:32',5),
	(46,'1jZf1O8W2Oc','진짜 사나이 #2\n의의 호심경을 붙이라\n예베소서(Ephesians) 6:13-14','20150301','2017-10-22 01:00:34','2017-10-22 01:00:34',5),
	(47,'X2smIANvMc0','진짜 사나이 #3\n복음의 신을 신으라\n예베소서(Ephesians) 6:13-15','20150308','2017-10-22 01:00:37','2017-10-22 01:00:37',5),
	(48,'hhT62S_0vSM','진짜 사나이 #4\n믿음의 방패를 가지라\n에베소서(Ephesians) 6:13-16','20150315','2017-10-22 01:00:38','2017-10-22 01:00:38',5),
	(49,'DbtgtAYMKaY','진짜 사나이 #5\n구원의 투구를 가지라\n에베소서(Ephesians) 6:13-17','20150322','2017-10-22 01:00:40','2017-10-22 01:00:40',5),
	(50,'SHIXzVr91RY','진짜 사나이 #6\n성령의 검을 가지라\n에베소서(Ephesians) 6:10-17','20150329','2017-10-22 01:00:41','2017-10-22 01:00:41',5),
	(51,'LGFNOEGDkaQ','주께서 참으로 다시 사셨다면\n마태복음(Matthew) 28:1-10','20150405','2017-10-22 01:00:43','2017-10-22 01:00:43',1),
	(52,'Tq0lu0sf1Tc','무엇을 두려워하는가?\n마태복음(Matthew) 10:24-33','20150412','2017-10-22 01:00:44','2017-10-22 01:00:44',1),
	(53,'Cy0Yj7eeKpE','결심만으로는 안 됩니다\n마태복음(Matthew) 26:69-75','20150419','2017-10-22 01:00:46','2017-10-22 01:00:46',1),
	(54,'v5njqdxezjE','빛이니 빛의 자녀들처럼 행하라\n에베소서(Ephesians) 5:8-14','20150426','2017-10-22 01:00:47','2017-10-22 01:00:47',1),
	(55,'zxPRljFZOWs','좁은 길이 살길입니다\n창세기(Genesis) 27:41-46','20150503','2017-10-22 01:00:54','2017-10-22 01:00:54',1),
	(56,'XbBa2gz8Uog','하나님을 이기는 기도\n호세아(Hosea) 12:1-9','20150510','2017-10-22 01:00:55','2017-10-22 01:00:55',1),
	(57,'e_uKda8dQW0','상처 입은 치유자가 됩시다\n마태복음(Matthew) 9:35-38','20150517','2017-10-22 01:00:56','2017-10-22 01:00:56',1),
	(58,'vPUZFQ748ZA','아무리 기다려도 응답이 없을 때\n창세기(Genesis) 16:1-5','20150531','2017-10-22 01:00:57','2017-10-22 01:00:57',1),
	(59,'0mf_m3uVqZY','로마서 이야기 #1\n자기 소개서\n로마서(Romans) 1:1','20150614','2017-10-22 01:00:58','2017-10-22 01:00:58',6),
	(60,'Vjc1Aa4CAVA','로마서 이야기 #2\n복음을 알아요\n로마서(Romans) 1:2-7','20150621','2017-10-22 01:01:00','2017-10-22 01:01:00',6),
	(61,'Tty3CwPRh1A','로마서 이야기 #3\n나 이런 사람이다\n로마서(Romans) 1:6-15','20150628','2017-10-22 01:01:01','2017-10-22 01:01:01',6),
	(62,'ktyITVeBMUg','믿음의 시련\n야고보서(James) 1:3','20150705','2017-10-22 01:01:02','2017-10-22 01:01:02',1),
	(63,'z9-lkLYEItQ','로마서 이야기 #4\n모든 불행의 원인\n로마서(Romans) 1:18-23','20150712','2017-10-22 01:01:04','2017-10-22 01:01:04',6),
	(64,'CIbeZGawjoY','로마서 이야기 #5\n지금 내리는 진노\n로마서(Romans) 1:24-2:1','20150719','2017-10-22 01:01:06','2017-10-22 01:01:06',6),
	(65,'Lf6_D-SfOSo','로마서 이야기 #6\n남을 판단하는 사람아 너는 누구냐\n로마서(Romans) 2:1-5','20150726','2017-10-22 01:01:08','2017-10-22 01:01:08',6),
	(66,'xpVOPFuzEDY','로마서 이야기 #7\n드러난 죄 vs. 드러나지 않은 죄\n로마서(Romans) 2:6-16','20150802','2017-10-22 01:01:09','2017-10-22 01:01:09',6),
	(67,'2ZPt7pTdi_g','로마서 이야기 #8\n없다! 정말 없다!\n로마서(Romans) 3:9-18','20150809','2017-10-22 01:01:11','2017-10-22 01:01:11',6),
	(68,'A8VWhDQhB08','로마서 이야기 #9\n우리를 매력없게 만드는 것\n로마서(Romans) 3:19-31','20150816','2017-10-22 01:01:12','2017-10-22 01:01:12',6),
	(69,'4dibUOswT8I','로마서 이야기 #10\n오직 믿음으로\n로마서(Romans) 4:1-15','20150823','2017-10-22 01:01:13','2017-10-22 01:01:13',6),
	(70,'blBbSFKUVgU','로마서 이야기 #11\n상식을 넘어선 믿음\n로마서(Romans) 4:16-25','20150830','2017-10-22 01:01:18','2017-10-22 01:01:18',6),
	(71,'lqkbpXPKnZM','로마서 이야기 #12\n믿는자의 특권\n로마서(Romans) 5:1-11','20150906','2017-10-22 01:01:19','2017-10-22 01:01:19',6),
	(72,'0GrPvPnSyhE','로마서 이야기 #13\n그 한 사람이 되자\n로마서(Romans) 5:12-21','20150913','2017-10-22 01:01:21','2017-10-22 01:01:21',6),
	(73,'GS53XXFXi8I','로마서 이야기 #14\n악의 보급로를 끊어라!\n로마서(Romans) 6:1-14','20150920','2017-10-22 01:01:22','2017-10-22 01:01:22',6),
	(74,'65NounvB1fM','로마서 이야기 #15\n진짜 힘이 있는 자\n로마서(Romans) 6:15-23','20150927','2017-10-22 01:01:23','2017-10-22 01:01:23',6),
	(75,'PYIdK8fYiCk','로마서 이야기 #16\n죽어야 산다\n로마서(Romans) 7:1-14','20151011','2017-10-22 01:01:26','2017-10-22 01:01:26',6),
	(76,'N2Hg_GD43YE','로마서 이야기 #17\n갈등이 있는 건 당연하다\n로마서(Romans) 7:15-25','20151018','2017-10-22 01:01:28','2017-10-22 01:01:28',6),
	(77,'mjF52h3usjQ','로마서 이야기 #18\n인생이 바뀔 수 있다\n로마서(Romans) 8:1-11','20151025','2017-10-22 01:01:31','2017-10-22 01:01:31',6),
	(78,'z7VAXb5f0n0','창립 1주년 감사 예배\n하나님의 뜻\n마태복음(Matthew) 22:34-40','20151101','2017-10-22 01:01:33','2017-10-22 01:01:33',1),
	(79,'ElpenfW5Oug','로마서 이야기 #19\n자녀 입니다\n로마서(Romans) 8:14-25','20151108','2017-10-22 01:01:34','2017-10-22 01:01:34',6),
	(80,'H3E5zDFaRO8','로마서 이야기 #20\n소원을 말해봐\n로마서(Romans) 8:26-27','20151115','2017-10-22 01:01:35','2017-10-22 01:01:35',6),
	(81,'tqNHPdE_AFA','지나온 모든 것에 감사 할 수 있는 이유 두가지\n로마서(Romans) 8:26-30\n데살로니가전서(1 Thessalonians) 5:18','20151122','2017-10-22 01:01:37','2017-10-22 01:01:37',1),
	(82,'SmdXCb5BCcI','로마서 이야기 #21\n사랑은 아픈것이다\n로마서(Romans) 8:31-9:5','20151129','2017-10-22 01:01:38','2017-10-22 01:01:38',6),
	(83,'GVofEbB4syM','쓸데 없는데 힘빼지 맙시다\n민수기(Numbers) 12:1-3','20151206','2017-10-22 01:01:39','2017-10-22 01:01:39',1),
	(84,'ayeaeO_PBPY','내가 원하는 한 가지 #1\n호세아(hosea) 9:1-11','20151213','2017-10-22 01:01:41','2017-10-22 01:01:41',7),
	(85,'jrbdoBaZ8Qg','내가 원하는 한 가지 #2\n호세아(Hosea) 9:1-17','20151220','2017-10-22 01:01:43','2017-10-22 01:01:43',7),
	(86,'zXOK_prd2SI','당신은 어디까지 오셨습니까?\n히브리서(Hebrews) 12:1-2','20151227','2017-10-22 01:01:49','2017-10-22 01:01:49',1),
	(87,'wtSbsAlSiWQ','멋진 삶을 향하여\n요한복음(John) 9:1-7','20160103','2017-10-22 01:01:50','2017-10-22 01:01:50',1),
	(88,'o2umrUnAp5U','그리스도인의 승리방정식\n출애굽기(Exodus) 17:8-16','20160110','2017-10-22 01:01:53','2017-10-22 01:01:53',1),
	(89,'HVNHVekpjcs','내 인생의 주인은 누구입니까?\n마태복음(Matthew) 6:19-24','20160117','2017-10-22 01:01:55','2017-10-22 01:01:55',1),
	(90,'mhGsyYoZ5U0','죄 지으러 가는 길은 멀지 않게 느껴진다\n사사기(Judges) 16:1-17','20160124','2017-10-22 01:01:56','2017-10-22 01:01:56',1),
	(91,'8XJsatBxi3c','이 뼈들이 능히 살 수 있겠느냐?\n에스겔(Ezekiel) 37:1-10','20160131','2017-10-22 01:01:58','2017-10-22 01:01:58',1),
	(92,'bg-gG1IzJ2g','로마서 이야기 #22\n아름다운 인생\n로마서(Romans) 10:13-21','20160207','2017-10-22 01:01:59','2017-10-22 01:01:59',6),
	(93,'fr67dVOTPek','로마서 이야기 #23\n모르는게 정상이다\n로마서(Romans) 11:25-12:2','20160214','2017-10-22 01:02:00','2017-10-22 01:02:00',6),
	(94,'-9jIilB2HtA','로마서 이야기 #24\n사람으로 삽시다\n로마서(Romans) 12:3-8','20160228','2017-10-22 01:02:01','2017-10-22 01:02:01',6),
	(95,'AqjQBl2KUnA','로마서 이야기 #25\n아~ 행복하다\n로마서(Romans) 12:9-15','20160306','2017-10-22 01:02:02','2017-10-22 01:02:02',6),
	(96,'_g3Gw9d9U1U','로마서 이야기 #26\n소중한 가치\n로마서(Romans) 12:14-21','20160313','2017-10-22 01:02:04','2017-10-22 01:02:04',6),
	(97,'mDdeT5NiXYw','주님을 왕으로 인정하는 사람\n마가복음(Mark) 11:1-10','20160320','2017-10-22 01:02:06','2017-10-22 01:02:06',1),
	(98,'5nrnWGmo3sw','부활주일\n만남\n마태복음(Matthew) 28:1-10','20160327','2017-10-22 01:02:09','2017-10-22 01:02:09',1),
	(99,'LfAyxqfXw1M','로마서 이야기 #27\n때가 가까웠으므로\n로마서(Romans) 13:8-14','20160403','2017-10-22 01:02:11','2017-10-22 01:02:11',6),
	(100,'CNLtDZcq94I','로마서 이야기 #28\n정신 차리고 살아라\n로마서(Romans) 13:8-14','20160410','2017-10-22 01:02:12','2017-10-22 01:02:12',6),
	(101,'JM_xvkdOuqE','로마서 이야기 #29\n연약한 자를 받아 주라\n로마서(Romans) 14:1-12','20160417','2017-10-22 01:02:13','2017-10-22 01:02:13',6),
	(102,'kFd84ujlP38','로마서 이야기 #30\n예수께 소망을 둡시다\n로마서(Romans) 15:1-13','20160424','2017-10-22 01:02:14','2017-10-22 01:02:14',6),
	(103,'6o1UaWP8BQY','로마서 이야기 #31\n사람의 마음을 여는 열쇠\n로마서(Romans) 15:14-21','20160501','2017-10-22 01:02:16','2017-10-22 01:02:16',6),
	(104,'0Emy-wlh-uA','로마서 이야기 #32\n은혜로 살자\n로마서(Romans) 15:14-21','20160508','2017-10-22 01:02:18','2017-10-22 01:02:18',6),
	(105,'s-04ObfLoow','로마서 이야기 #33\n누구나 격려와 위로가 필요합니다\n로마서(Romans) 15:22-33','20160515','2017-10-22 01:02:20','2017-10-22 01:02:20',6),
	(106,'6SeNof0vKeU','로마서 이야기 #34\n기도는 부담이 아니라 특권입니다\n로마서(Romans) 15:30-33','20160522','2017-10-22 01:02:21','2017-10-22 01:02:21',6),
	(107,'_lC-adYWFlM','로마서 이야기 #35\n귀하게 여겨라\n로마서(Romans) 16:1-16','20160529','2017-10-22 01:02:23','2017-10-22 01:02:23',6),
	(108,'uIGyn6GB690','로마서 이야기 #36\n믿음의 동역자가 필요합니다 part1\n로마서(Romans) 16:1-16','20160605','2017-10-22 01:02:24','2017-10-22 01:02:24',6),
	(109,'NxkR4MRrZiw','로마서 이야기 #37\n믿음의 동역자가 필요합니다 Part 2\n로마서(Romans) 16:1-16','20160612','2017-10-22 01:02:25','2017-10-22 01:02:25',6),
	(110,'MDqvNf4x2pM','로마서 이야기 #38\n복음이 우리를 견고케 합니다\n로마서(Romans) 16:17-27','20160619','2017-10-22 01:02:27','2017-10-22 01:02:27',6),
	(111,'DU4d6AE4GRs','예수님을 잘 믿고 싶습니다\n누가복음(Luke) 9:57-62','20160626','2017-10-22 01:02:28','2017-10-22 01:02:28',1),
	(112,'WnuCW59kMbM','입술이 축복을 좌우합니다\n민수기(Numbers) 30:1-16','20160710','2017-10-22 01:02:32','2017-10-22 01:02:32',1),
	(113,'QTrwDZ4Z4Ug','마음이 슬픈 그대에게\n사무엘상(1 Samuel) 1:15-18','20160717','2017-10-22 01:02:33','2017-10-22 01:02:33',1),
	(114,'OXaO5uDeqJE','당신의 생각을 훈련하라\n예레미야(Jeremiah) 29:11-14','20160724','2017-10-22 01:02:38','2017-10-22 01:02:38',1),
	(115,'uUnPwR_rbCU','나와 당신을 행복하게 만드는 법칙\n마태복음(Matthew) 11:28-30','20160731','2017-10-22 01:02:39','2017-10-22 01:02:39',1),
	(116,'SqiTJFM84vQ','여호수아 강해 #1\n하나님은 준비된 리더를 찾으신다\n여호수아(Joshua) 1:1-9','20160807','2017-10-22 01:02:41','2017-10-22 01:02:41',8),
	(117,'LwD0yEfHGdI','여호수아 강해 #2\n리더여! 사자의 심장을 가져라!\n여호수아(Joshua) 1:1-9','20160814','2017-10-22 01:02:42','2017-10-22 01:02:42',8),
	(118,'xVgRQnNDwis','여호수아 강해 #3\n리더여! 성경을 붙드는 자가 되라\n여호수아(Joshua) 1:1-9','20160821','2017-10-22 01:02:44','2017-10-22 01:02:44',8),
	(119,'Ln-uB6h_c-M','여호수아 강해 #4\n특권을 섬김의 기회로 만들라\n여호수아(Joshua) 1:10-18','20160828','2017-10-22 01:02:45','2017-10-22 01:02:45',8),
	(120,'YhLn59hA6r8','여호수아 강해 #5\n사건이 아니라 사람을 보라\n여호수아(Joshua) 2:1-7','20160904','2017-10-22 01:02:47','2017-10-22 01:02:47',8),
	(121,'YnWuL76luao','여호수아 강해 #6\n믿음으로 일하라!\n여호수아(Joshua) 2:8-24','20160911','2017-10-22 01:02:48','2017-10-22 01:02:48',8),
	(122,'eYlXkjJk0dc','여호수아 강해 #7\n불가능을 가능케 하는 비결\n여호수아(Joshua) 3:1-17','20160918','2017-10-22 01:02:50','2017-10-22 01:02:50',8),
	(123,'jXMfdD3b83s','여호수아 강해 #8\n처음 감격을 잊어 버리지 말라!\n여호수아(Joshua) 4:1-14','20160925','2017-10-22 01:02:52','2017-10-22 01:02:52',8),
	(124,'lLy52Se-oXA','여호수아 강해 #9\n승리를 위해 준비해야 할 중요한 것\n여호수아(Joshua) 5:1-15','20161009','2017-10-22 01:02:53','2017-10-22 01:02:53',8),
	(125,'Ev17VLf21bs','여호수아 강해 #10\n일상의 영성에 강점을 가져라\n여호수아(Joshua) 5:10-12','20161016','2017-10-22 01:02:54','2017-10-22 01:02:54',8),
	(126,'D7kOcfLjh4Q','여호수아 강해 #11\n깨지지 않는 벽은 없다\n여호수아(Joshua) 6:1-7','20161023','2017-10-22 01:02:56','2017-10-22 01:02:56',8),
	(127,'T3Ph4LFlevc','삶의 문제는 성령이 임하면 해결 됩니다\n사도행전(Acts) 1:3-8','20161106','2017-10-22 01:03:01','2017-10-22 01:03:01',1),
	(128,'dl__Aa0m7BQ','여호수아 강해 #12\n내 앞에 여리고를 무너뜨리는 비결\n여호수아(Joshua) 6:8-21','20161113','2017-10-22 01:03:02','2017-10-22 01:03:02',8),
	(129,'IR_je65iaiY','추수감사주일\n감사와 기쁨 사이에는?\n시편(Psalms) 100:1-5','20161120','2017-10-22 01:03:04','2017-10-22 01:03:04',1),
	(130,'iIrFaNbmJew','여호수아 강해 #13\n더 알고 싶은 이야기\n여호수아(Joshua) 6:22-27','20161127','2017-10-22 01:03:05','2017-10-22 01:03:05',8),
	(131,'14f80ehx1cY','여호수아 강해 #14\n실패하는 사람들의 특징\n여호수아(Joshua) 7:1-9','20161204','2017-10-22 01:03:07','2017-10-22 01:03:07',8),
	(132,'y15Fn46yUMM','여호수아 강해 #15\n실패에서 일어나는 비결!!\n여호수아(Joshua) 7:10-26','20161211','2017-10-22 01:03:09','2017-10-22 01:03:09',8),
	(133,'ROvrKdtzH7o','마르고 황폐한 땅에서\n시편(Psalms) 63:1-11','20161218','2017-10-22 01:03:11','2017-10-22 01:03:11',1),
	(134,'2mBYbh1PFzA','우리를 구원하기 위해 태어난 예수님\n요한복음(John) 3:16','20161225','2017-10-22 01:03:13','2017-10-22 01:03:13',1),
	(135,'1njjW2S27hQ','보는 예배와 드리는 예배\n요한복음(John) 4:21-24','20170101','2017-10-22 01:03:14','2017-10-22 01:03:14',1),
	(136,'c_hdUlwnzRI','기회는 고난의 형태로 찾아온다\n사무엘상(1 Samuel) 1:1-20','20170108','2017-10-22 01:03:16','2017-10-22 01:03:16',1),
	(137,'TzYeN9dquIg','성령이 임한 사람, 성령이 떠난 사람\n사무엘상(1 Samuel) 16:13-23','20170115','2017-10-22 01:03:17','2017-10-22 01:03:17',1),
	(138,'dLkkk-z1PdM','하나님이 정말 원하시는 교회 #1\n로마서(Romans) 15:7','20170122','2017-10-22 01:03:18','2017-10-22 01:03:18',9),
	(139,'9f0Hb5VsrQc','하나님이 정말 원하시는 교회 #2\n갈라디아서(Galatians) 6:1-5','20170129','2017-10-22 01:03:20','2017-10-22 01:03:20',9),
	(140,'qT7y6zPda9M','여호수아 강해 #16 승리하려면\n여호수아(Joshua) 8:1-29','20170205','2017-10-22 01:03:23','2017-10-22 01:03:23',8),
	(141,'gmCsFojioJQ','여호수아 강해 #17\n지혜롭게 결정하는 원리 part 1\n여호수아(Joshua) 9:1-15','20170212','2017-10-22 01:03:25','2017-10-22 01:03:25',8),
	(142,'nxRSUQ23tU4','여호수아 강해 #18\n지혜롭게 결정하는 원리 part 2\n여호수아(Joshua) 9:1-15','20170219','2017-10-22 01:03:26','2017-10-22 01:03:26',8),
	(143,'np_lqMDVUFE','여호수아 강해 #19\n은혜의 파도타기를 즐겨라\n여호수아(Joshua) 10:6-14','20170226','2017-10-22 01:03:28','2017-10-22 01:03:28',8),
	(144,'bnUySLGz0kE','여호수아 강해 #20\n강한 마무리의 사람\n여호수아(Joshua) 10:15-43','20170305','2017-10-22 01:03:30','2017-10-22 01:03:30',8),
	(145,'lQcyQyT6CXc','하나님이 허락하신 것\n신명기(Deuteronomy) 2:1-15','20170312','2017-10-22 01:03:31','2017-10-22 01:03:31',1),
	(146,'Em_rjpV_dqo','문제를 덮어 두지 말고, 기도로 풀라!\n사무엘하(2 Samuel) 21:1-6','20170319','2017-10-22 01:03:33','2017-10-22 01:03:33',1),
	(147,'jad7V2YE_BE','다시 일어서는 힘\n룻기(Ruth) 1:6-14','20170326','2017-10-22 01:03:34','2017-10-22 01:03:34',1),
	(148,'TYd2oOwD-bA','나의 약점을 다스리라 하십니다\n사사기(Judges) 14:1-20','20170402','2017-10-22 01:03:36','2017-10-22 01:03:36',1),
	(149,'AaH_xBTajxs','내가 왜 그랬을까?\n사사기(Judges) 15:1-8','20170409','2017-10-22 01:03:37','2017-10-22 01:03:37',1),
	(150,'noZrkyn4i-g','부활의 능력은 현재이다\n요한복음(John) 11:25-26','20170416','2017-10-22 01:03:38','2017-10-22 01:03:38',1),
	(151,'Es5CYVnBfJg','오로지 기도에 힘쓰더라\n사도행전(Acts) 1:3-14','20170423','2017-10-22 01:03:40','2017-10-22 01:03:40',1),
	(152,'T9cKUZjLV2s','스트레스를 해결하는 믿음\n시편(Psalms) 130:1-8','20170430','2017-10-22 01:03:42','2017-10-22 01:03:42',1),
	(153,'Cu2BAbym0Zc','국가대표 선수가 됩시다\n마태복음(Matthew) 10:1-6','20170507','2017-10-22 01:03:44','2017-10-22 01:03:44',1),
	(154,'keeBXQSp9Gc','모든 동기가 사랑이게 하라\n마태복음(Matthew) 15:32-39','20170514','2017-10-22 01:03:45','2017-10-22 01:03:46',1),
	(155,'IaFp6pQgsu8','강아지 신자 고양이 성도\n로마서(Romans) 14:8-9','20170521','2017-10-22 01:03:49','2017-10-22 01:03:49',1),
	(156,'jE0ZCMqcmM8','예수님 안에서 기쁘게 삽시다\n빌립보서(Philippians) 1:1-11','20170528','2017-10-22 01:03:50','2017-10-22 01:03:50',1),
	(157,'YwY4u6I8HTw','시작은 같으나 결과가 다른 이유\n마태복음(Matthew) 27:3-10','20170604','2017-10-22 01:03:51','2017-10-22 01:03:51',1),
	(158,'IieglKShn2U','잘 되는 건 이유가 있다\n사무엘하(2 Samuel) 3:1-5','20170611','2017-10-22 01:03:53','2017-10-22 01:03:53',1),
	(159,'EWJhAWzQsFI','To the next generation\n시편(Psalms) 71:18','20170618','2017-10-22 01:03:55','2017-10-22 01:03:55',1),
	(160,'calMzEz92lM','잘 뚫리는 기도\n요한일서(1 John) 5:14-15','20170625','2017-10-22 01:03:56','2017-10-22 01:03:56',1),
	(161,'hgFFFsEV4m0','천사의 표정\n사도행전(Acts) 6:8-15','20170702','2017-10-22 01:03:58','2017-10-22 01:03:58',1),
	(162,'3u4ZxghVD_Q','삶 #1\n삶이 걱정과 혼란가운데 있을때\n마태복음(Matthew) 26:36-46','20170709','2017-10-22 01:03:59','2017-10-22 01:03:59',10),
	(163,'Toi3IpTr5cU','삶 #2\n내가 원하는데로 가고 있지 않을때\n욥기(Job) 1:13-22','20170716','2017-10-22 01:04:01','2017-10-22 01:04:01',10),
	(164,'dnFNbifXC4I','삶 #3\n인생에 변화가 있을때\n창세기(Genesis) 17:1-8','20170723','2017-10-22 01:04:02','2017-10-22 01:04:02',10),
	(165,'PegDRrl6VKo','좌절과 성공\n사도행전(Acts) 26:8-25','20170730','2017-10-22 01:04:04','2017-10-22 01:04:04',1),
	(166,'PYeCcBFQTJA','삶 #4\n답답함을 해결하려면\n사무엘상(1 Samuel) 17:31-40','20170806','2017-10-22 01:04:06','2017-10-22 01:04:06',10),
	(167,'kcCZaR46i5w','삶 #5\n삶이 흔들릴 때 붙잡을 말씀\n열왕기상(1 Kings) 2:1-12','20170813','2017-10-22 01:04:07','2017-10-22 01:04:07',10),
	(168,'8xV2yu13Z7w','가장 무서운 사람은 기다리는 사람\n야고보서(James) 5:7-8','20170820','2017-10-22 01:04:09','2017-10-22 01:04:09',1),
	(169,'A5jbC4COxjY','끝장을 보는자\n사도행전(Acts) 4:23-31','20170827','2017-10-22 01:04:11','2017-10-22 01:04:11',1),
	(170,'7QNc9Bl7Z0I','믿고 가는 길\n요한복음(John) 2:1-11','20170903','2017-10-22 01:04:13','2017-10-22 01:04:13',1),
	(171,'lPtVaTB8Bk4','하나님께 사랑 받는 자\n갈라디아서(Galatians) 4:12-20','20170910','2017-10-22 01:04:15','2017-10-22 01:04:15',1),
	(172,'yApmZgQZuUI','무엇을 두려워하는가?\n마태복음(Matthew) 10:24-33','20170917','2017-10-22 01:04:16','2017-10-22 01:04:16',1),
	(173,'7JzeRicZP7Y','의심 없는 믿음\n마가복음(Mark) 11:20-25','20170924','2017-10-22 01:04:17','2017-10-22 01:04:17',1),
	(174,'Y69iUntQi3c','삶을 다르게 살려면\n열왕기상(1 Kings) 17:8-14','20171001','2017-10-22 01:04:19','2017-10-22 01:04:19',1),
	(175,'-JOk49UIS3A','성령의 열매 #1\n사랑의 열매\n마태복음(Matthew) 22:34-40','20171008','2017-10-22 01:04:21','2017-10-22 01:04:21',11),
	(176,'h9tkCNu_fgE','성령의 열매 #2\n희락의 열매\n빌립보서(Philippians) 4:4-7','20171015','2017-10-22 01:04:23','2017-10-22 01:04:23',11),
	(177,'QbHQV6vVTgU','성령의 열매 #3\n화평의 열매\n요한복음(John) 14:27','20171022','2017-10-25 01:04:23','2017-10-25 01:04:23',11),
	(178,'ZTVr_VAnJAo','성령의 열매 #4\n오래 참음의 열매\n야고보서(James) 1:4, 5:7-11','20171029','2017-10-30 01:04:23','2017-10-30 01:04:23',11),
	(179,'pvDqG1gvwjg','성령의 열매 #5\n자비의 열매\n마태복음(Matthew) 25:31-46\n','20171105','2017-11-08 00:46:06','2017-11-08 00:46:06',11);

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
