/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : dopas

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2013-04-15 11:26:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` bigint(20) NOT NULL COMMENT '分类编号',
  `user_id` bigint(20) NOT NULL COMMENT '发布者',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `color` varchar(50) DEFAULT '' COMMENT '标题颜色（red：红色；green：绿色；blue：蓝色；yellow：黄色；orange：橙色）',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `desciption` varchar(255) DEFAULT '' COMMENT '描述、摘要',
  `status` char(1) DEFAULT '' COMMENT '状态（0：发布；1：作废；2：审核；）',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选（1：首页焦点图；2：栏目页文章推荐；）',
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`),
  KEY `keywords` (`keywords`),
  KEY `status` (`status`),
  KEY `weight` (`weight`),
  KEY `input_date` (`input_date`),
  KEY `update_date` (`update_date`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='内容管理文章模型表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '3', '1', '文章标题标题标题标题', 'green', '', '关键字1,关键字2', '', '0', '0', '1', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('2', '3', '1', '文章标题标题标题标题', 'red', '', '关键字1,关键字2', '', '0', '0', '1', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('3', '3', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('4', '3', '1', '文章标题标题标题标题', 'green', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('5', '3', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('6', '3', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('7', '4', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('8', '4', '1', '文章标题标题标题标题', 'blue', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('9', '4', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('10', '4', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('11', '5', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('12', '5', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('13', '5', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('14', '7', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '3', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('15', '7', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('16', '7', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('17', '7', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('18', '8', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('19', '8', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('20', '8', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('21', '8', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('22', '9', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('23', '9', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('24', '9', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('25', '9', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('26', '9', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('27', '11', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('28', '11', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('29', '11', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('30', '11', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('31', '11', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('32', '12', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('33', '12', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('34', '12', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('35', '12', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('36', '12', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('37', '13', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('38', '13', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('39', '13', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('40', '13', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('41', '14', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('42', '14', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('43', '14', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('44', '14', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('45', '14', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('46', '15', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('47', '15', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('48', '15', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('49', '16', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('50', '17', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('51', '17', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('52', '26', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');
INSERT INTO `cms_article` VALUES ('53', '26', '1', '文章标题标题标题标题', '', '', '关键字1,关键字2', '', '0', '0', '0', '', '2013-04-09 22:58:57', '2012-10-07 00:00:00');

-- ----------------------------
-- Table structure for `cms_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `content` mediumtext COMMENT '内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='内容管理文章模型表';

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('2', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('3', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('4', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('5', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('6', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('7', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('8', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('10', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('11', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('12', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('13', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('14', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('15', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('16', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('17', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('18', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('19', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('20', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('21', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('22', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('23', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('24', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('25', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('26', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('27', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('28', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('29', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('30', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('31', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('32', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('33', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('34', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('35', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('36', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('37', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('38', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('39', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('40', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('41', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('42', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('43', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('44', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('45', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('46', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('47', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('48', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('49', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('50', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('51', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('52', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `site_id` bigint(20) DEFAULT '1' COMMENT '站点编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(255) NOT NULL COMMENT '所有父级编号',
  `module` varchar(20) NOT NULL COMMENT '栏目模块（article：文章；picture：图片；download：下载；link：链接；special：专题）',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT '' COMMENT '栏目图片',
  `href` varchar(255) NOT NULL COMMENT '链接',
  `target` varchar(20) NOT NULL COMMENT '目标（ _blank、_self、_parent、_top）',
  `desciption` varchar(255) DEFAULT '' COMMENT '描述，填写有助于搜索引擎优化',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字，填写有助于搜索引擎优化',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示（1：显示；0：不显示）',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表（1：显示；0：不显示）',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式（0:有子栏目显示栏目列表，无子栏目显示内容列表;1：首栏目内容列表；2：栏目第一条内容）',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `user_id` bigint(20) NOT NULL COMMENT '创建者',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_ids` (`parent_ids`),
  KEY `module` (`module`),
  KEY `name` (`name`),
  KEY `sort` (`sort`),
  KEY `user_id` (`user_id`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='内容管理栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '0', '0', '0,', '', '顶级栏目', '', '', '', '', '', '0', '1', '1', '0', '0', '1', '0');
INSERT INTO `cms_category` VALUES ('2', '1', '1', '0,1,', 'article', '组织机构', '', '', '', '', '', '10', '1', '1', '0', '0', '1', '0');
INSERT INTO `cms_category` VALUES ('3', '1', '2', '0,1,2,', 'article', '网站简介', '', '', '', '', '', '30', '1', '1', '0', '0', '1', '0');
INSERT INTO `cms_category` VALUES ('4', '1', '2', '0,1,2,', 'article', '内部机构', '', '', '', '', '', '40', '1', '1', '0', '0', '1', '0');
INSERT INTO `cms_category` VALUES ('5', '1', '2', '0,1,2,', 'article', '地方机构', '', '', '', '', '', '50', '1', '1', '0', '0', '1', '0');
INSERT INTO `cms_category` VALUES ('6', '1', '1', '0,1,', 'article', '质量检验', '', '', '', '', '', '20', '1', '1', '1', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('7', '1', '6', '0,1,6,', 'article', '产品质量', '', '', '', '', '', '30', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('8', '1', '6', '0,1,6,', 'article', '技术质量', '', '', '', '', '', '40', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('9', '1', '6', '0,1,6,', 'article', '工程质量', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('10', '1', '1', '0,1,', 'article', '软件介绍', '', '', '', '', '', '20', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('11', '1', '10', '0,1,10,', 'article', '网络工具', '', '', '', '', '', '30', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('12', '1', '10', '0,1,10,', 'article', '浏览工具', '', '', '', '', '', '40', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('13', '1', '10', '0,1,10,', 'article', '浏览辅助', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('14', '1', '10', '0,1,10,', 'article', '网络优化', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('15', '1', '10', '0,1,10,', 'article', '邮件处理', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('16', '1', '10', '0,1,10,', 'article', '下载工具', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('17', '1', '10', '0,1,10,', 'article', '搜索工具', '', '', '', '', '', '50', '1', '1', '2', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('18', '1', '1', '0,1,', 'link', '友情链接', '', '', '', '', '', '90', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('19', '1', '18', '0,1,18,', 'link', '常用网站', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('20', '1', '18', '0,1,18,', 'link', '门户网站', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('21', '1', '18', '0,1,18,', 'link', '购物网站', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('22', '1', '18', '0,1,18,', 'link', '交友社区', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('23', '1', '18', '0,1,18,', 'link', '音乐视频', '', '', '', '', '', '50', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('24', '1', '1', '0,1,', '', 'Dopas', '', 'http://ruyees.github.io/Dopas/', '_blank', '', '', '90', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('25', '1', '1', '0,1,', '', '全文检索', '', '/search', '', '', '', '90', '0', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('26', '2', '1', '0,1,', 'article', '测试栏目', '', '', '', '', '', '90', '1', '1', '0', '1', '1', '0');
INSERT INTO `cms_category` VALUES ('27', '1', '1', '0,1,', '', '公共留言', '', '/guestbook', '', '', '', '90', '1', '1', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `module` varchar(20) NOT NULL COMMENT '内容模型（article：文章；picture：图片；download：下载）',
  `content_id` bigint(20) NOT NULL COMMENT '归属分类内容的编号（Article.id、Photo.id、Download.id）',
  `title` varchar(255) DEFAULT NULL COMMENT '归属分类内容的标题（Article.title、Photo.title、Download.title）',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `audit_user_id` bigint(20) DEFAULT NULL COMMENT '审核人',
  `audit_date` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `status` char(1) DEFAULT '0' COMMENT '删除标记（0：发布；1：作废；2：审核；）',
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `content_id` (`content_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='内容管理内容评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('1', 'article', '14', '文章标题标题标题标题', 'hhhhhhhhhhhhhh', '匿名', '127.0.0.1', '2013-04-09 23:16:50', '1', '2013-04-09 23:16:58', '0');

-- ----------------------------
-- Table structure for `cms_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(100) NOT NULL COMMENT '留言分类（咨询、建议、投诉、其它）',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '留言时间',
  `re_user_id` bigint(20) DEFAULT NULL COMMENT '回复人',
  `re_date` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `status` char(1) DEFAULT '0' COMMENT '状态（0：发布；1：作废；2：审核；）',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容管理留言本表';

-- ----------------------------
-- Records of cms_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` bigint(20) NOT NULL COMMENT '分类编号',
  `user_id` bigint(20) NOT NULL COMMENT '发布者',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT '' COMMENT '标题颜色（red：红色；green：绿色；blue：蓝色；yellow：黄色；orange：橙色）',
  `image` varchar(255) DEFAULT '' COMMENT '如果上传了图片，则显示为图片链接',
  `href` varchar(255) DEFAULT '' COMMENT '链接地址',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `status` char(1) DEFAULT '' COMMENT '状态（0：发布；1：作废；2：审核；）',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`),
  KEY `status` (`status`),
  KEY `weight` (`weight`),
  KEY `input_date` (`input_date`),
  KEY `update_date` (`update_date`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='内容管理链接模型表';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '19', '1', 'Dopas', '', '', 'https://github.com/Dopas/dopas', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('2', '19', '1', 'Zaric', '', '', 'https://github.com/Dopas/dopas', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('3', '19', '1', '百度一下', '', '', 'http://www.baidu.com', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('4', '19', '1', '谷歌搜索', '', '', 'http://www.google.com', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('5', '20', '1', '新浪网', '', '', 'http://www.sina.com.cn', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('6', '20', '1', '腾讯网', '', '', 'http://www.qq.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('7', '21', '1', '淘宝网', '', '', 'http://www.taobao.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('8', '21', '1', '新华网', '', '', 'http://www.xinhuanet.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('9', '22', '1', '赶集网', '', '', 'http://www.ganji.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('10', '22', '1', '58同城', '', '', 'http://www.58.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('11', '23', '1', '视频大全', '', '', 'http://v.360.cn/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');
INSERT INTO `cms_link` VALUES ('12', '23', '1', '凤凰网', '', '', 'http://www.ifeng.com/', '', '0', '0', '2013-04-09 22:58:56', '2012-10-07 00:00:00');

-- ----------------------------
-- Table structure for `cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `desciption` varchar(255) DEFAULT '' COMMENT '描述，填写有助于搜索引擎优化',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字，填写有助于搜索引擎优化',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` mediumtext COMMENT '版权信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容管理站点配置表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('1', '默认站点', 'Dopas', 'Dopas', 'Dopas', 'basic', 'Copyright &copy; 2012-2013 <a href=\'https://github.com/Dopas/dopas\' target=\'_blank\'>Zaric</a> - Powered By <a href=\'https://github.com/Dopas/dopas\' target=\'_blank\'>Dopas</a> V1.0', '0');
INSERT INTO `cms_site` VALUES ('2', '子站点测试', 'Dopas subsite', 'Dopas subsite', 'Dopas subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'https://github.com/Dopas/dopas\' target=\'_blank\'>Zaric</a> - Powered By <a href=\'https://github.com/Dopas/dopas\' target=\'_blank\'>Dopas</a> V1.0', '0');

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(255) NOT NULL COMMENT '所有父级编号',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) DEFAULT NULL COMMENT '区域名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_ids` (`parent_ids`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '', '顶级区域', '', '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '370000', '山东省分公司', '', '0');
INSERT INTO `sys_area` VALUES ('3', '1', '0,1,', '110000', '北京市总公司', '', '0');
INSERT INTO `sys_area` VALUES ('4', '2', '0,1,2,', '370531', '济南分公司', '', '0');
INSERT INTO `sys_area` VALUES ('5', '2', '0,1,2,', '370532', '青岛分公司', '', '0');

-- ----------------------------
-- Table structure for `sys_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `area_id` bigint(20) NOT NULL COMMENT '归属区域',
  `office_id` bigint(20) NOT NULL COMMENT '归属部门',
  `user_id` bigint(20) NOT NULL COMMENT '上传者',
  `name` varchar(255) NOT NULL COMMENT '文件名',
  `file_name` varchar(255) NOT NULL COMMENT '上传后的文件名',
  `file_ext` varchar(16) NOT NULL COMMENT '扩展名',
  `file_type` varchar(100) NOT NULL COMMENT '文件类型',
  `file_size` bigint(20) NOT NULL COMMENT '文件大小',
  `file_path` varchar(255) NOT NULL COMMENT '存放路径（/files/year/month/area_office_user/）',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `office_id` (`office_id`),
  KEY `user_id` (`user_id`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统上传文件表';

-- ----------------------------
-- Records of sys_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `label` varchar(100) NOT NULL COMMENT '标签',
  `value` varchar(100) NOT NULL COMMENT '键值',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `desciption` varchar(100) NOT NULL COMMENT '描述',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `value` (`value`),
  KEY `label` (`label`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '正常', '0', 'del_flag', '删除标记', '10', '0');
INSERT INTO `sys_dict` VALUES ('2', '删除', '1', 'del_flag', '删除标记', '20', '0');
INSERT INTO `sys_dict` VALUES ('3', '显示', '1', 'show_hide', '显示/隐藏', '10', '0');
INSERT INTO `sys_dict` VALUES ('4', '隐藏', '0', 'show_hide', '显示/隐藏', '20', '0');
INSERT INTO `sys_dict` VALUES ('5', '是', '1', 'yes_no', '是/否', '10', '0');
INSERT INTO `sys_dict` VALUES ('6', '否', '0', 'yes_no', '是/否', '20', '0');
INSERT INTO `sys_dict` VALUES ('7', '红色', 'red', 'color', '颜色值', '10', '0');
INSERT INTO `sys_dict` VALUES ('8', '绿色', 'green', 'color', '颜色值', '20', '0');
INSERT INTO `sys_dict` VALUES ('9', '蓝色', 'blue', 'color', '颜色值', '30', '0');
INSERT INTO `sys_dict` VALUES ('10', '黄色', 'yellow', 'color', '颜色值', '40', '0');
INSERT INTO `sys_dict` VALUES ('11', '橙色', 'orange', 'color', '颜色值', '50', '0');
INSERT INTO `sys_dict` VALUES ('12', '系统管理', '1', 'sys_user_type', '用户类型', '10', '0');
INSERT INTO `sys_dict` VALUES ('13', '部门经理', '2', 'sys_user_type', '用户类型', '20', '0');
INSERT INTO `sys_dict` VALUES ('14', '普通用户', '3', 'sys_user_type', '用户类型', '30', '0');
INSERT INTO `sys_dict` VALUES ('15', '基础主题', 'basic', 'cms_theme', '站点主题', '10', '0');
INSERT INTO `sys_dict` VALUES ('16', '蓝色主题', 'blue', 'cms_theme', '站点主题', '20', '0');
INSERT INTO `sys_dict` VALUES ('17', '红色主题', 'red', 'cms_theme', '站点主题', '30', '0');
INSERT INTO `sys_dict` VALUES ('18', '文章模型', 'article', 'cms_module', '栏目模型', '10', '0');
INSERT INTO `sys_dict` VALUES ('19', '图片模型', 'picture', 'cms_module', '栏目模型', '20', '1');
INSERT INTO `sys_dict` VALUES ('20', '下载模型', 'download', 'cms_module', '栏目模型', '30', '1');
INSERT INTO `sys_dict` VALUES ('21', '链接模型', 'link', 'cms_module', '栏目模型', '40', '0');
INSERT INTO `sys_dict` VALUES ('22', '专题模型', 'special', 'cms_module', '栏目模型', '50', '1');
INSERT INTO `sys_dict` VALUES ('23', '默认展现方式', '0', 'cms_show_modes', '展现方式', '20', '0');
INSERT INTO `sys_dict` VALUES ('24', '首栏目内容列表', '1', 'cms_show_modes', '展现方式', '20', '0');
INSERT INTO `sys_dict` VALUES ('25', '栏目第一条内容', '2', 'cms_show_modes', '展现方式', '30', '0');
INSERT INTO `sys_dict` VALUES ('26', '发布', '0', 'cms_status', '内容状态', '10', '0');
INSERT INTO `sys_dict` VALUES ('27', '删除', '1', 'cms_status', '内容状态', '20', '0');
INSERT INTO `sys_dict` VALUES ('28', '审核', '2', 'cms_status', '内容状态', '15', '0');
INSERT INTO `sys_dict` VALUES ('29', '首页焦点图', '1', 'cms_posid', '推荐位', '30', '0');
INSERT INTO `sys_dict` VALUES ('30', '栏目页文章推荐', '2', 'cms_posid', '推荐位', '30', '0');
INSERT INTO `sys_dict` VALUES ('31', '咨询', '1', 'cms_guestbook', '留言板分类', '30', '0');
INSERT INTO `sys_dict` VALUES ('32', '建议', '2', 'cms_guestbook', '留言板分类', '30', '0');
INSERT INTO `sys_dict` VALUES ('33', '投诉', '3', 'cms_guestbook', '留言板分类', '30', '0');
INSERT INTO `sys_dict` VALUES ('34', '其它', '4', 'cms_guestbook', '留言板分类', '30', '0');
INSERT INTO `sys_dict` VALUES ('35', '默认主题', 'default', 'theme', '主题方案', '10', '0');
INSERT INTO `sys_dict` VALUES ('36', '天蓝主题', 'cerulean', 'theme', '主题方案', '20', '0');
INSERT INTO `sys_dict` VALUES ('37', '橙色主题', 'readable', 'theme', '主题方案', '30', '0');
INSERT INTO `sys_dict` VALUES ('38', '红色主题', 'united', 'theme', '主题方案', '40', '0');
INSERT INTO `sys_dict` VALUES ('39', 'Win8主题', 'cosmo', 'theme', '主题方案', '50', '0');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(255) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '菜单名称',
  `href` varchar(255) NOT NULL COMMENT '链接',
  `target` varchar(20) NOT NULL COMMENT '目标（mainFrame、 _blank、_self、_parent、_top）',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示（1：显示；0：不显示）',
  `permission` varchar(200) NOT NULL COMMENT '权限标识',
  `user_id` bigint(20) NOT NULL COMMENT '创建者',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_ids` (`parent_ids`),
  KEY `user_id` (`user_id`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '顶级菜单', '', '', '', '0', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', '', '', '', '900', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', '', '', '', '980', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '/sys/menu/', '', 'list-alt', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', '', '', '', '30', '0', 'sys:menu:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', '', '', '', '30', '0', 'sys:menu:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '/sys/role/', '', 'lock', '50', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', '', '', '', '30', '0', 'sys:role:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', '', '', '', '30', '0', 'sys:role:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '/sys/dict/', '', 'th-list', '60', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', '', '', '', '30', '0', 'sys:dict:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', '', '', '', '30', '0', 'sys:dict:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', '', '', '', '970', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '/sys/area/', '', 'th', '50', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', '', '', '', '30', '0', 'sys:area:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', '', '', '', '30', '0', 'sys:area:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '部门管理', '/sys/office/', '', 'th-large', '40', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', '', '', '', '30', '0', 'sys:office:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', '', '', '', '30', '0', 'sys:office:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '/sys/user/', '', 'user', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', '', '', '', '30', '0', 'sys:user:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', '', '', '', '30', '0', 'sys:user:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', '', '', '', '990', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '项目首页', 'https://github.com/Dopas/dopas', '_blank', '', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23', '项目维基', 'https://github.com/Dopas/dopas/wiki', '_blank', '', '50', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23', '问题反馈', 'https://github.com/Dopas/dopas/issues/new', '_blank', '', '80', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '', '', '', '100', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', '', '', '', '990', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '/sys/user/info', '', 'home', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '/sys/user/modifyPwd', '', 'lock', '40', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '0,1,', '内容管理', '', '', '', '500', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,31,', '栏目设置', '', '', '', '990', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', '/cms/category/', '', 'align-justify', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', '', '', '', '30', '0', 'cms:category:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', '', '', '', '30', '0', 'cms:category:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,31,32', '站点设置', '/cms/site/', '', 'certificate', '40', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', '', '', '', '30', '0', 'cms:site:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', '', '', '', '30', '0', 'cms:site:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,31,32', '切换站点', '/cms/site/select', '', 'retweet', '50', '1', 'cms:site:select', '1', '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,31,', '内容管理', '', '', '', '500', '1', 'cms:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', '/cms/', '', 'briefcase', '30', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', '/cms/article/', '', 'file', '40', '0', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', '', '', '', '30', '0', 'cms:article:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', '', '', '', '30', '0', 'cms:article:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', '', '', '', '30', '0', 'cms:article:audit', '1', '0');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', '/cms/link/', '', 'random', '60', '0', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', '', '', '', '30', '0', 'cms:link:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', '', '', '', '30', '0', 'cms:link:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', '', '', '', '30', '0', 'cms:link:audit', '1', '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', '/cms/comment/?status=2', '', 'comment', '40', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', '', '', '', '30', '0', 'cms:comment:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', '', '', '', '30', '0', 'cms:comment:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', '/cms/guestbook/?status=2', '', 'glass', '80', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', '', '', '', '30', '0', 'cms:guestbook:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', '', '', '', '30', '0', 'cms:guestbook:edit', '1', '0');
INSERT INTO `sys_menu` VALUES ('56', '40', '0,1,31,40,', '文件管理', '/../static/ckfinder/ckfinder.html', '', 'folder-open', '90', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,31,40,56,', '查看', '', '', '', '30', '0', 'cms:ckfinder:view', '1', '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,31,40,56,', '上传', '', '', '', '30', '0', 'cms:ckfinder:upload', '1', '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,31,40,56,', '修改', '', '', '', '30', '0', 'cms:ckfinder:edit', '1', '0');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(255) NOT NULL COMMENT '所有父级编号',
  `area_id` bigint(20) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) NOT NULL COMMENT '部门名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_ids` (`parent_ids`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统部门表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '1', '', '顶级部门', '', '0');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '1', '0001', '系统管理', '', '0');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '1', '0002', '系统维护', '', '0');
INSERT INTO `sys_office` VALUES ('4', '2', '0,1,', '1', '000101', '系统管理1', '', '0');
INSERT INTO `sys_office` VALUES ('5', '2', '0,1,', '1', '000102', '系统管理2', '', '0');
INSERT INTO `sys_office` VALUES ('6', '2', '0,1,', '1', '000201', '系统维护1', '', '0');
INSERT INTO `sys_office` VALUES ('7', '2', '0,1,', '1', '000202', '系统维护2', '', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `user_id` bigint(20) NOT NULL COMMENT '创建者',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '1', '0');
INSERT INTO `sys_role` VALUES ('2', '普通用户', '1', '0');

-- ----------------------------
-- Table structure for `sys_role_category`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_category`;
CREATE TABLE `sys_role_category` (
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `category_id` bigint(20) NOT NULL COMMENT '内容分类编号',
  PRIMARY KEY (`role_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与内容分类关联表';

-- ----------------------------
-- Records of sys_role_category
-- ----------------------------
INSERT INTO `sys_role_category` VALUES ('1', '1');
INSERT INTO `sys_role_category` VALUES ('1', '2');
INSERT INTO `sys_role_category` VALUES ('1', '3');
INSERT INTO `sys_role_category` VALUES ('1', '4');
INSERT INTO `sys_role_category` VALUES ('1', '5');
INSERT INTO `sys_role_category` VALUES ('1', '6');
INSERT INTO `sys_role_category` VALUES ('1', '7');
INSERT INTO `sys_role_category` VALUES ('1', '8');
INSERT INTO `sys_role_category` VALUES ('1', '9');
INSERT INTO `sys_role_category` VALUES ('1', '10');
INSERT INTO `sys_role_category` VALUES ('1', '11');
INSERT INTO `sys_role_category` VALUES ('1', '12');
INSERT INTO `sys_role_category` VALUES ('1', '13');
INSERT INTO `sys_role_category` VALUES ('1', '14');
INSERT INTO `sys_role_category` VALUES ('1', '15');
INSERT INTO `sys_role_category` VALUES ('1', '16');
INSERT INTO `sys_role_category` VALUES ('1', '17');
INSERT INTO `sys_role_category` VALUES ('1', '18');
INSERT INTO `sys_role_category` VALUES ('1', '19');
INSERT INTO `sys_role_category` VALUES ('1', '20');
INSERT INTO `sys_role_category` VALUES ('1', '21');
INSERT INTO `sys_role_category` VALUES ('1', '22');
INSERT INTO `sys_role_category` VALUES ('1', '23');
INSERT INTO `sys_role_category` VALUES ('1', '24');
INSERT INTO `sys_role_category` VALUES ('1', '25');
INSERT INTO `sys_role_category` VALUES ('1', '26');
INSERT INTO `sys_role_category` VALUES ('1', '27');
INSERT INTO `sys_role_category` VALUES ('2', '1');
INSERT INTO `sys_role_category` VALUES ('2', '2');
INSERT INTO `sys_role_category` VALUES ('2', '3');
INSERT INTO `sys_role_category` VALUES ('2', '4');
INSERT INTO `sys_role_category` VALUES ('2', '5');
INSERT INTO `sys_role_category` VALUES ('2', '6');
INSERT INTO `sys_role_category` VALUES ('2', '7');
INSERT INTO `sys_role_category` VALUES ('2', '8');
INSERT INTO `sys_role_category` VALUES ('2', '9');
INSERT INTO `sys_role_category` VALUES ('2', '10');
INSERT INTO `sys_role_category` VALUES ('2', '11');
INSERT INTO `sys_role_category` VALUES ('2', '12');
INSERT INTO `sys_role_category` VALUES ('2', '13');
INSERT INTO `sys_role_category` VALUES ('2', '14');
INSERT INTO `sys_role_category` VALUES ('2', '15');
INSERT INTO `sys_role_category` VALUES ('2', '16');
INSERT INTO `sys_role_category` VALUES ('2', '17');
INSERT INTO `sys_role_category` VALUES ('2', '18');
INSERT INTO `sys_role_category` VALUES ('2', '19');
INSERT INTO `sys_role_category` VALUES ('2', '20');
INSERT INTO `sys_role_category` VALUES ('2', '21');
INSERT INTO `sys_role_category` VALUES ('2', '22');
INSERT INTO `sys_role_category` VALUES ('2', '23');
INSERT INTO `sys_role_category` VALUES ('2', '24');
INSERT INTO `sys_role_category` VALUES ('2', '25');
INSERT INTO `sys_role_category` VALUES ('2', '26');
INSERT INTO `sys_role_category` VALUES ('2', '27');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '23');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '25');
INSERT INTO `sys_role_menu` VALUES ('2', '26');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `area_id` bigint(20) NOT NULL COMMENT '区域编号',
  `office_id` bigint(20) NOT NULL COMMENT '部门编号',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `user_type` varchar(100) DEFAULT '' COMMENT '用户类型',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `office_id` (`office_id`),
  KEY `login_name` (`login_name`),
  KEY `del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '1', 'Zaric', 'd8167e8e6468d49c80efa7e2b96b97077f1be3b492c16ad7e58e0595', 'Zaric', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', '0:0:0:0:0:0:0:1', '2013-04-15 11:24:18');
INSERT INTO `sys_user` VALUES ('2', '1', '1', 'admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '管理员', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('3', '2', '2', 'user', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('4', '3', '3', 'user2', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户2', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('5', '3', '3', 'user3', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户3', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('6', '3', '3', 'user4', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户4', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('7', '3', '3', 'user5', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户5', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('8', '3', '3', 'user6', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户6', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('9', '3', '3', 'user7', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户7', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('10', '3', '3', 'user8', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户8', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('11', '3', '3', 'user9', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户9', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('12', '3', '3', 'user10', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户10', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('13', '3', '3', 'user11', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户11', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);
INSERT INTO `sys_user` VALUES ('14', '3', '3', 'user12', 'c483879feb6704d4780ad0d259cca93ffc173b02c48084f8b186a53c', '用户12', 'ruyees@qq.com', '8675', '8675', '', '', '2013-04-09 22:58:57', '0', null, null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户与角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('5', '2');
INSERT INTO `sys_user_role` VALUES ('6', '2');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '2');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '2');
INSERT INTO `sys_user_role` VALUES ('12', '2');
