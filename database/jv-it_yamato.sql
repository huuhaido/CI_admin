/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : jv-it_yamato

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-12 09:21:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_nqt_groups`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_groups`;
CREATE TABLE `admin_nqt_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_groups
-- ----------------------------
INSERT INTO `admin_nqt_groups` VALUES ('1', 'Root', '0|rwd,2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '1', '2012-08-28 14:51:26');
INSERT INTO `admin_nqt_groups` VALUES ('2', 'Admin', '0|rwd,2|---,1|---,4|---,3|---,20|rwd,8|rwd,15|rwd,5|rwd', '1', '2015-05-12 16:54:15');

-- ----------------------------
-- Table structure for `admin_nqt_logs`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_logs`;
CREATE TABLE `admin_nqt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(50) NOT NULL,
  `function_id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `old_value` text NOT NULL,
  `new_value` text NOT NULL,
  `account` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_logs
-- ----------------------------
INSERT INTO `admin_nqt_logs` VALUES ('553', 'branch', '20', 'Add new', 'Add new', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:50:24');
INSERT INTO `admin_nqt_logs` VALUES ('554', 'branch', '21', 'Add new', 'Add new', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:02');
INSERT INTO `admin_nqt_logs` VALUES ('555', 'branch', '21', 'status', 'update', '1', '0', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:57');
INSERT INTO `admin_nqt_logs` VALUES ('556', 'branch', '20', 'status', 'update', '1', '0', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:58');
INSERT INTO `admin_nqt_logs` VALUES ('557', 'branch', '21', 'status', 'update', '0', '1', 'dongshopsun', '115.78.131.225', '2015-05-20 08:52:04');
INSERT INTO `admin_nqt_logs` VALUES ('558', 'branch', '20', 'status', 'update', '0', '1', 'dongshopsun', '115.78.131.225', '2015-05-20 08:52:39');
INSERT INTO `admin_nqt_logs` VALUES ('559', 'branch', '21', 'Delete', 'Delete', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:53:31');
INSERT INTO `admin_nqt_logs` VALUES ('560', 'branch', '20', 'Delete', 'Delete', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:53:31');
INSERT INTO `admin_nqt_logs` VALUES ('561', 'news', '11', 'status', 'update', '0', '1', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:29');
INSERT INTO `admin_nqt_logs` VALUES ('562', 'news', '11', 'status', 'update', '1', '0', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:30');
INSERT INTO `admin_nqt_logs` VALUES ('563', 'news', '11', 'status', 'update', '0', '1', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:30');
INSERT INTO `admin_nqt_logs` VALUES ('564', 'news', '11', 'status', 'update', '1', '0', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:31');
INSERT INTO `admin_nqt_logs` VALUES ('565', 'static_pages', '4', 'content', 'Update', 'Nội dung help', '<p><span style=\"font-size: 36pt;\">I. BUTTON USAGE</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/button.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><span style=\"font-size: 36pt;\">II. General page\'s explanation</span></p>\r\n<p>&nbsp;<img src=\"../../../assets/uploads/editor/Page.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: -webkit-xxx-large;\">III. Creat content page\'s explanation</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/Content.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><img src=\"../../../assets/uploads/editor/Hoi dap.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>', 'dongshopsun', '14.161.5.37', '2015-05-20 13:46:45');
INSERT INTO `admin_nqt_logs` VALUES ('566', 'static_pages', '4', 'created', 'Update', '2015-05-19 17:16:07', '2015-05-20 13:46:45', 'dongshopsun', '14.161.5.37', '2015-05-20 13:46:45');
INSERT INTO `admin_nqt_logs` VALUES ('567', 'static_pages', '2', 'slug', 'Update', 'gioi-thieu-ve-dong-shop-sun', 'gioi-thieu-ve-yamato', 'dongshopsun', '::1', '2015-06-12 09:14:03');
INSERT INTO `admin_nqt_logs` VALUES ('568', 'static_pages', '2', 'created', 'Update', '2015-05-19 16:01:02', '2015-06-12 09:14:03', 'dongshopsun', '::1', '2015-06-12 09:14:03');

-- ----------------------------
-- Table structure for `admin_nqt_modules`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_modules`;
CREATE TABLE `admin_nqt_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_function` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_modules
-- ----------------------------
INSERT INTO `admin_nqt_modules` VALUES ('1', 'Manager Account Group', 'admincp_account_groups', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('2', 'Manager Account', 'admincp_accounts', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('3', 'Manager Module', 'admincp_modules', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('4', 'Manager Logs', 'admincp_logs', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('5', 'Quản lý nội dung', 'static_pages', '1', '2014-07-02 11:24:13');
INSERT INTO `admin_nqt_modules` VALUES ('6', 'Quản lý hỏi đáp', 'faqs', '1', '2015-05-12 15:09:03');
INSERT INTO `admin_nqt_modules` VALUES ('7', 'Quản lý liên hệ & bản đồ', 'branch', '1', '2015-05-12 15:51:44');
INSERT INTO `admin_nqt_modules` VALUES ('8', 'Quản lý bài viết', 'news', '1', '2015-05-12 16:49:29');

-- ----------------------------
-- Table structure for `admin_nqt_settings`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_settings`;
CREATE TABLE `admin_nqt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_settings
-- ----------------------------
INSERT INTO `admin_nqt_settings` VALUES ('1', 'title-admincp', 'aAdmin Control Panel', '2015-05-18 13:28:02');

-- ----------------------------
-- Table structure for `admin_nqt_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_users`;
CREATE TABLE `admin_nqt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `custom_permission` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_users
-- ----------------------------
INSERT INTO `admin_nqt_users` VALUES ('1', 'root', '53fab80925e21d959402658124f71c36', '1', '2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '0', '1', '2012-08-28 14:52:42');
INSERT INTO `admin_nqt_users` VALUES ('2', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '0', '1', '2012-08-28 14:52:59');
INSERT INTO `admin_nqt_users` VALUES ('3', 'dongshopsun', 'e10adc3949ba59abbe56e057f20f883e', '2', '2|---,1|---,4|---,3|---,8|rwd,6|rwd,7|rwd,5|rwd', '1', '1', '2015-05-12 16:54:39');

-- ----------------------------
-- Table structure for `jv-it_branch`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_branch`;
CREATE TABLE `jv-it_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_branch
-- ----------------------------

-- ----------------------------
-- Table structure for `jv-it_faqs`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_faqs`;
CREATE TABLE `jv-it_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_faqs
-- ----------------------------

-- ----------------------------
-- Table structure for `jv-it_news`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_news`;
CREATE TABLE `jv-it_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_news
-- ----------------------------

-- ----------------------------
-- Table structure for `jv-it_static_pages`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_static_pages`;
CREATE TABLE `jv-it_static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_static_pages
-- ----------------------------
