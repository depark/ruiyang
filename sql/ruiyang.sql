/*
Navicat MySQL Data Transfer

Source Server         : benji
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ruiyang

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-07 11:51:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add banner图片', '7', 'add_banner');
INSERT INTO `auth_permission` VALUES ('20', 'Can change banner图片', '7', 'change_banner');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete banner图片', '7', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 产品', '8', 'add_product');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 产品', '8', 'change_product');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 产品', '8', 'delete_product');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 公司证书', '9', 'add_company');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 公司证书', '9', 'change_company');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 公司证书', '9', 'delete_company');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 公司证书', '10', 'add_com_cer');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 公司证书', '10', 'change_com_cer');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 公司证书', '10', 'delete_com_cer');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 新闻', '11', 'add_news');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 新闻', '11', 'change_news');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 新闻', '11', 'delete_news');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 展会', '12', 'add_exhi');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 展会', '12', 'change_exhi');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 展会', '12', 'delete_exhi');
INSERT INTO `auth_permission` VALUES ('37', 'Can add exhi_ image', '13', 'add_exhi_image');
INSERT INTO `auth_permission` VALUES ('38', 'Can change exhi_ image', '13', 'change_exhi_image');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete exhi_ image', '13', 'delete_exhi_image');
INSERT INTO `auth_permission` VALUES ('40', 'Can add FAQ', '14', 'add_faq');
INSERT INTO `auth_permission` VALUES ('41', 'Can change FAQ', '14', 'change_faq');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete FAQ', '14', 'delete_faq');
INSERT INTO `auth_permission` VALUES ('43', 'Can change 客户意见', '15', 'change_contect');
INSERT INTO `auth_permission` VALUES ('44', 'Can delete 客户意见', '15', 'delete_contect');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 案例对比图', '16', 'add_case');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 案例对比图', '16', 'change_case');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 案例对比图', '16', 'delete_case');
INSERT INTO `auth_permission` VALUES ('48', 'Can add 优势', '17', 'add_advantage');
INSERT INTO `auth_permission` VALUES ('49', 'Can change 优势', '17', 'change_advantage');
INSERT INTO `auth_permission` VALUES ('50', 'Can delete 优势', '17', 'delete_advantage');
INSERT INTO `auth_permission` VALUES ('51', 'Can c 公司信息', '18', 'c_com_info');
INSERT INTO `auth_permission` VALUES ('52', 'Can h 公司信息', '18', 'h_com_info');
INSERT INTO `auth_permission` VALUES ('53', 'Can a 公司信息', '18', 'a_com_info');
INSERT INTO `auth_permission` VALUES ('54', 'Can n 公司信息', '18', 'n_com_info');
INSERT INTO `auth_permission` VALUES ('55', 'Can g 公司信息', '18', 'g_com_info');
INSERT INTO `auth_permission` VALUES ('56', 'Can e 公司信息', '18', 'e_com_info');
INSERT INTO `auth_permission` VALUES ('57', 'Can c 首页优势标题', '19', 'c_index_adv');
INSERT INTO `auth_permission` VALUES ('58', 'Can h 首页优势标题', '19', 'h_index_adv');
INSERT INTO `auth_permission` VALUES ('59', 'Can a 首页优势标题', '19', 'a_index_adv');
INSERT INTO `auth_permission` VALUES ('60', 'Can n 首页优势标题', '19', 'n_index_adv');
INSERT INTO `auth_permission` VALUES ('61', 'Can g 首页优势标题', '19', 'g_index_adv');
INSERT INTO `auth_permission` VALUES ('62', 'Can e 首页优势标题', '19', 'e_index_adv');
INSERT INTO `auth_permission` VALUES ('63', 'Can add 用户提交的email地址', '20', 'add_rece_email');
INSERT INTO `auth_permission` VALUES ('64', 'Can change 用户提交的email地址', '20', 'change_rece_email');
INSERT INTO `auth_permission` VALUES ('65', 'Can delete 用户提交的email地址', '20', 'delete_rece_email');
INSERT INTO `auth_permission` VALUES ('66', 'Can add contact页面banner', '21', 'add_contact_banner');
INSERT INTO `auth_permission` VALUES ('67', 'Can change contact页面banner', '21', 'change_contact_banner');
INSERT INTO `auth_permission` VALUES ('68', 'Can delete contact页面banner', '21', 'delete_contact_banner');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$oab4kYYC6uuT$0MOuvOfeU4ML3MiPkkYPivoY+l988l/wrFugPEFgMCw=', '2018-03-07 03:44:28.962000', '1', 'admin', '', '', '', '1', '1', '2017-06-14 05:11:59.762000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-06-14 05:23:04.922000', '1', 'banner1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-06-14 05:23:16.591000', '2', 'banner2', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-06-14 05:23:24.800000', '3', 'banner3', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-06-14 05:23:49.876000', '4', 'admin', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-06-14 05:36:09.869000', '1', 'Reyongel', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-06-14 05:36:38.911000', '2', 'Fine', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-06-14 05:37:01.945000', '3', 'Derm', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-06-14 05:39:32.723000', '1', 'Why choose us?', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2017-06-14 05:40:30.307000', '1', '- Safety', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2017-06-14 05:40:43.556000', '2', '- Injection', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2017-06-14 05:40:58.010000', '3', '- Effection', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2017-06-14 05:41:09.655000', '4', '- Service', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2017-06-14 05:42:28.861000', '1', 'fullview', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2017-06-14 05:42:38.601000', '2', 'fullview', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2017-06-14 05:42:44.174000', '3', 'fullview', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2017-06-14 05:42:48.436000', '4', 'fullview', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2017-06-14 05:43:03.134000', '5', 'fullview', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2017-06-14 05:47:52.183000', '1', 'Exhi object', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2017-06-14 05:48:15.172000', '2', 'Exhi object', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2017-06-14 05:56:18.725000', '1', 'news1', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2017-06-14 05:58:12.849000', '2', 'news2', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2017-06-14 05:58:52.761000', '2', 'news2', '2', '[{\"changed\": {\"fields\": [\"context\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2017-06-14 05:59:37.279000', '1', 'ruiyang', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2017-06-14 06:00:41.132000', '1', 'What is hyaluronic acid?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2017-06-14 06:01:46.664000', '2', 'What are the risks involved with Reyoungel?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2017-06-14 06:01:59.821000', '3', 'What are the benefits of Reyoungel?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2017-06-14 06:02:14.628000', '4', 'What is the recovery time?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2018-02-27 01:31:34.456000', '4', 'admin', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2018-02-27 01:31:34.499000', '3', 'banner3', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2018-02-27 01:31:34.524000', '2', 'banner2', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2018-02-27 01:31:34.550000', '1', 'banner1', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2018-02-27 01:32:03.823000', '5', 'banner1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2018-02-27 01:32:16.188000', '6', 'banner2', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2018-02-27 01:32:26.368000', '7', 'banner3', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2018-02-27 01:34:43.427000', '3', 'Derm', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2018-02-27 01:34:58.294000', '2', 'Fine', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2018-02-27 01:35:07.653000', '1', 'Reyongel', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2018-02-27 02:17:42.344000', '27', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2018-02-27 02:17:42.480000', '26', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2018-02-27 02:17:42.523000', '25', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2018-02-27 02:17:42.554000', '24', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2018-02-27 02:17:42.582000', '23', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2018-02-27 02:17:42.632000', '22', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2018-02-27 02:17:42.715000', '21', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2018-02-27 02:17:42.740000', '20', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2018-02-27 02:17:42.765000', '19', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2018-02-27 02:17:42.790000', '18', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2018-02-27 02:17:42.832000', '17', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2018-02-27 02:17:42.856000', '16', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2018-02-27 02:17:42.883000', '15', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2018-02-27 02:17:42.993000', '14', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2018-02-27 02:17:43.177000', '13', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2018-02-27 02:17:43.216000', '12', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2018-02-27 02:17:43.271000', '11', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2018-02-27 02:17:43.340000', '10', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2018-02-27 02:17:43.400000', '9', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2018-02-27 02:17:43.452000', '8', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2018-02-27 02:17:43.482000', '7', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2018-02-27 02:17:43.506000', '6', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2018-02-27 02:17:43.532000', '5', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2018-02-27 02:17:43.556000', '4', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2018-02-27 02:17:43.582000', '3', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2018-02-27 02:17:43.630000', '2', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2018-02-27 02:17:43.657000', '1', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2018-02-27 02:42:04.094000', '4', '- Service', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2018-02-27 02:42:22.793000', '3', '- Effection', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2018-02-27 02:42:31.534000', '2', '- Injection', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2018-02-27 02:42:46.071000', '1', '- Safety', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2018-02-27 02:42:48.975000', '1', '- Safety', '2', '[]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2018-02-27 02:43:41.700000', '5', '12', '2', '[{\"changed\": {\"fields\": [\"name\", \"image\"]}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2018-02-27 02:51:05.859000', '1', 'Exhi object', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2018-02-27 02:51:05.893000', '2', 'Exhi object', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2018-02-27 02:51:51.653000', '3', 'Exhi object', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2018-02-27 02:52:57.517000', '1', 'ruiyang', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2018-02-27 02:53:33.638000', '2', 'ruiyang', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2018-02-27 02:56:11.682000', '1', 'ruiyang', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2018-02-27 03:03:59.183000', '4', 'Exhi object', '1', '[{\"added\": {}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}, {\"added\": {\"object\": \"Exhi_Image object\", \"name\": \"exhi_ image\"}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2018-03-05 02:30:28.022000', '7', 'banner3', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2018-03-05 02:30:28.096000', '6', 'banner2', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2018-03-05 02:30:28.120000', '5', 'banner1', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2018-03-05 02:32:14.613000', '8', '1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2018-03-05 02:32:20.747000', '9', '2', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2018-03-05 02:32:30.220000', '10', '3', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2018-03-05 02:32:56.941000', '3', 'Derm', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2018-03-05 02:32:56.969000', '2', 'Fine', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2018-03-05 02:32:56.993000', '1', 'Reyongel', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2018-03-05 02:34:09.271000', '4', 'FINE', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2018-03-05 02:34:24.728000', '5', 'DREAM', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2018-03-05 02:34:43.078000', '6', 'DEEP', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('90', '2018-03-05 02:35:03.630000', '7', 'SUBSKIN', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('91', '2018-03-05 05:46:54.203000', '1', '- Safety', '3', '', '17', '1');
INSERT INTO `django_admin_log` VALUES ('92', '2018-03-05 05:59:50.603000', '5', 'Safety', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('93', '2018-03-05 06:16:46.842000', '5', '-Safety', '2', '[{\"changed\": {\"fields\": [\"name\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('94', '2018-03-05 06:18:30.168000', '3', '- Effection', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('95', '2018-03-05 06:20:59.093000', '5', '-Safety', '2', '[]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('96', '2018-03-05 06:32:50.592000', '5', '12', '3', '', '16', '1');
INSERT INTO `django_admin_log` VALUES ('97', '2018-03-05 06:32:50.619000', '4', 'fullview', '3', '', '16', '1');
INSERT INTO `django_admin_log` VALUES ('98', '2018-03-05 06:32:50.649000', '3', 'fullview', '3', '', '16', '1');
INSERT INTO `django_admin_log` VALUES ('99', '2018-03-05 06:32:50.769000', '2', 'fullview', '3', '', '16', '1');
INSERT INTO `django_admin_log` VALUES ('100', '2018-03-05 06:32:50.885000', '1', 'fullview', '3', '', '16', '1');
INSERT INTO `django_admin_log` VALUES ('101', '2018-03-05 06:38:23.673000', '6', 'Forehead', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('102', '2018-03-05 06:39:40.223000', '7', 'Oral week', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('103', '2018-03-05 06:39:48.809000', '8', 'Lips', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('104', '2018-03-05 06:40:24.923000', '9', 'Jaws', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('105', '2018-03-05 07:13:27.645000', '1', 'news1', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('106', '2018-03-05 07:15:30.280000', '1', 'news1', '2', '[{\"changed\": {\"fields\": [\"top\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('107', '2018-03-05 07:23:08.565000', '1', 'news1', '2', '[{\"changed\": {\"fields\": [\"top\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('108', '2018-03-05 07:23:21.358000', '2', 'news2', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('109', '2018-03-05 07:23:28.694000', '3', 'news3', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('110', '2018-03-05 07:26:07.099000', '3', 'news3', '2', '[{\"changed\": {\"fields\": [\"top\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('111', '2018-03-05 07:26:19.712000', '4', 'news4', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('112', '2018-03-05 07:26:29.892000', '5', 'news5', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('113', '2018-03-05 07:48:01.455000', '3', 'news3', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('114', '2018-03-05 07:50:00.072000', '6', '8', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('115', '2018-03-05 08:19:58.875000', '7', '12', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('116', '2018-03-05 09:40:22.216000', '7', '12', '2', '[{\"changed\": {\"fields\": [\"picture\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('117', '2018-03-05 09:43:14.770000', '1', '1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('118', '2018-03-05 09:43:18.607000', '2', '2', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('119', '2018-03-05 09:43:22.848000', '3', '3', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('120', '2018-03-05 09:51:42.550000', '1', 'ruiyang', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('121', '2018-03-05 09:52:57.671000', '1', 'ruiyang', '2', '[{\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}, {\"added\": {\"object\": \"Com_cer object\", \"name\": \"\\u516c\\u53f8\\u8bc1\\u4e66\"}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('122', '2018-03-05 09:55:12.552000', '1', '•Safety', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('123', '2018-03-05 09:56:28.878000', '1', '•Safety', '2', '[]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('124', '2018-03-05 09:56:45.746000', '2', '•Injection', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('125', '2018-03-05 09:57:06.615000', '3', '•Effect', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('126', '2018-03-05 09:57:19.282000', '4', '•Service', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('127', '2018-03-05 09:58:27.260000', '1', 'Why choose us?', '1', '[{\"added\": {}}]', '19', '1');
INSERT INTO `django_admin_log` VALUES ('128', '2018-03-05 10:02:16.926000', '1', 'Forehead', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('129', '2018-03-05 10:02:26.257000', '2', 'Oral week', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('130', '2018-03-05 10:02:36.858000', '3', 'Jaws', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('131', '2018-03-05 10:02:45.953000', '4', 'Lips', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('132', '2018-03-05 10:03:59.377000', '1', 'ruiyang', '1', '[{\"added\": {}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('133', '2018-03-06 03:18:38.248000', '1', 'Contact_banner object', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('134', '2018-03-06 03:31:29.029000', '1', 'FINE', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('135', '2018-03-06 03:33:07.213000', '2', 'DREM', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('136', '2018-03-06 03:36:42.885000', '3', 'DEEP', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('137', '2018-03-06 03:37:15.710000', '4', 'SUBSKIN', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('138', '2018-03-06 05:29:02.023000', '1', 'ruiyang', '2', '[{\"changed\": {\"fields\": [\"trademark\"]}}]', '18', '1');
INSERT INTO `django_admin_log` VALUES ('139', '2018-03-07 02:50:39.756000', '1', 'What is hyaluronic acid?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('140', '2018-03-07 02:50:54.378000', '2', 'What are the risks involved with Reyoungel?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('141', '2018-03-07 02:51:10.798000', '3', 'What are the benefits of Reyoungel?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('142', '2018-03-07 02:51:25.721000', '4', 'What is the recovery time?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('143', '2018-03-07 02:52:15.447000', '5', 'What is the recovery time?', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('144', '2018-03-07 03:22:33.506000', '5', 'test1212', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('145', '2018-03-07 03:22:33.536000', '4', '12312eqwe', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('146', '2018-03-07 03:22:33.566000', '3', 'ruiyang@gmai.com', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('147', '2018-03-07 03:22:33.595000', '2', 'Email', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('148', '2018-03-07 03:22:33.625000', '1', 'eqwe', '3', '', '20', '1');
INSERT INTO `django_admin_log` VALUES ('149', '2018-03-07 03:23:16.856000', '102', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('150', '2018-03-07 03:23:16.899000', '101', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('151', '2018-03-07 03:23:16.927000', '100', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('152', '2018-03-07 03:23:16.957000', '99', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('153', '2018-03-07 03:23:16.985000', '98', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('154', '2018-03-07 03:23:17.016000', '97', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('155', '2018-03-07 03:23:17.057000', '96', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('156', '2018-03-07 03:23:17.202000', '95', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('157', '2018-03-07 03:23:17.232000', '94', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('158', '2018-03-07 03:23:17.261000', '93', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('159', '2018-03-07 03:23:17.289000', '92', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('160', '2018-03-07 03:23:17.319000', '91', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('161', '2018-03-07 03:23:17.349000', '90', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('162', '2018-03-07 03:23:17.377000', '89', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('163', '2018-03-07 03:23:17.407000', '88', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('164', '2018-03-07 03:23:17.435000', '87', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('165', '2018-03-07 03:23:17.466000', '86', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('166', '2018-03-07 03:23:17.493000', '85', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('167', '2018-03-07 03:23:17.523000', '84', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('168', '2018-03-07 03:23:17.552000', '83', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('169', '2018-03-07 03:23:17.582000', '82', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('170', '2018-03-07 03:23:17.610000', '81', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('171', '2018-03-07 03:23:17.640000', '80', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('172', '2018-03-07 03:23:17.741000', '79', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('173', '2018-03-07 03:23:17.819000', '78', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('174', '2018-03-07 03:23:17.857000', '77', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('175', '2018-03-07 03:23:17.885000', '76', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('176', '2018-03-07 03:23:17.916000', '75', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('177', '2018-03-07 03:23:17.952000', '74', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('178', '2018-03-07 03:23:17.983000', '73', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('179', '2018-03-07 03:23:18.019000', '72', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('180', '2018-03-07 03:23:18.049000', '71', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('181', '2018-03-07 03:23:18.077000', '70', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('182', '2018-03-07 03:23:18.107000', '69', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('183', '2018-03-07 03:23:18.136000', '68', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('184', '2018-03-07 03:23:18.166000', '67', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('185', '2018-03-07 03:23:18.194000', '66', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('186', '2018-03-07 03:23:18.224000', '65', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('187', '2018-03-07 03:23:18.252000', '64', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('188', '2018-03-07 03:23:18.282000', '63', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('189', '2018-03-07 03:23:18.311000', '62', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('190', '2018-03-07 03:23:18.341000', '61', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('191', '2018-03-07 03:23:18.369000', '60', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('192', '2018-03-07 03:23:18.407000', '59', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('193', '2018-03-07 03:23:18.437000', '58', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('194', '2018-03-07 03:23:18.465000', '57', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('195', '2018-03-07 03:23:18.495000', '56', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('196', '2018-03-07 03:23:18.524000', '55', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('197', '2018-03-07 03:23:18.553000', '54', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('198', '2018-03-07 03:23:18.623000', '53', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('199', '2018-03-07 03:23:18.666000', '52', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('200', '2018-03-07 03:23:18.696000', '51', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('201', '2018-03-07 03:23:18.733000', '50', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('202', '2018-03-07 03:23:18.762000', '49', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('203', '2018-03-07 03:23:18.799000', '48', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('204', '2018-03-07 03:23:18.829000', '47', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('205', '2018-03-07 03:23:18.866000', '46', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('206', '2018-03-07 03:23:18.896000', '45', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('207', '2018-03-07 03:23:18.932000', '44', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('208', '2018-03-07 03:23:18.953000', '43', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('209', '2018-03-07 03:23:18.982000', '42', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('210', '2018-03-07 03:23:19.003000', '41', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('211', '2018-03-07 03:23:19.032000', '40', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('212', '2018-03-07 03:23:19.053000', '39', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('213', '2018-03-07 03:23:19.081000', '38', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('214', '2018-03-07 03:23:19.103000', '37', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('215', '2018-03-07 03:23:19.132000', '36', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('216', '2018-03-07 03:23:19.153000', '35', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('217', '2018-03-07 03:23:19.182000', '34', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('218', '2018-03-07 03:23:19.203000', '33', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('219', '2018-03-07 03:23:19.232000', '32', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('220', '2018-03-07 03:23:19.253000', '31', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('221', '2018-03-07 03:23:19.282000', '30', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('222', '2018-03-07 03:23:19.302000', '29', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('223', '2018-03-07 03:23:19.332000', '28', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('224', '2018-03-07 03:23:19.362000', '27', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('225', '2018-03-07 03:23:19.399000', '26', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('226', '2018-03-07 03:23:19.428000', '25', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('227', '2018-03-07 03:23:19.457000', '24', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('228', '2018-03-07 03:23:19.478000', '23', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('229', '2018-03-07 03:23:19.506000', '22', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('230', '2018-03-07 03:23:19.528000', '21', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('231', '2018-03-07 03:23:19.555000', '20', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('232', '2018-03-07 03:23:19.578000', '19', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('233', '2018-03-07 03:23:19.607000', '18', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('234', '2018-03-07 03:23:19.629000', '17', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('235', '2018-03-07 03:23:19.698000', '16', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('236', '2018-03-07 03:23:19.787000', '15', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('237', '2018-03-07 03:23:19.824000', '14', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('238', '2018-03-07 03:23:19.845000', '13', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('239', '2018-03-07 03:23:19.874000', '12', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('240', '2018-03-07 03:23:19.903000', '11', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('241', '2018-03-07 03:23:19.932000', '10', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('242', '2018-03-07 03:23:19.962000', '9', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('243', '2018-03-07 03:23:19.990000', '8', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('244', '2018-03-07 03:23:20.012000', '7', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('245', '2018-03-07 03:23:20.040000', '6', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('246', '2018-03-07 03:23:20.062000', '5', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('247', '2018-03-07 03:23:20.090000', '4', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('248', '2018-03-07 03:23:20.120000', '3', 'Contect object', '3', '', '15', '1');
INSERT INTO `django_admin_log` VALUES ('249', '2018-03-07 03:24:22.553000', '7', '12', '2', '[{\"changed\": {\"fields\": [\"context\"]}}]', '11', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('17', 'en', 'advantage');
INSERT INTO `django_content_type` VALUES ('7', 'en', 'banner');
INSERT INTO `django_content_type` VALUES ('16', 'en', 'case');
INSERT INTO `django_content_type` VALUES ('9', 'en', 'company');
INSERT INTO `django_content_type` VALUES ('10', 'en', 'com_cer');
INSERT INTO `django_content_type` VALUES ('18', 'en', 'com_info');
INSERT INTO `django_content_type` VALUES ('21', 'en', 'contact_banner');
INSERT INTO `django_content_type` VALUES ('15', 'en', 'contect');
INSERT INTO `django_content_type` VALUES ('12', 'en', 'exhi');
INSERT INTO `django_content_type` VALUES ('13', 'en', 'exhi_image');
INSERT INTO `django_content_type` VALUES ('14', 'en', 'faq');
INSERT INTO `django_content_type` VALUES ('19', 'en', 'index_adv');
INSERT INTO `django_content_type` VALUES ('11', 'en', 'news');
INSERT INTO `django_content_type` VALUES ('8', 'en', 'product');
INSERT INTO `django_content_type` VALUES ('20', 'en', 'rece_email');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-06-14 05:09:52.741000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-06-14 05:09:59.966000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-06-14 05:10:01.550000');
INSERT INTO `django_migrations` VALUES ('4', 'contenttypes', '0002_remove_content_type_name', '2017-06-14 05:10:02.885000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0002_alter_permission_name_max_length', '2017-06-14 05:10:03.622000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0003_alter_user_email_max_length', '2017-06-14 05:10:04.306000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0004_alter_user_username_opts', '2017-06-14 05:10:04.344000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0005_alter_user_last_login_null', '2017-06-14 05:10:04.850000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0006_require_contenttypes_0002', '2017-06-14 05:10:04.918000');
INSERT INTO `django_migrations` VALUES ('10', 'sessions', '0001_initial', '2017-06-14 05:10:05.591000');
INSERT INTO `django_migrations` VALUES ('11', 'admin', '0002_logentry_remove_auto_add', '2017-06-14 05:21:15.555000');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2017-06-14 05:21:15.771000');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2017-06-14 05:21:17.119000');
INSERT INTO `django_migrations` VALUES ('14', 'en', '0001_initial', '2018-03-05 07:06:59.696000');
INSERT INTO `django_migrations` VALUES ('15', 'en', '0002_auto_20180305_1420', '2018-03-05 07:07:05.824000');
INSERT INTO `django_migrations` VALUES ('16', 'en', '0003_auto_20180305_1504', '2018-03-05 07:07:07.700000');
INSERT INTO `django_migrations` VALUES ('17', 'en', '0004_auto_20180305_1508', '2018-03-05 07:08:22.605000');
INSERT INTO `django_migrations` VALUES ('18', 'en', '0005_auto_20180305_1512', '2018-03-05 07:12:13.760000');
INSERT INTO `django_migrations` VALUES ('19', 'en', '0006_auto_20180305_1548', '2018-03-05 07:48:33.557000');
INSERT INTO `django_migrations` VALUES ('20', 'en', '0007_remove_advantage_image', '2018-03-05 09:55:55.034000');
INSERT INTO `django_migrations` VALUES ('21', 'en', '0008_contact_banner', '2018-03-06 03:15:52.299000');
INSERT INTO `django_migrations` VALUES ('22', 'en', '0009_contect_time', '2018-03-07 02:41:56.629000');
INSERT INTO `django_migrations` VALUES ('23', 'en', '0010_auto_20180307_1051', '2018-03-07 02:51:53.861000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6zykrpucbetq72mzwspuj56kdmvflj0z', 'Y2U5NDEyZTBjMTM0OTVlMjAyMDIzOGUwMzZiN2JmN2ZlMzJhZTMwZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhYzI2ODcwY2M0NjRmNDVlNWFmZjhkOTllNGIxOTc2MGNlYWViMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-03-21 03:44:29.034000');
INSERT INTO `django_session` VALUES ('8be5xv0165u185w1lyiouqetuj78payc', 'Y2U5NDEyZTBjMTM0OTVlMjAyMDIzOGUwMzZiN2JmN2ZlMzJhZTMwZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhYzI2ODcwY2M0NjRmNDVlNWFmZjhkOTllNGIxOTc2MGNlYWViMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-06-28 05:22:15.356000');
INSERT INTO `django_session` VALUES ('tfbp4278ro9je7x5ewq4ynsgocjnbwdx', 'Y2U5NDEyZTBjMTM0OTVlMjAyMDIzOGUwMzZiN2JmN2ZlMzJhZTMwZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhYzI2ODcwY2M0NjRmNDVlNWFmZjhkOTllNGIxOTc2MGNlYWViMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-11-24 02:44:22.845000');

-- ----------------------------
-- Table structure for en_advantage
-- ----------------------------
DROP TABLE IF EXISTS `en_advantage`;
CREATE TABLE `en_advantage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `context` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_advantage
-- ----------------------------
INSERT INTO `en_advantage` VALUES ('1', '•Safety', 'It is safe due to non-animal origin and low BDDE residual, cause any negative impact on the skin.');
INSERT INTO `en_advantage` VALUES ('2', '•Injection', 'Smooth extrusion force enables doctors to control the injections easily and safely throughout the procedure.');
INSERT INTO `en_advantage` VALUES ('3', '•Effect', 'It is long-lasting caused by slow and uniform degradation.');
INSERT INTO `en_advantage` VALUES ('4', '•Service', 'We can provide professional technical support and personalized custom products.');

-- ----------------------------
-- Table structure for en_banner
-- ----------------------------
DROP TABLE IF EXISTS `en_banner`;
CREATE TABLE `en_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `images` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_banner
-- ----------------------------
INSERT INTO `en_banner` VALUES ('1', '1', 'banner/shutterstock_149858390_Qdn1z3x.jpg');
INSERT INTO `en_banner` VALUES ('2', '2', 'banner/shutterstock_218216803_qgERv2Y.jpg');
INSERT INTO `en_banner` VALUES ('3', '3', 'banner/Young_Woman_in_the_Bathroom08_bcigsL2.jpg');

-- ----------------------------
-- Table structure for en_case
-- ----------------------------
DROP TABLE IF EXISTS `en_case`;
CREATE TABLE `en_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_case
-- ----------------------------
INSERT INTO `en_case` VALUES ('1', 'Forehead', 'cases/Forehead_4AHy8qi.jpg');
INSERT INTO `en_case` VALUES ('2', 'Oral week', 'cases/Oral_week_TSxnL0c.jpg');
INSERT INTO `en_case` VALUES ('3', 'Jaws', 'cases/Jaws_2aBzzXQ.jpg');
INSERT INTO `en_case` VALUES ('4', 'Lips', 'cases/lips_i8lNNQt.jpg');

-- ----------------------------
-- Table structure for en_company
-- ----------------------------
DROP TABLE IF EXISTS `en_company`;
CREATE TABLE `en_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_company
-- ----------------------------
INSERT INTO `en_company` VALUES ('1', 'ruiyang');

-- ----------------------------
-- Table structure for en_com_cer
-- ----------------------------
DROP TABLE IF EXISTS `en_com_cer`;
CREATE TABLE `en_com_cer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(100) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `en_com_cer_name_id_ad2c1a3d_fk_en_company_id` (`name_id`),
  CONSTRAINT `en_com_cer_name_id_ad2c1a3d_fk_en_company_id` FOREIGN KEY (`name_id`) REFERENCES `en_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_com_cer
-- ----------------------------
INSERT INTO `en_com_cer` VALUES ('1', 'cer/4.jpg', '1');
INSERT INTO `en_com_cer` VALUES ('2', 'cer/3.jpg', '1');
INSERT INTO `en_com_cer` VALUES ('3', 'cer/6.jpg', '1');
INSERT INTO `en_com_cer` VALUES ('4', 'cer/ce2.jpg', '1');
INSERT INTO `en_com_cer` VALUES ('5', 'cer/证书ce.jpg', '1');

-- ----------------------------
-- Table structure for en_com_info
-- ----------------------------
DROP TABLE IF EXISTS `en_com_info`;
CREATE TABLE `en_com_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `trademark` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `fa` varchar(200) DEFAULT NULL,
  `tw` varchar(200) DEFAULT NULL,
  `go` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_com_info
-- ----------------------------
INSERT INTO `en_com_info` VALUES ('1', 'ruiyang', '021-0000000', 'ruiyang@gmai.com', 'Copyright © Bioha Laboratories Technical.', '上海市闵行区', null, null, null);

-- ----------------------------
-- Table structure for en_contact_banner
-- ----------------------------
DROP TABLE IF EXISTS `en_contact_banner`;
CREATE TABLE `en_contact_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_contact_banner
-- ----------------------------
INSERT INTO `en_contact_banner` VALUES ('1', '1', 'banner/shutterstock_218216803_kKFF6q3.jpg');

-- ----------------------------
-- Table structure for en_contect
-- ----------------------------
DROP TABLE IF EXISTS `en_contect`;
CREATE TABLE `en_contect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `company` varchar(40) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `requ` longtext,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_contect
-- ----------------------------
INSERT INTO `en_contect` VALUES ('1', '', '', '123123', '', '', '', '2018-03-07 02:41:55.852000');
INSERT INTO `en_contect` VALUES ('2', '', '', '1312', '', '', '', '2018-03-07 02:41:55.852000');

-- ----------------------------
-- Table structure for en_exhi
-- ----------------------------
DROP TABLE IF EXISTS `en_exhi`;
CREATE TABLE `en_exhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `context` longtext,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_exhi
-- ----------------------------

-- ----------------------------
-- Table structure for en_exhi_image
-- ----------------------------
DROP TABLE IF EXISTS `en_exhi_image`;
CREATE TABLE `en_exhi_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `en_exhi_image_name_id_25ac2a6f_fk` (`name_id`),
  CONSTRAINT `en_exhi_image_name_id_25ac2a6f_fk` FOREIGN KEY (`name_id`) REFERENCES `en_exhi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_exhi_image
-- ----------------------------

-- ----------------------------
-- Table structure for en_faq
-- ----------------------------
DROP TABLE IF EXISTS `en_faq`;
CREATE TABLE `en_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `answer` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_faq
-- ----------------------------
INSERT INTO `en_faq` VALUES ('1', 'What is hyaluronic acid?', '<p>&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color: rgb(70, 70, 70); font-family: Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\"></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Lorem honeyed locusts sit amet, none so wise, sed do eiusmod never resting ut labore et dolore magna aliqua. Manhood death before disgrace warrior, feed it to the goats spare me your false courtesy commodo consequat.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mace aute irure dolor in reprehenderit poison is a woman&#39;s weapon lord of light tower dwarf. The last of the dragons royal, godswood garron sister betrothed officia deserunt mollit anim id est snow.</p><p><br/></p>');
INSERT INTO `en_faq` VALUES ('2', 'What are the risks involved with Reyoungel?', '<p>&nbsp; &nbsp; &nbsp;&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Lorem honeyed locusts sit amet, none so wise, sed do eiusmod never resting ut labore et dolore magna aliqua. Manhood death before disgrace warrior, feed it to the goats spare me your false courtesy commodo consequat.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mace aute irure dolor in reprehenderit poison is a woman&#39;s weapon lord of light tower dwarf. The last of the dragons royal, godswood garron sister betrothed officia deserunt mollit anim id est snow.</p><p><br/></p>');
INSERT INTO `en_faq` VALUES ('3', 'What are the benefits of Reyoungel?', '<p>&nbsp; &nbsp; &nbsp;&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Lorem honeyed locusts sit amet, none so wise, sed do eiusmod never resting ut labore et dolore magna aliqua. Manhood death before disgrace warrior, feed it to the goats spare me your false courtesy commodo consequat.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mace aute irure dolor in reprehenderit poison is a woman&#39;s weapon lord of light tower dwarf. The last of the dragons royal, godswood garron sister betrothed officia deserunt mollit anim id est snow.</p><p><br/></p>');
INSERT INTO `en_faq` VALUES ('4', 'What is the recovery time?', '<p>&nbsp; &nbsp; &nbsp;&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Lorem honeyed locusts sit amet, none so wise, sed do eiusmod never resting ut labore et dolore magna aliqua. Manhood death before disgrace warrior, feed it to the goats spare me your false courtesy commodo consequat.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mace aute irure dolor in reprehenderit poison is a woman&#39;s weapon lord of light tower dwarf. The last of the dragons royal, godswood garron sister betrothed officia deserunt mollit anim id est snow.</p><p><br/></p>');
INSERT INTO `en_faq` VALUES ('5', 'What is the recovery time?', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Lorem honeyed locusts sit amet, none so wise, sed do eiusmod never resting ut labore et dolore magna aliqua. Manhood death before disgrace warrior, feed it to the goats spare me your false courtesy commodo consequat.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; text-indent: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Mace aute irure dolor in reprehenderit poison is a woman&#39;s weapon lord of light tower dwarf. The last of the dragons royal, godswood garron sister betrothed officia deserunt mollit anim id est snow.</p><p><br/></p>');

-- ----------------------------
-- Table structure for en_index_adv
-- ----------------------------
DROP TABLE IF EXISTS `en_index_adv`;
CREATE TABLE `en_index_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `adv` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_index_adv
-- ----------------------------
INSERT INTO `en_index_adv` VALUES ('1', 'Why choose us?', 'HAderm is made of non-animal and biofermentative origin. We adapt a new cross linking technology to allow the gel has excellent shaping result and natural look.');

-- ----------------------------
-- Table structure for en_news
-- ----------------------------
DROP TABLE IF EXISTS `en_news`;
CREATE TABLE `en_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `context` longtext NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `top` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_news
-- ----------------------------
INSERT INTO `en_news` VALUES ('1', 'news1', '<p>dqwd<img src=\"/upload/news/Jaws.jpg\" title=\"\" alt=\"Jaws.jpg\" width=\"623\" height=\"188\" style=\"width: 623px; height: 188px;\"/></p>', '2018-03-05 07:23:08.564000', 'top/timg.jpeg', '1');
INSERT INTO `en_news` VALUES ('2', 'news2', '<p>dasdasdasdasdasd</p>', '2018-03-05 07:23:21.355000', 'top/Forehead.jpg', '0');
INSERT INTO `en_news` VALUES ('4', 'news4', '<p>casfsdafsdfsdfsdf</p>', '2018-03-05 07:26:19.709000', 'upload/timg.jpeg', '1');
INSERT INTO `en_news` VALUES ('5', 'news5', '<p>dfggfbgfb21231152</p>', '2018-03-05 07:26:29.889000', 'upload/timg.jpeg', '0');
INSERT INTO `en_news` VALUES ('6', '8', '<p>dasdasdasd</p>', '2018-03-05 07:50:00.069000', 'top/Oral_week.jpg', '1');
INSERT INTO `en_news` VALUES ('7', '12', '<p>scsdc<img src=\"/upload/news/timg.jpeg\" title=\"\" alt=\"timg.jpeg\"/></p>', '2018-03-07 03:24:22.551000', 'top/timg_RKbfarD.jpeg', '1');

-- ----------------------------
-- Table structure for en_product
-- ----------------------------
DROP TABLE IF EXISTS `en_product`;
CREATE TABLE `en_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `context` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_product
-- ----------------------------
INSERT INTO `en_product` VALUES ('1', 'FINE', 'product/fine无底色针_89WxLv8.png', '<h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">What is Fine?</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">With the smallest particles for the correction of very thin, superficial lines.Injected in the upper part of the dermis.For correction of thin superficial lines, such as worry lines, periorbital lines, perioral lines.</p><h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">Parameter:</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Injection Sites: Upper part of dermis<br style=\"box-sizing: border-box;\"/>Needle Size:30G<br style=\"box-sizing: border-box;\"/>HA Concentration:24mg/ml<br style=\"box-sizing: border-box;\"/>Volume of syringe:1ml<br style=\"box-sizing: border-box;\"/>Duration:6-18 months<br style=\"box-sizing: border-box;\"/>Approximate number of gel particles ml: 200,000<br style=\"box-sizing: border-box;\"/>Particle size(mm): 0.10~0.15<br style=\"box-sizing: border-box;\"/>Recommended degree of Correction:100% No overcorrection<br style=\"box-sizing: border-box;\"/>HA Origin : Non Animal<br style=\"box-sizing: border-box;\"/>Storage: Room Temperature</p><p><br/></p>');
INSERT INTO `en_product` VALUES ('2', 'DREM', 'product/derm无底色_X887zue.png', '<h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">What is Derm?</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Medium particle size for moderate wrinkles. Injected in the middle part of the dermis.For treatment of moderate wrinkles, such as glabellar, oral commissures.Lips:fullness, pouting and vermilion border.</p><h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">Parameter:</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Injection Sites :Middle part of dermis<br style=\"box-sizing: border-box;\"/>Needle Size:27G<br style=\"box-sizing: border-box;\"/>HA Concentration:24mg/ml<br style=\"box-sizing: border-box;\"/>Volume of syringe:1ml<br style=\"box-sizing: border-box;\"/>Duration:6-18 months<br style=\"box-sizing: border-box;\"/>Approximate number of gel particles ml: 100,000<br style=\"box-sizing: border-box;\"/>Particle size(mm): 0.15~0.28<br style=\"box-sizing: border-box;\"/>Recommended degree of Correction:100% No overcorrection<br style=\"box-sizing: border-box;\"/>HA Origin : Non Animal<br style=\"box-sizing: border-box;\"/>Storage: Room Temperature</p><p><br/></p>');
INSERT INTO `en_product` VALUES ('3', 'DEEP', 'product/deep2_3EjmBHX.png', '<h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">What is Deep?</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Larger particles for deep folds. Injected in the deep layer of the dermis and/or the surface layer of the subcutis .For correcting deep folds, creating fuller lips and shaping facial contours, such as cheeks and chin.</p><h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">Parameter:</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Injection Sites : Deep layer of dermis and/or surface layer of subcutis<br style=\"box-sizing: border-box;\"/>Needle Size:27G<br style=\"box-sizing: border-box;\"/>HA Concentration:24mg/ml<br style=\"box-sizing: border-box;\"/>Volume of syringe:1ml<br style=\"box-sizing: border-box;\"/>Duration:6-18 months<br style=\"box-sizing: border-box;\"/>Approximate number of gel particles ml: 10,000<br style=\"box-sizing: border-box;\"/>Particle size(mm): 0.28~0.50<br style=\"box-sizing: border-box;\"/>Recommended degree of Correction:100% No overcorrection<br style=\"box-sizing: border-box;\"/>HA Origin : Non Animal<br style=\"box-sizing: border-box;\"/>Storage: Room Temperature</p><p><br/></p>');
INSERT INTO `en_product` VALUES ('4', 'SUBSKIN', 'product/subskin6_19Le2MB.png', '<h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">What is Subskin?</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Injection for the breast and buttock augmentation.</p><h4 style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.4em; color: rgb(253, 163, 14); margin: 0px; font-size: 23px; white-space: normal; background-color: rgb(255, 255, 255);\">Parameter:</h4><p style=\"box-sizing: border-box; margin-top: 1.2em; margin-bottom: 0px; font-size: 14px; line-height: 2em; color: rgb(70, 70, 70); font-family: Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Where to inject: Deep dermis or subcutaneous tissue shallow<br style=\"box-sizing: border-box;\"/>Recommended indications: The local depression, soft tissue filler, also can be used in rhinoplasty<br style=\"box-sizing: border-box;\"/>Needle size: Not supplied</p><p><br/></p>');

-- ----------------------------
-- Table structure for en_rece_email
-- ----------------------------
DROP TABLE IF EXISTS `en_rece_email`;
CREATE TABLE `en_rece_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_rece_email
-- ----------------------------
