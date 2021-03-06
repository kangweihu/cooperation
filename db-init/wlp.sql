/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wlp

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-01-12 21:44:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wlp_activecode
-- ----------------------------
DROP TABLE IF EXISTS `wlp_activecode`;
CREATE TABLE `wlp_activecode` (
  `ID` varchar(64) NOT NULL,
  `EMAIL` varchar(255) NOT NULL COMMENT '用户',
  `CODE` varchar(255) NOT NULL COMMENT '激活码',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  `CREATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wlp_activecode
-- ----------------------------

-- ----------------------------
-- Table structure for wlp_pair_log
-- ----------------------------
DROP TABLE IF EXISTS `wlp_pair_log`;
CREATE TABLE `wlp_pair_log` (
  `ID` varchar(64) NOT NULL,
  `PAIR_MONEY` decimal(10,0) NOT NULL,
  `FROM_USER` varchar(255) DEFAULT NULL,
  `TO_USER` varchar(255) DEFAULT NULL,
  `ORDER_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `PAIR_TIME` timestamp NULL DEFAULT NULL COMMENT '配对时间',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wlp_pair_log
-- ----------------------------

-- ----------------------------
-- Table structure for wlp_user
-- ----------------------------
DROP TABLE IF EXISTS `wlp_user`;
CREATE TABLE `wlp_user` (
  `ID` varchar(64) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL COMMENT '昵称',
  `MOBILE_PHONE` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `EMAIL` varchar(255) NOT NULL COMMENT '邮箱(登录账号)',
  `LOGIN_PASSWORD` varchar(50) NOT NULL COMMENT '登录密码',
  `TRANS_PASSWORD` varchar(50) NOT NULL COMMENT '交易密码',
  `REC_EMAIL` varchar(255) DEFAULT NULL COMMENT '推荐人邮箱',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `ALIPAY` varchar(255) DEFAULT NULL COMMENT '支付宝账号',
  `BANK_NAME` varchar(255) DEFAULT NULL COMMENT '银行名称',
  `BANK_USERNAME` varchar(255) DEFAULT NULL COMMENT '银行账户名称',
  `BANK_ACCT` varchar(255) DEFAULT NULL COMMENT '银行账号',
  `STATUS` varchar(10) DEFAULT '0' COMMENT '状态1-激活互助，0-未激活互助',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL_Unique` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wlp_user
-- ----------------------------
