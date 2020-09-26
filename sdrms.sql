/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50646
 Source Host           : localhost:3306
 Source Schema         : sdrms

 Target Server Type    : MySQL
 Target Server Version : 50646
 File Encoding         : 65001

 Date: 26/09/2020 11:03:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for newlaw_ex_news_t
-- ----------------------------
DROP TABLE IF EXISTS `newlaw_ex_news_t`;
CREATE TABLE `newlaw_ex_news_t` (
  `C1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of newlaw_ex_news_t
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rms_backend_user
-- ----------------------------
DROP TABLE IF EXISTS `rms_backend_user`;
CREATE TABLE `rms_backend_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_pwd` varchar(255) NOT NULL DEFAULT '',
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  `avatar` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_backend_user
-- ----------------------------
BEGIN;
INSERT INTO `rms_backend_user` VALUES (1, 'lihaitao', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '18612348765', 'lhtzbj18@126.com', '/static/upload/1.jpg');
INSERT INTO `rms_backend_user` VALUES (3, '张三', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, '', '', '');
INSERT INTO `rms_backend_user` VALUES (5, '李四', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '', '', '');
INSERT INTO `rms_backend_user` VALUES (6, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 0, 0, '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for rms_backend_user_rms_roles
-- ----------------------------
DROP TABLE IF EXISTS `rms_backend_user_rms_roles`;
CREATE TABLE `rms_backend_user_rms_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rms_backend_user_id` int(11) NOT NULL,
  `rms_role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_backend_user_rms_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rms_backend_user_test
-- ----------------------------
DROP TABLE IF EXISTS `rms_backend_user_test`;
CREATE TABLE `rms_backend_user_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_pwd` varchar(255) NOT NULL DEFAULT '',
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  `avatar` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_backend_user_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rms_course
-- ----------------------------
DROP TABLE IF EXISTS `rms_course`;
CREATE TABLE `rms_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `short_name` varchar(8) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `real_price` double NOT NULL DEFAULT '0',
  `img` varchar(256) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `seq` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_course
-- ----------------------------
BEGIN;
INSERT INTO `rms_course` VALUES (1, '2020考研政治精讲1', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (2, '2020考研政治精讲2', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (3, '2020考研政治精讲3', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (4, '2020考研政治精讲3', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (5, '2020考研政治精讲4', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (6, '2020考研政治精讲5', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (7, '2020考研政治精讲6', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (8, '2020考研政治精讲7', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (9, '2020考研政治精讲8', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (10, '2020考研政治精讲9', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (11, '2020考研政治精讲10', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (12, '2020考研政治精讲11', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (13, '2020考研政治精讲12', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (14, '2020考研政治精讲13', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (15, '2020考研政治精讲13', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (16, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (17, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (18, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (19, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (20, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (21, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (22, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (23, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (24, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (25, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (26, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (27, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (28, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (29, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (30, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (31, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (32, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (33, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (34, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
INSERT INTO `rms_course` VALUES (35, '2020考研政治精讲15', '2020考研', 100, 0, '', '2019-04-30 16:00:00', '2019-05-30 16:00:00', 100, 1);
COMMIT;

-- ----------------------------
-- Table structure for rms_ex_news
-- ----------------------------
DROP TABLE IF EXISTS `rms_ex_news`;
CREATE TABLE `rms_ex_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext,
  `promulgation_date` date DEFAULT NULL,
  `check_date` date DEFAULT NULL,
  `is_english` tinyint(1) DEFAULT NULL,
  `is_display` tinyint(1) DEFAULT NULL,
  `operator` varchar(255) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `fetch_time` datetime NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `origin_id` varchar(40) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `alltype` varchar(255) NOT NULL,
  `csummary` text,
  `ipnews_category` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `firm_id` int(10) DEFAULT NULL,
  `isEnglish` varchar(1) NOT NULL DEFAULT 'N',
  `provider_id` int(2) NOT NULL DEFAULT '1',
  `ch_eng_counter_id` varchar(40) DEFAULT NULL,
  `orderBy` varchar(255) NOT NULL,
  `taxonomy_id_list` varchar(255) DEFAULT NULL,
  `industry_id_list` varchar(255) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `is_exclusive` tinyint(4) NOT NULL DEFAULT '0',
  `section_name_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_index` (`sub_type`,`ipnews_category`,`is_english`,`is_display`),
  KEY `ch_eng_counter_id` (`ch_eng_counter_id`),
  KEY `firm_id` (`firm_id`),
  KEY `idx_oid_pid_eng` (`origin_id`,`provider_id`,`isEnglish`),
  KEY `idx_promulgation_date` (`promulgation_date`),
  KEY `section_name_id` (`section_name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344344 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rms_ex_news
-- ----------------------------
BEGIN;
INSERT INTO `rms_ex_news` VALUES (336347, 'NDRC Makes Arrangement for Pushing and Applying Integrated Public Credit Assessment Results of Market Players', '2019-09-16', NULL, 1, 1, 'toddwang', '2019-09-17 09:37:51', '2019-09-17 23:10:03', '2019-09-16 16:31:08', '336347', 1, NULL, '1,4,21,14,51,16', 'The National Development and Reform Commission (\"NDRC\") has recently issued the Circular on Pushing and Applying the Integrated Public Credit Assessment Results of Market Players (the \"Circular\").', 3, '', 0, 'Y', 1, '336334', '', ',443,', ',12,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336361, 'CNIPA Resumes Commissioned Collection and Remittance of Stamp Tax on September 16', '2019-09-16', NULL, 1, 1, 'xialihua', '2019-09-16 16:54:46', '2019-09-16 16:54:46', '2019-09-16 16:54:46', '336361', 1, NULL, '2,5,21,51,17', 'The China National Intellectual Property Administration (\"CNIPA\") has recently issued the Announcement on Resuming the Commissioned Collection and Remittance of Stamp Tax (the \"Announcement\").', 2, '', 0, 'Y', 1, '336335', '', ',60,96,', ',12,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336369, 'Mutual Assistance Gets Closer', '2019-09-17', NULL, 1, 1, 'fionawang', '2019-09-17 14:24:10', '2019-09-17 14:24:10', '2019-09-17 10:35:06', '336369', 3, NULL, '10,21', '', 1, 'Wilson Wei Huo', 117, 'Y', 1, '', '', ',106,', ',17,', '', 0, 0);
INSERT INTO `rms_ex_news` VALUES (336383, 'NMPA Solicits Comments on the Catalogue of Existing Certification Items to Be Retained', '2019-09-17', NULL, 1, 1, 'Toddwang', '2019-09-18 09:30:03', '2019-09-18 09:30:03', '2019-09-17 15:06:15', '336383', 1, NULL, '1,4,21,14,51,16', 'The Department of General Affairs of the National Medical Products Administration (\"NMPA\") has recently issued the Catalogue of Existing Certification Items to Be Retained within the Drug Regulatory System (Draft for Comment) (the \"Draft for Comment\") for public consultation by September 26, 2019.', 3, '', 0, 'Y', 1, '336378', '', ',44,', ',20,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336384, 'Four Departments Support Construction of Boao Lecheng International Medical Tourism Pilot Zone', '2019-09-17', NULL, 1, 1, 'Toddwang', '2019-09-18 09:28:45', '2019-09-18 09:28:45', '2019-09-17 15:08:06', '336384', 1, NULL, '1,4,21,14,51,16', 'Recently, four departments including the National Development and Reform Commission (\"NDRC\") have jointly distributed the Implementation Plan for Supporting the Construction of Boao Lecheng International Medical Tourism Pilot Zone (the \"Plan\").', 3, '', 0, 'Y', 1, '336379', '', ',164,41,', ',13,20,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336385, 'MOF Invites Comments on Three Revised Documents Including Measures for Preparation of Government Financial Reports', '2019-09-17', NULL, 1, 1, 'xialihua', '2019-09-17 15:12:41', '2019-09-17 23:10:03', '2019-09-17 15:12:41', '336385', 1, NULL, '1,4,5,21,14,51,17', 'The Ministry of Finance (\"MOF\") has recently issued the revised Measures for Preparation of Government Financial Reports (Draft for Comment) (the \"Draft for Comment\"), Operation Guide to Preparation of Financial Reports of Government Agencies (Draft for Comment) and Operation Guide to Preparation of Integrated Government Financial Reports (Draft for Comment) to seek opinions from the entities concerned by September 27, 2019.', 3, '', 0, 'Y', 1, '336380', '', ',145,', ',21,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336386, 'MPS Seeks Comments on the List of Retained Certification Items', '2019-09-17', NULL, 1, 1, 'xialihua', '2019-09-17 15:15:14', '2019-09-17 15:15:14', '2019-09-17 15:15:14', '336386', 1, NULL, '1,4,21,14,51', 'The Ministry of Public Security (\"MPS\") has recently issued the List of Retained Certification Items (the \"List\") for public comments by September 20, 2019.', 3, '', 0, 'Y', 1, '336381', '', ',29,', ',12,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336389, 'MEE to Regulate Identification of Parties Held Liable for Soil Pollution to Construction Land and Farming Land', '2019-09-17', NULL, 1, 1, 'mamaria', '2019-09-17 16:40:52', '2019-09-17 23:10:03', '2019-09-17 15:41:49', '336389', 1, NULL, '1,4,7,21,14,51', 'The Ministry of Ecology and Environment (\"MEE\") has recently drawn up and issued the Measures for Identification of Parties Held Liable for Soil Pollution to Construction Land (for Trial Implementation) (Draft for Comment) (the \"Draft for Comment\") and the Measures for Identification of Parties Held Liable for Soil Pollution to Farming Land (for Trial Implementation) (Draft for Comment) to seek public opinions both by November 5, 2019.', 3, '', 0, 'Y', 1, '336387', '', ',301,', ',9,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336390, 'MOST Releases Guiding Opinions on Boosting the Development of New-type R&D Institutions', '2019-09-17', NULL, 1, 1, 'xialihua', '2019-09-17 15:58:16', '2019-09-17 15:58:16', '2019-09-17 15:58:16', '336390', 1, NULL, '4,21,14,51', 'The Ministry of Science and Technology (\"MOST\") has recently issued the Guiding Opinions on Boosting the Development of New-type Research and Development Institutions (the \"Opinions\").', 2, '', 0, 'Y', 1, '336388', '', ',346,', ',29,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336431, 'Public M&A in Bermuda - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:09:17', '2019-09-18 10:09:17', '2019-09-18 10:09:17', '336431', 4, NULL, '15,18', NULL, 1, 'Stephanie P Sanderson', 0, 'Y', 1, '336408', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336432, 'Public M&A in Brazil - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:11:12', '2019-09-18 10:11:12', '2019-09-18 10:11:12', '336432', 4, NULL, '15,18', NULL, 1, 'Fernando Loeser, Enrique Tello Hadad, Lilian C Lang and Daniel Varga', 0, 'Y', 1, '336409', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336433, 'Public M&A in Canada - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:12:36', '2019-09-18 10:12:36', '2019-09-18 10:12:36', '336433', 4, NULL, '15,18', NULL, 1, 'Linda Misetich Dann, Brent Kraus, John Piasta, Ian Michael,  Chris Simard and Beth Riley', 0, 'Y', 1, '336410', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336434, 'Public M&A in China - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:14:10', '2019-09-18 10:14:10', '2019-09-18 10:14:10', '336434', 4, NULL, '15,18', NULL, 1, 'Caroline Berube and Ralf Ho', 0, 'Y', 1, '336411', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336435, 'Public M&A in Colombia - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:15:28', '2019-09-18 10:15:28', '2019-09-18 10:15:28', '336435', 4, NULL, '15,18', NULL, 1, 'Santiago Gutierrez, Juan Sebastian Peredo and Mariana Paez', 0, 'Y', 1, '336412', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336436, 'Public M&A in Denmark - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:16:50', '2019-09-18 10:16:50', '2019-09-18 10:16:50', '336436', 4, NULL, '15,18', NULL, 1, 'Thomas Weisbjerg, Anders Carstensen and Julie Hoi-Nielsen', 0, 'Y', 1, '', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336437, 'Public M&A in Egypt - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:18:29', '2019-09-18 10:18:29', '2019-09-18 10:18:29', '336437', 4, NULL, '15,18', NULL, 1, 'Omar S Bassiouny and Mariam Auda', 0, 'Y', 1, '336414', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336438, 'Public M&A in England & Wales - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:19:50', '2019-09-18 10:19:50', '2019-09-18 10:19:50', '336438', 4, NULL, '15,18', NULL, 1, 'Sam Bagot, Matthew Hamilton-Foyn, Dan Tierney and Ufuoma Brume', 0, 'Y', 1, '336415', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336439, 'Public M&A in France - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:21:11', '2019-09-18 10:21:11', '2019-09-18 10:21:11', '336439', 4, NULL, '15,18', NULL, 1, 'Anya Hristova and Oceane Vassard', 0, 'Y', 1, '336416', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336440, 'Public M&A in Germany - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:22:39', '2019-09-18 10:22:39', '2019-09-18 10:22:39', '336440', 4, NULL, '15,18', NULL, 1, 'Gerhard Wegen and Christian Cascante', 0, 'Y', 1, '336417', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336441, 'Public M&A in Ghana - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:24:02', '2019-09-18 10:24:02', '2019-09-18 10:24:02', '336441', 4, NULL, '15,18', NULL, 1, 'Kimathi Kuenyehia Sr, Sarpong Odame and Kojo Amoako', 0, 'Y', 1, '336418', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336442, 'Public M&A in India - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:26:44', '2019-09-18 10:26:44', '2019-09-18 10:26:44', '336442', 4, NULL, '15,18', NULL, 1, 'Rabindra Jhunjhunwala and Bharat Anand', 0, 'Y', 1, '336419', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336443, 'Public M&A in Ireland - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:28:06', '2019-09-18 10:28:06', '2019-09-18 10:28:06', '336443', 4, NULL, '15,18', NULL, 1, 'Madeline McDonnell and Susan Carroll', 0, 'Y', 1, '336420', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336444, 'Public M&A in Italy - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:29:22', '2019-09-18 10:29:22', '2019-09-18 10:29:22', '336444', 4, NULL, '15,18', NULL, 1, 'Fiorella Federica Alvino', 0, 'Y', 1, '336421', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336445, 'Public M&A in Japan - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:31:14', '2019-09-18 10:31:14', '2019-09-18 10:31:14', '336445', 4, NULL, '15,18', NULL, 1, 'Sho Awaya and Yushi Hegawa', 0, 'Y', 1, '336424', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336446, 'Public M&A in Latvia - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:32:35', '2019-09-18 10:32:35', '2019-09-18 10:32:35', '336446', 4, NULL, '15,18', NULL, 1, 'Gints Vilgerts and Vairis Dmitrijevs', 0, 'Y', 1, '336425', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336447, 'Public M&A in Luxembourg - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:35:30', '2019-09-18 10:35:30', '2019-09-18 10:35:30', '336447', 4, NULL, '15,18', NULL, 1, 'Frederic Lemoine and Chantal Keereman', 0, 'Y', 1, '', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336448, 'Public M&A in Malaysia - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:37:00', '2019-09-18 10:37:00', '2019-09-18 10:37:00', '336448', 4, NULL, '15,18', NULL, 1, 'Addy Herg and Quay Chew Soon', 0, 'Y', 1, '336427', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336449, 'Public M&A in Mexico - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:38:47', '2019-09-18 10:38:47', '2019-09-18 10:38:47', '336449', 4, NULL, '15,18', NULL, 1, 'Julian J Garza C and Luciano Perez G', 0, 'Y', 1, '336428', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336450, 'Public M&A in Netherlands - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:40:55', '2019-09-18 10:40:55', '2019-09-18 10:40:55', '336450', 4, NULL, '15,18', NULL, 1, 'Allard Metzelaar and Willem Beek', 0, 'Y', 1, '336429', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336451, 'Public M&A in North Macedonia - Getting the Deal Through', '2019-09-18', NULL, 1, 1, 'tammyxu', '2019-09-18 10:42:40', '2019-09-18 10:44:27', '2019-09-18 10:42:40', '336451', 4, NULL, '15,18', NULL, 1, 'Emilija Kelesoska Sholjakovska and Ljupco Cvetkovski', 0, 'Y', 1, '336430', '', ',289,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336463, 'State Council Calls for Promoting Nationwide Fitness Program and Sports Consumption to Stimulate High-quality Development of Sports Sector', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 15:26:44', '2019-09-18 16:47:24', '2019-09-18 15:26:44', '336463', 1, NULL, '1,4,21,14,51', 'The General Office of the State Council has recently distributed the Opinions on Promoting the Nationwide Fitness Program and Sports Consumption to Boost High-quality Development of the Sports Industry (the \"Opinions\").', 3, '', 0, 'Y', 1, '336455', '', ',221,', ',3,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336464, 'NDRC Desires Sound Mechanism for Entrepreneurs\' Engagement in Formulation of Enterprise-related Policies', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 15:29:43', '2019-09-18 23:10:03', '2019-09-18 15:29:43', '336464', 1, NULL, '1,4,21,14,51', 'The National Development and Reform Commission (\"NDRC\") has recently issued the Implementing Opinions on Establishing and Improving the Mechanism for Engagement of Entrepreneurs in the Formulation of Enterprise-related Policies (the \"Opinions\").', 3, '', 0, 'Y', 1, '336456', '', ',125,', ',17,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336465, 'SAFE Regulates Reporting of Balance of Payments Statistics via Banks', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 15:31:22', '2019-09-18 23:10:02', '2019-09-18 15:31:22', '336465', 1, NULL, '1,4,8,21,14,51', 'The State Administration of Foreign Exchange (\"SAFE\") has recently issued the revised Guidelines on the Reporting of Balance of Payments Statistics via Banks (2019 Edition) (the \"Guidelines\"), with effect from October 1, 2019.', 3, '', 0, 'Y', 1, '336457', '', ',255,', ',10,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336467, 'GAC Announces Adjustments to Administration of Manifests for Water and Air Transportation', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 15:33:07', '2019-09-18 23:10:03', '2019-09-18 15:33:07', '336467', 1, NULL, '1,4,6,21,14,51', 'The General Administration of Customs (\"GAC\") has recently issued the Announcement on Matters Concerning Adjustments to the Administration of Manifests for Water and Air Transportation (the \"Announcement\") which will go into effect from November 15, 2019.', 3, '', 0, 'Y', 1, '336458', '', ',405,', ',31,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336468, 'MOHURD Decides to Launch Pilot Scheme on Occupational Skill Testing for the Housing and Urban-rural Development Industry', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 15:34:47', '2019-09-18 23:10:03', '2019-09-18 15:34:47', '336468', 1, NULL, '1,4,21,14,51', 'The Ministry of Housing and Urban-rural Development (\"MOHURD\") has recently issued the Circular on Initiating the Pilot Scheme on Occupational Skill Testing for the Housing and Urban-rural Development Industry (the \"Circular\").', 3, '', 0, 'Y', 1, '336459', '', ',323,', ',6,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336472, 'NEA Seeks Comments on the National Standard Entitled Guidance on Security and Stability of Power Systems', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 16:30:07', '2019-09-18 23:10:03', '2019-09-18 16:15:16', '336472', 1, NULL, '1,4,7,21,14,51', 'The Department of General Affairs of the National Energy Administration (\"NEA\") has recently issued the Guidance on Security and Stability of Power Systems (Draft for Comment) (the \"Draft for Comment\") to seek public comments and advice by November 15, 2019.', 3, '', 0, 'Y', 1, '336460', '', ',292,', ',8,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336474, 'Four Departments Jointly Release Action Plan for Industrial Water Conservation in Beijing-Tianjin-Hebei Region', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 16:16:00', '2019-09-18 16:16:00', '2019-09-18 16:16:00', '336474', 1, NULL, '1,4,7,21,14,51', 'Four departments including the Ministry of Industry and Information Technology (\"MIIT\") have recently released the Action Plan for Industrial Water Conservation in Beijing-Tianjin-Hebei Region (the \"Plan\").', 3, '', 0, 'Y', 1, '336461', '', ',442,', ',8,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336485, 'Revised Negative List (2019 Edition) is Undergoing Approval Procedures', '2019-09-18', NULL, 1, 1, 'xialihua', '2019-09-18 16:29:31', '2019-09-18 16:29:31', '2019-09-18 16:29:31', '336485', 1, NULL, '4,21,14,51', 'The Negative List for Market Access (2019 Edition) that has just been amended is now undergoing the approval procedures, said Meng Wei, a spokesperson of the National Development and Reform Commission (\"NDRC\") at a recent press briefing.', 2, '', 0, 'Y', 1, '336462', '', ',160,234,', ',12,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336511, 'BAC Pioneers Reforming Arbitrators\' Remuneration Scheme', '2019-09-18', NULL, 1, 1, 'jullyzhu', '2019-09-18 23:15:41', '2019-09-18 23:15:41', '2019-09-18 23:15:41', '336511', 3, NULL, '10,21,51', '', 2, 'Patrick Zheng, Charles Qin', 91, 'Y', 1, '', '', ',106,', ',12,', '', 0, 0);
INSERT INTO `rms_ex_news` VALUES (336534, 'test0001', '2019-10-09', NULL, 0, 1, 'admin', '2019-10-12 09:05:30', '2019-10-12 09:05:30', '2019-10-09 16:34:26', '336534', 3, NULL, '5', '&nbsp;tegg', 1, '', 3, 'N', 1, '', '', ',105,', ',4,', '', 0, 0);
INSERT INTO `rms_ex_news` VALUES (336535, 'test_aaa', '2019-11-26', NULL, 0, 1, 'admin', '2019-12-10 15:25:19', '2019-12-10 15:25:19', '2019-11-26 17:33:03', '336535', 5, NULL, '22', NULL, 19, '', 3, 'N', 1, '', '', '', '', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336536, 'bbbbbbbbbb', '2019-11-26', NULL, 0, 1, 'admin', '2019-12-10 15:24:55', '2019-12-10 15:24:55', '2019-11-26 17:36:19', '336536', 5, NULL, '22', NULL, 19, 'cccc', 4, 'N', 1, '', '', '', '', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336537, 'test', '2019-12-02', NULL, 0, 1, 'admin', '2019-12-10 15:44:07', '2019-12-10 15:44:07', '2019-12-02 16:27:39', '336537', 5, NULL, '22', NULL, 20, '', 3, 'N', 1, '', '', '', '', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (336540, 'testbbbbbb', '2019-12-03', NULL, 0, 1, 'admin', '2019-12-03 13:41:40', '2019-12-03 13:41:40', '2019-12-03 13:41:40', '336540', 5, NULL, '18', NULL, 11, 'test', 2, 'N', 1, '', '', ',108,', ',2,3,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (344340, 'testbbb', '2019-12-11', NULL, 0, 1, 'admin', '2019-12-11 16:26:51', '2019-12-11 16:26:51', '2019-12-11 16:26:51', '344340', 3, NULL, '20', '&nbsp;test', 1, '', 5, 'N', 1, '', '', ',57,', ',2,3,', '', 0, 0);
INSERT INTO `rms_ex_news` VALUES (344341, 'test4434', '2019-12-11', NULL, 1, 1, 'admin', '2019-12-11 16:29:36', '2019-12-11 16:29:36', '2019-12-11 16:28:57', '344341', 1, NULL, '20', '&nbsp;tegggg', 1, 'fdfdf', 3, 'Y', 1, '', '', ',382,384,', ',3,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (344342, 'testrrr', '2019-12-11', NULL, 0, 1, 'admin', '2019-12-11 18:01:30', '2019-12-11 18:01:30', '2019-12-11 18:01:30', '344342', 4, NULL, '20', NULL, 1, 'ddf', 4, 'N', 1, '', '', ',269,', ',3,', NULL, 0, 0);
INSERT INTO `rms_ex_news` VALUES (344343, 'test', '2019-12-11', NULL, 0, 1, 'admin', '2019-12-11 18:13:08', '2019-12-11 18:13:08', '2019-12-11 18:13:08', '344343', 9, NULL, '16', '&nbsp;testb', NULL, '', 3, 'N', 1, '', '', ',57,', ',2,', '', 0, 2);
COMMIT;

-- ----------------------------
-- Table structure for rms_resource
-- ----------------------------
DROP TABLE IF EXISTS `rms_resource`;
CREATE TABLE `rms_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtype` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `seq` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(32) NOT NULL DEFAULT '',
  `url_for` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_resource
-- ----------------------------
BEGIN;
INSERT INTO `rms_resource` VALUES (7, 1, '权限管理', 8, 100, 'fa fa-balance-scale', '');
INSERT INTO `rms_resource` VALUES (8, 0, '系统菜单', NULL, 200, '', '');
INSERT INTO `rms_resource` VALUES (9, 1, '资源管理', 7, 100, '', 'ResourceController.Index');
INSERT INTO `rms_resource` VALUES (12, 1, '角色管理', 7, 100, '', 'RoleController.Index');
INSERT INTO `rms_resource` VALUES (13, 1, '用户管理', 7, 100, '', 'BackendUserController.Index');
INSERT INTO `rms_resource` VALUES (14, 1, '系统管理', 8, 90, 'fa fa-gears', '');
INSERT INTO `rms_resource` VALUES (21, 0, '业务菜单', NULL, 170, '', '');
INSERT INTO `rms_resource` VALUES (22, 1, '课程资源', 21, 100, 'fa fa-book', 'CourseController.Index');
INSERT INTO `rms_resource` VALUES (23, 1, '日志管理(空)', 14, 100, '', '');
INSERT INTO `rms_resource` VALUES (25, 2, '编辑', 9, 100, 'fa fa-pencil', 'ResourceController.Edit');
INSERT INTO `rms_resource` VALUES (26, 2, '编辑', 13, 100, 'fa fa-pencil', 'BackendUserController.Edit');
INSERT INTO `rms_resource` VALUES (27, 2, '删除', 9, 100, 'fa fa-trash', 'ResourceController.Delete');
INSERT INTO `rms_resource` VALUES (29, 2, '删除', 13, 100, 'fa fa-trash', 'BackendUserController.Delete');
INSERT INTO `rms_resource` VALUES (30, 2, '编辑', 12, 100, 'fa fa-pencil', 'RoleController.Edit');
INSERT INTO `rms_resource` VALUES (31, 2, '删除', 12, 100, 'fa fa-trash', 'RoleController.Delete');
INSERT INTO `rms_resource` VALUES (32, 2, '分配资源', 12, 100, 'fa fa-th', 'RoleController.Allocate');
INSERT INTO `rms_resource` VALUES (35, 1, ' 首页', NULL, 100, 'fa fa-dashboard', 'HomeController.Index');
INSERT INTO `rms_resource` VALUES (36, 2, '编辑', 22, 100, '', 'CourseController.Edit');
INSERT INTO `rms_resource` VALUES (37, 2, '删除', 22, 100, '', 'CourseController.Delete');
INSERT INTO `rms_resource` VALUES (38, 1, '智能图表', 21, 100, 'fa fa-sitemap', '');
INSERT INTO `rms_resource` VALUES (39, 1, '最高院司法观点速查', 38, 100, '', 'JudicialPointController.Index');
INSERT INTO `rms_resource` VALUES (40, 1, '法条实务关联速查', 38, 100, '', '');
COMMIT;

-- ----------------------------
-- Table structure for rms_role
-- ----------------------------
DROP TABLE IF EXISTS `rms_role`;
CREATE TABLE `rms_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `seq` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_role
-- ----------------------------
BEGIN;
INSERT INTO `rms_role` VALUES (22, '超级管理员', 20);
INSERT INTO `rms_role` VALUES (24, '角色管理员', 10);
INSERT INTO `rms_role` VALUES (25, '课程资源管理员', 5);
COMMIT;

-- ----------------------------
-- Table structure for rms_role_backenduser_rel
-- ----------------------------
DROP TABLE IF EXISTS `rms_role_backenduser_rel`;
CREATE TABLE `rms_role_backenduser_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `backend_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_role_backenduser_rel
-- ----------------------------
BEGIN;
INSERT INTO `rms_role_backenduser_rel` VALUES (66, 25, 3, '2017-12-19 06:40:34');
INSERT INTO `rms_role_backenduser_rel` VALUES (67, 22, 1, '2019-12-12 03:46:07');
COMMIT;

-- ----------------------------
-- Table structure for rms_role_resource_rel
-- ----------------------------
DROP TABLE IF EXISTS `rms_role_resource_rel`;
CREATE TABLE `rms_role_resource_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rms_role_resource_rel
-- ----------------------------
BEGIN;
INSERT INTO `rms_role_resource_rel` VALUES (448, 24, 8, '2017-12-19 06:40:16');
INSERT INTO `rms_role_resource_rel` VALUES (449, 24, 14, '2017-12-19 06:40:16');
INSERT INTO `rms_role_resource_rel` VALUES (450, 24, 23, '2017-12-19 06:40:16');
INSERT INTO `rms_role_resource_rel` VALUES (451, 25, 21, '2019-05-11 13:57:37');
INSERT INTO `rms_role_resource_rel` VALUES (452, 25, 22, '2019-05-11 13:57:37');
INSERT INTO `rms_role_resource_rel` VALUES (453, 25, 36, '2019-05-11 13:57:37');
INSERT INTO `rms_role_resource_rel` VALUES (454, 25, 37, '2019-05-11 13:57:37');
INSERT INTO `rms_role_resource_rel` VALUES (455, 22, 35, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (456, 22, 21, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (457, 22, 22, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (458, 22, 36, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (459, 22, 37, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (460, 22, 8, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (461, 22, 14, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (462, 22, 23, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (463, 22, 7, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (464, 22, 9, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (465, 22, 25, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (466, 22, 27, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (467, 22, 12, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (468, 22, 30, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (469, 22, 31, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (470, 22, 32, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (471, 22, 13, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (472, 22, 26, '2019-05-11 13:57:51');
INSERT INTO `rms_role_resource_rel` VALUES (473, 22, 29, '2019-05-11 13:57:51');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
