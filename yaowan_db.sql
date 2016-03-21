/*
Navicat MySQL Data Transfer

Source Server         : 172.0.0.1
Source Server Version : 50133
Source Host           : localhost:3306
Source Database       : yaowan_db

Target Server Type    : MYSQL
Target Server Version : 50133
File Encoding         : 65001

Date: 2016-03-21 22:09:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wp_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------
INSERT INTO `wp_comments` VALUES ('1', '1', 'WordPress先生', '', 'https://wordpress.org/', '', '2016-03-21 21:28:24', '2016-03-21 13:28:24', '您好，这是一条评论。\n要删除评论，请先登录，然后再查看这篇文章的评论。登录后您可以看到编辑或者删除评论的选项。', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for `wp_links`
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_links
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_options`
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES ('1', 'siteurl', 'http://localhost/git/yaowan/wordpress', 'yes');
INSERT INTO `wp_options` VALUES ('2', 'home', 'http://localhost/git/yaowan/wordpress', 'yes');
INSERT INTO `wp_options` VALUES ('3', 'blogname', '耀玩网络科技', 'yes');
INSERT INTO `wp_options` VALUES ('4', 'blogdescription', '又一个WordPress站点', 'yes');
INSERT INTO `wp_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES ('6', 'admin_email', '735016387@qq.com', 'yes');
INSERT INTO `wp_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES ('23', 'date_format', 'Y年n月j日', 'yes');
INSERT INTO `wp_options` VALUES ('24', 'time_format', 'ag:i', 'yes');
INSERT INTO `wp_options` VALUES ('25', 'links_updated_date_format', 'Y年n月j日ag:i', 'yes');
INSERT INTO `wp_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES ('29', 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES ('30', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES ('31', 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('32', 'active_plugins', 'a:1:{i:0;s:39:\"kindeditor-for-wordpress/kindeditor.php\";}', 'yes');
INSERT INTO `wp_options` VALUES ('33', 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('34', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES ('35', 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES ('36', 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES ('37', 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('38', 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES ('39', 'template', 'twentysixteen', 'yes');
INSERT INTO `wp_options` VALUES ('40', 'stylesheet', 'twentysixteen', 'yes');
INSERT INTO `wp_options` VALUES ('41', 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES ('42', 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('43', 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES ('44', 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES ('45', 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES ('46', 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES ('47', 'db_version', '35700', 'yes');
INSERT INTO `wp_options` VALUES ('48', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES ('49', 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('50', 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES ('51', 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES ('52', 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES ('53', 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('54', 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES ('55', 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES ('56', 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('57', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES ('58', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES ('59', 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES ('60', 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES ('61', 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES ('62', 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES ('63', 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('64', 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('65', 'image_default_link_type', 'none', 'yes');
INSERT INTO `wp_options` VALUES ('66', 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES ('67', 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES ('68', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('69', 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES ('70', 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES ('71', 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES ('72', 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES ('73', 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES ('74', 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES ('75', 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES ('76', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('77', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('78', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('79', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('80', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES ('81', 'timezone_string', 'Asia/Shanghai', 'yes');
INSERT INTO `wp_options` VALUES ('82', 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('83', 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES ('84', 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES ('85', 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES ('86', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES ('87', 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES ('88', 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES ('89', 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES ('90', 'initial_db_version', '35700', 'yes');
INSERT INTO `wp_options` VALUES ('91', 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES ('92', 'WPLANG', 'zh_CN', 'yes');
INSERT INTO `wp_options` VALUES ('93', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('94', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('95', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('96', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('97', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('98', 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES ('100', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('101', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('102', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('103', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('104', 'cron', 'a:15:{i:1458558660;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1458566907;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1458566932;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1458567899;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1458568156;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458568769;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458568845;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458568921;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569148;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569168;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569197;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569227;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569269;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1458569293;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES ('107', 'rewrite_rules', 'a:65:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES ('108', '_transient_doing_cron', '1458569357.5429680347442626953125', 'yes');
INSERT INTO `wp_options` VALUES ('109', '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"4.4\";s:12:\"last_checked\";i:1458566932;}', 'yes');
INSERT INTO `wp_options` VALUES ('110', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1458567964;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"3.1.5\";s:9:\"hello.php\";s:3:\"1.6\";s:39:\"kindeditor-for-wordpress/kindeditor.php\";s:5:\"1.4.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.3.1.8.zip\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:39:\"kindeditor-for-wordpress/kindeditor.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"25818\";s:4:\"slug\";s:24:\"kindeditor-for-wordpress\";s:6:\"plugin\";s:39:\"kindeditor-for-wordpress/kindeditor.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/kindeditor-for-wordpress/\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/plugin/kindeditor-for-wordpress.1.4.3.zip\";}}}', 'yes');
INSERT INTO `wp_options` VALUES ('111', '_site_transient_timeout_theme_roots', '1458568742', 'yes');
INSERT INTO `wp_options` VALUES ('112', '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'yes');
INSERT INTO `wp_options` VALUES ('113', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1458566946;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.4\";s:14:\"twentyfourteen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.1.1.zip\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2015-12-12 22:56:24\";s:7:\"package\";s:76:\"http://downloads.wordpress.org/translation/theme/twentysixteen/1.0/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES ('114', '_site_transient_timeout_browser_5ae30cdd14332a186c84b08c03075a6c', '1459171747', 'yes');
INSERT INTO `wp_options` VALUES ('115', '_site_transient_browser_5ae30cdd14332a186c84b08c03075a6c', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"49.0.2623.87\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES ('116', 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_options` VALUES ('120', 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('121', '_transient_timeout_plugin_slugs', '1458654375', 'no');
INSERT INTO `wp_options` VALUES ('122', '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:39:\"kindeditor-for-wordpress/kindeditor.php\";}', 'no');
INSERT INTO `wp_options` VALUES ('123', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('124', 'ke_auto_highlight', '', 'yes');
INSERT INTO `wp_options` VALUES ('125', 'ke_highlight_type', 'prettify', 'yes');

-- ----------------------------
-- Table structure for `wp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
INSERT INTO `wp_postmeta` VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('2', '4', '_wp_attached_file', '2016/03/slider1.jpg');
INSERT INTO `wp_postmeta` VALUES ('3', '4', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1352;s:6:\"height\";i:547;s:4:\"file\";s:19:\"2016/03/slider1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x121.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x311.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:311;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x414.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"slider1-1200x486.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('4', '5', '_wp_attached_file', '2016/03/slider2.jpg');
INSERT INTO `wp_postmeta` VALUES ('5', '5', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:307;s:4:\"file\";s:19:\"2016/03/slider2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('6', '6', '_wp_attached_file', '2016/03/slider3.jpg');
INSERT INTO `wp_postmeta` VALUES ('7', '6', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:712;s:4:\"file\";s:19:\"2016/03/slider3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"slider3-1200x628.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('8', '8', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('9', '8', '_edit_lock', '1458568715:1');
INSERT INTO `wp_postmeta` VALUES ('10', '9', '_wp_attached_file', '2016/03/contact.jpg');
INSERT INTO `wp_postmeta` VALUES ('11', '9', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:750;s:4:\"file\";s:19:\"2016/03/contact.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"contact-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"contact-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"contact-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"contact-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"contact-1200x720.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('12', '9', '_wp_attachment_image_alt', 'about');
INSERT INTO `wp_postmeta` VALUES ('13', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('14', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('15', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('16', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('17', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('18', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('19', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('20', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('21', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('22', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('23', '15', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('24', '15', '_edit_lock', '1458568796:1');
INSERT INTO `wp_postmeta` VALUES ('25', '15', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('26', '15', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('27', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('28', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('29', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('30', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('31', '8', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('32', '8', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('33', '15', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('34', '15', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('35', '21', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('36', '21', '_edit_lock', '1458569108:1');
INSERT INTO `wp_postmeta` VALUES ('37', '21', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('38', '21', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('39', '21', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('40', '21', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('41', '21', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('42', '21', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('43', '21', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('44', '21', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('45', '24', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('46', '24', '_edit_lock', '1458569137:1');
INSERT INTO `wp_postmeta` VALUES ('47', '24', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('48', '24', '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES ('49', '26', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('50', '26', '_edit_lock', '1458569294:1');
INSERT INTO `wp_postmeta` VALUES ('51', '26', '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES ('52', '26', '_encloseme', '1');

-- ----------------------------
-- Table structure for `wp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES ('1', '1', '2016-03-21 21:28:24', '2016-03-21 13:28:24', '欢迎使用WordPress。这是您的第一篇文章。编辑或删除它，然后开始写作吧！', '世界，您好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-21 21:28:24', '2016-03-21 13:28:24', '', '0', 'http://localhost/git/yaowan/wordpress/?p=1', '0', 'post', '', '1');
INSERT INTO `wp_posts` VALUES ('2', '1', '2016-03-21 21:28:24', '2016-03-21 13:28:24', '这是一个范例页面。它和博客文章不同，因为它的页面位置是固定的，同时会显示于您的博客导航栏（大多数主题中）。大多数人会新增一个“关于”页面向访客介绍自己。它可能类似下面这样：\n\n<blockquote>我是一个很有趣的人，我创建了工厂和庄园。并且，顺便提一下，我的妻子也很好。</blockquote>\n\n……或下面这样：\n\n<blockquote>XYZ装置公司成立于1971年，公司成立以来，我们一直向市民提供高品质的装置。我们位于北京市，有超过2,000名员工，对北京市有着相当大的贡献。</blockquote>\n\n作为一个新的WordPress用户，您可以前往<a href=\"http://localhost/git/yaowan/wordpress/wp-admin/\">您的仪表盘</a>删除这个页面，并建立属于您的全新内容。祝您使用愉快！', '示例页面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-21 21:28:24', '2016-03-21 13:28:24', '', '0', 'http://localhost/git/yaowan/wordpress/?page_id=2', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('3', '1', '2016-03-21 21:29:08', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-21 21:29:08', '0000-00-00 00:00:00', '', '0', 'http://localhost/git/yaowan/wordpress/?p=3', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('4', '1', '2016-03-21 21:31:13', '2016-03-21 13:31:13', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2016-03-21 21:32:43', '2016-03-21 13:32:43', '', '0', 'http://localhost/git/yaowan/wordpress/wp-content/uploads/2016/03/slider1.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('5', '1', '2016-03-21 21:33:24', '2016-03-21 13:33:24', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2016-03-21 21:33:32', '2016-03-21 13:33:32', '', '0', 'http://localhost/git/yaowan/wordpress/wp-content/uploads/2016/03/slider2.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('6', '1', '2016-03-21 21:33:39', '2016-03-21 13:33:39', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2016-03-21 21:33:45', '2016-03-21 13:33:45', '', '0', 'http://localhost/git/yaowan/wordpress/wp-content/uploads/2016/03/slider3.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('7', '1', '2016-03-21 21:44:59', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-21 21:44:59', '0000-00-00 00:00:00', '', '0', 'http://localhost/git/yaowan/wordpress/?p=7', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('8', '1', '2016-03-21 21:49:16', '2016-03-21 13:49:16', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\"><span style=\"font-size:14px;font-family:\'Microsoft YaHei\';color:#333333;\">成立于2015.8月</span><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'publish', 'open', 'open', '', '%e5%85%b3%e4%ba%8e%e6%88%91%e4%bb%ac', '', '', '2016-03-21 22:00:45', '2016-03-21 14:00:45', '', '0', 'http://localhost/git/yaowan/wordpress/?p=8', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('9', '1', '2016-03-21 21:46:50', '2016-03-21 13:46:50', '', 'about', 'about', 'inherit', 'open', 'closed', '', 'contact', '', '', '2016-03-21 21:47:14', '2016-03-21 13:47:14', '', '8', 'http://localhost/git/yaowan/wordpress/wp-content/uploads/2016/03/contact.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('10', '1', '2016-03-21 21:49:16', '2016-03-21 13:49:16', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\">耀玩网络科技有限公司</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		成立于2015.8月\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		坐落于美丽的国家级软件产业基地——<a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\">广州天河软件园</a>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		做一个阳光闪耀的企业！\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		不哄抬价格，诚信第一\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		严格按照市场价值规律定价\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		闪耀于手游企业！\r\n	</p>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"line-height:1.5;\"></span>\r\n	</div>\r\n</p>', '关于我们', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:49:16', '2016-03-21 13:49:16', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('11', '1', '2016-03-21 21:50:00', '2016-03-21 13:50:00', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	成立于2015.8月\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	坐落于美丽的国家级软件产业基地——<a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\">广州天河软件园</a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	做一个阳光闪耀的企业！\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	不哄抬价格，诚信第一\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	严格按照市场价值规律定价\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	闪耀于手游企业！\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:50:00', '2016-03-21 13:50:00', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('12', '1', '2016-03-21 21:50:51', '2016-03-21 13:50:51', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\">耀玩网络科技有限公司</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">成立于2015.8月</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:1.5;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">做一个阳光闪耀的企业！</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">不哄抬价格，诚信第一</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">严格按照市场价值规律定价</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span>\r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:1.5;\">闪耀于手游企业！</span>\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:50:51', '2016-03-21 13:50:51', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('13', '1', '2016-03-21 21:53:41', '2016-03-21 13:53:41', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:2;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">成立于2015.8月</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:53:41', '2016-03-21 13:53:41', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('14', '1', '2016-03-21 21:54:55', '2016-03-21 13:54:55', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:16px;font-weight:bold;line-height:2;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">成立于2015.8月<span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:54:55', '2016-03-21 13:54:55', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('15', '1', '2016-03-21 21:57:18', '2016-03-21 13:57:18', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321215559_14122.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">耀玩家族拥有一支规模宏大、高品质、高执行力的管理团队。</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">具备更专业更精益求精的培训上岗指导</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">团队成员各司其职，各尽其能，乐在沟通，乐在手游，乐在耀玩！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">总裁心语便利贴:</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">没有执行，一切都是空谈！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">客户虐我千万遍，我待客户如初恋！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">挑战无处不在，志存高远，掌握未来，突破创新，超越更高的目标！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">将来的你会感谢现在奋斗的你！</span> \r\n</p>\r\n<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\"></span> \r\n<p>\r\n	<br />\r\n</p>', 'mamager', '', 'publish', 'open', 'open', '', 'mamager', '', '', '2016-03-21 22:02:01', '2016-03-21 14:02:01', '', '0', 'http://localhost/git/yaowan/wordpress/?p=15', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('16', '1', '2016-03-21 21:57:18', '2016-03-21 13:57:18', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321215559_14122.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">耀玩家族拥有一支规模宏大、高品质、高执行力的管理团队。</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">具备更专业更精益求精的培训上岗指导</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">团队成员各司其职，各尽其能，乐在沟通，乐在手游，乐在耀玩！</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">总裁心语便利贴:</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">没有执行，一切都是空谈！</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">客户虐我千万遍，我待客户如初恋！</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">挑战无处不在，志存高远，掌握未来，突破创新，超越更高的目标！</span>\r\n	</p>\r\n	<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n		<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">将来的你会感谢现在奋斗的你！</span>\r\n	</p>\r\n<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\"></span>\r\n</p>', 'mamager', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-03-21 21:57:18', '2016-03-21 13:57:18', '', '15', 'http://localhost/git/yaowan/wordpress/2016/03/21/15-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('17', '1', '2016-03-21 21:58:17', '2016-03-21 13:58:17', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;font-weight:bold;line-height:2;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\"><span style=\"font-size:14px;\">成立于2015.8月</span><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:58:17', '2016-03-21 13:58:17', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('18', '1', '2016-03-21 21:59:29', '2016-03-21 13:59:29', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\"><span style=\"font-size:14px;font-family:\'Microsoft YaHei\';color:#333333;\">成立于2015.8月</span><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 21:59:29', '2016-03-21 13:59:29', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('19', '1', '2016-03-21 22:00:45', '2016-03-21 14:00:45', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321214850_78527.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;font-weight:bold;line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">耀玩网络科技有限公司</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';\"><span style=\"font-size:14px;font-family:\'Microsoft YaHei\';color:#333333;\">成立于2015.8月</span><span style=\"font-size:14px;\"></span></span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">坐落于美丽的国家级软件产业基地——</span><a href=\"file://H:/code/work/yaowan_html/contact.html\" target=\"_blank\"><span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">广州天河软件园</span></a> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">做一个阳光闪耀的企业！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">不哄抬价格，诚信第一</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">严格按照市场价值规律定价</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;color:#333333;\">闪耀于手游企业！</span> \r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"></span> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-03-21 22:00:45', '2016-03-21 14:00:45', '', '8', 'http://localhost/git/yaowan/wordpress/2016/03/21/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('20', '1', '2016-03-21 22:02:01', '2016-03-21 14:02:01', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321215559_14122.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">耀玩家族拥有一支规模宏大、高品质、高执行力的管理团队。</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">具备更专业更精益求精的培训上岗指导</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">团队成员各司其职，各尽其能，乐在沟通，乐在手游，乐在耀玩！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">总裁心语便利贴:</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">没有执行，一切都是空谈！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">客户虐我千万遍，我待客户如初恋！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">挑战无处不在，志存高远，掌握未来，突破创新，超越更高的目标！</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\">将来的你会感谢现在奋斗的你！</span> \r\n</p>\r\n<span style=\"line-height:2;font-family:\'Microsoft YaHei\';font-size:14px;\"></span> \r\n<p>\r\n	<br />\r\n</p>', 'mamager', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-03-21 22:02:01', '2016-03-21 14:02:01', '', '15', 'http://localhost/git/yaowan/wordpress/2016/03/21/15-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('21', '1', '2016-03-21 22:05:48', '2016-03-21 14:05:48', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321220252_34936.jpg\" alt=\"\" width=\"500\" height=\"300\" title=\"\" align=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">招聘信息：</span> \r\n</p>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位一：手游推广运营 &amp; 公会管理运营</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.拓展客户资源，推广公司平台及游戏；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.能够快速融入玩家群体，指导玩家玩游戏,沉淀玩家；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.引导游戏初期的操作刺激玩家消费；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.及时反馈和协助处理游戏异常状况；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">工作时间：早09：00至晚17:00 （单休），午休12：00---14:00</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.大专学历及以上（欢迎优秀应届毕业生），接触过手机游戏即可，公司专业培训；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.性格乐观向上、抗压能力强，善与人交际；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.有良好的职业操守以及较强的客户服务意识；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.热爱手机游戏，熟悉计算机的基本操作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">5.遵守公司制度，服从上级安排。</span> \r\n</p>\r\n<br />\r\n<div class=\"cut-line\" style=\"text-align:left;margin:0px;padding:0px;border:1px dashed #333333;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n</div>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位二：文案编辑、新媒体运营、企划专员</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.网站资讯的收集、编辑、发布等管理工作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.平时文案的撰写(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.负责手游专区的文章、图片、音乐、视频等相关内容的编辑、审核与发布</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.大专以上学历，喜欢游戏，尤其手游，具有相关工作经验者优先 欢迎优秀应届毕业生；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.文字撰写、长信息整理编辑等综合素养优秀(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.自身责任心强，富有团队合作精神，善于理解与沟通；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.敢于在文案上对内容和形式上进行创作突破。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'join', '', 'publish', 'open', 'open', '', 'join', '', '', '2016-03-21 22:07:07', '2016-03-21 14:07:07', '', '0', 'http://localhost/git/yaowan/wordpress/?p=21', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('22', '1', '2016-03-21 22:05:48', '2016-03-21 14:05:48', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321220252_34936.jpg\" alt=\"\" width=\"500\" height=\"300\" title=\"\" align=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">招聘信息：</span> \r\n</p>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">岗位一：手游推广运营 &amp; 公会管理运营</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1.拓展客户资源，推广公司平台及游戏；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2.能够快速融入玩家群体，指导玩家玩游戏,沉淀玩家；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">3.引导游戏初期的操作刺激玩家消费；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">4.及时反馈和协助处理游戏异常状况；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">工作时间：早09：00至晚17:00 （单休），午休12：00---14:00</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1.大专学历及以上（欢迎优秀应届毕业生），接触过手机游戏即可，公司专业培训；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2.性格乐观向上、抗压能力强，善与人交际；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">3.有良好的职业操守以及较强的客户服务意识；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">4.热爱手机游戏，熟悉计算机的基本操作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">5.遵守公司制度，服从上级安排。</span> \r\n</p>\r\n<br />\r\n<div class=\"cut-line\" style=\"text-align:left;margin:0px;padding:0px;border:1px dashed #333333;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n</div>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">岗位二：文案编辑、新媒体运营、企划专员</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1.网站资讯的收集、编辑、发布等管理工作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2.平时文案的撰写(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">3.负责手游专区的文章、图片、音乐、视频等相关内容的编辑、审核与发布</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1.大专以上学历，喜欢游戏，尤其手游，具有相关工作经验者优先 欢迎优秀应届毕业生；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2.文字撰写、长信息整理编辑等综合素养优秀(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">3.自身责任心强，富有团队合作精神，善于理解与沟通；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">4.敢于在文案上对内容和形式上进行创作突破。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'join', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-03-21 22:05:48', '2016-03-21 14:05:48', '', '21', 'http://localhost/git/yaowan/wordpress/2016/03/21/21-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('23', '1', '2016-03-21 22:07:07', '2016-03-21 14:07:07', '<p style=\"text-align:center;\">\r\n	<img src=\"/git/yaowan/wordpress/wp-content/uploads/2016/03/20160321220252_34936.jpg\" alt=\"\" width=\"500\" height=\"300\" title=\"\" align=\"\" /> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">招聘信息：</span> \r\n</p>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位一：手游推广运营 &amp; 公会管理运营</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.拓展客户资源，推广公司平台及游戏；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.能够快速融入玩家群体，指导玩家玩游戏,沉淀玩家；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.引导游戏初期的操作刺激玩家消费；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.及时反馈和协助处理游戏异常状况；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">工作时间：早09：00至晚17:00 （单休），午休12：00---14:00</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.大专学历及以上（欢迎优秀应届毕业生），接触过手机游戏即可，公司专业培训；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.性格乐观向上、抗压能力强，善与人交际；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.有良好的职业操守以及较强的客户服务意识；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.热爱手机游戏，熟悉计算机的基本操作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">5.遵守公司制度，服从上级安排。</span> \r\n</p>\r\n<br />\r\n<div class=\"cut-line\" style=\"text-align:left;margin:0px;padding:0px;border:1px dashed #333333;font-weight:bold;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n</div>\r\n<br />\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位二：文案编辑、新媒体运营、企划专员</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">岗位职责：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.网站资讯的收集、编辑、发布等管理工作；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.平时文案的撰写(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.负责手游专区的文章、图片、音乐、视频等相关内容的编辑、审核与发布</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">任职要求：</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">1.大专以上学历，喜欢游戏，尤其手游，具有相关工作经验者优先 欢迎优秀应届毕业生；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">2.文字撰写、长信息整理编辑等综合素养优秀(熟悉office办公软件)；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">3.自身责任心强，富有团队合作精神，善于理解与沟通；</span> \r\n</p>\r\n<p style=\"text-align:left;font-family:Simsun;font-size:16px;vertical-align:baseline;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">4.敢于在文案上对内容和形式上进行创作突破。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'join', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-03-21 22:07:07', '2016-03-21 14:07:07', '', '21', 'http://localhost/git/yaowan/wordpress/2016/03/21/21-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('24', '1', '2016-03-21 22:07:49', '2016-03-21 14:07:49', 'sdsdassssssssssssssssssssssssssssssssadwadsdasdsljdlaskjdlksadsadsadasdsd', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2016-03-21 22:07:49', '2016-03-21 14:07:49', '', '0', 'http://localhost/git/yaowan/wordpress/?p=24', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('25', '1', '2016-03-21 22:07:49', '2016-03-21 14:07:49', 'sdsdassssssssssssssssssssssssssssssssadwadsdasdsljdlaskjdlksadsadsadasdsd', 'test', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-03-21 22:07:49', '2016-03-21 14:07:49', '', '24', 'http://localhost/git/yaowan/wordpress/2016/03/21/24-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('26', '1', '2016-03-21 22:08:13', '2016-03-21 14:08:13', 'dajdljlasjdlsjdlaksjdasjdlsajdlksajdlaskcljlsjlasdasdasdasdaxasdsda', 'test2', '', 'publish', 'open', 'open', '', 'test2', '', '', '2016-03-21 22:08:13', '2016-03-21 14:08:13', '', '0', 'http://localhost/git/yaowan/wordpress/?p=26', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('27', '1', '2016-03-21 22:08:13', '2016-03-21 14:08:13', 'dajdljlasjdlsjdlaksjdasjdlsajdlksajdlaskcljlsjlasdasdasdasdaxasdsda', 'test2', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-03-21 22:08:13', '2016-03-21 14:08:13', '', '26', 'http://localhost/git/yaowan/wordpress/2016/03/21/26-revision-v1/', '0', 'revision', '', '0');

-- ----------------------------
-- Table structure for `wp_termmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
INSERT INTO `wp_terms` VALUES ('1', '未分类', 'uncategorized', '0');
INSERT INTO `wp_terms` VALUES ('2', '关于我们', '%e5%85%b3%e4%ba%8e%e6%88%91%e4%bb%ac', '0');
INSERT INTO `wp_terms` VALUES ('3', '中国合伙人', '%e4%b8%ad%e5%9b%bd%e5%90%88%e4%bc%99%e4%ba%ba', '0');
INSERT INTO `wp_terms` VALUES ('4', '加入家族', '%e5%8a%a0%e5%85%a5%e5%ae%b6%e6%97%8f', '0');

-- ----------------------------
-- Table structure for `wp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------
INSERT INTO `wp_term_relationships` VALUES ('1', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('8', '2', '0');
INSERT INTO `wp_term_relationships` VALUES ('15', '3', '0');
INSERT INTO `wp_term_relationships` VALUES ('21', '4', '0');
INSERT INTO `wp_term_relationships` VALUES ('24', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('26', '1', '0');

-- ----------------------------
-- Table structure for `wp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
INSERT INTO `wp_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '3');
INSERT INTO `wp_term_taxonomy` VALUES ('2', '2', 'category', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('3', '3', 'category', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('4', '4', 'category', '', '0', '1');

-- ----------------------------
-- Table structure for `wp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES ('1', '1', 'nickname', 'admin');
INSERT INTO `wp_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `wp_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `wp_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `wp_usermeta` VALUES ('5', '1', 'rich_editing', 'false');
INSERT INTO `wp_usermeta` VALUES ('6', '1', 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES ('7', '1', 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES ('8', '1', 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES ('9', '1', 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES ('10', '1', 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES ('11', '1', 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES ('12', '1', 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta` VALUES ('13', '1', 'default_password_nag', '');
INSERT INTO `wp_usermeta` VALUES ('14', '1', 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES ('15', '1', 'session_tokens', 'a:2:{s:64:\"469bcc79090f752c6914dad69d30c1acc78c4c30f270b499e3249953c4024b3c\";a:4:{s:10:\"expiration\";i:1459776530;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:108:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:5:\"login\";i:1458566930;}s:64:\"5fbf3cd0646fa3f27f6f3cb8ca5a0b158e6b0ba11357188ddb5997fdd009f1f3\";a:4:{s:10:\"expiration\";i:1459776635;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:108:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:5:\"login\";i:1458567035;}}');
INSERT INTO `wp_usermeta` VALUES ('16', '1', 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES ('17', '1', 'wp_user-settings', 'libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES ('18', '1', 'wp_user-settings-time', '1458568152');

-- ----------------------------
-- Table structure for `wp_users`
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES ('1', 'admin', '$P$BHGS6d1kRf9lePEYQvGOQI5jMbjCFw.', 'admin', '735016387@qq.com', '', '2016-03-21 13:28:24', '', '0', 'admin');
