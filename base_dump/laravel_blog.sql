/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : laravel_blog

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-27 19:28:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'dignissimos', 'dignissimos', 'Nesciunt necessitatibus placeat quae quo.', '1', '2018-03-22 18:56:34', '2018-03-22 18:56:34');
INSERT INTO `categories` VALUES ('2', 'reiciendis', 'reiciendis', 'Praesentium facere quia earum fugit.', '1', '2018-03-22 18:56:34', '2018-03-22 18:56:34');
INSERT INTO `categories` VALUES ('3', 'delectus', 'delectus', 'Aut qui error neque qui ipsum ut dolores quam.', '1', '2018-03-22 18:56:34', '2018-03-22 18:56:34');
INSERT INTO `categories` VALUES ('4', 'veniam', 'veniam', 'Ratione nemo veritatis et.', '1', '2018-03-22 18:56:34', '2018-03-22 18:56:34');
INSERT INTO `categories` VALUES ('5', 'quos', 'quos', 'Reprehenderit velit soluta animi provident.', '1', '2018-03-22 18:56:34', '2018-03-22 18:56:34');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '4', '<p>xfgsdfgaeg</p>', '2018-03-23 01:06:57', '2018-03-23 01:08:50', '1');
INSERT INTO `comments` VALUES ('2', '2', '4', 'xfgsdfgaeg', '2018-03-23 01:07:05', '2018-03-23 02:42:43', '1');
INSERT INTO `comments` VALUES ('3', '3', '4', 'sdrtjh trh trh ws ht', '2018-03-23 01:07:51', '2018-03-23 01:07:51', null);
INSERT INTO `comments` VALUES ('4', '4', '2', '<p>sdfsdfsdfdgdfs</p>', '2018-03-23 01:13:31', '2018-03-23 02:42:34', '1');
INSERT INTO `comments` VALUES ('5', '2', '4', 'xgadsgsdga', '2018-03-23 01:14:46', '2018-03-23 02:42:38', '1');
INSERT INTO `comments` VALUES ('6', '1', '4', 'sgdfgdfg', '2018-03-23 01:57:26', '2018-03-23 02:59:10', '1');
INSERT INTO `comments` VALUES ('7', '1', '4', 'sgdfgdfg', '2018-03-23 02:04:48', '2018-03-23 02:42:48', '0');
INSERT INTO `comments` VALUES ('8', '1', '4', 'afg sd', '2018-03-23 02:23:57', '2018-03-23 02:23:57', null);
INSERT INTO `comments` VALUES ('9', '1', '4', 'afg sd', '2018-03-23 02:23:57', '2018-03-23 02:23:57', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('65', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('66', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('67', '2018_03_14_070236_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('68', '2018_03_14_071634_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('69', '2018_03_14_071655_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('71', '2018_03_14_074855_create_post_tags_table', '1');
INSERT INTO `migrations` VALUES ('72', '2018_03_19_135428_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('74', '2018_03_23_011704_add_status_to_comments', '2');
INSERT INTO `migrations` VALUES ('75', '2018_03_14_071723_create_pages_table', '3');
INSERT INTO `migrations` VALUES ('80', '2018_03_23_065440_create_send_mails_table', '4');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('4', 'About', 'about', '<section class=\"s-content s-content--narrow\">\r\n\r\n        <div class=\"row\">\r\n\r\n            <div class=\"s-content__header col-full\">\r\n                <h1 class=\"s-content__header-title\">\r\n                    Learn More About Us.\r\n                </h1>\r\n            </div> <!-- end s-content__header -->\r\n\r\n            <div class=\"s-content__media col-full\">\r\n                <div class=\"s-content__post-thumb\">\r\n                    <img src=\"images/thumbs/about/about-1000.jpg\" srcset=\"images/thumbs/about/about-2000.jpg 2000w, \r\n                                 images/thumbs/about/about-1000.jpg 1000w, \r\n                                 images/thumbs/about/about-500.jpg 500w\" sizes=\"(max-width: 2000px) 100vw, 2000px\" alt=\"\">\r\n                </div>\r\n            </div> <!-- end s-content__media -->\r\n\r\n            <div class=\"col-full s-content__main\">\r\n\r\n                <p class=\"lead\">Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint.</p>\r\n                \r\n                <p>Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint ut quis proident ullamco ut dolore culpa occaecat ut laboris in sit minim cupidatat ut dolor voluptate enim veniam consequat occaecat fugiat in adipisicing in amet Ut nulla nisi non ut enim aliqua laborum mollit quis nostrud sed sed.\r\n                </p>\r\n\r\n                <p>Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco.\r\n                </p>\r\n\r\n                <div class=\"row block-1-2 block-tab-full\">\r\n                    <div class=\"col-block\">\r\n                        <h3 class=\"quarter-top-margin\">Who We Are.</h3>\r\n                        <p>Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p>\r\n                    </div>\r\n\r\n                    <div class=\"col-block\">\r\n                        <h3 class=\"quarter-top-margin\">Our Mission.</h3>\r\n                        <p>Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p>\r\n                    </div>\r\n\r\n                    <div class=\"col-block\">\r\n                        <h3 class=\"quarter-top-margin\">Our Vision.</h3>\r\n                        <p>Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p>\r\n                    </div>\r\n\r\n                    <div class=\"col-block\">\r\n                        <h3 class=\"quarter-top-margin\">Our Values.</h3>\r\n                        <p>Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p>\r\n                    </div>\r\n\r\n                </div>\r\n\r\n\r\n            </div> <!-- end s-content__main -->\r\n\r\n        </div> <!-- end row -->\r\n\r\n    </section>', '1', '2018-03-23 03:40:55', '2018-03-23 04:25:22');
INSERT INTO `pages` VALUES ('5', 'Contacts', 'contacts', '<div class=\"s-content__header col-full\">\r\n                <h1 class=\"s-content__header-title\">\r\n                    Feel Free To Contact Us.\r\n                </h1>\r\n            </div> <!-- end s-content__header -->\r\n    \r\n            <div class=\"s-content__media col-full\">\r\n                <div id=\"map-wrap\">\r\n                    <div id=\"map-container\" style=\"position: relative; overflow: hidden;\"><div style=\"height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);\"><div class=\"gm-style\" style=\"position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;\"><div tabindex=\"0\" style=\"position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;\"><div style=\"z-index: 1; position: absolute; left: 50%; top: 50%; transform: translate(0px, 0px);\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -191, -1);\"><div style=\"width: 256px; height: 256px; position: absolute; left: 0px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: -256px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: -256px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: 0px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: 256px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: 256px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: -512px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: -512px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: 512px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; position: absolute; left: 512px; top: 0px;\"></div></div></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: -1;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -191, -1);\"><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: -256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 0px;\"></div></div></div><div style=\"width: 64px; height: 64px; overflow: hidden; position: absolute; left: -32px; top: -64px; z-index: 0;\"><img alt=\"\" src=\"images/icon-location@2x.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; user-select: none; width: 64px; height: 64px; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -191, -1);\"><div style=\"position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2636!3i6352!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=100400\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 512px; top: -256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2637!3i6352!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=68116\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2635!3i6352!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=1613\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 512px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2637!3i6353!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=114202\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2634!3i6352!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=33897\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2635!3i6353!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=47699\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2634!3i6353!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=79983\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -512px; top: -256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2633!3i6352!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=66181\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2636!3i6353!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=15415\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -512px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i14!2i2633!3i6353!4i256!2m3!1e0!2sm!3i415114932!3m14!2sru-RU!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcy5lOmx8cC5zOi0zMCxzLnQ6MnxzLmU6bHxwLnY6b2ZmLHMudDo0OXxzLmU6bHxwLnY6b2ZmLHMudDo1MXxzLmU6bC5pfHAudjpvZmYscy50OjUwfHMuZTpsLml8cC52Om9mZixzLnQ6M3xzLmU6Zy5zfHAudjpvZmYscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6MnxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDozNHxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjM3fHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjMzfHMuZTpnLmZ8cC5oOiMwMDU0YTV8cC52Om9ufHAubDo1fHAuczotMzAscy50OjR8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NjZ8cy5lOmcuZnxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6NXxwLmg6IzAwNTRhNXxwLnY6b258cC5sOjV8cC5zOi0zMCxzLnQ6M3xzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo0OXxzLmU6Zy5mfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMwLHMudDo2fHMuZTpnfHAuaDojMDA1NGE1fHAudjpvbnxwLmw6NXxwLnM6LTMw!4e0!23i1301875&amp;token=112267\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div></div></div><div class=\"gm-style-pbc\" style=\"z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;\"><p class=\"gm-style-pbt\"></p></div><div style=\"z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;\"><div style=\"z-index: 1; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;\"></div><div style=\"z-index: 4; position: absolute; left: 50%; top: 50%; transform: translate(0px, 0px);\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;\"><div class=\"gmnoprint\" title=\"\" style=\"width: 64px; height: 64px; overflow: hidden; position: absolute; opacity: 0.01; cursor: pointer; touch-action: none; left: -32px; top: -64px; z-index: 0;\"><img alt=\"\" src=\"images/icon-location@2x.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; user-select: none; width: 64px; height: 64px; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;\"></div></div></div></div><iframe frameborder=\"0\" src=\"about:blank\" style=\"z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;\"></iframe><div style=\"margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;\"><a target=\"_blank\" href=\"https://maps.google.com/maps?ll=37.422424,-122.085661&amp;z=14&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3\" title=\"Нажмите, чтобы отобразить эту область в Картах Google\" style=\"position: static; overflow: visible; float: none; display: inline;\"><div style=\"width: 66px; height: 26px; cursor: pointer;\"><img alt=\"\" src=\"https://maps.gstatic.com/mapfiles/api-3/images/google_white5.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;\"></div></a></div><div style=\"background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 300px; top: 120px;\"><div style=\"padding: 0px 0px 10px; font-size: 16px;\">Картографические данные</div><div style=\"font-size: 13px;\">Картографические данные © 2018 Google</div><div style=\"width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;\"><img alt=\"\" src=\"https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png\" draggable=\"false\" style=\"position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div><div class=\"gmnoprint\" style=\"z-index: 1000001; position: absolute; right: 280px; bottom: 0px; width: 209px;\"><div draggable=\"false\" class=\"gm-style-cc\" style=\"user-select: none; height: 14px; line-height: 14px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a style=\"text-decoration: none; cursor: pointer; display: none;\">Картографические данные</a><span>Картографические данные © 2018 Google</span></div></div></div><div class=\"gmnoscreen\" style=\"position: absolute; right: 0px; bottom: 0px;\"><div style=\"font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);\">Картографические данные © 2018 Google</div></div><div class=\"gmnoprint gm-style-cc\" draggable=\"false\" style=\"z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 154px; bottom: 0px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a href=\"https://www.google.com/intl/ru-RU_US/help/terms_maps.html\" target=\"_blank\" style=\"text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);\">Условия использования</a></div></div><button draggable=\"false\" title=\"Включить полноэкранный режим\" aria-label=\"Включить полноэкранный режим\" type=\"button\" style=\"background: none; border: 0px; margin: 10px 14px; padding: 0px; position: absolute; cursor: pointer; user-select: none; width: 25px; height: 25px; overflow: hidden; top: 96px; right: 0px;\"><img alt=\"\" src=\"https://maps.gstatic.com/mapfiles/api-3/images/sv9.png\" draggable=\"false\" class=\"gm-fullscreen-control\" style=\"position: absolute; left: -52px; top: -86px; width: 164px; height: 175px; user-select: none; border: 0px; padding: 0px; margin: 0px;\"></button><div style=\"z-index: 0; position: absolute; right: 0px; top: 0px;\"><div id=\"map-zoom-in\" style=\"display: block;\"></div><div id=\"map-zoom-out\" style=\"display: block;\"></div></div><div draggable=\"false\" class=\"gm-style-cc\" style=\"user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a target=\"_blank\" rel=\"noopener\" title=\"Сообщить об ошибке на карте или снимке\" href=\"https://www.google.com/maps/@37.422424,-122.085661,14z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3\" style=\"font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;\">Сообщить об ошибке на карте</a></div></div><div class=\"gmnoprint gm-bundled-control gm-bundled-control-on-bottom\" draggable=\"false\" controlwidth=\"0\" controlheight=\"0\" style=\"margin: 10px; user-select: none; position: absolute; display: none; bottom: 14px; right: 0px;\"><div class=\"gmnoprint\" controlwidth=\"28\" controlheight=\"0\" style=\"display: none; position: absolute;\"><div title=\"Повернуть карту на 90&nbsp;градусов\" style=\"width: 28px; height: 28px; overflow: hidden; position: absolute; background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; display: none;\"><img alt=\"\" src=\"https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png\" draggable=\"false\" style=\"position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div class=\"gm-tilt\" style=\"width: 28px; height: 28px; overflow: hidden; position: absolute; background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; top: 0px; cursor: pointer;\"><img alt=\"\" src=\"https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png\" draggable=\"false\" style=\"position: absolute; left: -141px; top: -13px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div></div></div></div></div>\r\n                    \r\n                    \r\n                </div> \r\n            </div> <!-- end s-content__media -->\r\n\r\n            <div class=\"col-full s-content__main\">\r\n\r\n                <p class=\"lead\">Lorem ipsum Deserunt est dolore Ut Excepteur nulla occaecat magna occaecat Excepteur nisi esse veniam dolor consectetur minim qui nisi esse deserunt commodo ea enim ullamco non voluptate consectetur minim aliquip Ut incididunt amet ut cupidatat.</p>\r\n                \r\n                <p>Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint ut quis proident ullamco ut dolore culpa occaecat ut laboris in sit minim cupidatat ut dolor voluptate enim veniam consequat occaecat fugiat in adipisicing in amet Ut nulla nisi non ut enim aliqua laborum mollit quis nostrud sed sed.\r\n                </p>\r\n\r\n                <div class=\"row\">\r\n                    <div class=\"col-six tab-full\">\r\n                        <h3>Where to Find Us</h3>\r\n\r\n                        <p>\r\n                        1600 Amphitheatre Parkway<br>\r\n                        Mountain View, CA<br>\r\n                        94043 US\r\n                        </p>\r\n\r\n                    </div>\r\n\r\n                    <div class=\"col-six tab-full\">\r\n                        <h3>Contact Info</h3>\r\n\r\n                        <p>contact@philosophywebsite.com<br>\r\n                        info@philosophywebsite.com <br>\r\n                        Phone: (+1) 123 456\r\n                        </p>\r\n\r\n                    </div>\r\n                </div> <!-- end row -->\r\n\r\n                <h3>Say Hello.</h3>\r\n\r\n            </div> <!-- end s-content__main -->', '1', '2018-03-23 03:43:13', '2018-03-23 04:32:21');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Consequuntur dolorem officiis omnis dolor et ratione.', 'consequuntur-dolorem-officiis-omnis-dolor-et-ratione', '<p>Id officia autem consequatur et aut minus quia.</p>', '<p>Enim accusantium voluptate aliquam.</p>', 'no-image.png', '1', '1', '1', '2375', '2018-03-22 18:56:55', '2018-03-22 18:59:42');
INSERT INTO `posts` VALUES ('2', 'Recusandae aut molestias qui animi facere.', 'recusandae-aut-molestias-qui-animi-facere', '<p>Reiciendis suscipit tenetur quisquam dolor labore expedita ad.</p>', '<p>Ipsa aut voluptatibus cum quidem voluptatem sint consequatur.</p>', 'no-image.png', '2', '1', '1', '1440', '2018-03-22 18:56:55', '2018-03-22 19:27:44');
INSERT INTO `posts` VALUES ('3', 'Quia vel sint provident est nemo.', 'quia-vel-sint-provident-est-nemo', '<p>Laborum distinctio alias inventore sint pariatur.</p>', '<p>Omnis ut voluptatem eos earum molestiae libero neque.</p>', 'no-image.png', '5', '1', '1', '1452', '2018-03-22 18:56:55', '2018-03-22 19:28:00');
INSERT INTO `posts` VALUES ('4', 'Sed aliquam ut porro eos recusandae voluptas.', 'sed-aliquam-ut-porro-eos-recusandae-voluptas', '<p>Est suscipit ipsum voluptates amet minus nulla animi et.</p>', '<p>Delectus quod minima voluptas dolor incidunt quisquam.</p>', 'no-image.png', '1', '1', '1', '1991', '2018-03-22 18:56:55', '2018-03-22 19:16:30');
INSERT INTO `posts` VALUES ('5', 'Enim neque ea culpa eum non fugiat.', 'enim-neque-ea-culpa-eum-non-fugiat', '<p>Eveniet aliquam culpa assumenda minus officia quisquam.</p>', '<p>Commodi maiores quos sed consequatur.</p>', 'no-image.png', '1', '1', '1', '2136', '2018-03-22 18:56:55', '2018-03-22 19:16:47');

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
INSERT INTO `post_tags` VALUES ('1', '2', '1', null, null);
INSERT INTO `post_tags` VALUES ('2', '4', '1', null, null);
INSERT INTO `post_tags` VALUES ('3', '2', '2', null, null);
INSERT INTO `post_tags` VALUES ('4', '5', '2', null, null);
INSERT INTO `post_tags` VALUES ('5', '1', '4', null, null);
INSERT INTO `post_tags` VALUES ('6', '3', '4', null, null);
INSERT INTO `post_tags` VALUES ('7', '1', '5', null, null);
INSERT INTO `post_tags` VALUES ('8', '3', '5', null, null);
INSERT INTO `post_tags` VALUES ('9', '5', '5', null, null);
INSERT INTO `post_tags` VALUES ('10', '1', '3', null, null);
INSERT INTO `post_tags` VALUES ('11', '3', '3', null, null);
INSERT INTO `post_tags` VALUES ('12', '5', '3', null, null);

-- ----------------------------
-- Table structure for send_mails
-- ----------------------------
DROP TABLE IF EXISTS `send_mails`;
CREATE TABLE `send_mails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of send_mails
-- ----------------------------
INSERT INTO `send_mails` VALUES ('1', 'dfghdfg', 'fdsgdsf@dshgd.sdg', 'rsgerygesrgy', null, '2018-03-23 06:57:31', '2018-03-23 06:57:31');
INSERT INTO `send_mails` VALUES ('2', 'dfghdfg', 'fdsgdsf@dshgd.sdg', 'rsgerygesrgy', 'DYp7i2s94qsZ5Hc714VLzbxYxmrnG2AyvnzYUP6t10qFFnfz6SL85oAUbRgJqquqT0CmV7s53Pjwmr6tsx0Mnk05lKc3Xsfv2eU9', '2018-03-23 06:57:54', '2018-03-23 06:57:54');
INSERT INTO `send_mails` VALUES ('3', 'dfghdfg', 'fdsgdsf@dshgd.sdg', 'rsgerygesrgy', '2VsnNDGUmlenrCbxZUUHK3tohrgGGCr1OF8mEURae2GK67GdIZZ5UeAxPAj21z8UAW1HdSZR6asX6yqHfxtikCIbBrw8x4eo4wpK', '2018-03-23 06:58:31', '2018-03-23 06:58:31');
INSERT INTO `send_mails` VALUES ('4', 'dfghdfg', 'fdsgdsf@dshgd.sdg', 'rsgerygesrgy', 'DJHRLFAetQE37oi1br61nTOtNO2GDf71NvP1G2hgPGwtEUkb77nWNPG07dNqdjqKfuQ43J6RZrgS6ngwPMYRl8A6Acl3hYinaRrB', '2018-03-23 07:00:36', '2018-03-23 07:00:36');
INSERT INTO `send_mails` VALUES ('5', 'повапр ерык', 'dfsgd@cfhdf.sdrerh', 'rsbreb regerg', 'BGZEQbTvwuSaoesZqO1Flw6LlcnWPJ015HSp9VyqyYdlCIuAWX7exUlzRo9jTZY4WP9c2uQFkeYKBIjmoxNMOgoMG0kpQrAeXixv', '2018-03-23 07:02:00', '2018-03-23 07:02:00');
INSERT INTO `send_mails` VALUES ('6', 'повапр ерык', 'dfsgd@cfhdf.sdrerh', 'rsbreb regerg', 'HWMvKE17QhdlAjiG17M8FOsHbxlSt9ZlhTWCopvDoAeCvgcv7BV1g7qh4FNgP8ux2XUAeJrBF9TzOctjoq09Zc9Y8QH5Kkk6ZqD8', '2018-03-23 07:04:22', '2018-03-23 07:04:22');
INSERT INTO `send_mails` VALUES ('7', 'повапр ерык', 'dfsgd@cfhdf.sdrerh', 'rsbreb regerg', '9znOmugcLVO8sQQqxgcYAVQzBruRWF33QkWM3AiuEN6f22x4FCcBhYL7fa1G3xnLcQyV3GKFflaMXNxr1KAxuUHPfUaqiT0WCyvA', '2018-03-23 07:04:42', '2018-03-23 07:04:42');
INSERT INTO `send_mails` VALUES ('8', 'повапр ерык', 'dfsgd@cfhdf.sdrerh', 'rsbreb regerg', 'RP7g9LEoR0H0khZeTBh5xuWnv46eVUGlMvMv357MbtePLio6KSJXTlW7SSHYzblygXwElFI81xLwPBvZBPoMdxIsuCLluYIyZQJ3', '2018-03-23 07:06:02', '2018-03-23 07:06:02');
INSERT INTO `send_mails` VALUES ('9', 'повапр ерык', 'dfsgd@cfhdf.sdrerh', 'rsbreb regerg', 'pxHN4dAp3kzyRGHPnuOkgGnd8iVklciQDW8tQPJu7NPNMh7ULPmspHj62xZJV5gGsaizfU2nUWtpz4YJZiRV2VkoX7kiVLMlACdh', '2018-03-23 07:07:12', '2018-03-23 07:07:12');
INSERT INTO `send_mails` VALUES ('10', 'Alexey Tur', 'turalex67@gmail.com', 'fgsf Hello finaly I got it', 'ZJVqO3v49jeCa6rAjVU6s3PbBrx8qNbQqpmNUzsTRMeaIjdeF18ZVftNbqdMGD3ragQMl66wyZWNx7naHwi6xMwY18ce7gdBl8i7', '2018-03-23 07:09:38', '2018-03-23 07:09:38');
INSERT INTO `send_mails` VALUES ('11', 'Alexey Tur', 'turalex67@gmail.com', 'fgsf Hello finaly I got it', 'Iur1NafpNsGKeME5LfPOxPnENN7seKJzJX9JPDXOqcrgH7uQF4AAMyUr5WWiUZsE9MXbmKrzUhbqFmjwuHAMV2SnXqLUCV0JRgTV', '2018-03-23 07:09:38', '2018-03-23 07:09:38');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'impedit', 'impedit', '0', '2018-03-22 18:56:42', '2018-03-22 18:56:42');
INSERT INTO `tags` VALUES ('2', 'perspiciatis', 'perspiciatis', '0', '2018-03-22 18:56:42', '2018-03-22 18:56:42');
INSERT INTO `tags` VALUES ('3', 'quia', 'quia', '0', '2018-03-22 18:56:42', '2018-03-22 18:56:42');
INSERT INTO `tags` VALUES ('4', 'mollitia', 'mollitia', '0', '2018-03-22 18:56:42', '2018-03-22 18:56:42');
INSERT INTO `tags` VALUES ('5', 'consequatur', 'consequatur', '0', '2018-03-22 18:56:42', '2018-03-22 18:56:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Vasya', 'sgasdgf@xfgsd.dfh', '$2y$10$MoOI/raT48qSeioCYE/USOnCTFGtDBXFgDD6qWnQ4QBZZNeDiV5LC', '0', 'ZQExzIv63n.jpeg', null, '2018-03-22 21:53:52', '2018-03-22 23:50:46');
INSERT INTO `users` VALUES ('2', 'dsfgdsfg', 'sgasdgf@xfgsd.dfdfdh', '$2y$10$Y.yXS2MzkGT1REQIitmbi.D4JydcGvSwzTBNCHsJP9YRJq8tNIT92', '0', null, null, '2018-03-22 21:54:44', '2018-03-22 21:54:44');
INSERT INTO `users` VALUES ('3', 'gsdfg', 'sadf@sda.yt', '$2y$10$dSUT3DlEiBFkEoaP1lsGi.SQblU8gaktM3p9zfnYvBjpFBGefrtx2', '0', null, null, '2018-03-22 21:56:31', '2018-03-22 21:56:31');
INSERT INTO `users` VALUES ('4', 'alex2', '111@qwe.rty', '$2y$10$srp4H8YP42jwNP4.gUm2/e8aduYbguHZrlogLyZOGBYytYSXpTgs6', '1', '7BQbgo0R9G.jpeg', '3Z6gniINSfR6pvZXawXbs6DQl00aPknNAeaHEaL44MVKKVHkBH6nHXbA0NCi', '2018-03-22 21:57:25', '2018-03-22 23:45:21');
INSERT INTO `users` VALUES ('5', 'Alex', '1234@qw.er', '$2y$10$WlOPkIk2lyUC/t4cuSD55Ohx6AMMGq0RGOrLZ/2LDE7.BI0Vy9EaC', '0', null, null, '2018-03-27 16:00:57', '2018-03-27 16:00:57');
