/*
SQLyog Ultimate v10.42 
MySQL - 5.7.14 : Database - swiofish2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`swiofish2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `swiofish2`;

/*Table structure for table `swiofish2_commentmeta` */

CREATE TABLE `swiofish2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_commentmeta` */

LOCK TABLES `swiofish2_commentmeta` WRITE;

UNLOCK TABLES;

/*Table structure for table `swiofish2_comments` */

CREATE TABLE `swiofish2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_comments` */

LOCK TABLES `swiofish2_comments` WRITE;

UNLOCK TABLES;

/*Table structure for table `swiofish2_links` */

CREATE TABLE `swiofish2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_links` */

LOCK TABLES `swiofish2_links` WRITE;

UNLOCK TABLES;

/*Table structure for table `swiofish2_options` */

CREATE TABLE `swiofish2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_options` */

LOCK TABLES `swiofish2_options` WRITE;

insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (1,'siteurl','http://prestashop.loc','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (2,'home','http://prestashop.loc','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (3,'blogname','SWIOFish2','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (4,'blogdescription','Un site utilisant WordPress','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (5,'users_can_register','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (6,'admin_email','zafimanangajosio@gmail.com','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (7,'start_of_week','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (8,'use_balanceTags','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (9,'use_smilies','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (10,'require_name_email','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (11,'comments_notify','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (12,'posts_per_rss','10','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (13,'rss_use_excerpt','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (14,'mailserver_url','mail.example.com','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (15,'mailserver_login','login@example.com','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (16,'mailserver_pass','password','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (17,'mailserver_port','110','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (18,'default_category','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (19,'default_comment_status','open','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (20,'default_ping_status','open','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (21,'default_pingback_flag','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (22,'posts_per_page','10','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (23,'date_format','j F Y','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (24,'time_format','G \\h i \\m\\i\\n','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (25,'links_updated_date_format','j F Y G \\h i \\m\\i\\n','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (26,'comment_moderation','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (27,'moderation_notify','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (29,'rewrite_rules','a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (30,'hack_file','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (31,'blog_charset','UTF-8','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (32,'moderation_keys','','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (33,'active_plugins','a:0:{}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (34,'category_base','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (35,'ping_sites','http://rpc.pingomatic.com/','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (36,'comment_max_links','2','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (37,'gmt_offset','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (38,'default_email_category','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (39,'recently_edited','','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (40,'template','enigma','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (41,'stylesheet','enigma','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (42,'comment_whitelist','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (43,'blacklist_keys','','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (44,'comment_registration','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (45,'html_type','text/html','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (46,'use_trackback','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (47,'default_role','subscriber','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (48,'db_version','38590','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (49,'uploads_use_yearmonth_folders','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (50,'upload_path','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (51,'blog_public','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (52,'default_link_category','2','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (53,'show_on_front','posts','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (54,'tag_base','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (55,'show_avatars','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (56,'avatar_rating','G','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (57,'upload_url_path','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (58,'thumbnail_size_w','150','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (59,'thumbnail_size_h','150','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (60,'thumbnail_crop','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (61,'medium_size_w','300','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (62,'medium_size_h','300','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (63,'avatar_default','mystery','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (64,'large_size_w','1024','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (65,'large_size_h','1024','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (66,'image_default_link_type','none','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (67,'image_default_size','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (68,'image_default_align','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (69,'close_comments_for_old_posts','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (70,'close_comments_days_old','14','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (71,'thread_comments','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (72,'thread_comments_depth','5','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (73,'page_comments','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (74,'comments_per_page','50','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (75,'default_comments_page','newest','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (76,'comment_order','asc','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (77,'sticky_posts','a:0:{}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (81,'uninstall_plugins','a:0:{}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (82,'timezone_string','Europe/Paris','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (83,'page_for_posts','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (84,'page_on_front','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (85,'default_post_format','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (86,'link_manager_enabled','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (87,'finished_splitting_shared_terms','1','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (88,'site_icon','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (89,'medium_large_size_w','768','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (90,'medium_large_size_h','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (91,'wp_page_for_privacy_policy','3','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (92,'initial_db_version','38590','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (93,'swiofish2_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (94,'fresh_site','0','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (95,'WPLANG','fr_FR','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (101,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (108,'nonce_key','_fv9UfhKdAqMDb0=B$!,SQy^6Rf[;Cwmvp5$~=gzN0?}a52>Vt1W%l;SNQn5wtVH','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (109,'nonce_salt','B=W%Rv-/Y<DHB{0r)pT8kl/`oOOB@gO~J5K@J-gI:Gon$_9nuL`w(ePvL6W`n#*y','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (113,'cron','a:4:{i:1529655735;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1529666535;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529666630;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (114,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529580373;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (161,'_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af','1529694800','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (131,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1529650971;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (132,'can_compress_scripts','1','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (162,'_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af','<div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 28: Operation timed out after 10016 milliseconds with 0 out of 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div>','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (156,'_site_transient_timeout_theme_roots','1529652779','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (157,'_site_transient_theme_roots','a:1:{s:6:\"enigma\";s:7:\"/themes\";}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (135,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1529650985;s:7:\"checked\";a:1:{s:6:\"enigma\";s:3:\"4.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (158,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1529650988;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (125,'auth_key','odYz~0C*b.44Kl0|6TVmyZXlB]#^.97zCCw[I4<}A$3_I?pX}xdEeHh.l){V+</z','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (126,'auth_salt','U3K1-[9;TZ4O1t~$im45daW%BIKh-7SXs:F8:mg0>q3`wJ|?)m?6?O^+~z+#M-0s','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (127,'logged_in_key','H`5/VeSlz$u,Dr&qT)KGJ=S<IGaCV-ZBWa99C<kY5hR^~WR!JVph-[<@??0cT$N(','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (128,'logged_in_salt','<?N7N vf|m)MxbkE|=Q[=(JUz_)cnu654p+t8M;Tdwo:f3oKNs+I86ftpb)F{.ii','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (159,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1529694783','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (160,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (129,'_site_transient_timeout_browser_143156aedca8214ce63a15cbea76913a','1530184983','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (130,'_site_transient_browser_143156aedca8214ce63a15cbea76913a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (139,'_transient_timeout_plugin_slugs','1529667185','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (140,'_transient_plugin_slugs','a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}','no');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (141,'recently_activated','a:0:{}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (143,'current_theme','Enigma','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (144,'theme_mods_enigma','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"ffffff\";s:16:\"background_color\";s:6:\"ffffff\";}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (145,'theme_switched','','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (148,'enigma_options','a:2:{s:13:\"services_home\";b:1;s:10:\"box_layout\";i:1;}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (149,'category_children','a:0:{}','yes');
insert  into `swiofish2_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (150,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');

UNLOCK TABLES;

/*Table structure for table `swiofish2_postmeta` */

CREATE TABLE `swiofish2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_postmeta` */

LOCK TABLES `swiofish2_postmeta` WRITE;

insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (1,2,'_wp_page_template','default');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (2,3,'_wp_page_template','default');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (3,2,'_edit_lock','1529581857:1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (4,5,'_edit_lock','1529582104:1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (5,5,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (6,5,'_wp_trash_meta_time','1529582109');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (7,6,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (8,6,'_wp_trash_meta_time','1529582125');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (9,7,'_edit_lock','1529582504:1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (10,7,'_customize_restore_dismissed','1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (11,8,'_edit_lock','1529583158:1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (16,10,'_menu_item_type','custom');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (17,10,'_menu_item_menu_item_parent','0');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (18,10,'_menu_item_object_id','10');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (19,10,'_menu_item_object','custom');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (20,10,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (21,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (22,10,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (23,10,'_menu_item_url','http://prestashop.loc');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (74,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (73,32,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (72,32,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (71,32,'_menu_item_object_id','16');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (70,32,'_menu_item_menu_item_parent','0');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (69,32,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (78,33,'_menu_item_menu_item_parent','0');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (77,33,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (76,32,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (75,32,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (40,8,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (41,8,'_wp_trash_meta_time','1529583163');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (42,13,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (43,13,'_wp_trash_meta_time','1529651774');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (44,14,'_edit_lock','1529652326:1');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (68,31,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (46,15,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (67,31,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (48,16,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (66,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (50,17,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (65,31,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (52,18,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (64,31,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (54,19,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (63,31,'_menu_item_object_id','15');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (56,20,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (62,31,'_menu_item_menu_item_parent','0');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (58,21,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (61,31,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (60,22,'_customize_changeset_uuid','95f5c803-9579-42db-807c-4aeb1c5b4607');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (79,33,'_menu_item_object_id','17');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (80,33,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (81,33,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (82,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (83,33,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (84,33,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (85,34,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (86,34,'_menu_item_menu_item_parent','0');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (87,34,'_menu_item_object_id','18');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (88,34,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (89,34,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (90,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (91,34,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (92,34,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (93,35,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (94,35,'_menu_item_menu_item_parent','31');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (95,35,'_menu_item_object_id','19');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (96,35,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (97,35,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (98,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (99,35,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (100,35,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (101,36,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (102,36,'_menu_item_menu_item_parent','31');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (103,36,'_menu_item_object_id','20');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (104,36,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (105,36,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (106,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (107,36,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (108,36,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (109,37,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (110,37,'_menu_item_menu_item_parent','31');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (111,37,'_menu_item_object_id','21');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (112,37,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (113,37,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (114,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (115,37,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (116,37,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (117,38,'_menu_item_type','post_type');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (118,38,'_menu_item_menu_item_parent','31');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (119,38,'_menu_item_object_id','22');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (120,38,'_menu_item_object','page');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (121,38,'_menu_item_target','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (122,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (123,38,'_menu_item_xfn','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (124,38,'_menu_item_url','');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (125,14,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (126,14,'_wp_trash_meta_time','1529652340');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (127,39,'_wp_trash_meta_status','publish');
insert  into `swiofish2_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (128,39,'_wp_trash_meta_time','1529652535');

UNLOCK TABLES;

/*Table structure for table `swiofish2_posts` */

CREATE TABLE `swiofish2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_posts` */

LOCK TABLES `swiofish2_posts` WRITE;

insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (1,1,'2018-06-21 13:22:14','2018-06-21 11:22:14','Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !','Bonjour tout le monde !','','publish','open','open','','bonjour-tout-le-monde','','','2018-06-21 13:22:14','2018-06-21 11:22:14','',0,'http://prestashop.loc/?p=1',0,'post','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (2,1,'2018-06-21 13:22:14','2018-06-21 11:22:14','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://prestashop.loc/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d’exemple','','publish','closed','open','','page-d-exemple','','','2018-06-21 13:22:14','2018-06-21 11:22:14','',0,'http://prestashop.loc/?page_id=2',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (3,1,'2018-06-21 13:22:14','2018-06-21 11:22:14','<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://prestashop.loc.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>','Politique de confidentialité','','draft','closed','open','','politique-de-confidentialite','','','2018-06-21 13:22:14','2018-06-21 11:22:14','',0,'http://prestashop.loc/?page_id=3',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (4,1,'2018-06-21 13:23:03','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2018-06-21 13:23:03','0000-00-00 00:00:00','',0,'http://prestashop.loc/?p=4',0,'post','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (5,1,'2018-06-21 13:55:08','2018-06-21 11:55:08','{\n    \"enigma_options[services_home]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:55:04\"\n    },\n    \"enigma_options[box_layout]\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:55:04\"\n    }\n}','','','trash','closed','closed','','8944deaf-9b92-450d-b9a9-34cf0284a302','','','2018-06-21 13:55:08','2018-06-21 11:55:08','',0,'http://prestashop.loc/?p=5',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (6,1,'2018-06-21 13:55:25','2018-06-21 11:55:25','{\n    \"enigma_options[box_layout]\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:55:25\"\n    }\n}','','','trash','closed','closed','','9c944036-b892-4acc-b3cd-59b9f2e3bde2','','','2018-06-21 13:55:25','2018-06-21 11:55:25','',0,'http://prestashop.loc/2018/06/21/9c944036-b892-4acc-b3cd-59b9f2e3bde2/',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (7,1,'2018-06-21 14:01:44','0000-00-00 00:00:00','{\n    \"enigma_options[header_social_media_in_enabled]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:56:10\"\n    },\n    \"enigma_options[fc_home]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:56:10\"\n    },\n    \"enigma_options[_frontpage]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:59:10\"\n    },\n    \"enigma_options[title_position]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:59:10\"\n    },\n    \"enigma_options[breadcrumb]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 11:59:10\"\n    },\n    \"enigma_options[slider_anim]\": {\n        \"value\": \"slide\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:00:10\"\n    },\n    \"enigma_options[menu_font]\": {\n        \"value\": \"arial\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:01:44\"\n    },\n    \"enigma_options[main_heading_font]\": {\n        \"value\": \"Homemade Apple\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:01:44\"\n    }\n}','','','auto-draft','closed','closed','','266bffda-9dd7-4a6e-9fc7-144964a7511a','','','2018-06-21 14:01:44','2018-06-21 12:01:44','',0,'http://prestashop.loc/?p=7',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (8,1,'2018-06-21 14:12:43','2018-06-21 12:12:43','{\n    \"enigma::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:03:20\"\n    },\n    \"enigma::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:03:20\"\n    },\n    \"enigma::header_image\": {\n        \"value\": \"http://prestashop.loc/wp-content/uploads/2018/06/IMG_21062018_114632_0.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:06:20\"\n    },\n    \"enigma::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://prestashop.loc/wp-content/uploads/2018/06/IMG_21062018_114632_0.png\",\n            \"thumbnail_url\": \"http://prestashop.loc/wp-content/uploads/2018/06/IMG_21062018_114632_0.png\",\n            \"timestamp\": 1529582747747,\n            \"attachment_id\": 9,\n            \"width\": 318,\n            \"height\": 159\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:06:20\"\n    },\n    \"enigma::nav_menu_locations[primary]\": {\n        \"value\": -811343934,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:09:24\"\n    },\n    \"nav_menu[-811343934]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:09:24\"\n    },\n    \"nav_menu_item[-507865524]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:10:24\"\n    },\n    \"nav_menu_item[-545490050]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:09:24\"\n    },\n    \"nav_menu_item[-742960185]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://prestashop.loc\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -811343934,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:10:24\"\n    },\n    \"nav_menu_item[-2109339304]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Page d\\u2019exemple\",\n            \"url\": \"http://prestashop.loc/page-d-exemple/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Page d\\u2019exemple\",\n            \"nav_menu_term_id\": -811343934,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:10:24\"\n    },\n    \"nav_menu_item[-1061285216]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"post\",\n            \"menu_item_parent\": -2109339304,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Bonjour tout le monde\\u00a0!\",\n            \"url\": \"http://prestashop.loc/2018/06/21/bonjour-tout-le-monde/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bonjour tout le monde\\u00a0!\",\n            \"nav_menu_term_id\": -811343934,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-21 12:12:38\"\n    }\n}','','','trash','closed','closed','','966e922e-e804-4dd6-b5a0-59676cd1b395','','','2018-06-21 14:12:43','2018-06-21 12:12:43','',0,'http://prestashop.loc/?p=8',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (10,1,'2018-06-21 14:12:43','2018-06-21 12:12:43','','Accueil','','publish','closed','closed','','accueil','','','2018-06-21 14:12:43','2018-06-21 12:12:43','',0,'http://prestashop.loc/2018/06/21/accueil/',1,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (23,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Le Projet','','inherit','closed','closed','','15-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',15,'http://prestashop.loc/2018/06/22/15-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (24,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Actualité','','inherit','closed','closed','','16-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',16,'http://prestashop.loc/2018/06/22/16-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (13,1,'2018-06-22 09:16:14','2018-06-22 07:16:14','{\n    \"enigma::header_image\": {\n        \"value\": \"http://prestashop.loc/wp-content/themes/enigma/images/header-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:16:14\"\n    },\n    \"enigma::header_image_data\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:16:14\"\n    }\n}','','','trash','closed','closed','','c2cd99db-2862-4fda-a7bc-6a2475a922c9','','','2018-06-22 09:16:14','2018-06-22 07:16:14','',0,'http://prestashop.loc/2018/06/22/c2cd99db-2862-4fda-a7bc-6a2475a922c9/',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (14,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','{\n    \"nav_menu_item[12]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:18:40\"\n    },\n    \"nav_menu_item[11]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:17:40\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21,\n            22\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:24:40\"\n    },\n    \"nav_menu_item[-1728456978]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Le Projet \",\n            \"url\": \"http://prestashop.loc/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Le Projet \",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-767825439]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Actualit\\u00e9\",\n            \"url\": \"http://prestashop.loc/?page_id=16\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Actualit\\u00e9\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-1517553127]\": {\n        \"value\": {\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Texte\",\n            \"url\": \"http://prestashop.loc/?page_id=17\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Texte\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-873626643]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Publication\",\n            \"url\": \"http://prestashop.loc/?page_id=18\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Publication\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-2110399819]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1728456978,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Presentation\",\n            \"url\": \"http://prestashop.loc/?page_id=19\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Presentation\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-424758626]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1728456978,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Structure\",\n            \"url\": \"http://prestashop.loc/?page_id=20\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Structure\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-606697487]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1728456978,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Zone d\'intervention\",\n            \"url\": \"http://prestashop.loc/?page_id=21\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Zone d\'intervention\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    },\n    \"nav_menu_item[-928414364]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1728456978,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Bailleur\",\n            \"url\": \"http://prestashop.loc/?page_id=22\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bailleur\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:25:39\"\n    }\n}','','','trash','closed','closed','','95f5c803-9579-42db-807c-4aeb1c5b4607','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?p=14',0,'customize_changeset','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (15,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Le Projet','','publish','closed','closed','','le-projet','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=15',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (16,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Actualité','','publish','closed','closed','','actualite','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=16',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (17,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Texte','','publish','closed','closed','','texte','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=17',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (18,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Publication','','publish','closed','closed','','publication','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=18',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (19,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Presentation','','publish','closed','closed','','presentation','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=19',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (20,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Structure','','publish','closed','closed','','structure','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=20',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (21,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Zone d\'intervention','','publish','closed','closed','','zone-dintervention','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=21',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (22,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Bailleur','','publish','closed','closed','','bailleur','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/?page_id=22',0,'page','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (25,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Texte','','inherit','closed','closed','','17-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',17,'http://prestashop.loc/2018/06/22/17-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (26,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Publication','','inherit','closed','closed','','18-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',18,'http://prestashop.loc/2018/06/22/18-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (27,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Presentation','','inherit','closed','closed','','19-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',19,'http://prestashop.loc/2018/06/22/19-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (28,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Structure','','inherit','closed','closed','','20-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',20,'http://prestashop.loc/2018/06/22/20-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (29,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Zone d\'intervention','','inherit','closed','closed','','21-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',21,'http://prestashop.loc/2018/06/22/21-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (30,1,'2018-06-22 09:25:39','2018-06-22 07:25:39','','Bailleur','','inherit','closed','closed','','22-revision-v1','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',22,'http://prestashop.loc/2018/06/22/22-revision-v1/',0,'revision','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (31,1,'2018-06-22 09:25:39','2018-06-22 07:25:39',' ','','','publish','closed','closed','','31','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/2018/06/22/31/',3,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (32,1,'2018-06-22 09:25:39','2018-06-22 07:25:39',' ','','','publish','closed','closed','','32','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/2018/06/22/32/',7,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (33,1,'2018-06-22 09:25:39','2018-06-22 07:25:39',' ','','','publish','closed','closed','','33','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/2018/06/22/33/',8,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (34,1,'2018-06-22 09:25:39','2018-06-22 07:25:39',' ','','','publish','closed','closed','','34','','','2018-06-22 09:25:39','2018-06-22 07:25:39','',0,'http://prestashop.loc/2018/06/22/34/',9,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (35,1,'2018-06-22 09:25:40','2018-06-22 07:25:40',' ','','','publish','closed','closed','','35','','','2018-06-22 09:25:40','2018-06-22 07:25:40','',0,'http://prestashop.loc/2018/06/22/35/',1,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (36,1,'2018-06-22 09:25:40','2018-06-22 07:25:40',' ','','','publish','closed','closed','','36','','','2018-06-22 09:25:40','2018-06-22 07:25:40','',0,'http://prestashop.loc/2018/06/22/36/',2,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (37,1,'2018-06-22 09:25:40','2018-06-22 07:25:40','','Zone d\'intervention','','publish','closed','closed','','zone-dintervention','','','2018-06-22 09:25:40','2018-06-22 07:25:40','',0,'http://prestashop.loc/2018/06/22/zone-dintervention/',3,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (38,1,'2018-06-22 09:25:40','2018-06-22 07:25:40',' ','','','publish','closed','closed','','38','','','2018-06-22 09:25:40','2018-06-22 07:25:40','',0,'http://prestashop.loc/2018/06/22/38/',4,'nav_menu_item','',0);
insert  into `swiofish2_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (39,1,'2018-06-22 09:28:54','2018-06-22 07:28:54','{\n    \"enigma::header_image\": {\n        \"value\": \"http://prestashop.loc/wp-content/themes/enigma/images/header-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:28:54\"\n    },\n    \"enigma::header_image_data\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-22 07:28:54\"\n    }\n}','','','trash','closed','closed','','e9d44c56-fec4-4748-8442-3650f99dc7b7','','','2018-06-22 09:28:54','2018-06-22 07:28:54','',0,'http://prestashop.loc/2018/06/22/e9d44c56-fec4-4748-8442-3650f99dc7b7/',0,'customize_changeset','',0);

UNLOCK TABLES;

/*Table structure for table `swiofish2_term_relationships` */

CREATE TABLE `swiofish2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_term_relationships` */

LOCK TABLES `swiofish2_term_relationships` WRITE;

insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (1,1,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (10,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (31,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (32,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (33,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (34,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (35,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (36,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (37,2,0);
insert  into `swiofish2_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (38,2,0);

UNLOCK TABLES;

/*Table structure for table `swiofish2_term_taxonomy` */

CREATE TABLE `swiofish2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_term_taxonomy` */

LOCK TABLES `swiofish2_term_taxonomy` WRITE;

insert  into `swiofish2_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) values (1,1,'category','',0,1);
insert  into `swiofish2_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) values (2,2,'nav_menu','',0,9);

UNLOCK TABLES;

/*Table structure for table `swiofish2_termmeta` */

CREATE TABLE `swiofish2_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_termmeta` */

LOCK TABLES `swiofish2_termmeta` WRITE;

UNLOCK TABLES;

/*Table structure for table `swiofish2_terms` */

CREATE TABLE `swiofish2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_terms` */

LOCK TABLES `swiofish2_terms` WRITE;

insert  into `swiofish2_terms`(`term_id`,`name`,`slug`,`term_group`) values (1,'Non classé','non-classe',0);
insert  into `swiofish2_terms`(`term_id`,`name`,`slug`,`term_group`) values (2,'Main','main',0);

UNLOCK TABLES;

/*Table structure for table `swiofish2_usermeta` */

CREATE TABLE `swiofish2_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_usermeta` */

LOCK TABLES `swiofish2_usermeta` WRITE;

insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (1,1,'nickname','admin');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (2,1,'first_name','');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (3,1,'last_name','');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (4,1,'description','');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (5,1,'rich_editing','true');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (6,1,'syntax_highlighting','true');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (7,1,'comment_shortcuts','false');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (8,1,'admin_color','fresh');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (9,1,'use_ssl','0');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (10,1,'show_admin_bar_front','true');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (11,1,'locale','');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (12,1,'swiofish2_capabilities','a:1:{s:13:\"administrator\";b:1;}');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (13,1,'swiofish2_user_level','10');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (14,1,'dismissed_wp_pointers','wp496_privacy');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (15,1,'show_welcome_panel','1');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (20,1,'session_tokens','a:2:{s:64:\"5753d0783e9a870c77e9a8c039733cd34801bbb0985f6a44ee76d622f2d0ddff\";a:4:{s:10:\"expiration\";i:1529754790;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529581990;}s:64:\"4ce342194c4d58c18660fb6386973ff36e795b777b165f75a08cec9329f547fd\";a:4:{s:10:\"expiration\";i:1530861177;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529651577;}}');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (17,1,'swiofish2_dashboard_quick_press_last_post_id','4');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (19,1,'enigma_notice_dismissed42','true');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (21,1,'swiofish2_user-settings','libraryContent=browse');
insert  into `swiofish2_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (22,1,'swiofish2_user-settings-time','1529652589');

UNLOCK TABLES;

/*Table structure for table `swiofish2_users` */

CREATE TABLE `swiofish2_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

/*Data for the table `swiofish2_users` */

LOCK TABLES `swiofish2_users` WRITE;

insert  into `swiofish2_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) values (1,'admin','$P$Bd64DEnw9eaMlDgivdctuwyno3ZuLM0','admin','zafimanangajosio@gmail.com','','2018-06-21 11:22:14','',0,'admin');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
