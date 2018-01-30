/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : yii2_admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-01-30 14:29:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for y_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `y_auth_assignment`;
CREATE TABLE `y_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `index_user_id` (`user_id`),
  CONSTRAINT `fk_auth_assignment_1` FOREIGN KEY (`item_name`) REFERENCES `y_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_auth_assignment
-- ----------------------------
INSERT INTO `y_auth_assignment` VALUES ('用户管理', '2', '1516938495');
INSERT INTO `y_auth_assignment` VALUES ('超级管理员', '1', '1516935357');

-- ----------------------------
-- Table structure for y_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `y_auth_item`;
CREATE TABLE `y_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_auth_item_1` (`rule_name`),
  KEY `index_type` (`type`),
  CONSTRAINT `fk_auth_item_1` FOREIGN KEY (`rule_name`) REFERENCES `y_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_auth_item
-- ----------------------------
INSERT INTO `y_auth_item` VALUES ('/*', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/admin/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1516929256', '1516929256');
INSERT INTO `y_auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/debug/*', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/*', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/gridview/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/gridview/export/*', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/gridview/export/download', '2', null, null, null, '1516929257', '1516929257');
INSERT INTO `y_auth_item` VALUES ('/site/*', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/site/captcha', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/site/error', '2', null, null, null, '1516935146', '1516935146');
INSERT INTO `y_auth_item` VALUES ('/site/index', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/site/login', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/site/logout', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/*', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/create', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/delete', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/index', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/update', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('/user/view', '2', null, null, null, '1516935147', '1516935147');
INSERT INTO `y_auth_item` VALUES ('用户管理', '2', null, null, null, '1516938422', '1516938422');
INSERT INTO `y_auth_item` VALUES ('超级管理员', '2', null, null, null, '1516935318', '1516935318');

-- ----------------------------
-- Table structure for y_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `y_auth_item_child`;
CREATE TABLE `y_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_auth_item_child_2` (`child`),
  CONSTRAINT `fk_auth_item_child_1` FOREIGN KEY (`parent`) REFERENCES `y_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_child_2` FOREIGN KEY (`child`) REFERENCES `y_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_auth_item_child
-- ----------------------------
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/assignment/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/assignment/assign');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/assignment/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/assignment/revoke');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/assignment/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/default/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/default/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/update');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/menu/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/assign');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/remove');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/update');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/permission/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/assign');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/remove');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/update');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/role/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/assign');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/refresh');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/route/remove');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/update');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/rule/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/activate');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/change-password');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/login');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/logout');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/request-password-reset');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/reset-password');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/signup');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/admin/user/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/db-explain');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/download-mail');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/toolbar');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/default/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/user/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/user/reset-identity');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/debug/user/set-identity');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/action');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/diff');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/preview');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gii/default/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gridview/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gridview/export/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/gridview/export/download');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/captcha');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/error');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/login');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/site/logout');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/*');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/*');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/create');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/create');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/delete');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/delete');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/index');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/index');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/update');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/update');
INSERT INTO `y_auth_item_child` VALUES ('用户管理', '/user/view');
INSERT INTO `y_auth_item_child` VALUES ('超级管理员', '/user/view');

-- ----------------------------
-- Table structure for y_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `y_auth_rule`;
CREATE TABLE `y_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for y_menu
-- ----------------------------
DROP TABLE IF EXISTS `y_menu`;
CREATE TABLE `y_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_parent` (`parent`),
  CONSTRAINT `fk_menu` FOREIGN KEY (`parent`) REFERENCES `y_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_menu
-- ----------------------------
INSERT INTO `y_menu` VALUES ('1', '系统设置', null, null, '100', '{\"icon\":\"wrench\"}');
INSERT INTO `y_menu` VALUES ('2', '菜单列表', '1', '/admin/menu/index', '1', '{\"icon\":\"bars\"}');
INSERT INTO `y_menu` VALUES ('3', '路由列表', '1', '/admin/route/index', '2', '{\"icon\":\"internet-explorer\"}');
INSERT INTO `y_menu` VALUES ('4', '权限列表', '1', '/admin/permission/index', '3', '{\"icon\":\"lock\"}');
INSERT INTO `y_menu` VALUES ('5', '分配权限', '1', '/admin/assignment/index', '4', '{\"icon\":\"unlock\"}');
INSERT INTO `y_menu` VALUES ('6', '角色列表', '1', '/admin/role/index', '5', '{\"icon\":\"users\"}');
INSERT INTO `y_menu` VALUES ('7', '规则列表', '1', '/admin/rule/index', '6', '{\"icon\":\"list\"}');
INSERT INTO `y_menu` VALUES ('8', '用户管理', null, '/user/index', '1', '{\"icon\":\"users\"}');

-- ----------------------------
-- Table structure for y_migration
-- ----------------------------
DROP TABLE IF EXISTS `y_migration`;
CREATE TABLE `y_migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of y_migration
-- ----------------------------
INSERT INTO `y_migration` VALUES ('m000000_000000_base', '1516871730');
INSERT INTO `y_migration` VALUES ('m180125_070402_create_user_table', '1516873189');
INSERT INTO `y_migration` VALUES ('m180125_071130_create_menu_table', '1516873189');
INSERT INTO `y_migration` VALUES ('m180125_075352_create_auth_rule_table', '1516873189');
INSERT INTO `y_migration` VALUES ('m180125_080426_create_auth_item_table', '1516873190');
INSERT INTO `y_migration` VALUES ('m180125_082032_create_auth_item_child_table', '1516873191');
INSERT INTO `y_migration` VALUES ('m180125_082437_create_auth_assignment_table', '1516873191');
INSERT INTO `y_migration` VALUES ('m180126_033821_create_setting_table', '1516938067');

-- ----------------------------
-- Table structure for y_setting
-- ----------------------------
DROP TABLE IF EXISTS `y_setting`;
CREATE TABLE `y_setting` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_setting
-- ----------------------------
INSERT INTO `y_setting` VALUES ('siteName', 'YiiDemo');
INSERT INTO `y_setting` VALUES ('version', '2.0.13');

-- ----------------------------
-- Table structure for y_user
-- ----------------------------
DROP TABLE IF EXISTS `y_user`;
CREATE TABLE `y_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of y_user
-- ----------------------------
INSERT INTO `y_user` VALUES ('1', 'admin', 'rH7vUm75ov_5K0MZcIKfiPXJ2M0YlJvm', '$2y$13$o9qCbbh0q95HiAoL0NrFpe2ZVO.Bp6SLd1xFVLMRNaTInVsDzGEjW', null, 'admin@test.com', '1', '1515913743', '1515913743');
INSERT INTO `y_user` VALUES ('2', 'test', '1hXSIlrAfmrILrYdEna48IQTLNlGKlYS', '$2y$13$0BQHUCmZ1zUDLluS7g5A5OtQ2xveko9qbTN5YGBUyWzaji3JRiNfe', null, 'test@test123.com', '1', '1516938329', '1516938329');
