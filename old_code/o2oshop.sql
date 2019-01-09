/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : o2oshop

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-01-15 22:45:07
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for o2o_area
-- ----------------------------
DROP TABLE IF EXISTS `o2o_area`;
CREATE TABLE `o2o_area` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  `city_id`     INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`      TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `city_id` (`city_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_area
-- ----------------------------

-- ----------------------------
-- Table structure for o2o_bis
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis`;
CREATE TABLE `o2o_bis` (
  `id`           INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`         VARCHAR(50)      NOT NULL DEFAULT '',
  `email`        VARCHAR(50)      NOT NULL DEFAULT '',
  `logo`         VARCHAR(255)     NOT NULL DEFAULT '',
  `licence_logo` VARCHAR(255)     NOT NULL DEFAULT '',
  `description`  TEXT             NOT NULL,
  `city_id`      INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `city_path`    VARCHAR(50)      NOT NULL DEFAULT '',
  `bank_info`    VARCHAR(50)      NOT NULL DEFAULT '',
  `money`        DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `bank_name`    VARCHAR(50)      NOT NULL DEFAULT '',
  `bank_user`    VARCHAR(50)      NOT NULL DEFAULT '',
  `faren`        VARCHAR(20)      NOT NULL DEFAULT '',
  `faren_tel`    VARCHAR(20)      NOT NULL DEFAULT '',
  `listorder`    INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`       TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time`  INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time`  INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `name` (`name`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_bis
-- ----------------------------
INSERT INTO `o2o_bis` VALUES
  ('1', '成都信息工程学院', '2668603913@qq.com', '/upload\\20171221\\1a964c3cdd63d272309273419cad74c6.jpg',
        '/upload\\20171221\\53ef4082cc60fb37d730deb98cf3d083.jpg', '<p>商户介绍</p>', '4', '4,13', '123', '0.00', '建设银行',
   '罗鹏', '罗鹏', '123', '0', '0', '0', '0');
INSERT INTO `o2o_bis` VALUES
  ('2', '博瑞科技', '2668603913@qq.com', '/upload\\20171222\\adf5aee793c7bb3d3d28504b379c65d6.jpg',
        '/upload\\20171222\\8cc0389bbceacba6791a0eea7713e8e6.jpg', '<p>商户介绍</p>', '4', '4,12', '123', '0.00', '农业银行',
   '罗鹏', '罗鹏', '18782933565', '0', '0', '1513906950', '1513956586');
INSERT INTO `o2o_bis` VALUES
  ('3', '博瑞科技', '2668603913@qq.com', '/upload\\20171222\\adf5aee793c7bb3d3d28504b379c65d6.jpg',
        '/upload\\20171222\\8cc0389bbceacba6791a0eea7713e8e6.jpg', '<p>商户介绍</p>', '4', '4,12', '123', '0.00', '农业银行',
   '罗鹏', '罗鹏', '18782933565', '0', '1', '1513906976', '1513957357');
INSERT INTO `o2o_bis` VALUES
  ('4', '博瑞科技', '2668603913@qq.com', '/upload\\20171222\\adf5aee793c7bb3d3d28504b379c65d6.jpg',
        '/upload\\20171222\\8cc0389bbceacba6791a0eea7713e8e6.jpg', '<p>商户介绍</p>', '4', '4,12', '123', '0.00', '农业银行',
   '罗鹏', '罗鹏', '18782933565', '0', '1', '1513907063', '1513995816');

-- ----------------------------
-- Table structure for o2o_bis_account
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis_account`;
CREATE TABLE `o2o_bis_account` (
  `id`              INT(11) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `username`        VARCHAR(50)         NOT NULL DEFAULT '',
  `password`        CHAR(32)            NOT NULL DEFAULT '',
  `code`            VARCHAR(10)         NOT NULL DEFAULT '',
  `bis_id`          INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `last_login_ip`   VARCHAR(20)         NOT NULL DEFAULT '',
  `last_login_time` INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `is_main`         TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `listorder`       INT(8) UNSIGNED     NOT NULL DEFAULT '0',
  `status`          TINYINT(1)          NOT NULL DEFAULT '0',
  `create_time`     INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `update_time`     INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bis_id` (`bis_id`),
  KEY `username` (`username`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_bis_account
-- ----------------------------
INSERT INTO `o2o_bis_account` VALUES
  ('1', 'luopeng123', '1417b8d274123342c093361845bdbc27', '5394', '4', '', '1515124921', '1', '0', '1', '1513907063',
   '1515124921');

-- ----------------------------
-- Table structure for o2o_bis_location
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis_location`;
CREATE TABLE `o2o_bis_location` (
  `id`            INT(11) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `name`          VARCHAR(50)         NOT NULL DEFAULT '',
  `logo`          VARCHAR(255)        NOT NULL DEFAULT '',
  `address`       VARCHAR(255)        NOT NULL DEFAULT '',
  `tel`           VARCHAR(20)         NOT NULL DEFAULT '',
  `contact`       VARCHAR(20)         NOT NULL DEFAULT '',
  `xpoint`        VARCHAR(20)         NOT NULL DEFAULT '',
  `ypoint`        VARCHAR(20)         NOT NULL DEFAULT '',
  `bis_id`        INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `open_time`     INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `content`       TEXT                NOT NULL,
  `is_main`       TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `api_address`   VARCHAR(255)        NOT NULL DEFAULT '',
  `city_id`       INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `city_path`     VARCHAR(50)         NOT NULL DEFAULT '',
  `category_id`   INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `category_path` VARCHAR(50)         NOT NULL DEFAULT '',
  `bank_info`     VARCHAR(50)         NOT NULL DEFAULT '',
  `listorder`     INT(8) UNSIGNED     NOT NULL DEFAULT '0',
  `status`        TINYINT(1)          NOT NULL DEFAULT '0',
  `create_time`   INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `update_time`   INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `bis_id` (`bis_id`),
  KEY `category_id` (`category_id`),
  KEY `name` (`name`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_bis_location
-- ----------------------------
INSERT INTO `o2o_bis_location` VALUES
  ('1', '博瑞科技', '', '成都信息工程学院', '18782933565', '罗鹏', '104.07102944444', '30.651254694918', '3', '9', '<p>门店简介</p>', '1',
                                                                                                                    '',
                                                                                                                    '4',
                                                                                                                    '4,12',
                                                                                                                    '1',
                                                                                                                    '1,',
                                                                                                                    '',
                                                                                                                    '0',
                                                                                                                    '0',
                                                                                                                    '0',
   '1513957357');
INSERT INTO `o2o_bis_location` VALUES
  ('2', '博瑞科技', '', '成都信息工程学院', '18782933565', '罗鹏', '104.07102944444', '30.651254694918', '4', '9', '<p>门店简介</p>', '1',
                                                                                                                    '',
                                                                                                                    '4',
                                                                                                                    '4,12',
                                                                                                                    '1',
                                                                                                                    '1,',
                                                                                                                    '',
                                                                                                                    '0',
                                                                                                                    '1',
                                                                                                                    '0',
   '1513995816');

-- ----------------------------
-- Table structure for o2o_category
-- ----------------------------
DROP TABLE IF EXISTS `o2o_category`;
CREATE TABLE `o2o_category` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`      TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_category
-- ----------------------------
INSERT INTO `o2o_category` VALUES ('1', '美食', '0', '0', '1', '1510804537', '1510804537');
INSERT INTO `o2o_category` VALUES ('2', '娱乐', '0', '0', '1', '1510804547', '1510804547');
INSERT INTO `o2o_category` VALUES ('3', '酒店', '0', '0', '0', '1510804555', '1510842541');
INSERT INTO `o2o_category` VALUES ('4', '休闲', '0', '0', '-1', '1510804562', '1510842465');
INSERT INTO `o2o_category` VALUES ('5', '丽人', '0', '3', '1', '1510804569', '1510836819');
INSERT INTO `o2o_category` VALUES ('6', 'KTV', '2', '0', '1', '1510806728', '1510806728');
INSERT INTO `o2o_category` VALUES ('7', '电影2', '0', '123', '1', '1510826904', '1510835277');
INSERT INTO `o2o_category` VALUES ('8', '测试分类', '5', '0', '1', '1514465428', '1514465428');
INSERT INTO `o2o_category` VALUES ('9', '新鲜水果', '1', '0', '1', '1514524206', '1514524206');

-- ----------------------------
-- Table structure for o2o_city
-- ----------------------------
DROP TABLE IF EXISTS `o2o_city`;
CREATE TABLE `o2o_city` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  `uname`       VARCHAR(50)      NOT NULL DEFAULT '',
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default`  TINYINT(1)       NOT NULL DEFAULT '0',
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`      TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  KEY `parent_id` (`parent_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 14
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_city
-- ----------------------------
INSERT INTO `o2o_city` VALUES ('1', '北京', 'beijing1', '0', '0', '0', '1', '1474013959', '0');
INSERT INTO `o2o_city` VALUES ('2', '北京', 'beijing', '1', '0', '0', '1', '1474014007', '0');
INSERT INTO `o2o_city` VALUES ('4', '江西', 'jiangxi', '0', '0', '0', '1', '1474014162', '0');
INSERT INTO `o2o_city` VALUES ('5', '南昌', 'nanchang', '4', '1', '0', '1', '1474014181', '0');
INSERT INTO `o2o_city` VALUES ('6', '上饶', 'shangrao', '4', '0', '0', '1', '1474014193', '0');
INSERT INTO `o2o_city` VALUES ('7', '抚州', 'fuzhou', '4', '0', '0', '1', '1474014204', '0');
INSERT INTO `o2o_city` VALUES ('8', '景德镇', 'jdz', '4', '0', '0', '1', '1474014220', '0');
INSERT INTO `o2o_city` VALUES ('9', '九江', 'jiujiang', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('10', '赣州', 'ganzhou', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('11', '萍乡', 'pingxiang', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('12', '宜春', 'yichun', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('13', '吉安', 'jian', '4', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for o2o_coupons
-- ----------------------------
DROP TABLE IF EXISTS `o2o_coupons`;
CREATE TABLE `o2o_coupons` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sn`          VARCHAR(100)     NOT NULL,
  `password`    VARCHAR(100)     NOT NULL,
  `user_id`     INT(11)          NOT NULL DEFAULT '0',
  `order_id`    INT(11)          NOT NULL DEFAULT '0',
  `status`      TINYINT(1)       NOT NULL DEFAULT '1'
  COMMENT '0:生成未发送给客户 1:已发送给客户 2:用户已使用 3:禁用',
  `create_time` INT(11) UNSIGNED NOT NULL,
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`) USING BTREE
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for o2o_deal
-- ----------------------------
DROP TABLE IF EXISTS `o2o_deal`;
CREATE TABLE `o2o_deal` (
  `id`                 INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`               VARCHAR(100)     NOT NULL DEFAULT '',
  `category_id`        INT(11)          NOT NULL DEFAULT '0',
  `se_category_id`     INT(11)          NOT NULL DEFAULT '0',
  `bis_id`             INT(11)          NOT NULL DEFAULT '0',
  `location_ids`       VARCHAR(100)     NOT NULL DEFAULT '',
  `image`              VARCHAR(200)     NOT NULL DEFAULT '',
  `description`        TEXT             NOT NULL,
  `start_time`         INT(11)          NOT NULL DEFAULT '0',
  `end_time`           INT(11)          NOT NULL DEFAULT '0',
  `origin_price`       DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `current_price`      DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `city_id`            INT(11)          NOT NULL DEFAULT '0',
  `buy_count`          INT(11)          NOT NULL DEFAULT '0',
  `total_count`        INT(11)          NOT NULL DEFAULT '0',
  `coupons_begin_time` INT(11)          NOT NULL DEFAULT '0',
  `coupons_end_time`   INT(11)          NOT NULL DEFAULT '0',
  `xpoint`             VARCHAR(20)      NOT NULL DEFAULT '',
  `ypoint`             VARCHAR(20)      NOT NULL DEFAULT '',
  `bis_account_id`     INT(10)          NOT NULL DEFAULT '0',
  `balance_price`      DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `notes`              TEXT             NOT NULL,
  `listorder`          INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`             TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time`        INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time`        INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `se_category_id` (`se_category_id`),
  KEY `city_id` (`city_id`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_deal
-- ----------------------------
INSERT INTO `o2o_deal` VALUES
  ('1', '团购商品测试', '2', '6', '4', '2', '/upload\\20171223\\67ea97e511c873ae80179f561ff3ae5e.jpg', '<p>秒速123</p>',
        '1514010300', '1514528700', '123.00', '100.00', '12', '0', '123', '1514010360', '1514528760', '104.07102944444',
                                              '30.651254694918', '1', '0.00', '<p>须知123</p>', '0', '1', '1514010378',
   '1514010378');
INSERT INTO `o2o_deal` VALUES
  ('2', '&lt;script&gt;alert(\'1\')&lt;/script&gt;', '0', '0', '4', '2', '', '<p>notes</p>', '0', '0', '0.00', '0.00',
                                                                                                               '0', '0',
                                                                                                               '0', '0',
                                                                                                               '0',
                                                                                                               '104.07102944444',
                                                                                                               '30.651254694918',
                                                                                                               '1',
                                                                                                               '0.00',
   '<p>notes</p>', '0', '1', '1514019790', '1514019790');
INSERT INTO `o2o_deal` VALUES
  ('3', '测试123', '5', '0', '4', '2', '/upload\\20171224\\382252a3004f1189d4edb1f93d46df86.jpg',
        '&lt;p&gt;秒速123&lt;/p&gt;', '1514098860', '1514530860', '123.00', '110.00', '12', '0', '111', '1514098860',
                                                                          '1514530860', '104.07102944444',
                                                                          '30.651254694918', '1', '0.00',
   '&lt;p&gt;须知123&lt;/p&gt;', '0', '1', '1514098904', '1514098904');
INSERT INTO `o2o_deal` VALUES
  ('4', '测试商品', '5', '0', '4', '2', '/upload\\20171226\\f1395941d6645248040cd1726394850d.jpg', '&lt;p&gt;描述&lt;/p&gt;',
        '1514260920', '1514606520', '111.00', '100.00', '12', '0', '123', '1514260920', '1514606520', '104.07102944444',
                                              '30.651254694918', '1', '0.00', '&lt;p&gt;须知&lt;/p&gt;', '0', '0',
   '1514260993', '1514260993');
INSERT INTO `o2o_deal` VALUES
  ('5', '商品测试', '1', '0', '4', '2', '/upload\\20171229\\b34764f6d5ec7c42b80fce57030fe884.jpg',
        '&lt;p&gt;团购描述&lt;/p&gt;', '1514523540', '1514609940', '122.00', '98.00', '12', '0', '123', '1514523540',
                                                                         '1514609940', '104.07102944444',
                                                                         '30.651254694918', '1', '0.00',
   '&lt;p&gt;购买须知&lt;/p&gt;', '0', '1', '1514523586', '1514523586');
INSERT INTO `o2o_deal` VALUES
  ('6', '测试商品', '1', '9', '4', '2', '/upload\\20171230\\8002918745bca4f46b9b0c245df4be63.JPG', '&lt;p&gt;秒速&lt;/p&gt;',
        '1514622060', '1546158060', '120.00', '80.00', '12', '0', '123', '1514622060', '1546158060', '104.07102944444',
                                              '30.651254694918', '1', '0.00', '&lt;p&gt;须知&lt;/p&gt;', '0', '1',
   '1514622130', '1514622130');
INSERT INTO `o2o_deal` VALUES
  ('7', '测试123', '1', '9', '4', '2', '/upload\\20171230\\14d161cf3146d384f40fa7dac671b201.JPG', '&lt;p&gt;秒速&lt;/p&gt;',
        '1514717820', '1546253820', '100.00', '80.00', '12', '0', '123', '1514631420', '1546167420', '104.07102944444',
                                              '30.651254694918', '1', '0.00', '&lt;p&gt;须知&lt;/p&gt;', '0', '1',
   '1514631469', '1514631469');

-- ----------------------------
-- Table structure for o2o_featured
-- ----------------------------
DROP TABLE IF EXISTS `o2o_featured`;
CREATE TABLE `o2o_featured` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type`        TINYINT(1)       NOT NULL DEFAULT '0',
  `title`       VARCHAR(30)      NOT NULL DEFAULT '',
  `image`       VARCHAR(255)     NOT NULL DEFAULT '',
  `url`         VARCHAR(255)     NOT NULL DEFAULT '',
  `description` VARCHAR(255)     NOT NULL DEFAULT '',
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`      TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_featured
-- ----------------------------
INSERT INTO `o2o_featured` VALUES
  ('1', '0', '新浪体育', '/upload\\20171227\\8235ccfaecc0d01b97bd860f5f2f7227.JPG', 'http://www.baidu.com', '12', '0', '1',
   '1514356104', '1514362815');
INSERT INTO `o2o_featured` VALUES
  ('2', '1', '广告位', '/upload\\20171228\\cb2a8e7f7459db43b059eabfa7b10d59.JPG', 'http://www.baidu.com', '广告位', '0', '0',
   '1514468618', '1514468618');

-- ----------------------------
-- Table structure for o2o_order
-- ----------------------------
DROP TABLE IF EXISTS `o2o_order`;
CREATE TABLE `o2o_order` (
  `id`             INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `out_trade_no`   VARCHAR(100)     NOT NULL,
  `transaction_id` VARCHAR(100)     NOT NULL,
  `user_id`        INT(11)          NOT NULL DEFAULT '0',
  `username`       VARCHAR(50)      NOT NULL,
  `pay_time`       VARCHAR(20)      NOT NULL,
  `payment_id`     TINYINT(1)       NOT NULL DEFAULT '1',
  `deal_id`        INT(11)          NOT NULL DEFAULT '0',
  `deal_count`     INT(11)          NOT NULL DEFAULT '0',
  `pay_status`     TINYINT(1)       NOT NULL DEFAULT '0',
  `total_price`    DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `pay_amount`     DECIMAL(20, 2)   NOT NULL DEFAULT '0.00',
  `status`         TINYINT(1)       NOT NULL,
  `referer`        VARCHAR(255)     NOT NULL,
  `create_time`    INT(11) UNSIGNED          DEFAULT NULL,
  `update_time`    INT(11) UNSIGNED          DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `out_trade_no` (`out_trade_no`) USING BTREE
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 16
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_order
-- ----------------------------
INSERT INTO `o2o_order` VALUES
  ('1', '1514818163359562380', '', '4', 'luopeng123', '', '1', '7', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=7&count=1', '1514818163', '1514818163');
INSERT INTO `o2o_order` VALUES
  ('2', '1515494476699126550', '', '4', 'luopeng123', '', '1', '6', '2', '0', '160.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=2', '1515494476', '1515494476');
INSERT INTO `o2o_order` VALUES
  ('3', '15154945592618305', '', '4', 'luopeng123', '', '1', '6', '2', '0', '160.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=2', '1515494559', '1515494559');
INSERT INTO `o2o_order` VALUES
  ('4', '1515494564300072308', '', '4', 'luopeng123', '', '1', '6', '2', '0', '160.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=2', '1515494564', '1515494564');
INSERT INTO `o2o_order` VALUES
  ('5', '1515494601324865022', '', '4', 'luopeng123', '', '1', '6', '2', '0', '160.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=2', '1515494601', '1515494601');
INSERT INTO `o2o_order` VALUES
  ('6', '1515494636964420123', '', '4', 'luopeng123', '', '1', '6', '2', '0', '160.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=2', '1515494636', '1515494636');
INSERT INTO `o2o_order` VALUES
  ('7', '1515494715265217907', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515494715', '1515494715');
INSERT INTO `o2o_order` VALUES
  ('8', '1515555275820041374', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515555275', '1515555275');
INSERT INTO `o2o_order` VALUES
  ('9', '1515555562198448963', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515555562', '1515555562');
INSERT INTO `o2o_order` VALUES
  ('10', '1515555966605337468', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515555966', '1515555966');
INSERT INTO `o2o_order` VALUES
  ('11', '1515556323300695567', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515556323', '1515556323');
INSERT INTO `o2o_order` VALUES
  ('12', '1515645238258288530', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515645238', '1515645238');
INSERT INTO `o2o_order` VALUES
  ('13', '1515680573604931492', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515680573', '1515680573');
INSERT INTO `o2o_order` VALUES
  ('14', '1515680802752883155', '', '4', 'luopeng123', '', '1', '6', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=6&count=1', '1515680802', '1515680802');
INSERT INTO `o2o_order` VALUES
  ('15', '1515682153602796679', '', '4', 'luopeng123', '', '1', '7', '1', '0', '80.00', '0.00', '1',
   'http://www.o2oshop.com/index/order/confirm.html?id=7&count=1', '1515682153', '1515682153');

-- ----------------------------
-- Table structure for o2o_user
-- ----------------------------
DROP TABLE IF EXISTS `o2o_user`;
CREATE TABLE `o2o_user` (
  `id`              INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username`        VARCHAR(50)      NOT NULL DEFAULT '',
  `password`        CHAR(32)         NOT NULL DEFAULT '',
  `code`            VARCHAR(10)      NOT NULL DEFAULT '',
  `last_login_ip`   VARCHAR(20)      NOT NULL DEFAULT '',
  `last_login_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `email`           VARCHAR(30)      NOT NULL DEFAULT '',
  `mobile`          VARCHAR(20)      NOT NULL DEFAULT '',
  `listorder`       INT(8) UNSIGNED  NOT NULL DEFAULT '0',
  `status`          TINYINT(1)       NOT NULL DEFAULT '0',
  `create_time`     INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time`     INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of o2o_user
-- ----------------------------
INSERT INTO `o2o_user` VALUES
  ('1', 'luopeng', '63d5fb54a858dd033fe90e6e4a74b0f0', '6167', '', '0', '2668603913@qq.com', '', '0', '1', '1514381010',
   '1514381010');
INSERT INTO `o2o_user` VALUES
  ('4', 'luopeng123', 'dcca7177e837da98e35359634f8ebe88', '2325', '', '1515645181', '2668603912@qq.com', '', '0', '1',
        '1514381465', '1515645181');
INSERT INTO `o2o_user` VALUES
  ('5', 'luopeng1234', '492d6c6d0ff7520544d962b5021e2c45', '1939', '', '0', '222@qq.com', '', '0', '1', '1514381531',
   '1514381531');
