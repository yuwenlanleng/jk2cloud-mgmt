/*
Navicat MySQL Data Transfer

Source Server         : yz_26_5(jk2cloud)
Source Server Version : 50544
Source Host           : 172.16.100.26:3306
Source Database       : jk2cloud10000

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2016-12-19 12:06:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `appointment_info`
-- ----------------------------
DROP TABLE IF EXISTS `appointment_info`;
CREATE TABLE `appointment_info` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `estimate_end_time` datetime DEFAULT NULL,
  `estimate_start_time` datetime DEFAULT NULL,
  `job_number` varchar(64) DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `profession_type` varchar(12) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `server_num` varchar(64) DEFAULT NULL,
  `service_type` varchar(64) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment_info
-- ----------------------------

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `profession` varchar(12) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('212', '2016-12-15 10:22:50', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '\0', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '2016-12-15 10:23:06', '212444', null, 'deleted');
INSERT INTO `brand` VALUES ('力士', '2016-11-24 12:28:12', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:28:12', '力士', null, 'normal');
INSERT INTO `brand` VALUES ('欧莱雅', '2016-11-08 17:29:34', '管理员', '\0', '管理员', '2016-11-15 10:19:50', '欧莱雅', null, 'normal');
INSERT INTO `brand` VALUES ('沙宣', '2016-11-08 17:27:54', '管理员', '\0', '管理员', '2016-11-08 17:27:54', '沙宣', null, 'normal');
INSERT INTO `brand` VALUES ('海飞丝', '2016-11-09 14:50:51', '管理员', '\0', '管理员', '2016-11-15 10:19:43', '海飞丝', null, 'normal');
INSERT INTO `brand` VALUES ('潘婷', '2016-11-08 17:24:13', '管理员', '\0', '6c5e1257-7255-413b-93e3-98b7d46345d9', '2016-11-30 14:26:08', '潘婷', null, 'normal');
INSERT INTO `brand` VALUES ('舒蕾', '2016-11-24 12:28:27', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'sys', '2016-11-24 14:28:08', '舒蕾', null, 'normal');
INSERT INTO `brand` VALUES ('飘柔', '2016-11-08 17:28:13', '管理员', '\0', '管理员', '2016-11-08 17:28:13', '飘柔', null, 'normal');

-- ----------------------------
-- Table structure for `consign_product`
-- ----------------------------
DROP TABLE IF EXISTS `consign_product`;
CREATE TABLE `consign_product` (
  `customer_id` varchar(64) NOT NULL,
  `product_id` varchar(64) NOT NULL,
  `consign_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `last_employ_time` datetime DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `residue` double DEFAULT NULL,
  `unit_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consign_product
-- ----------------------------
INSERT INTO `consign_product` VALUES ('7db8b189-d122-4f7c-9572-aa48d9605859', 'e5bb6620-8e04-4ea9-8593-2138381beb66', '2016-11-30 11:24:30', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', 'deleted', '20', '瓶');
INSERT INTO `consign_product` VALUES ('abfc0352-c839-4a6c-8e56-93d445766236', 'c53b3c3d-5993-4010-89dc-07f3152b4f6f', '2016-12-01 11:16:34', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', 'normal', '8', '瓶');
INSERT INTO `consign_product` VALUES ('b3f49be0-576f-4e98-a8c5-510be03578ae', 'c53b3c3d-5993-4010-89dc-07f3152b4f6f', '2016-12-02 15:17:37', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', 'normal', '2', '个');
INSERT INTO `consign_product` VALUES ('fa26d6a4-d05e-4d35-bd4e-8cb717a998e6', 'e5bb6620-8e04-4ea9-8593-2138381beb66', '2016-11-30 15:35:10', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', 'normal', '10', '箱');

-- ----------------------------
-- Table structure for `consign_product_consume_record`
-- ----------------------------
DROP TABLE IF EXISTS `consign_product_consume_record`;
CREATE TABLE `consign_product_consume_record` (
  `id` varchar(64) NOT NULL,
  `consumption_num` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `product_num` varchar(64) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `unit_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consign_product_consume_record
-- ----------------------------

-- ----------------------------
-- Table structure for `consumables_product_record`
-- ----------------------------
DROP TABLE IF EXISTS `consumables_product_record`;
CREATE TABLE `consumables_product_record` (
  `consumption_num` varchar(64) NOT NULL,
  `distributor_product_id` varchar(64) NOT NULL,
  `server_num` varchar(64) NOT NULL,
  PRIMARY KEY (`consumption_num`,`distributor_product_id`,`server_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumables_product_record
-- ----------------------------
INSERT INTO `consumables_product_record` VALUES ('f60f3878-3d31-4947-8b32-f1d811bb7373', '088f0f96-359a-411e-863d-9f8090709ff9', '9908aa7a-19a3-431c-af89-060c728e7338');

-- ----------------------------
-- Table structure for `consumption`
-- ----------------------------
DROP TABLE IF EXISTS `consumption`;
CREATE TABLE `consumption` (
  `consumption_num` varchar(64) NOT NULL,
  `amount_price` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `debt_price` double DEFAULT NULL,
  `discount_after_price` double DEFAULT NULL,
  `discount_coupon_id` varchar(64) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `main_service_employee` varchar(64) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `print_ticket` tinyint(1) DEFAULT '0',
  `record_state` varchar(8) DEFAULT 'normal',
  `start_time` datetime DEFAULT NULL,
  `status` varchar(19) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`consumption_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumption
-- ----------------------------
INSERT INTO `consumption` VALUES ('4403ce28-c2ea-4abe-a134-2e113dbf64f2', '200', '2016-11-30 11:40:42', '09152cb9-442a-4e90-b81d-26cbd0920e53', '9d2c482e-d099-416f-b61f-777353492b0d', null, '200', null, '2016-11-30 13:25:55', '003', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:40:42', '0', 'normal', '2016-11-30 11:40:55', 'totalpayamount', '200');
INSERT INTO `consumption` VALUES ('52a339da-caef-4d59-8922-12bc7af5498d', '800', '2016-11-30 11:23:28', '09152cb9-442a-4e90-b81d-26cbd0920e53', '7db8b189-d122-4f7c-9572-aa48d9605859', null, '800', null, '2016-11-30 12:10:35', '003', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:28:51', '0', 'normal', '2016-11-30 11:25:35', 'totalpayamount', '800');
INSERT INTO `consumption` VALUES ('a426911e-8867-4684-94b5-5da14cf116f3', '100', '2016-12-02 15:26:10', '09152cb9-442a-4e90-b81d-26cbd0920e53', '1d620e98-7fb7-4bec-b86a-e8425ec4e717', null, '100', null, '2016-12-02 16:10:22', '004', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-02 15:26:10', '0', 'normal', '2016-12-02 15:25:22', 'totalpayamount', '100');
INSERT INTO `consumption` VALUES ('f60f3878-3d31-4947-8b32-f1d811bb7373', '800', '2016-12-16 11:33:25', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'b3f49be0-576f-4e98-a8c5-510be03578ae', null, null, null, '2016-12-16 13:15:52', '003', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-16 11:33:25', '0', 'normal', '2016-12-16 11:30:52', 'processing', null);
INSERT INTO `consumption` VALUES ('f9fccd5e-39fa-48c4-b50b-5a9ed8c4c148', '100', '2016-11-30 16:37:41', '09152cb9-442a-4e90-b81d-26cbd0920e53', '9d2c482e-d099-416f-b61f-777353492b0d', null, '100', null, '2016-11-30 17:25:09', '003', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 16:37:41', '0', 'normal', '2016-11-30 16:40:09', 'totalpayamount', '100');

-- ----------------------------
-- Table structure for `consumption_pay_type`
-- ----------------------------
DROP TABLE IF EXISTS `consumption_pay_type`;
CREATE TABLE `consumption_pay_type` (
  `consumption_num` varchar(64) NOT NULL,
  `pay_type` varchar(8) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `pay_price` double DEFAULT NULL,
  PRIMARY KEY (`consumption_num`,`pay_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumption_pay_type
-- ----------------------------
INSERT INTO `consumption_pay_type` VALUES ('4403ce28-c2ea-4abe-a134-2e113dbf64f2', 'cash', '2016-11-30 11:40:42', null, '200');
INSERT INTO `consumption_pay_type` VALUES ('52a339da-caef-4d59-8922-12bc7af5498d', 'cash', '2016-11-30 11:28:51', null, '800');
INSERT INTO `consumption_pay_type` VALUES ('a426911e-8867-4684-94b5-5da14cf116f3', 'cash', '2016-12-02 15:26:10', null, '100');
INSERT INTO `consumption_pay_type` VALUES ('f9fccd5e-39fa-48c4-b50b-5a9ed8c4c148', 'cash', '2016-11-30 16:37:41', null, '100');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(64) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `changed_member_time` datetime DEFAULT NULL,
  `changed_prepareMember_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `debt_price` double DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `familiar_employee_num` varchar(64) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `member_card_4_import` varchar(64) DEFAULT NULL,
  `member_label` text,
  `member_level` varchar(17) DEFAULT NULL,
  `memo` longtext,
  `mobile` varchar(15) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `prestore` double DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `wechat` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('15e9e55b-045a-40c0-bded-e0ec97bb05b1', null, null, null, '2016-11-30 11:38:42', '2016-11-30 11:38:42', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'preparation', '', '13811111111', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 14:16:29', '解冰', null, '', 'deleted', null);
INSERT INTO `customer` VALUES ('1d620e98-7fb7-4bec-b86a-e8425ec4e717', null, null, null, '2016-12-02 15:26:10', '2016-12-02 15:15:27', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, '紫色;', 'preparation', '', '13966666666', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-02 15:15:51', 'lulu', '0', '', 'normal', null);
INSERT INTO `customer` VALUES ('7db8b189-d122-4f7c-9572-aa48d9605859', null, '2016-05-02 00:00:00', '2016-11-30 11:28:51', '2016-11-30 11:23:28', '2016-11-30 11:13:51', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'normal', '', '13933333333', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 14:18:29', '吴京华', '0', '', 'deleted', null);
INSERT INTO `customer` VALUES ('9d2c482e-d099-416f-b61f-777353492b0d', null, '2016-11-07 00:00:00', null, '2016-11-30 16:37:41', '2016-11-30 11:15:36', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'preparation', '', '13944444444', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:15:36', '朱梦超', '0', '', 'normal', null);
INSERT INTO `customer` VALUES ('abfc0352-c839-4a6c-8e56-93d445766236', null, null, '2016-12-01 11:16:34', '2016-11-30 16:39:07', '2016-11-30 16:39:07', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'normal', '', '13955555555', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-01 11:12:21', 'Lisa', null, '3242442', 'normal', null);
INSERT INTO `customer` VALUES ('b3f49be0-576f-4e98-a8c5-510be03578ae', null, '2016-11-13 00:00:00', '2016-12-16 11:33:25', '2016-11-30 14:20:08', '2016-11-30 14:20:08', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'normal', '', '13811111111', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 14:20:08', '解冰', null, '', 'normal', null);
INSERT INTO `customer` VALUES ('fa26d6a4-d05e-4d35-bd4e-8cb717a998e6', null, '2016-11-07 00:00:00', '2016-11-30 15:35:10', '2016-11-30 14:19:45', '2016-11-30 14:19:45', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '', null, '0', null, null, 'normal', '', '13922222222', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 16:46:42', '吴京华', null, '5895695', 'normal', null);

-- ----------------------------
-- Table structure for `customer_discount_config`
-- ----------------------------
DROP TABLE IF EXISTS `customer_discount_config`;
CREATE TABLE `customer_discount_config` (
  `id` varchar(64) NOT NULL,
  `abatement` double DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `consumption_num` varchar(64) DEFAULT NULL,
  `consumption_price` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discount_coupon_id` varchar(64) DEFAULT NULL,
  `inventory_id` text,
  `is_payment` bit(1) DEFAULT NULL,
  `member_card_id` varchar(64) DEFAULT NULL,
  `memo` longtext,
  `min_recharge_money` double DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `server_num` text,
  `stored_money` double DEFAULT NULL,
  `stroed_value` tinyint(1) DEFAULT '0',
  `time_limit` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_discount_config
-- ----------------------------
INSERT INTO `customer_discount_config` VALUES ('705677e2-ffd2-4875-8aab-1be962f02197', null, null, 'f60f3878-3d31-4947-8b32-f1d811bb7373', null, '2016-12-16 11:33:25', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'b3f49be0-576f-4e98-a8c5-510be03578ae', '9', 'c2b3ab5d-10e5-41d7-a902-eb40f26a833e', 'all', '\0', null, '', null, '9折优惠券', null, '500', 'all', null, '0', null);
INSERT INTO `customer_discount_config` VALUES ('90489412-5a4a-40e0-a03a-3c5e596c81bf', null, null, '52a339da-caef-4d59-8922-12bc7af5498d', null, '2016-11-30 11:28:51', '09152cb9-442a-4e90-b81d-26cbd0920e53', '7db8b189-d122-4f7c-9572-aa48d9605859', '8', 'd8d6aee9-e679-448f-a6ba-4dd90ea20315', 'all', '', null, '', null, '8折优惠券', null, '800', 'all', null, '0', null);

-- ----------------------------
-- Table structure for `discount_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `discount_coupon`;
CREATE TABLE `discount_coupon` (
  `id` varchar(64) NOT NULL,
  `abatement` double DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `consumption_price` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `inventory_id` text,
  `memo` longtext,
  `min_recharge_money` double DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `server_num` text,
  `stored_money` double DEFAULT NULL,
  `stroed_value` tinyint(1) DEFAULT '0',
  `time_limit` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount_coupon
-- ----------------------------
INSERT INTO `discount_coupon` VALUES ('9d277fbb-629c-4abd-b4bc-212be4afcf37', '500', null, null, '2016-11-30 15:54:07', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, 'all', '', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 15:54:07', '满1000减500', null, 'normal', '1000', 'all', null, '0', null);
INSERT INTO `discount_coupon` VALUES ('c2b3ab5d-10e5-41d7-a902-eb40f26a833e', null, null, null, '2016-11-30 11:19:10', '09152cb9-442a-4e90-b81d-26cbd0920e53', '9', 'all', '', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:19:10', '9折优惠券', null, 'normal', '500', 'all', null, '0', null);
INSERT INTO `discount_coupon` VALUES ('d8d6aee9-e679-448f-a6ba-4dd90ea20315', null, null, null, '2016-11-30 11:19:34', '09152cb9-442a-4e90-b81d-26cbd0920e53', '8', 'all', '', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:19:34', '8折优惠券', null, 'normal', '800', 'all', null, '0', null);

-- ----------------------------
-- Table structure for `distributor`
-- ----------------------------
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor` (
  `id` varchar(64) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `contacts` varchar(64) DEFAULT NULL,
  `contacts_phone` varchar(15) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `distributor_name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `bank_account` varchar(64) DEFAULT NULL,
  `band_of_deposit` varchar(64) DEFAULT NULL,
  `location` varchar(6) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distributor
-- ----------------------------
INSERT INTO `distributor` VALUES ('d7c1d662-c92d-410d-b318-0374f0ed3b11', null, null, null, '2016-11-24 16:34:26', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-24 16:34:26', '一般供应商(非供应商)', 'normal', null, null, null, null, null);

-- ----------------------------
-- Table structure for `distributor_product`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_product`;
CREATE TABLE `distributor_product` (
  `id` varchar(64) NOT NULL,
  `brand_code` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `distributor_id` varchar(64) DEFAULT NULL,
  `inlay_product_id` varchar(64) DEFAULT NULL,
  `last_purchase_price` double DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `product_type_code` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `series_code` varchar(64) DEFAULT NULL,
  `specification` varchar(64) DEFAULT NULL,
  `unit_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distributor_product
-- ----------------------------
INSERT INTO `distributor_product` VALUES ('088f0f96-359a-411e-863d-9f8090709ff9', '潘婷', '2016-11-30 11:16:54', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'd7c1d662-c92d-410d-b318-0374f0ed3b11', null, '10', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:16:54', '潘婷100ml', '洗发水', 'normal', '潘婷水润滋养', '10', '瓶');
INSERT INTO `distributor_product` VALUES ('c53b3c3d-5993-4010-89dc-07f3152b4f6f', '潘婷', '2016-11-30 11:16:23', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'd7c1d662-c92d-410d-b318-0374f0ed3b11', null, '20', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:16:23', '潘婷400ml', '护发素', 'normal', '潘婷丝质顺滑', '5', '瓶');
INSERT INTO `distributor_product` VALUES ('e5bb6620-8e04-4ea9-8593-2138381beb66', '飘柔', '2016-11-25 17:05:07', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'd7c1d662-c92d-410d-b318-0374f0ed3b11', null, '100', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-25 17:05:07', '飘柔100ml', '护发素', 'normal', '飘柔人参滋养', '2', '箱');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `job_number` varchar(64) NOT NULL,
  `basic_salary` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `head_portrait_id` varchar(64) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `memo` longtext,
  `mobile` varchar(15) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `position_id` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `salary_type` varchar(16) DEFAULT NULL,
  `wechat` varchar(64) DEFAULT NULL,
  `work_state` varchar(8) DEFAULT NULL,
  `work_year_num` double DEFAULT NULL,
  PRIMARY KEY (`job_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('001', null, '2016-11-24 16:34:06', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, null, null, null, 'basicRank', null, '13811111111', null, null, '001', null, 'normal', null, null, 'working', null);
INSERT INTO `employee` VALUES ('002', null, '2016-11-25 12:11:03', '09152cb9-442a-4e90-b81d-26cbd0920e53', '', '2016-11-21 00:00:00', '1', null, 'basicRank', '', '13958412012', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 12:27:36', '小张', '小工', 'normal', null, '', 'working', null);
INSERT INTO `employee` VALUES ('003', null, '2016-11-30 11:10:47', '09152cb9-442a-4e90-b81d-26cbd0920e53', '333@99.com', '2016-11-30 00:00:00', '1', null, 'tallRank', '', '13958415251', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 12:26:58', '张明', '剪发师', 'normal', null, '3234', 'working', '5');
INSERT INTO `employee` VALUES ('004', null, '2016-12-01 11:19:31', '09152cb9-442a-4e90-b81d-26cbd0920e53', '', '2016-12-01 00:00:00', '1', null, 'basicRank', '', '15624356789', null, null, '李杨', '剪发师', 'normal', null, '', 'working', null);
INSERT INTO `employee` VALUES ('005', null, '2016-12-02 15:20:23', '09152cb9-442a-4e90-b81d-26cbd0920e53', '', '2016-12-02 00:00:00', '1', null, 'tallRank', '', '13567867876', null, null, '小米', '剪发师', 'normal', null, '', 'working', null);

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `inventory_id` varchar(64) NOT NULL,
  `brand_code` varchar(64) DEFAULT NULL,
  `claim_num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `damaged_num` int(11) DEFAULT NULL,
  `distributor_product_id` varchar(64) DEFAULT NULL,
  `is_sell_product` bit(1) DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `newest_inventory_num` int(11) DEFAULT NULL,
  `past_due_time` date DEFAULT NULL,
  `pre_check_num` int(11) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `product_type_code` varchar(64) DEFAULT NULL,
  `purchase_num` int(11) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `rtPurchase_num` int(11) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `series_code` varchar(64) DEFAULT NULL,
  `specification` varchar(64) DEFAULT NULL,
  `take_out_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('04271947-71d1-4626-b520-74f97d10d06c', '飘柔', '180', '2016-11-25 17:05:07', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', 'e5bb6620-8e04-4ea9-8593-2138381beb66', '', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-02 15:26:10', '299', '2016-11-29', '380', '飘柔100ml', '护发素', '0', '100', 'normal', '0', '100', '飘柔人参滋养', '2', '2');
INSERT INTO `inventory` VALUES ('a0bd6626-a433-430c-b707-dfecfb3d913f', '潘婷', '90', '2016-11-30 11:16:54', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '088f0f96-359a-411e-863d-9f8090709ff9', '', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 15:55:26', '100', '2017-01-26', '190', '潘婷100ml', '洗发水', '0', '10', 'normal', '0', '100', '潘婷水润滋养', '10', '0');
INSERT INTO `inventory` VALUES ('ad3e68cd-d499-4477-87e9-6d1fa1e0ca5c', '潘婷', '40', '2016-11-30 11:16:23', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', 'c53b3c3d-5993-4010-89dc-07f3152b4f6f', '', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 15:55:26', '50', '2016-12-10', '90', '潘婷400ml', '护发素', '0', '20', 'normal', '0', '100', '潘婷丝质顺滑', '5', '0');

-- ----------------------------
-- Table structure for `inventory_alteration`
-- ----------------------------
DROP TABLE IF EXISTS `inventory_alteration`;
CREATE TABLE `inventory_alteration` (
  `receipts_num` varchar(64) NOT NULL,
  `alteration_time` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `consumption_num` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `kind_num` int(11) DEFAULT NULL,
  `memo` longtext,
  `principal` varchar(64) DEFAULT NULL,
  `receipts_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`receipts_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory_alteration
-- ----------------------------

-- ----------------------------
-- Table structure for `inventory_alteration_detail`
-- ----------------------------
DROP TABLE IF EXISTS `inventory_alteration_detail`;
CREATE TABLE `inventory_alteration_detail` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `inventory_id` varchar(64) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `past_due_time` datetime DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `receipts_num` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory_alteration_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `inventory_check`
-- ----------------------------
DROP TABLE IF EXISTS `inventory_check`;
CREATE TABLE `inventory_check` (
  `check_time` datetime NOT NULL,
  `distributor_product_id` varchar(64) NOT NULL,
  `check_deviation` int(11) DEFAULT NULL,
  `check_principal` varchar(64) DEFAULT NULL,
  `claim_num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `damaged_num` int(11) DEFAULT NULL,
  `last_check_inventory_num` int(11) DEFAULT NULL,
  `purchase_num` int(11) DEFAULT NULL,
  `reality_check_inventory_num` int(11) DEFAULT NULL,
  `reality_claim_residue_num` int(11) DEFAULT NULL,
  `rtPurchase_num` int(11) DEFAULT NULL,
  `takeOutNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`check_time`,`distributor_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory_check
-- ----------------------------
INSERT INTO `inventory_check` VALUES ('2016-11-25 18:29:01', '04271947-71d1-4626-b520-74f97d10d06c', '-10', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '2016-11-25 18:29:01', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '0', '0', '10', '2', '0', '0');
INSERT INTO `inventory_check` VALUES ('2016-11-30 12:29:18', '04271947-71d1-4626-b520-74f97d10d06c', '-190', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2', '2016-11-30 12:29:18', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '12', '0', '200', '180', '0', '0');
INSERT INTO `inventory_check` VALUES ('2016-11-30 12:29:18', 'a0bd6626-a433-430c-b707-dfecfb3d913f', '-100', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '2016-11-30 12:29:18', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '0', '0', '100', '90', '0', '0');
INSERT INTO `inventory_check` VALUES ('2016-11-30 12:29:18', 'ad3e68cd-d499-4477-87e9-6d1fa1e0ca5c', '-50', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '2016-11-30 12:29:18', '09152cb9-442a-4e90-b81d-26cbd0920e53', '0', '0', '0', '50', '40', '0', '0');

-- ----------------------------
-- Table structure for `member_card`
-- ----------------------------
DROP TABLE IF EXISTS `member_card`;
CREATE TABLE `member_card` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `stroed_value` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_card
-- ----------------------------

-- ----------------------------
-- Table structure for `member_discount_config`
-- ----------------------------
DROP TABLE IF EXISTS `member_discount_config`;
CREATE TABLE `member_discount_config` (
  `iscount_coupon_id` varchar(64) NOT NULL,
  `member_card_id` varchar(64) NOT NULL,
  PRIMARY KEY (`iscount_coupon_id`,`member_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_discount_config
-- ----------------------------

-- ----------------------------
-- Table structure for `member_label`
-- ----------------------------
DROP TABLE IF EXISTS `member_label`;
CREATE TABLE `member_label` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `label_color` varchar(7) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_label
-- ----------------------------
INSERT INTO `member_label` VALUES ('88', '2016-12-15 10:24:43', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '\0', '#e7ea9a', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '2016-12-15 10:25:42', '8899', 'deleted');
INSERT INTO `member_label` VALUES ('粉色', '2016-11-24 14:05:03', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', '#f1afdd', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:05:03', '粉色', 'normal');
INSERT INTO `member_label` VALUES ('紫色', '2016-11-24 14:04:51', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', '#ddb3ef', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:04:51', '紫色', 'normal');
INSERT INTO `member_label` VALUES ('绿色', '2016-11-24 14:04:39', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', '#98e699', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:04:39', '绿色', 'normal');
INSERT INTO `member_label` VALUES ('青色', '2016-11-24 14:05:14', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', '#b4e3de', 'sys', '2016-11-24 14:27:49', '青色', 'normal');
INSERT INTO `member_label` VALUES ('黄色', '2016-11-24 12:30:41', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', '#e7ea9a', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:30:41', '黄色', 'normal');

-- ----------------------------
-- Table structure for `modify_log`
-- ----------------------------
DROP TABLE IF EXISTS `modify_log`;
CREATE TABLE `modify_log` (
  `id` varchar(64) NOT NULL,
  `description` longtext,
  `ip` varchar(32) DEFAULT NULL,
  `module_id` varchar(64) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operate_type` int(11) DEFAULT NULL,
  `operator` varchar(64) DEFAULT NULL,
  `sub_module_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modify_log
-- ----------------------------
INSERT INTO `modify_log` VALUES ('002dd14b-18a8-4d82-b527-a542766e5ffe', '修改了服务项目，名称=美容，修改内容是：ServerInfo[serverNum=9908aa7a-19a3-431c-af89-060c728e7338,name=美容,serverConsumablesList=[],serverTypeCode=<null>,cost=0.0,sellPrice=10.0,estimateTime=<null>,memo=,recordState=正常,createTime=2016-11-25 14:48:00.0,modifyTime=Wed Nov 30 11:20:44 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53]', '172.16.100.178', 'serviceMgmt', '2016-11-30 11:20:44', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.service');
INSERT INTO `modify_log` VALUES ('0dedefcf-e7a0-462b-827c-ea10d3204e51', '添加了员工，工号为=004，添加内容是：Employee[jobNumber=004,name=李杨,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Thu Dec 01 00:00:00 CST 2016,workYearNum=<null>,positionId=剪发师,positionName=<null>,level=初级,workState=工作,mobile=15624356789,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=Thu Dec 01 11:19:31 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '222.128.2.58', 'employeeMgmt', '2016-12-01 11:19:31', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('11d0f0f9-df01-4515-a419-0507cdaeeef2', '添加了寄存商品，编号=c53b3c3d-5993-4010-89dc-07f3152b4f6f，添加内容是：ConsignProduct[productId=c53b3c3d-5993-4010-89dc-07f3152b4f6f,customerId=abfc0352-c839-4a6c-8e56-93d445766236,customerName=<null>,lastEmployTime=<null>,consignTime=Thu Dec 01 11:16:34 CST 2016,residue=8.0,unitCode=瓶,recordState=正常,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,productName=潘婷400ml,unit=<null>,distributorProduct=<null>]', '222.128.2.58', 'customerMgmt', '2016-12-01 11:16:34', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('16c91cbf-8727-4b6c-a3e1-6bafcb9aeffc', '修改了消费单，添加内容：将customerDiscountConfigs由<空值>变为【[8折优惠券]】；将takeOutProductRecords由<空值>变为【[]】；将consumptionPayTypes由<空值>变为【[com.jk2c.common.pojo.ConsumptionPayType@fe6db30d]】；将mainServiceEmployeeObj由<空值>变为【张明】；将walletConsumptionRecords由<空值>变为【[com.jk2c.common.pojo.WalletConsumptionRecord@f5b3804e]】；将serverConsumptionRecords由<空值>变为【[]】；将referrerInfos由<空值>变为【[]】；将consignProductConsumeRecords由<空值>变为【[]】；将customer由<空值>变为【吴京华】；', '172.16.100.178', 'consumptionMgmt', '2016-11-30 11:28:51', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');
INSERT INTO `modify_log` VALUES ('1a858844-32e1-4a9e-a529-912c12ce2698', '添加了消费单，添加内容：Consumption[consumptionNum=f9fccd5e-39fa-48c4-b50b-5a9ed8c4c148,customerId=9d2c482e-d099-416f-b61f-777353492b0d,mainServiceEmployee=003,discountCouponId=<null>,discountCouponName=<null>,amountPrice=100.0,totalPrice=100.0,discountAfterPrice=100.0,debtPrice=<null>,payType=<null>,status=已结算,recordState=正常,printTicket=false,startTime=Wed Nov 30 16:40:09 CST 2016,endTime=Wed Nov 30 17:25:09 CST 2016,createTime=Wed Nov 30 16:37:41 CST 2016,modifyTime=Wed Nov 30 16:37:41 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,consumptionItems=<null>,empName=<null>,customerName=<null>,customerMobile=<null>,operationName=<null>,serverConsumptionRecords=[],takeOutProductRecords=[com.jk2c.common.pojo.TakeOutProductRecord@cf26fcaf],walletConsumptionRecords=[],customer=朱梦超,mainServiceEmployeeObj=张明,consignProductConsumeRecords=[],customerDiscountConfigs=[],consumptionPayTypes=[com.jk2c.common.pojo.ConsumptionPayType@39f63edb],referrerInfos=<null>]', '172.16.100.178', 'consumptionMgmt', '2016-11-30 16:37:41', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');
INSERT INTO `modify_log` VALUES ('1c002414-9448-4ccf-aadf-08baf6228c9f', '添加了员工，工号为=004，添加内容是：Employee[jobNumber=004,name=LILI,headPortraitId=<null>,avatar=<null>,gender=0,entryTime=Wed Nov 30 00:00:00 CST 2016,workYearNum=<null>,positionId=小工,positionName=<null>,level=中级,workState=工作,mobile=13695869586,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=Wed Nov 30 11:37:13 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-30 11:37:13', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('27180b66-e2d7-433f-98e2-a0e1a3563dfe', '修改流水盘信息，id=e53dd1f5-02c0-471b-9d97-db4ad6100537，内容是：OrderBrandEmployee[id=e53dd1f5-02c0-471b-9d97-db4ad6100537,orderBrandCategoryId=0e41502e-9be9-444b-bb1e-fc90179332c2,employeeId=001,employee=001,sortOrder=3.0,orderBrandState=正常]', '222.128.2.58', 'consumptionMgmt', '2016-12-09 15:06:16', '2', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.workSchedule');
INSERT INTO `modify_log` VALUES ('2d421265-1471-4861-829b-d99b5ff72216', '添加了顾客，名称=解冰，添加内容是：Customer[id=b3f49be0-576f-4e98-a8c5-510be03578ae,name=解冰,prestore=<null>,gender=0,birthday=Sun Nov 13 00:00:00 CST 2016,mobile=13811111111,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 14:20:08 CST 2016,modifyTime=Wed Nov 30 14:20:08 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 14:20:08 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 14:20:08', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('2f58fc6d-06a2-44f1-8629-d0cc9b533cd2', '添加盘点，共盘点=1条', '172.16.100.178', 'inventoryMgmt', '2016-11-25 18:29:01', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventoryMgmt.inventory.inventoryCheck');
INSERT INTO `modify_log` VALUES ('357004db-61ce-48b7-8543-53da4e72ec2a', '添加了优惠，名称=满1000减500，添加内容是：DiscountCoupon[id=9d277fbb-629c-4abd-b4bc-212be4afcf37,name=满1000减500,timeLimit=<null>,number=<null>,discount=<null>,abatement=500.0,arrivalTime=<null>,consumptionPrice=<null>,serverNum=all,serverInfoList=<null>,inventoryId=all,selectInventoryList=<null>,productName=<null>,memo=,recordState=正常,createTime=Wed Nov 30 15:54:07 CST 2016,modifyTime=Wed Nov 30 15:54:07 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,sellPrice=1000.0,storedValue=false,storedMoney=<null>,minRechargeMoney=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 15:54:07', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.consumption');
INSERT INTO `modify_log` VALUES ('3af7f4d9-ab12-40b7-be8c-90741892f32f', '添加了库存产品，名称=潘婷400ml，添加内容是：Inventory[inventoryId=ad3e68cd-d499-4477-87e9-6d1fa1e0ca5c,distributorProductId=c53b3c3d-5993-4010-89dc-07f3152b4f6f,unitCode=<null>,distributorName=<null>,purchasePrice=20.0,pastDueTime=Sat Dec 10 00:00:00 CST 2016,productName=潘婷400ml,productTypeCode=护发素,sellPrice=<null>,preCheckNum=<null>,newestInventoryNum=10,takeOutNum=<null>,claimNum=<null>,purchaseNum=<null>,rtPurchaseNum=<null>,damagedNum=<null>,brandCode=潘婷,seriesCode=潘婷丝质顺滑,specification=5,isSellProduct=false,memo=,recordState=正常,createTime=Wed Nov 30 11:16:23 CST 2016,modifyTime=Wed Nov 30 11:16:23 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'inventoryMgmt', '2016-11-30 11:16:23', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventoryMgmt.inventory.product');
INSERT INTO `modify_log` VALUES ('3cd2cdaa-9886-4633-b949-cc242f945f9b', '添加了优惠，名称=8折优惠券，添加内容是：DiscountCoupon[id=d8d6aee9-e679-448f-a6ba-4dd90ea20315,name=8折优惠券,timeLimit=<null>,number=<null>,discount=8.0,abatement=<null>,arrivalTime=<null>,consumptionPrice=<null>,serverNum=all,serverInfoList=<null>,inventoryId=all,selectInventoryList=<null>,productName=<null>,memo=,recordState=正常,createTime=Wed Nov 30 11:19:34 CST 2016,modifyTime=Wed Nov 30 11:19:34 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,sellPrice=800.0,storedValue=false,storedMoney=<null>,minRechargeMoney=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 11:19:34', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.consumption');
INSERT INTO `modify_log` VALUES ('3d5afc46-5b7b-41d4-a31b-772b5a37b1f3', '添加了外卖产品售价，名称=潘婷100ml，内容是：Inventory[inventoryId=a0bd6626-a433-430c-b707-dfecfb3d913f,distributorProductId=088f0f96-359a-411e-863d-9f8090709ff9,unitCode=<null>,distributorName=<null>,purchasePrice=10.0,pastDueTime=2017-01-26,productName=潘婷100ml,productTypeCode=洗发水,sellPrice=100.0,preCheckNum=190,newestInventoryNum=100,takeOutNum=0,claimNum=90,purchaseNum=0,rtPurchaseNum=0,damagedNum=0,brandCode=潘婷,seriesCode=潘婷水润滋养,specification=10,isSellProduct=true,memo=,recordState=正常,createTime=2016-11-30 11:16:54.0,modifyTime=Wed Nov 30 15:55:26 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 15:55:26', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.sellProduct');
INSERT INTO `modify_log` VALUES ('3ee24f51-b7d4-4f40-a9db-78d5a89cf304', '添加了寄存商品，编号=e5bb6620-8e04-4ea9-8593-2138381beb66，添加内容是：ConsignProduct[productId=e5bb6620-8e04-4ea9-8593-2138381beb66,customerId=7db8b189-d122-4f7c-9572-aa48d9605859,customerName=<null>,lastEmployTime=<null>,consignTime=Wed Nov 30 11:24:30 CST 2016,residue=20.0,unitCode=瓶,recordState=正常,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,productName=飘柔100ml,unit=<null>,distributorProduct=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 11:24:30', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('44876cf0-770c-4465-99b9-356a147847e7', '删除了顾客信息，名称=吴京华，内容是：Customer[id=7db8b189-d122-4f7c-9572-aa48d9605859,name=吴京华,prestore=0.0,gender=0,birthday=2016-05-02 00:00:00.0,mobile=13933333333,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=2016-11-30 11:13:51.0,modifyTime=Wed Nov 30 14:18:29 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=已删除,debtPrice=<null>,memberCard4Import=<null>,memberLevel=会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=2016-11-30 11:23:28.0,changedMemberTime=2016-11-30 11:28:51.0,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 14:18:30', '2', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('456cfbdc-711b-4248-b287-b18ccec11fa0', '修改了员工，工号为=003，修改内容是：Employee[jobNumber=003,name=张明,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Wed Nov 30 00:00:00 CST 2016,workYearNum=5.0,positionId=剪发师,positionName=<null>,level=高级,workState=工作,mobile=13958415251,wechat=3234,email=333@99.com,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=2016-11-30 11:10:47.0,modifyTime=Wed Nov 30 12:26:58 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-30 12:26:58', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('4e142acf-ec98-449a-bdc6-2cc6b68df9fb', '添加了顾客，名称=朱梦超，添加内容是：Customer[id=9d2c482e-d099-416f-b61f-777353492b0d,name=朱梦超,prestore=<null>,gender=0,birthday=Mon Nov 07 00:00:00 CST 2016,mobile=13944444444,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 11:15:36 CST 2016,modifyTime=Wed Nov 30 11:15:36 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 11:15:36 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 11:15:36', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('4fde5e69-a558-4c9c-b8bb-458774bb46aa', '添加了服务项目，名称=1111，添加内容是：ServerInfo[serverNum=9908aa7a-19a3-431c-af89-060c728e7338,name=1111,serverConsumablesList=[],serverTypeCode=<null>,cost=0.0,sellPrice=10.0,estimateTime=<null>,memo=,recordState=正常,createTime=Fri Nov 25 14:48:00 CST 2016,modifyTime=Fri Nov 25 14:48:00 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53]', '172.16.100.186', 'serviceMgmt', '2016-11-25 14:48:00', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.service');
INSERT INTO `modify_log` VALUES ('5d47d8c1-da56-45f1-9d2b-637e61956347', '添加了外卖产品售价，名称=潘婷400ml，内容是：Inventory[inventoryId=ad3e68cd-d499-4477-87e9-6d1fa1e0ca5c,distributorProductId=c53b3c3d-5993-4010-89dc-07f3152b4f6f,unitCode=<null>,distributorName=<null>,purchasePrice=20.0,pastDueTime=2016-12-10,productName=潘婷400ml,productTypeCode=护发素,sellPrice=100.0,preCheckNum=90,newestInventoryNum=50,takeOutNum=0,claimNum=40,purchaseNum=0,rtPurchaseNum=0,damagedNum=0,brandCode=潘婷,seriesCode=潘婷丝质顺滑,specification=5,isSellProduct=true,memo=,recordState=正常,createTime=2016-11-30 11:16:23.0,modifyTime=Wed Nov 30 15:55:26 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 15:55:26', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.sellProduct');
INSERT INTO `modify_log` VALUES ('64a891c0-6856-4926-bc50-296428f298ad', '添加了顾客，名称=吴京华，添加内容是：Customer[id=fa26d6a4-d05e-4d35-bd4e-8cb717a998e6,name=吴京华,prestore=<null>,gender=0,birthday=Mon Nov 07 00:00:00 CST 2016,mobile=13922222222,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 14:19:45 CST 2016,modifyTime=Wed Nov 30 14:19:45 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 14:19:45 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 14:19:45', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('6761c8b7-1b2f-46ca-9ce1-984649881536', '添加了消费单，添加内容：Consumption[consumptionNum=f60f3878-3d31-4947-8b32-f1d811bb7373,customerId=b3f49be0-576f-4e98-a8c5-510be03578ae,mainServiceEmployee=003,discountCouponId=<null>,discountCouponName=<null>,amountPrice=800.0,totalPrice=<null>,discountAfterPrice=<null>,debtPrice=<null>,payType=<null>,status=进行中,recordState=正常,printTicket=false,startTime=Fri Dec 16 11:30:52 CST 2016,endTime=Fri Dec 16 13:15:52 CST 2016,createTime=Fri Dec 16 11:33:25 CST 2016,modifyTime=Fri Dec 16 11:33:25 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,consumptionItems=<null>,empName=<null>,customerName=<null>,customerMobile=<null>,operationName=<null>,serverConsumptionRecords=[com.jk2c.common.pojo.ServerConsumptionRecord@b47434e3],takeOutProductRecords=[com.jk2c.common.pojo.TakeOutProductRecord@98da79d4],walletConsumptionRecords=[com.jk2c.common.pojo.WalletConsumptionRecord@f566c60f],customer=解冰,mainServiceEmployeeObj=张明,consignProductConsumeRecords=[],customerDiscountConfigs=[9折优惠券],consumptionPayTypes=<null>,referrerInfos=[com.jk2c.common.pojo.ReferrerInfo@c0a8169]]', '172.16.100.193', 'consumptionMgmt', '2016-12-16 11:33:25', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');
INSERT INTO `modify_log` VALUES ('69588f06-25f2-4769-a199-ded57d700bac', '添加了顾客，名称=吴京华，添加内容是：Customer[id=7db8b189-d122-4f7c-9572-aa48d9605859,name=吴京华,prestore=<null>,gender=0,birthday=Mon May 02 00:00:00 CST 2016,mobile=13933333333,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 11:13:51 CST 2016,modifyTime=Wed Nov 30 11:13:51 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 11:13:51 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 11:13:51', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('7f96cd0d-8232-4d83-8da1-51658193bcbd', '添加了员工，工号为=001，添加内容是：Employee[jobNumber=001,name=001,headPortraitId=<null>,avatar=<null>,gender=<null>,entryTime=<null>,workYearNum=<null>,positionId=<null>,positionName=<null>,level=初级,workState=工作,mobile=13811111111,wechat=<null>,email=<null>,salaryType=<null>,basicSalary=<null>,memo=<null>,recordState=正常,createTime=Thu Nov 24 16:34:06 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.161', 'employeeMgmt', '2016-11-24 16:34:06', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('86c34dc6-4214-4b3f-91d3-f26eefb515cb', '修改了顾客信息，名称=lulu，修改内容是：Customer[id=1d620e98-7fb7-4bec-b86a-e8425ec4e717,name=lulu,prestore=<null>,gender=0,birthday=<null>,mobile=13966666666,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=2016-12-02 15:15:27.0,modifyTime=Fri Dec 02 15:15:51 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=紫色;,familiarEmployeeNum=<null>,changedPrepareMemberTime=2016-12-02 15:15:27.0,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '222.128.2.58', 'customerMgmt', '2016-12-02 15:15:51', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('886c48d7-556c-425e-8f8f-49a29533b358', '修改了库存产品，名称=飘柔100ml，修改内容是：Inventory[inventoryId=04271947-71d1-4626-b520-74f97d10d06c,distributorProductId=e5bb6620-8e04-4ea9-8593-2138381beb66,unitCode=箱,distributorName=一般供应商(非供应商),purchasePrice=100.0,pastDueTime=Tue Nov 29 00:00:00 CST 2016,productName=飘柔100ml,productTypeCode=护发素,sellPrice=100.0,preCheckNum=380,newestInventoryNum=300,takeOutNum=1,claimNum=180,purchaseNum=0,rtPurchaseNum=0,damagedNum=0,brandCode=<null>,seriesCode=<null>,specification=<null>,isSellProduct=true,memo=,recordState=<null>,createTime=<null>,modifyTime=Wed Nov 30 16:37:41 CST 2016,creater=<null>,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=[com.jk2c.common.pojo.SystemConfig@1f941380, com.jk2c.common.pojo.SystemConfig@3caa4443, com.jk2c.common.pojo.SystemConfig@a7626167]]', '222.128.2.58', 'inventoryMgmt', '2016-12-01 11:26:13', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventoryMgmt.inventory.product');
INSERT INTO `modify_log` VALUES ('8ac3d244-e044-4bca-88f9-8a284b2f693f', '修改了服务项目，名称=美容，修改内容是：ServerInfo[serverNum=9908aa7a-19a3-431c-af89-060c728e7338,name=美容,serverConsumablesList=[],serverTypeCode=<null>,cost=50.0,sellPrice=200.0,estimateTime=60.0,memo=,recordState=正常,createTime=2016-11-25 14:48:00.0,modifyTime=Wed Nov 30 11:21:16 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53]', '172.16.100.178', 'serviceMgmt', '2016-11-30 11:21:16', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.service');
INSERT INTO `modify_log` VALUES ('8b17027f-d3a9-47ad-8a65-d12c8f8401c7', '添加了员工，工号为=003，添加内容是：Employee[jobNumber=003,name=张明,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Wed Nov 30 00:00:00 CST 2016,workYearNum=5.0,positionId=剪发师,positionName=<null>,level=高级,workState=工作,mobile=13922222222,wechat=3234,email=333@99.com,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=Wed Nov 30 11:10:47 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-30 11:10:47', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('8cf965c7-1ad4-4880-81ee-c39f10e08118', '添加了员工，工号为=002，添加内容是：Employee[jobNumber=002,name=小张,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Mon Nov 21 00:00:00 CST 2016,workYearNum=<null>,positionId=小工,positionName=<null>,level=初级,workState=工作,mobile=13911111111,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=Fri Nov 25 12:11:03 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-25 12:11:03', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('8d28890d-cb09-49fd-ab4a-584c10f9ec1d', '添加了库存产品，名称=飘柔100ml，添加内容是：Inventory[inventoryId=04271947-71d1-4626-b520-74f97d10d06c,distributorProductId=e5bb6620-8e04-4ea9-8593-2138381beb66,unitCode=<null>,distributorName=<null>,purchasePrice=100.0,pastDueTime=Tue Nov 29 00:00:00 CST 2016,productName=飘柔100ml,productTypeCode=护发素,sellPrice=<null>,preCheckNum=<null>,newestInventoryNum=5,takeOutNum=<null>,claimNum=<null>,purchaseNum=<null>,rtPurchaseNum=<null>,damagedNum=<null>,brandCode=飘柔,seriesCode=飘柔人参滋养,specification=2,isSellProduct=false,memo=,recordState=正常,createTime=Fri Nov 25 17:05:07 CST 2016,modifyTime=Fri Nov 25 17:05:07 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'jk2cloud.basicCodable', '2016-11-25 17:05:07', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'jk2cloud.basicCodable');
INSERT INTO `modify_log` VALUES ('90e14c82-a191-4361-adae-ecad7f22e585', '添加了顾客，名称=lulu，添加内容是：Customer[id=1d620e98-7fb7-4bec-b86a-e8425ec4e717,name=lulu,prestore=<null>,gender=0,birthday=<null>,mobile=13966666666,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Fri Dec 02 15:15:27 CST 2016,modifyTime=Fri Dec 02 15:15:27 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Fri Dec 02 15:15:27 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '222.128.2.58', 'customerMgmt', '2016-12-02 15:15:27', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('912a680a-59d7-4e21-8a01-e97023cfee8a', '添加了岗位，编号为=剪发师，添加内容是：Position[code=剪发师,name=剪发师,description=,recordState=正常,createTime=Wed Nov 30 11:10:01 CST 2016,modifyTime=Wed Nov 30 11:10:01 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,isAllowDel=true]', '172.16.100.178', 'employeeMgmt', '2016-11-30 11:10:01', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.positionScale');
INSERT INTO `modify_log` VALUES ('992dfca9-b5fb-4c39-9fac-91040a1e429f', '添加了库存产品，名称=潘婷100ml，添加内容是：Inventory[inventoryId=a0bd6626-a433-430c-b707-dfecfb3d913f,distributorProductId=088f0f96-359a-411e-863d-9f8090709ff9,unitCode=<null>,distributorName=<null>,purchasePrice=10.0,pastDueTime=Thu Jan 26 00:00:00 CST 2017,productName=潘婷100ml,productTypeCode=洗发水,sellPrice=<null>,preCheckNum=<null>,newestInventoryNum=100,takeOutNum=<null>,claimNum=<null>,purchaseNum=<null>,rtPurchaseNum=<null>,damagedNum=<null>,brandCode=潘婷,seriesCode=潘婷水润滋养,specification=10,isSellProduct=false,memo=,recordState=正常,createTime=Wed Nov 30 11:16:54 CST 2016,modifyTime=Wed Nov 30 11:16:54 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'inventoryMgmt', '2016-11-30 11:16:54', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventoryMgmt.inventory.product');
INSERT INTO `modify_log` VALUES ('9e3ac3de-4b26-425d-9bd5-fe3374c0e09c', '删除了顾客信息，名称=解冰，内容是：Customer[id=15e9e55b-045a-40c0-bded-e0ec97bb05b1,name=解冰,prestore=<null>,gender=0,birthday=<null>,mobile=13811111111,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=2016-11-30 11:38:42.0,modifyTime=Wed Nov 30 14:16:29 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=已删除,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=2016-11-30 11:38:42.0,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 14:16:29', '2', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('a678d911-4e23-4f8b-97ff-99263b4449f5', '添加了消费单，添加内容：Consumption[consumptionNum=a426911e-8867-4684-94b5-5da14cf116f3,customerId=1d620e98-7fb7-4bec-b86a-e8425ec4e717,mainServiceEmployee=004,discountCouponId=<null>,discountCouponName=<null>,amountPrice=100.0,totalPrice=100.0,discountAfterPrice=100.0,debtPrice=<null>,payType=<null>,status=已结算,recordState=正常,printTicket=false,startTime=Fri Dec 02 15:25:22 CST 2016,endTime=Fri Dec 02 16:10:22 CST 2016,createTime=Fri Dec 02 15:26:10 CST 2016,modifyTime=Fri Dec 02 15:26:10 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,consumptionItems=<null>,empName=<null>,customerName=<null>,customerMobile=<null>,operationName=<null>,serverConsumptionRecords=[],takeOutProductRecords=[com.jk2c.common.pojo.TakeOutProductRecord@bf67b031],walletConsumptionRecords=[],customer=lulu,mainServiceEmployeeObj=李杨,consignProductConsumeRecords=[],customerDiscountConfigs=[],consumptionPayTypes=[com.jk2c.common.pojo.ConsumptionPayType@aef2c5a9],referrerInfos=<null>]', '222.128.2.58', 'consumptionMgmt', '2016-12-02 15:26:10', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');
INSERT INTO `modify_log` VALUES ('b4194401-26aa-41b8-b314-6255b78d85cb', '添加了岗位，编号为=小工，添加内容是：Position[code=小工,name=小工,description=,recordState=正常,createTime=Fri Nov 25 12:10:09 CST 2016,modifyTime=Fri Nov 25 12:10:09 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,isAllowDel=true]', '172.16.100.178', 'employeeMgmt', '2016-11-25 12:10:09', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.positionScale');
INSERT INTO `modify_log` VALUES ('b801cc1b-b9d2-4efd-9b80-731eb64a3a55', '添加了外卖产品售价，名称=飘柔100ml，内容是：Inventory[inventoryId=04271947-71d1-4626-b520-74f97d10d06c,distributorProductId=e5bb6620-8e04-4ea9-8593-2138381beb66,unitCode=<null>,distributorName=<null>,purchasePrice=100.0,pastDueTime=2016-11-29,productName=飘柔100ml,productTypeCode=护发素,sellPrice=100.0,preCheckNum=380,newestInventoryNum=200,takeOutNum=0,claimNum=180,purchaseNum=0,rtPurchaseNum=0,damagedNum=0,brandCode=飘柔,seriesCode=飘柔人参滋养,specification=2,isSellProduct=true,memo=,recordState=正常,createTime=2016-11-25 17:05:07.0,modifyTime=Wed Nov 30 15:55:26 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,scaleNum=<null>,checkDeviation=<null>,realityCheckInventoryNum=<null>,realityClaimResidueNum=<null>,systemConfig=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 15:55:26', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.sellProduct');
INSERT INTO `modify_log` VALUES ('be164ba4-04b3-4646-9024-17af17a9dcbf', '添加了优惠，名称=9折优惠券，添加内容是：DiscountCoupon[id=c2b3ab5d-10e5-41d7-a902-eb40f26a833e,name=9折优惠券,timeLimit=<null>,number=<null>,discount=9.0,abatement=<null>,arrivalTime=<null>,consumptionPrice=<null>,serverNum=all,serverInfoList=<null>,inventoryId=all,selectInventoryList=<null>,productName=<null>,memo=,recordState=正常,createTime=Wed Nov 30 11:19:10 CST 2016,modifyTime=Wed Nov 30 11:19:10 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,sellPrice=500.0,storedValue=false,storedMoney=<null>,minRechargeMoney=<null>]', '172.16.100.178', 'serviceMgmt', '2016-11-30 11:19:10', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'serviceMgmt.consumption');
INSERT INTO `modify_log` VALUES ('c1b4c68b-e7d0-494d-8e31-10e90f73f8b5', '修改了顾客信息，名称=吴京华，修改内容是：Customer[id=fa26d6a4-d05e-4d35-bd4e-8cb717a998e6,name=吴京华,prestore=<null>,gender=0,birthday=Mon Nov 07 00:00:00 CST 2016,mobile=13922222222,wechat=<null>,address=<null>,qq=5895695,email=,memo=,createTime=2016-11-30 14:19:45.0,modifyTime=Wed Nov 30 16:46:42 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=2016-11-30 14:19:45.0,changedMemberTime=2016-11-30 15:35:10.0,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 16:46:42', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('cc06503b-0d80-483c-b108-4c7db0fd946f', '添加了消费单，添加内容：Consumption[consumptionNum=52a339da-caef-4d59-8922-12bc7af5498d,customerId=7db8b189-d122-4f7c-9572-aa48d9605859,mainServiceEmployee=003,discountCouponId=<null>,discountCouponName=<null>,amountPrice=800.0,totalPrice=<null>,discountAfterPrice=<null>,debtPrice=<null>,payType=<null>,status=进行中,recordState=正常,printTicket=false,startTime=Wed Nov 30 11:25:35 CST 2016,endTime=Wed Nov 30 12:10:35 CST 2016,createTime=Wed Nov 30 11:23:28 CST 2016,modifyTime=Wed Nov 30 11:23:28 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,consumptionItems=<null>,empName=<null>,customerName=<null>,customerMobile=<null>,operationName=<null>,serverConsumptionRecords=[],takeOutProductRecords=[],walletConsumptionRecords=[com.jk2c.common.pojo.WalletConsumptionRecord@f5b3804e],customer=吴京华,mainServiceEmployeeObj=张明,consignProductConsumeRecords=[],customerDiscountConfigs=[8折优惠券],consumptionPayTypes=<null>,referrerInfos=<null>]', '172.16.100.178', 'consumptionMgmt', '2016-11-30 11:23:28', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');
INSERT INTO `modify_log` VALUES ('d2eaba3a-4855-4be6-8b02-6b612b988ccb', '添加盘点，共盘点=3条', '172.16.100.178', 'inventoryMgmt', '2016-11-30 12:29:18', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventoryMgmt.inventory.inventoryCheck');
INSERT INTO `modify_log` VALUES ('dbc89af2-cdc0-4b55-9e78-16b0d3a6c6fe', '修改了顾客信息，名称=Lisa，修改内容是：Customer[id=abfc0352-c839-4a6c-8e56-93d445766236,name=Lisa,prestore=<null>,gender=0,birthday=<null>,mobile=13955555555,wechat=<null>,address=<null>,qq=3242442,email=,memo=,createTime=2016-11-30 16:39:07.0,modifyTime=Thu Dec 01 11:12:21 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=2016-11-30 16:39:07.0,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '222.128.2.58', 'customerMgmt', '2016-12-01 11:12:21', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('dea24e75-1ddd-448f-a72c-3de4c13b97a4', '删除了员工，工号为=004，内容是：Employee[jobNumber=004,name=LILI,headPortraitId=<null>,avatar=<null>,gender=0,entryTime=2016-11-30 00:00:00.0,workYearNum=<null>,positionId=小工,positionName=<null>,level=中级,workState=工作,mobile=13695869586,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=已删除,createTime=2016-11-30 11:37:13.0,modifyTime=Wed Nov 30 14:15:59 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-30 14:15:59', '2', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('e56cd7a8-59dd-4d9a-a399-4b2bda675ecd', '添加了分类，名称=无色若，添加内容是：OrderBrandCategory[id=0e41502e-9be9-444b-bb1e-fc90179332c2,categoryName=无色若,subCategoryName=额地方,recordState=正常,createTime=Fri Dec 09 15:06:05 CST 2016,modifyTime=Fri Dec 09 15:06:05 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53]', '222.128.2.58', 'consumptionMgmt', '2016-12-09 15:06:05', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.workSchedule');
INSERT INTO `modify_log` VALUES ('e6eaedba-2403-4113-97a4-2b139e279b36', '修改流水盘信息，id=c5a13aef-003f-49be-b498-02566947c56a，内容是：OrderBrandEmployee[id=c5a13aef-003f-49be-b498-02566947c56a,orderBrandCategoryId=0e41502e-9be9-444b-bb1e-fc90179332c2,employeeId=002,employee=小张,sortOrder=4.0,orderBrandState=正常]', '222.128.2.58', 'consumptionMgmt', '2016-12-09 15:06:19', '2', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.workSchedule');
INSERT INTO `modify_log` VALUES ('e8db53a0-1265-443a-a282-516998bab3a5', '添加了寄存商品，编号=e5bb6620-8e04-4ea9-8593-2138381beb66，添加内容是：ConsignProduct[productId=e5bb6620-8e04-4ea9-8593-2138381beb66,customerId=fa26d6a4-d05e-4d35-bd4e-8cb717a998e6,customerName=<null>,lastEmployTime=<null>,consignTime=Wed Nov 30 15:35:10 CST 2016,residue=10.0,unitCode=箱,recordState=正常,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,productName=飘柔100ml,unit=<null>,distributorProduct=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 15:35:11', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('ea1fd2c7-1a59-4b30-82a8-059676b608ff', '添加了寄存商品，编号=c53b3c3d-5993-4010-89dc-07f3152b4f6f，添加内容是：ConsignProduct[productId=c53b3c3d-5993-4010-89dc-07f3152b4f6f,customerId=b3f49be0-576f-4e98-a8c5-510be03578ae,customerName=<null>,lastEmployTime=<null>,consignTime=Fri Dec 02 15:17:37 CST 2016,residue=2.0,unitCode=个,recordState=正常,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,productName=潘婷400ml,unit=<null>,distributorProduct=<null>]', '222.128.2.58', 'customerMgmt', '2016-12-02 15:17:37', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('ea2fec08-ee51-45da-bf46-499ebddd8fae', '添加了顾客，名称=解冰，添加内容是：Customer[id=15e9e55b-045a-40c0-bded-e0ec97bb05b1,name=解冰,prestore=<null>,gender=0,birthday=<null>,mobile=13811111111,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 11:38:42 CST 2016,modifyTime=Wed Nov 30 11:38:42 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 11:38:42 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 11:38:42', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('f2031316-fd34-466c-ad1f-cd653a7e2b8f', '添加了员工，工号为=005，添加内容是：Employee[jobNumber=005,name=小米,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Fri Dec 02 00:00:00 CST 2016,workYearNum=<null>,positionId=剪发师,positionName=<null>,level=高级,workState=工作,mobile=13567867876,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=Fri Dec 02 15:20:23 CST 2016,modifyTime=<null>,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=<null>,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '222.128.2.58', 'employeeMgmt', '2016-12-02 15:20:23', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('f8695ce4-4b70-4a03-b4f0-bd5d4cc4c6c1', '添加了顾客，名称=Lisa，添加内容是：Customer[id=abfc0352-c839-4a6c-8e56-93d445766236,name=Lisa,prestore=<null>,gender=0,birthday=<null>,mobile=13955555555,wechat=<null>,address=<null>,qq=,email=,memo=,createTime=Wed Nov 30 16:39:07 CST 2016,modifyTime=Wed Nov 30 16:39:07 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,recordState=正常,debtPrice=<null>,memberCard4Import=<null>,memberLevel=准会员,memberLabel=<null>,familiarEmployeeNum=<null>,changedPrepareMemberTime=Wed Nov 30 16:39:07 CST 2016,changedMemberTime=<null>,memberCards=<null>,customerDiscountConfigs=<null>,consignProducts=<null>,customerDiscountConfigImport=<null>,consumptionList=<null>]', '172.16.100.178', 'customerMgmt', '2016-11-30 16:39:07', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'customerMgmt.customer');
INSERT INTO `modify_log` VALUES ('fab4ef83-17ce-4b34-9653-dc2d6e50f7a6', '修改了员工，工号为=002，修改内容是：Employee[jobNumber=002,name=小张,headPortraitId=<null>,avatar=<null>,gender=1,entryTime=Mon Nov 21 00:00:00 CST 2016,workYearNum=<null>,positionId=小工,positionName=<null>,level=初级,workState=工作,mobile=13958412012,wechat=,email=,salaryType=<null>,basicSalary=<null>,memo=,recordState=正常,createTime=2016-11-25 12:11:03.0,modifyTime=Wed Nov 30 12:27:36 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,appointmentCount=<null>,waitCount=<null>,processingCount=<null>,appointmentInfoList=<null>,waitConsumptionList=<null>,processingConsumptionList=<null>,positionScaleConfig=<null>]', '172.16.100.178', 'employeeMgmt', '2016-11-30 12:27:36', '1', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'employeeMgmt.employee');
INSERT INTO `modify_log` VALUES ('fc4539ec-d79f-4693-956c-94ec248dbc99', '添加了消费单，添加内容：Consumption[consumptionNum=4403ce28-c2ea-4abe-a134-2e113dbf64f2,customerId=9d2c482e-d099-416f-b61f-777353492b0d,mainServiceEmployee=003,discountCouponId=<null>,discountCouponName=<null>,amountPrice=200.0,totalPrice=200.0,discountAfterPrice=200.0,debtPrice=<null>,payType=<null>,status=已结算,recordState=正常,printTicket=false,startTime=Wed Nov 30 11:40:55 CST 2016,endTime=Wed Nov 30 13:25:55 CST 2016,createTime=Wed Nov 30 11:40:42 CST 2016,modifyTime=Wed Nov 30 11:40:42 CST 2016,creater=09152cb9-442a-4e90-b81d-26cbd0920e53,modifier=09152cb9-442a-4e90-b81d-26cbd0920e53,consumptionItems=<null>,empName=<null>,customerName=<null>,customerMobile=<null>,operationName=<null>,serverConsumptionRecords=[com.jk2c.common.pojo.ServerConsumptionRecord@f886f419],takeOutProductRecords=[],walletConsumptionRecords=[],customer=朱梦超,mainServiceEmployeeObj=张明,consignProductConsumeRecords=[],customerDiscountConfigs=[],consumptionPayTypes=[com.jk2c.common.pojo.ConsumptionPayType@c8e1bde4],referrerInfos=<null>]', '172.16.100.178', 'consumptionMgmt', '2016-11-30 11:40:42', '0', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'consumptionMgmt.consumption');

-- ----------------------------
-- Table structure for `order_brand_category`
-- ----------------------------
DROP TABLE IF EXISTS `order_brand_category`;
CREATE TABLE `order_brand_category` (
  `id` varchar(64) NOT NULL,
  `category_name` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `sub_category_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_brand_category
-- ----------------------------
INSERT INTO `order_brand_category` VALUES ('0e41502e-9be9-444b-bb1e-fc90179332c2', '无色若', '2016-12-09 15:06:05', '09152cb9-442a-4e90-b81d-26cbd0920e53', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-09 15:06:05', 'normal', '额地方');

-- ----------------------------
-- Table structure for `order_brand_employee`
-- ----------------------------
DROP TABLE IF EXISTS `order_brand_employee`;
CREATE TABLE `order_brand_employee` (
  `id` varchar(64) NOT NULL,
  `employee_id` varchar(64) DEFAULT NULL,
  `order_brand_category_id` varchar(64) DEFAULT NULL,
  `order_brand_state` varchar(8) DEFAULT NULL,
  `sort_order` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_brand_employee
-- ----------------------------
INSERT INTO `order_brand_employee` VALUES ('02a9f6eb-106e-451c-8099-7a8916acc7da', '003', '0e41502e-9be9-444b-bb1e-fc90179332c2', 'normal', '1');
INSERT INTO `order_brand_employee` VALUES ('41bc3c14-e624-402c-923d-0522fa1d4a4c', '004', '0e41502e-9be9-444b-bb1e-fc90179332c2', 'normal', '2');
INSERT INTO `order_brand_employee` VALUES ('c5a13aef-003f-49be-b498-02566947c56a', '002', '0e41502e-9be9-444b-bb1e-fc90179332c2', 'normal', '4');
INSERT INTO `order_brand_employee` VALUES ('cf9a9488-13e6-4330-987a-0f2080342a86', '005', '0e41502e-9be9-444b-bb1e-fc90179332c2', 'normal', '0');
INSERT INTO `order_brand_employee` VALUES ('e53dd1f5-02c0-471b-9d97-db4ad6100537', '001', '0e41502e-9be9-444b-bb1e-fc90179332c2', 'normal', '3');

-- ----------------------------
-- Table structure for `order_brand_log`
-- ----------------------------
DROP TABLE IF EXISTS `order_brand_log`;
CREATE TABLE `order_brand_log` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `move_type` varchar(12) DEFAULT NULL,
  `new_employee_order` text,
  `order_brand_category_id` varchar(64) DEFAULT NULL,
  `original_employee_order` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_brand_log
-- ----------------------------
INSERT INTO `order_brand_log` VALUES ('6c722784-c387-424e-b3b0-0686f1f519a3', '2016-12-09 15:06:16', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'backwards', '005;003;004;001;002', '0e41502e-9be9-444b-bb1e-fc90179332c2', '001;002;005;003;004');
INSERT INTO `order_brand_log` VALUES ('d16a3f2c-226d-40c7-8066-520fe7a3deb7', '2016-12-09 15:06:18', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'backwards', '005;003;004;001;002', '0e41502e-9be9-444b-bb1e-fc90179332c2', '005;003;004;001;002');

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('剪发师', '2016-11-30 11:10:01', '09152cb9-442a-4e90-b81d-26cbd0920e53', '', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:10:01', '剪发师', 'normal');
INSERT INTO `position` VALUES ('小工', '2016-11-25 12:10:09', '09152cb9-442a-4e90-b81d-26cbd0920e53', '', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-25 12:10:09', '小工', 'normal');

-- ----------------------------
-- Table structure for `position_scale_config`
-- ----------------------------
DROP TABLE IF EXISTS `position_scale_config`;
CREATE TABLE `position_scale_config` (
  `consumptionId` varchar(64) NOT NULL,
  `position_id` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `scale_basic` varchar(6) DEFAULT NULL,
  `scale_method` varchar(10) DEFAULT NULL,
  `scale_num` double DEFAULT NULL,
  PRIMARY KEY (`consumptionId`,`position_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position_scale_config
-- ----------------------------

-- ----------------------------
-- Table structure for `product_type`
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `profession` varchar(12) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES ('护发素', '2016-11-08 16:45:05', 'sys', '\0', 'sys', '2016-11-08 16:45:05', '护发素', 'hairStyle', 'normal');
INSERT INTO `product_type` VALUES ('指甲刀', '2016-12-15 10:19:38', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '\0', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '2016-12-15 10:20:49', '指甲刀', 'bodybuilding', 'deleted');
INSERT INTO `product_type` VALUES ('指甲油', '2016-11-08 16:45:52', 'sys', '\0', 'sys', '2016-11-09 15:09:17', '指甲油', 'bodybuilding', 'normal');
INSERT INTO `product_type` VALUES ('染发剂', '2016-11-08 16:45:40', 'sys', '\0', 'sys', '2016-11-08 16:45:40', '染发剂', 'hairStyle', 'normal');
INSERT INTO `product_type` VALUES ('水', '2016-11-08 16:43:48', 'sys', '\0', 'sys', '2016-11-08 16:43:48', '水', 'hairdressing', 'normal');
INSERT INTO `product_type` VALUES ('洗发水', '2016-11-08 16:44:55', 'sys', '\0', 'sys', '2016-11-08 16:44:55', '洗发水', 'hairStyle', 'normal');
INSERT INTO `product_type` VALUES ('洗面奶', '2016-11-08 16:44:07', 'sys', '\0', 'sys', '2016-11-08 16:44:07', '洗面奶', 'hairdressing', 'normal');
INSERT INTO `product_type` VALUES ('眉笔', '2016-11-08 16:43:18', 'sys', '\0', 'sys', '2016-11-08 16:43:18', '眉笔', 'hairdressing', 'normal');
INSERT INTO `product_type` VALUES ('隔离', '2016-11-08 16:44:42', 'sys', '\0', 'sys', '2016-11-08 16:44:42', '隔离', 'hairdressing', 'normal');
INSERT INTO `product_type` VALUES ('面霜', '2016-11-08 16:44:23', 'sys', '\0', 'sys', '2016-11-08 16:44:23', '面霜', 'hairdressing', 'normal');

-- ----------------------------
-- Table structure for `referrer_info`
-- ----------------------------
DROP TABLE IF EXISTS `referrer_info`;
CREATE TABLE `referrer_info` (
  `id` varchar(64) NOT NULL,
  `consumption_num` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `discount_coupon_id` varchar(64) DEFAULT NULL,
  `referrer_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of referrer_info
-- ----------------------------
INSERT INTO `referrer_info` VALUES ('ef09601f-47c6-44ab-8895-c316acf4462a', 'f60f3878-3d31-4947-8b32-f1d811bb7373', 'b3f49be0-576f-4e98-a8c5-510be03578ae', '9d277fbb-629c-4abd-b4bc-212be4afcf37', 'abfc0352-c839-4a6c-8e56-93d445766236');

-- ----------------------------
-- Table structure for `series_4mgmt`
-- ----------------------------
DROP TABLE IF EXISTS `series_4mgmt`;
CREATE TABLE `series_4mgmt` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `profession` varchar(12) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of series_4mgmt
-- ----------------------------
INSERT INTO `series_4mgmt` VALUES ('215', '2016-12-15 10:23:54', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '\0', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '2016-12-15 10:24:12', '21599', null, 'deleted');
INSERT INTO `series_4mgmt` VALUES ('沙宣深层保湿', '2016-11-24 14:17:50', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:17:50', '沙宣深层保湿', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('沙宣轻盈柔顺', '2016-11-24 14:18:14', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:18:14', '沙宣轻盈柔顺', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('潘婷丝质顺滑', '2016-11-24 14:05:52', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:05:52', '潘婷丝质顺滑', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('潘婷乳液修护', '2016-11-24 14:06:07', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:06:07', '潘婷乳液修护', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('潘婷水润滋养', '2016-11-24 14:06:39', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:06:39', '潘婷水润滋养', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('飘柔人参滋养', '2016-11-24 14:15:06', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:15:06', '飘柔人参滋养', null, 'normal');
INSERT INTO `series_4mgmt` VALUES ('飘柔焗油护理', '2016-11-24 14:15:44', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 14:15:44', '飘柔焗油护理', null, 'normal');

-- ----------------------------
-- Table structure for `server_consumables`
-- ----------------------------
DROP TABLE IF EXISTS `server_consumables`;
CREATE TABLE `server_consumables` (
  `distributor_product_id` varchar(64) NOT NULL,
  `server_num` varchar(64) NOT NULL,
  `memo` longtext,
  PRIMARY KEY (`distributor_product_id`,`server_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_consumables
-- ----------------------------

-- ----------------------------
-- Table structure for `server_consumption_record`
-- ----------------------------
DROP TABLE IF EXISTS `server_consumption_record`;
CREATE TABLE `server_consumption_record` (
  `consumption_num` varchar(64) NOT NULL,
  `server_num` varchar(64) NOT NULL,
  `cost` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discount_coupon_id` varchar(64) DEFAULT NULL,
  `job_number` text,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `practical_price` double DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `should_price` double DEFAULT NULL,
  PRIMARY KEY (`consumption_num`,`server_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_consumption_record
-- ----------------------------
INSERT INTO `server_consumption_record` VALUES ('4403ce28-c2ea-4abe-a134-2e113dbf64f2', '9908aa7a-19a3-431c-af89-060c728e7338', '50', '2016-11-30 11:40:42', '09152cb9-442a-4e90-b81d-26cbd0920e53', '9d2c482e-d099-416f-b61f-777353492b0d', null, null, '003;', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:40:42', '1', '200', '200', '200');
INSERT INTO `server_consumption_record` VALUES ('f60f3878-3d31-4947-8b32-f1d811bb7373', '9908aa7a-19a3-431c-af89-060c728e7338', '50', '2016-12-16 11:33:25', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'b3f49be0-576f-4e98-a8c5-510be03578ae', null, null, '003;002;', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-16 11:33:25', '1', '200', '200', '200');

-- ----------------------------
-- Table structure for `server_info`
-- ----------------------------
DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `server_num` varchar(64) NOT NULL,
  `cost` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `estimate_time` double DEFAULT NULL,
  `memo` longtext,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `server_type_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`server_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_info
-- ----------------------------
INSERT INTO `server_info` VALUES ('9908aa7a-19a3-431c-af89-060c728e7338', '50', '2016-11-25 14:48:00', '09152cb9-442a-4e90-b81d-26cbd0920e53', '60', '', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 11:21:16', '美容', 'normal', '200', null);

-- ----------------------------
-- Table structure for `server_type`
-- ----------------------------
DROP TABLE IF EXISTS `server_type`;
CREATE TABLE `server_type` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `profession` varchar(12) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_type
-- ----------------------------

-- ----------------------------
-- Table structure for `stat_month`
-- ----------------------------
DROP TABLE IF EXISTS `stat_month`;
CREATE TABLE `stat_month` (
  `cal_month` date NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`cal_month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_month
-- ----------------------------
INSERT INTO `stat_month` VALUES ('2016-11-01', '2016-12-09 10:59:11', '2016-12-09 10:59:08', 'done');

-- ----------------------------
-- Table structure for `stat_month_item`
-- ----------------------------
DROP TABLE IF EXISTS `stat_month_item`;
CREATE TABLE `stat_month_item` (
  `id` varchar(64) NOT NULL,
  `cal_month` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `item_double_value` double DEFAULT NULL,
  `item_int_value` int(11) DEFAULT NULL,
  `item_xml_value` text,
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cal_month_type` (`cal_month`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_month_item
-- ----------------------------
INSERT INTO `stat_month_item` VALUES ('04f65fbd-6701-412d-92cf-c1e5cb060f85', '2016-11-01', '2016-12-09 10:59:10', '0', '2', '', 'memberCount');
INSERT INTO `stat_month_item` VALUES ('0630f308-c835-4be1-8292-b7ffe0599366', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>04271947-71d1-4626-b520-74f97d10d06c</string>\n    </void>\n    <void property=\"value\">\n     <double>100.0</double>\n    </void>\n   </object>\n  </void>\n </object>\n', 'takeOutPracticalTop');
INSERT INTO `stat_month_item` VALUES ('0dd4f6c5-83ef-4175-930e-8f46dc503740', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberRechargeRange\">\n    <void property=\"rechargeRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.RechargeRangeEnum</class>\n      <string>zeroToFiveHundred</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberRechargeRange\">\n    <void property=\"rechargeRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.RechargeRangeEnum</class>\n      <string>fiveHundredToOneThousand</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberRechargeRange\">\n    <void property=\"rechargeRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.RechargeRangeEnum</class>\n      <string>oneThousandToThousandFive</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberRechargeRange\">\n    <void property=\"rechargeRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.RechargeRangeEnum</class>\n      <string>thousandFiveAbove</string>\n     </object>\n    </void>\n   </object>\n  </void>\n </object>\n', 'memberRechargeRange');
INSERT INTO `stat_month_item` VALUES ('16647d52-ec34-4e95-a8d7-6e78fb3b80ed', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'expendPreStoreAmount');
INSERT INTO `stat_month_item` VALUES ('2740197e-089b-431f-8b0f-0089c8f7fa6b', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>9908aa7a-19a3-431c-af89-060c728e7338</string>\n    </void>\n    <void property=\"value\">\n     <int>1</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'serverTimeTop');
INSERT INTO `stat_month_item` VALUES ('36455783-bd62-42b1-ad17-e288bf0a7c98', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'newPreStoreAmount');
INSERT INTO `stat_month_item` VALUES ('40ef9967-be14-43f6-b498-4eccd2ed499f', '2016-11-01', '2016-12-09 10:59:10', '100', '0', '', 'takeOutProductAmount');
INSERT INTO `stat_month_item` VALUES ('46fe9783-1349-419f-9a9f-4de31989a7c9', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\"/>\n', 'nonTakeOutPurchaseAmountByType');
INSERT INTO `stat_month_item` VALUES ('4d405564-8785-4c2e-8daf-20a43b46271d', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"com.jk2c.common.model.stat.ProductPurchaseAmountByType\"/>\n', 'productPurchaseAmountByType');
INSERT INTO `stat_month_item` VALUES ('53f223e6-fac3-4830-bc65-abf9e45fecf3', '2016-11-01', '2016-12-09 10:59:10', '0', '3', '', 'settlementCount');
INSERT INTO `stat_month_item` VALUES ('547de513-be04-405f-9a17-9ea00e56f13c', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'nonMemberTime');
INSERT INTO `stat_month_item` VALUES ('61722d74-7e59-4ee9-8818-e4c2f4b4dccb', '2016-11-01', '2016-12-09 10:59:10', '1100', '0', '', 'practicalAmount');
INSERT INTO `stat_month_item` VALUES ('61ed6160-f192-4276-a700-2b01a48a9bc3', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"com.jk2c.common.model.stat.SettlementAmountByType\">\n  <void property=\"discountRechargeAmount\">\n   <double>800.0</double>\n  </void>\n  <void property=\"serverAmount\">\n   <double>200.0</double>\n  </void>\n  <void property=\"takeOutProductAmount\">\n   <double>100.0</double>\n  </void>\n </object>\n', 'settlementAmountByType');
INSERT INTO `stat_month_item` VALUES ('65434a8e-854f-4fcc-9a66-ff130ed34b7d', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.EmployeePerformanceWrap\">\n    <void property=\"curValue\">\n     <int>3</int>\n    </void>\n    <void property=\"employeeNum\">\n     <string>003</string>\n    </void>\n    <void property=\"lastValue\">\n     <int>0</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'employeeServiceCount');
INSERT INTO `stat_month_item` VALUES ('67e23302-e30d-472c-a1a1-72163b940280', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>active</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <double>0.0</double>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>ordinary</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <double>0.0</double>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>unActive</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <double>0.0</double>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>still</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <double>0.0</double>\n    </void>\n   </object>\n  </void>\n </object>\n', 'memberPreStoreByActivity');
INSERT INTO `stat_month_item` VALUES ('6878dbf3-8df9-407d-b9a6-9b7ecbe3039a', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>04271947-71d1-4626-b520-74f97d10d06c</string>\n    </void>\n    <void property=\"value\">\n     <double>0.0</double>\n    </void>\n   </object>\n  </void>\n </object>\n', 'takeOutProfitTop');
INSERT INTO `stat_month_item` VALUES ('7862ca36-7c5f-4f8a-8502-fb7de90c471b', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'rechargeAmount');
INSERT INTO `stat_month_item` VALUES ('7973ccc4-6c0f-468b-9e26-a1945f780cb2', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberAgeWrap\">\n    <void property=\"ageRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.AgeRangeEnum</class>\n      <string>zeroToTwenty</string>\n     </object>\n    </void>\n    <void property=\"count\">\n     <int>3</int>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberAgeWrap\">\n    <void property=\"ageRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.AgeRangeEnum</class>\n      <string>twentyOneToTwentyFive</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberAgeWrap\">\n    <void property=\"ageRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.AgeRangeEnum</class>\n      <string>twentySixToThirty</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberAgeWrap\">\n    <void property=\"ageRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.AgeRangeEnum</class>\n      <string>thirtyOneToForty</string>\n     </object>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberAgeWrap\">\n    <void property=\"ageRange\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.AgeRangeEnum</class>\n      <string>other</string>\n     </object>\n    </void>\n    <void property=\"count\">\n     <int>1</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'memberAgeCount');
INSERT INTO `stat_month_item` VALUES ('7cdd7392-beef-402c-b286-253393bbf41b', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.TreeMap\">\n  <void method=\"put\">\n   <int>11</int>\n   <int>2</int>\n  </void>\n  <void method=\"put\">\n   <int>16</int>\n   <int>1</int>\n  </void>\n </object>\n', 'memberSettlementCountByTime');
INSERT INTO `stat_month_item` VALUES ('86b76562-b97d-460a-93ce-59ace162fb37', '2016-11-01', '2016-12-09 10:59:10', '1100', '0', '', 'shouldAmount');
INSERT INTO `stat_month_item` VALUES ('889f356f-ac2a-4333-b999-724991a85bfa', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'damagedAmount');
INSERT INTO `stat_month_item` VALUES ('8a182b86-3567-4581-b222-8b60c3fb225c', '2016-11-01', '2016-12-09 10:59:10', '0', '2', '', 'customerCount');
INSERT INTO `stat_month_item` VALUES ('8a53a3b2-f87e-4e48-afef-25d4014f0312', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'purchaseAmount');
INSERT INTO `stat_month_item` VALUES ('96567087-fdc8-46fe-bfb0-23da8ba60338', '2016-11-01', '2016-12-09 10:59:10', '0', '2', '', 'inventoryCheckCount');
INSERT INTO `stat_month_item` VALUES ('9cc5381b-2507-4e5d-a39a-f26b03d5c1a5', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\"/>\n', 'debtCustomerList');
INSERT INTO `stat_month_item` VALUES ('aa989e48-4982-4801-b3d8-30a1daf1e471', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>04271947-71d1-4626-b520-74f97d10d06c</string>\n    </void>\n    <void property=\"value\">\n     <int>1</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'takeOutSettlementCountTop');
INSERT INTO `stat_month_item` VALUES ('b296b59c-811a-41f1-861b-2996a386ce7a', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>active</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <int>1</int>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>ordinary</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <int>1</int>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>unActive</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <int>0</int>\n    </void>\n   </object>\n  </void>\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.MemberPreStoreByActivity\">\n    <void property=\"activityType\">\n     <object class=\"java.lang.Enum\" method=\"valueOf\">\n      <class>com.jk2c.common.enums.stat.CustomerActivityType</class>\n      <string>still</string>\n     </object>\n    </void>\n    <void property=\"value\">\n     <int>3</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'memberActivity');
INSERT INTO `stat_month_item` VALUES ('b58b030a-477e-4d4d-ace3-9a35bd7d4b4c', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'preStoreAmount');
INSERT INTO `stat_month_item` VALUES ('b91f7266-8b58-4118-a6b0-af65808f42da', '2016-11-01', '2016-12-09 10:59:10', '0', '3', '', 'memberTime');
INSERT INTO `stat_month_item` VALUES ('c75b8107-a46c-4adc-865e-3deeb09fb662', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'negativeInventoryAmount');
INSERT INTO `stat_month_item` VALUES ('cae05c50-e909-44c2-9567-95b396743f43', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'rtPurchaseAmount');
INSERT INTO `stat_month_item` VALUES ('d121f944-0f55-4bc2-962e-c05c50c48c49', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.EmployeePerformanceWrap\">\n    <void property=\"curValue\">\n     <double>1100.0</double>\n    </void>\n    <void property=\"employeeNum\">\n     <string>003</string>\n    </void>\n    <void property=\"lastValue\">\n     <int>0</int>\n    </void>\n   </object>\n  </void>\n </object>\n', 'employeeSaleAmountTop');
INSERT INTO `stat_month_item` VALUES ('d86cf1bc-f643-4d91-a2fd-9244ee0ab507', '2016-11-01', '2016-12-09 10:59:10', '0', '1', '', 'newMemberCount');
INSERT INTO `stat_month_item` VALUES ('d89c6d62-f41e-420c-b65d-af953adc3727', '2016-11-01', '2016-12-09 10:59:10', '31900', '0', '', 'inventoryAmount');
INSERT INTO `stat_month_item` VALUES ('dab2de4b-e502-4377-b548-e8364952c98e', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '', 'debtAmount');
INSERT INTO `stat_month_item` VALUES ('ec419e28-7f13-4ba9-b28b-6e8dd5f5296d', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\"/>\n', 'employeeExpendWalletTop');
INSERT INTO `stat_month_item` VALUES ('f37bc56e-39b7-4f07-8a21-9252cf88c0c4', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>9908aa7a-19a3-431c-af89-060c728e7338</string>\n    </void>\n    <void property=\"value\">\n     <double>200.0</double>\n    </void>\n   </object>\n  </void>\n </object>\n', 'serverPracticalTop');
INSERT INTO `stat_month_item` VALUES ('fb097a1e-5ebb-49f3-a87e-0de3aaf45aa6', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.LinkedHashMap\">\n  <void method=\"put\">\n   <string>1</string>\n   <int>0</int>\n  </void>\n  <void method=\"put\">\n   <string>0</string>\n   <int>4</int>\n  </void>\n  <void method=\"put\">\n   <string>-1</string>\n   <int>0</int>\n  </void>\n </object>\n', 'memberSexCount');
INSERT INTO `stat_month_item` VALUES ('fc04803b-18b8-4187-a59d-12808c77aeca', '2016-11-01', '2016-12-09 10:59:10', '0', '0', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<java version=\"1.8.0_40\" class=\"java.beans.XMLDecoder\">\n <object class=\"java.util.ArrayList\">\n  <void method=\"add\">\n   <object class=\"com.jk2c.common.model.stat.StatItemWrap\">\n    <void property=\"id\">\n     <string>9908aa7a-19a3-431c-af89-060c728e7338</string>\n    </void>\n    <void property=\"value\">\n     <double>150.0</double>\n    </void>\n   </object>\n  </void>\n </object>\n', 'serviceProfitTop');

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `conf_key` varchar(16) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `conf_value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('732a446d-509c-4659-ab4a-dc7bcf17e15c', '2016-11-24 16:34:24', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'walletPrestore', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-24 16:34:24', '20');
INSERT INTO `system_config` VALUES ('79c4b783-6da3-4dec-b205-a3b6d6865beb', '2016-11-24 16:34:24', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'inventorySurplus', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-24 16:34:24', '10');
INSERT INTO `system_config` VALUES ('cd6c7bde-ba17-429e-8fb6-087c14bbb471', '2016-11-24 16:34:24', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'expired', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-24 16:34:24', '7');

-- ----------------------------
-- Table structure for `take_out_product_record`
-- ----------------------------
DROP TABLE IF EXISTS `take_out_product_record`;
CREATE TABLE `take_out_product_record` (
  `consumption_num` varchar(64) NOT NULL,
  `inventory_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `deduct_type` varchar(64) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discount_coupon_id` varchar(64) DEFAULT NULL,
  `job_number` text,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `practical_price` double DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `should_price` double DEFAULT NULL,
  PRIMARY KEY (`consumption_num`,`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of take_out_product_record
-- ----------------------------
INSERT INTO `take_out_product_record` VALUES ('a426911e-8867-4684-94b5-5da14cf116f3', '04271947-71d1-4626-b520-74f97d10d06c', '2016-12-02 15:26:10', '09152cb9-442a-4e90-b81d-26cbd0920e53', '1d620e98-7fb7-4bec-b86a-e8425ec4e717', 'inventory', null, null, '004', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-02 15:26:10', '1', '100', '100', '100', '100');
INSERT INTO `take_out_product_record` VALUES ('f60f3878-3d31-4947-8b32-f1d811bb7373', 'a0bd6626-a433-430c-b707-dfecfb3d913f', '2016-12-16 11:33:25', '09152cb9-442a-4e90-b81d-26cbd0920e53', 'b3f49be0-576f-4e98-a8c5-510be03578ae', 'inventory', null, null, '003;004;', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-12-16 11:33:25', '1', '100', '10', '100', '100');
INSERT INTO `take_out_product_record` VALUES ('f9fccd5e-39fa-48c4-b50b-5a9ed8c4c148', '04271947-71d1-4626-b520-74f97d10d06c', '2016-11-30 16:37:41', '09152cb9-442a-4e90-b81d-26cbd0920e53', '9d2c482e-d099-416f-b61f-777353492b0d', 'inventory', null, null, '003;', '09152cb9-442a-4e90-b81d-26cbd0920e53', '2016-11-30 16:37:41', '1', '100', '100', '100', '100');

-- ----------------------------
-- Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `code` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `is_allow_del` bit(1) DEFAULT NULL,
  `modifier` varchar(64) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `record_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('41234', '2016-12-15 10:18:19', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '\0', '1e5c8c78-60b2-4bda-9da0-6c5e450c418d', '2016-12-15 10:18:37', '41', 'deleted');
INSERT INTO `unit` VALUES ('个', '2016-11-24 12:24:41', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:24:41', '个', 'normal');
INSERT INTO `unit` VALUES ('瓶', '2016-11-24 12:23:13', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:23:13', '瓶', 'normal');
INSERT INTO `unit` VALUES ('盒', '2016-11-24 12:23:24', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:23:24', '盒', 'normal');
INSERT INTO `unit` VALUES ('箱', '2016-11-24 12:23:38', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-24 12:23:38', '箱', 'normal');
INSERT INTO `unit` VALUES ('袋', '2016-11-24 12:27:12', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '\0', 'cd0d53f8-0b3b-442f-ac73-086a5958a87d', '2016-11-25 17:09:18', '袋', 'normal');

-- ----------------------------
-- Table structure for `wallet_consumption_record`
-- ----------------------------
DROP TABLE IF EXISTS `wallet_consumption_record`;
CREATE TABLE `wallet_consumption_record` (
  `id` varchar(64) NOT NULL,
  `amount` double DEFAULT NULL,
  `card_id` varchar(64) DEFAULT NULL,
  `consumption_num` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(64) DEFAULT NULL,
  `customer_discount_config_id` varchar(64) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `discount_default_supplement` tinyint(1) DEFAULT '0',
  `job_number` text,
  `type` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wallet_consumption_record
-- ----------------------------
INSERT INTO `wallet_consumption_record` VALUES ('16cbe181-4b18-4e77-aa7c-8ca9c6e84dd9', '800', null, '52a339da-caef-4d59-8922-12bc7af5498d', '2016-11-30 11:28:51', '09152cb9-442a-4e90-b81d-26cbd0920e53', '90489412-5a4a-40e0-a03a-3c5e596c81bf', '7db8b189-d122-4f7c-9572-aa48d9605859', null, '003;', 'createCord');
INSERT INTO `wallet_consumption_record` VALUES ('28a6c036-8c84-4718-85ae-cbd4b65a8ee5', '200', null, '4403ce28-c2ea-4abe-a134-2e113dbf64f2', '2016-11-30 11:40:42', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '9d2c482e-d099-416f-b61f-777353492b0d', '0', '003', 'consumption');
INSERT INTO `wallet_consumption_record` VALUES ('4fd26052-7c97-4d77-8d03-7fc9576c1500', '100', null, 'a426911e-8867-4684-94b5-5da14cf116f3', '2016-12-02 15:26:10', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '1d620e98-7fb7-4bec-b86a-e8425ec4e717', '0', '004', 'consumption');
INSERT INTO `wallet_consumption_record` VALUES ('9605dfc4-48f1-4e2b-87b1-2184c11033fc', '100', null, 'f9fccd5e-39fa-48c4-b50b-5a9ed8c4c148', '2016-11-30 16:37:41', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '9d2c482e-d099-416f-b61f-777353492b0d', '0', '003', 'consumption');
INSERT INTO `wallet_consumption_record` VALUES ('997219e9-f5f5-4319-aac7-977a8d197ff7', '500', null, 'f60f3878-3d31-4947-8b32-f1d811bb7373', '2016-12-16 11:33:25', '09152cb9-442a-4e90-b81d-26cbd0920e53', '705677e2-ffd2-4875-8aab-1be962f02197', 'b3f49be0-576f-4e98-a8c5-510be03578ae', null, '003;', 'createCord');
INSERT INTO `wallet_consumption_record` VALUES ('c90b2b8e-1f64-441c-89a7-458ed6742682', '800', null, '52a339da-caef-4d59-8922-12bc7af5498d', '2016-11-30 11:28:51', '09152cb9-442a-4e90-b81d-26cbd0920e53', null, '7db8b189-d122-4f7c-9572-aa48d9605859', '0', '003', 'consumption');
