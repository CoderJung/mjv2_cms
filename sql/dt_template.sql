/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : mojavi2

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-04-12 23:38:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dt_template
-- ----------------------------
DROP TABLE IF EXISTS `dt_template`;
CREATE TABLE `dt_template` (
  `tpl_no` int(11) NOT NULL auto_increment,
  `tpl_id` char(20) NOT NULL default '',
  `tpl_act` char(20) default '',
  `tpl_layout` varchar(255) NOT NULL default '',
  `tpl_title` varchar(255) NOT NULL default '',
  `tpl_content` longtext NOT NULL,
  `tpl_datatitme` datetime NOT NULL,
  PRIMARY KEY  (`tpl_no`,`tpl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='템플릿관리';

-- ----------------------------
-- Records of dt_template
-- ----------------------------
