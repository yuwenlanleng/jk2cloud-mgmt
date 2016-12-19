/*
Navicat MySQL Data Transfer

Source Server         : yz_26_5(jk2cloud)
Source Server Version : 50544
Source Host           : 172.16.100.26:3306
Source Database       : jk2cloud_mgmt_stat

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2016-12-19 12:06:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `stat_data_count`
-- ----------------------------
DROP TABLE IF EXISTS `stat_data_count`;
CREATE TABLE `stat_data_count` (
  `company_id` varchar(6) NOT NULL,
  `item` varchar(32) NOT NULL DEFAULT '',
  `value` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_data_count
-- ----------------------------
INSERT INTO `stat_data_count` VALUES ('110000', 'associateMembers', '2', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110000', 'cashierInMonth', '4', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110000', 'employee', '5', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110000', 'member', '3', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110001', 'associateMembers', '1905', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110001', 'cashierInMonth', '36', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110001', 'employee', '11', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110001', 'member', '101', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110002', 'associateMembers', '0', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110002', 'cashierInMonth', '1', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110002', 'employee', '5', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110002', 'member', '3', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110003', 'associateMembers', '1903', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110003', 'cashierInMonth', '40', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110003', 'employee', '7', '2016-12-19 12:06:00');
INSERT INTO `stat_data_count` VALUES ('110003', 'member', '107', '2016-12-19 12:06:00');

-- ----------------------------
-- Table structure for `stat_last_login_time`
-- ----------------------------
DROP TABLE IF EXISTS `stat_last_login_time`;
CREATE TABLE `stat_last_login_time` (
  `company_id` varchar(6) NOT NULL,
  `employee_id` varchar(64) NOT NULL DEFAULT '',
  `last_login_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `online_minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_last_login_time
-- ----------------------------
INSERT INTO `stat_last_login_time` VALUES ('110000', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-16 10:16:26', '2016-12-19 12:06:00', 'shopManager', '5');
INSERT INTO `stat_last_login_time` VALUES ('110001', '9f6378ee-6056-47db-9fe8-bb510b21932e', '2016-12-19 11:03:45', '2016-12-19 12:06:00', 'shopManager', '28');
INSERT INTO `stat_last_login_time` VALUES ('110002', '73eed073-1192-4a8f-9a48-2afed53f735b', '2016-12-19 11:57:29', '2016-12-19 12:06:00', 'shopManager', '1');
INSERT INTO `stat_last_login_time` VALUES ('110003', '6b737338-8818-4692-b52c-a23ec4f4b21f', '2016-12-19 11:35:59', '2016-12-19 12:06:00', 'shopManager', '0');

-- ----------------------------
-- Table structure for `stat_last_use_time`
-- ----------------------------
DROP TABLE IF EXISTS `stat_last_use_time`;
CREATE TABLE `stat_last_use_time` (
  `company_id` varchar(6) NOT NULL,
  `item` varchar(32) NOT NULL DEFAULT '',
  `last_use_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_last_use_time
-- ----------------------------
INSERT INTO `stat_last_use_time` VALUES ('110000', 'cashierMgmt', '2016-12-16 11:33:25', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110000', 'checkInventoryChange', '2016-11-30 12:29:18', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110000', 'customerMgmt', '2016-12-02 15:17:37', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110000', 'inventoryChange', '2016-12-01 11:26:13', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110000', 'serviceMgmt', '2016-11-30 15:55:26', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110001', 'cashierMgmt', '2016-12-15 10:48:52', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110001', 'customerMgmt', '2016-12-15 10:54:58', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110001', 'inventoryChange', '2016-11-30 16:36:37', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110001', 'serviceMgmt', '2016-12-16 15:18:52', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110002', 'cashierMgmt', '2016-12-16 09:23:56', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110002', 'customerMgmt', '2016-12-16 14:40:05', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110002', 'inventoryChange', '2016-12-16 10:18:29', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110002', 'serviceMgmt', '2016-12-16 10:39:08', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110003', 'cashierMgmt', '2016-12-16 14:19:03', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110003', 'customerMgmt', '2016-12-19 12:05:26', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110003', 'inventoryChange', '2016-11-30 17:06:12', '2016-12-19 12:06:00');
INSERT INTO `stat_last_use_time` VALUES ('110003', 'serviceMgmt', '2016-12-19 10:26:59', '2016-12-19 12:06:00');
