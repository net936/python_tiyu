/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_tiyu

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 29/06/2024 16:40:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1719649599788.jpeg', 'http://www.baidu.com', '2024-06-29 16:26:42.080971');
INSERT INTO `b_ad` VALUES (2, 'ad/1719649606801.jpeg', 'https://m3u8player.org', '2024-06-29 16:26:49.048830');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '台球馆', '2024-06-28 20:48:39.203405');
INSERT INTO `b_classification` VALUES (2, '羽毛球馆', '2024-06-28 20:48:44.735234');
INSERT INTO `b_classification` VALUES (3, '乒乓球馆', '2024-06-28 20:48:53.128433');
INSERT INTO `b_classification` VALUES (4, '拳击馆', '2024-06-28 20:49:01.573264');
INSERT INTO `b_classification` VALUES (5, '足球场', '2024-06-28 20:49:10.116599');
INSERT INTO `b_classification` VALUES (6, '篮球馆', '2024-06-28 20:49:17.242957');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '2222222222222222', '2024-06-29 16:25:45.879595', 0, 1, 3);
INSERT INTO `b_comment` VALUES (2, '1111111111111111111111111', '2024-06-29 16:25:47.896757', 0, 1, 3);
INSERT INTO `b_comment` VALUES (3, '啊啊啊啊啊啊啊啊啊', '2024-06-29 16:27:59.119388', 0, 3, 3);
INSERT INTO `b_comment` VALUES (4, 'dddddddddd', '2024-06-29 16:28:01.266947', 0, 3, 3);
INSERT INTO `b_comment` VALUES (5, '哈哈哈', '2024-06-29 16:39:15.319077', 0, 1, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈', '11song Xiao', '111w2011@gmail.com', '1111534', '2024-06-29 16:29:43.206278');
INSERT INTO `b_feedback` VALUES (2, '测试反馈221111', '哈哈哈哈', '王文杰', '11111@gmail.com', '2221534', '2024-06-29 16:30:33.897192');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-28 20:43:58.531421');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-29 15:48:43.329192');
INSERT INTO `b_login_log` VALUES (3, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-29 16:25:07.346766');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-29 16:26:06.112576');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-29 16:26:21.306320');
INSERT INTO `b_login_log` VALUES (6, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-29 16:38:49.001865');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈哈', '2024-06-29 16:27:00.931621');
INSERT INTO `b_notice` VALUES (2, '测试通知22', '哈哈哈哈888', '2024-06-29 16:27:11.198404');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 783 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-28 20:42:20.800691', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-28 20:42:20.805681', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-28 20:42:20.817699', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-28 20:43:29.959326', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-28 20:43:29.970058', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-28 20:43:56.380282', '/myapp/admin/adminLogin', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-28 20:43:58.537290', '/myapp/admin/adminLogin', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-28 20:43:58.644715', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-28 20:43:58.670034', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-28 20:44:00.248329', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-28 20:44:00.823163', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-28 20:44:00.848632', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-28 20:48:25.549782', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-28 20:48:25.556783', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-28 20:48:26.099105', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-28 20:48:39.207421', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-28 20:48:39.230954', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-28 20:48:44.740845', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-28 20:48:44.765831', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-28 20:48:53.133458', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-28 20:48:53.155492', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-28 20:49:01.579232', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-28 20:49:01.602225', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-28 20:49:10.121635', '/myapp/admin/classification/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-28 20:49:10.166763', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-28 20:49:17.247953', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-28 20:49:17.295536', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-28 20:49:21.205921', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-28 20:49:21.210535', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-28 20:50:53.122439', '/myapp/admin/thing/create', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-28 20:50:53.184638', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-28 20:53:35.259629', '/myapp/admin/thing/update', 'POST', NULL, '344');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-28 20:53:35.306467', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-28 20:53:37.017104', '/upload/cover/1719579208373.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-28 20:54:07.148802', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-28 20:54:07.191671', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-28 20:54:10.366588', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-28 20:54:10.795739', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-28 20:54:10.817667', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-28 20:54:48.160764', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-28 20:54:48.225515', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-28 20:54:59.426469', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-28 20:54:59.451673', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-28 20:54:59.473185', '/upload/cover/1719579208373.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-28 20:54:59.902470', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-28 20:54:59.905487', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-28 20:54:59.922474', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-28 20:55:37.028553', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-28 20:56:11.637348', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-28 20:56:11.779987', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-28 20:56:34.035664', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-28 20:56:34.184031', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-28 20:56:50.885337', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-28 20:56:51.034526', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-28 20:57:05.119474', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-28 20:57:05.260373', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-28 20:57:39.541476', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-28 20:57:39.678753', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-28 20:57:53.277135', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-28 20:57:53.410597', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-28 20:58:08.338501', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-28 20:58:08.495106', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-28 20:58:14.816002', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-28 20:58:14.935064', '/myapp/admin/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-28 20:58:22.548100', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-28 20:58:22.695522', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-28 20:58:35.181154', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-28 20:58:35.317877', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-28 20:58:43.801290', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-28 20:58:43.933019', '/myapp/admin/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-28 20:58:54.856475', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-28 20:58:54.988999', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-28 20:58:59.137915', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-28 20:58:59.281474', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-28 20:59:04.035723', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-28 20:59:04.171239', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-28 20:59:09.150706', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-28 20:59:09.295022', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-28 20:59:14.669038', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-28 20:59:14.791214', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-28 20:59:21.123506', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-28 20:59:21.242408', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-28 20:59:39.126110', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-28 20:59:39.271908', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-28 20:59:42.755247', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-28 20:59:42.893473', '/myapp/admin/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-28 20:59:45.611758', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-28 20:59:45.733130', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-28 20:59:48.519366', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-28 20:59:48.658084', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-28 21:01:14.952352', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-28 21:01:15.080810', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-28 21:01:20.861848', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-28 21:01:20.995469', '/myapp/admin/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-28 21:01:26.048674', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-28 21:01:26.214315', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-28 21:01:29.320063', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-28 21:01:29.462543', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-28 21:01:32.287112', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-28 21:01:32.413420', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-28 21:01:35.182090', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-28 21:01:35.332027', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-28 21:01:38.557796', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-28 21:01:38.691037', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-28 21:01:41.594807', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-28 21:01:41.715423', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-28 21:01:44.611211', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-28 21:01:44.750091', '/myapp/admin/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-28 21:01:47.225508', '/myapp/admin/thing/update', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-28 21:01:47.382619', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-28 21:01:50.946765', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-28 21:01:51.065507', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-28 21:01:54.057926', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-28 21:01:54.193360', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-28 21:01:58.265735', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-28 21:01:58.326662', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-28 21:01:58.842757', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-28 21:01:58.851756', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-28 21:01:58.897455', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-28 21:02:07.186943', '/myapp/admin/thing/update', 'POST', NULL, '313');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-28 21:02:07.300006', '/myapp/admin/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-28 21:02:11.993393', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-28 21:02:12.146403', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-28 21:02:17.089572', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-28 21:02:17.291915', '/myapp/admin/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-28 21:02:26.059353', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-28 21:02:26.212227', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-28 21:02:32.293681', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-28 21:02:32.475453', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-28 21:02:39.566679', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-28 21:02:39.690048', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-28 21:02:46.677296', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-28 21:02:46.796867', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-28 21:02:48.606176', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-28 21:02:48.643621', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-28 21:02:48.685584', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-28 21:02:48.691593', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-28 21:02:48.691593', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-28 21:02:48.691593', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-28 21:02:48.694571', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-28 21:02:48.694571', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-28 21:02:48.700569', '/upload/cover/1719579765304.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-28 21:02:49.072065', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-28 21:02:49.075081', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-28 21:02:49.117138', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-28 21:03:03.771701', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-28 21:03:03.898183', '/myapp/admin/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-28 21:03:12.443852', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-28 21:03:12.598222', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-28 21:03:15.818113', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-28 21:03:15.861123', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-28 21:03:15.884144', '/upload/cover/1719579790651.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-28 21:03:15.884144', '/upload/cover/1719579790651.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-28 21:03:16.249405', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-28 21:03:16.252395', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-28 21:03:16.296309', '/myapp/index/classification/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-28 21:03:22.821100', '/upload/cover/1719579781837.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-28 21:03:29.365077', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-28 21:03:29.514512', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-28 21:03:31.198613', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-28 21:03:31.241781', '/myapp/index/thing/getRecommend', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-28 21:03:31.259768', '/upload/cover/1719579807875.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-28 21:03:32.030286', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-28 21:03:32.036287', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-28 21:03:32.071866', '/myapp/index/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-28 21:03:35.760380', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-28 21:03:36.481905', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-29 15:43:08.943538', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-29 15:43:09.011878', '/myapp/admin/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-29 15:43:09.051798', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-29 15:43:09.053796', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-29 15:43:09.081977', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-29 15:43:09.263719', '/upload/cover/1719579730761.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-29 15:43:09.274433', '/upload/cover/1719579735726.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-29 15:43:09.277433', '/upload/cover/1719579730761.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-29 15:43:09.285433', '/upload/cover/1719579807875.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-29 15:43:09.287941', '/upload/cover/1719579730761.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-29 15:43:09.302953', '/upload/cover/1719579790651.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-29 15:43:09.303954', '/upload/cover/1719579750801.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-29 15:43:09.303954', '/upload/cover/1719579750801.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-29 15:43:09.318954', '/upload/cover/1719579758418.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-29 15:43:09.320953', '/upload/cover/1719579765304.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-29 15:43:32.284608', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-29 15:43:51.380194', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-29 15:43:52.300824', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-29 15:43:53.030499', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-29 15:44:25.518861', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-29 15:44:26.006969', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-29 15:44:26.494047', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-29 15:44:27.364275', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-29 15:44:28.365374', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-29 15:44:28.764061', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-29 15:44:29.279582', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-29 15:44:30.091460', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-29 15:44:30.658161', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-29 15:44:31.167642', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-29 15:44:31.697356', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-29 15:44:32.768843', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-29 15:44:33.823559', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-29 15:44:45.048309', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-29 15:44:45.265909', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-29 15:47:29.882227', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-29 15:47:29.885465', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-29 15:47:29.901944', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-29 15:47:29.919958', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-29 15:47:29.922950', '/myapp/admin/ad/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-29 15:48:12.167645', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-29 15:48:12.212718', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-29 15:48:13.667588', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-29 15:48:13.675042', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-29 15:48:13.728374', '/myapp/index/classification/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-29 15:48:20.076451', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-29 15:48:20.096116', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-29 15:48:30.910011', '/myapp/index/user/login', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-29 15:48:35.725654', '/myapp/index/user/register', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-29 15:48:43.338511', '/myapp/index/user/login', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-29 15:48:43.421540', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-29 15:48:43.431551', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-29 15:48:43.454555', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-29 15:48:43.489104', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-29 15:48:45.489537', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-29 15:48:45.504086', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-29 15:48:45.523582', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-29 15:48:45.534580', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-29 15:48:45.596010', '/myapp/index/thing/detail', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-29 15:48:45.635551', '/myapp/index/thing/detail', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-29 15:48:46.840076', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-29 15:48:46.925425', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-29 15:48:47.266774', '/myapp/index/thing/addCollectUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-29 15:48:47.361035', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-29 15:48:48.906245', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-29 15:48:48.913240', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-29 15:48:48.929746', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-29 15:48:48.982611', '/myapp/index/comment/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-29 15:48:49.828450', '/myapp/index/thing/addWishUser', 'POST', NULL, '88');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-29 15:48:49.904084', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-29 15:48:50.181727', '/myapp/index/thing/addCollectUser', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-29 15:48:50.249924', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-29 15:48:52.216662', '/myapp/index/thing/addWishUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-29 15:48:52.298618', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-29 15:48:52.551371', '/myapp/index/thing/addCollectUser', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-29 15:48:52.648951', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-29 15:48:53.006063', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-29 15:48:53.019605', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-29 15:48:53.051648', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-29 15:48:53.098290', '/myapp/admin/ad/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-29 15:48:53.708669', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-29 15:48:53.777790', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-29 15:48:54.258768', '/myapp/index/thing/addCollectUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-29 15:48:54.341975', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-29 15:48:57.014975', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-29 15:48:57.009442', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-29 15:48:57.064855', '/myapp/index/thing/detail', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-29 15:48:57.103908', '/myapp/index/thing/detail', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-29 15:48:57.946277', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-29 15:48:58.016466', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-29 15:48:58.406564', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-29 15:48:58.469145', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-29 15:49:00.746152', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-29 15:49:00.759992', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-29 15:49:00.787806', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-29 15:49:00.821001', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-29 15:49:00.825166', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-29 15:49:00.848614', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-29 15:49:02.367148', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-29 15:49:02.964220', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-29 15:49:36.431775', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-29 15:49:39.023920', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-29 15:49:39.774138', '/myapp/index/thing/getWishThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-29 15:49:40.805072', '/myapp/index/thing/removeWishUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-29 15:49:40.889605', '/myapp/index/thing/getWishThingList', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-29 15:49:42.783619', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-29 15:49:42.790633', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-29 15:49:42.802029', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-29 15:49:42.827029', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-29 15:49:42.857172', '/myapp/index/user/info', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-29 15:49:42.900790', '/myapp/index/user/info', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-29 15:49:46.422702', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-29 15:49:46.445436', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-29 15:49:46.439224', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-29 15:49:46.477653', '/myapp/admin/ad/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-29 15:49:46.495748', '/myapp/admin/ad/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-29 15:49:46.522771', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-29 15:49:48.319412', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-29 15:49:49.166661', '/myapp/index/thing/getWishThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-29 15:49:49.843986', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-29 15:49:55.114673', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-29 15:49:55.121673', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-29 15:49:55.137673', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-29 15:49:55.142852', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-29 15:49:55.192850', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-29 15:49:55.224568', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-29 15:50:01.526955', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-29 15:50:01.534231', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-29 15:50:01.540249', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-29 15:50:01.594464', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-29 15:50:04.674999', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-29 15:50:04.686653', '/myapp/index/thing/getRecommend', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-29 15:50:04.670991', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-29 15:50:04.704265', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-29 15:50:04.763046', '/myapp/index/thing/getRecommend', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-29 15:50:04.812518', '/myapp/index/thing/getRecommend', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-29 15:50:41.009684', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-29 15:50:41.018724', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-29 15:50:41.029938', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-29 15:50:41.041421', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-29 15:50:41.066422', '/myapp/index/user/info', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-29 15:50:41.093422', '/myapp/index/user/info', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-29 15:52:11.847577', '/myapp/index/order/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-29 15:52:12.099179', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-29 15:52:12.103180', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-29 15:52:46.290958', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-29 15:52:46.298155', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-29 15:52:46.342374', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-29 15:52:46.350376', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-29 15:52:46.355377', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-29 15:52:46.367380', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-29 15:53:20.994662', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-29 15:53:36.980965', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-29 15:53:45.579482', '/myapp/admin/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-29 15:54:10.383434', '/myapp/admin/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-29 15:54:18.905907', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-29 15:54:18.910906', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-29 15:54:18.973332', '/myapp/index/thing/getRecommend', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-29 15:54:21.948270', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-29 15:54:21.956818', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-29 15:54:21.951641', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-29 15:54:21.978329', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-29 15:54:22.015632', '/myapp/index/comment/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-29 15:54:22.055351', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-29 15:54:23.224106', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-29 15:54:23.237115', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-29 15:54:23.263014', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-29 15:54:23.256160', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-29 15:54:23.292305', '/myapp/index/user/info', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-29 15:54:23.329760', '/myapp/index/user/info', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-29 16:00:09.968614', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-29 16:00:09.993292', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-29 16:01:48.905881', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-29 16:01:48.912569', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-29 16:02:04.684102', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-29 16:02:04.687084', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-29 16:02:04.687084', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-29 16:02:55.149255', '/upload/cover/1719579744878.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-29 16:02:55.154747', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-29 16:02:55.161752', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-29 16:04:57.757133', '/upload/cover/1719579744878.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-29 16:04:57.781030', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-29 16:04:57.788308', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-29 16:06:35.379405', '/upload/cover/1719579744878.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-29 16:06:35.404472', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-29 16:06:35.414189', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-29 16:06:55.542760', '/upload/cover/1719579744878.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-29 16:06:55.557584', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-29 16:06:55.563005', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-29 16:07:18.780020', '/upload/cover/1719579744878.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-29 16:07:18.798761', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-29 16:07:18.804982', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-29 16:09:57.184563', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-29 16:09:57.189574', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-29 16:10:46.946562', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-29 16:10:47.080749', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-29 16:12:19.017431', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-29 16:12:19.020432', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-29 16:12:49.584746', '/myapp/index/order/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-29 16:12:49.680139', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-29 16:12:49.686803', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-29 16:13:07.798082', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-29 16:13:07.810283', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-29 16:13:07.846289', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-29 16:13:07.860233', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-29 16:13:07.888164', '/myapp/index/user/info', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-29 16:13:07.902761', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-29 16:14:59.779036', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-29 16:15:00.230467', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-29 16:15:31.476083', '/myapp/admin/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-29 16:15:37.931524', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-29 16:15:38.490834', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-29 16:21:13.774888', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-29 16:21:13.802237', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-29 16:21:13.816014', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-29 16:21:13.855472', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-29 16:21:13.865722', '/myapp/index/comment/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-29 16:21:13.896083', '/myapp/index/comment/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-29 16:21:18.393126', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-29 16:21:18.409208', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-29 16:21:18.417768', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-29 16:21:18.425100', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-29 16:21:18.467471', '/myapp/admin/ad/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-29 16:21:18.500185', '/myapp/admin/ad/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-29 16:21:19.690372', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-29 16:21:19.699505', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-29 16:21:19.703511', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-29 16:21:19.723885', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-29 16:21:19.767445', '/myapp/index/user/info', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-29 16:21:19.796433', '/myapp/index/user/info', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-29 16:21:32.584608', '/myapp/index/order/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-29 16:21:35.957378', '/myapp/index/order/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-29 16:21:58.173673', '/myapp/index/order/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-29 16:21:58.665192', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-29 16:21:58.667481', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-29 16:22:02.555405', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-29 16:22:02.575398', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-29 16:22:02.619328', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-29 16:22:03.024520', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-29 16:22:03.067147', '/myapp/index/thing/getWishThingList', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-29 16:22:03.072196', '/myapp/index/thing/getWishThingList', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-29 16:22:03.081115', '/myapp/index/thing/getWishThingList', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-29 16:22:03.116674', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-29 16:22:03.137669', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-29 16:22:04.273125', '/myapp/index/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-29 16:22:12.609600', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-29 16:22:12.615601', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-29 16:22:12.628331', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-29 16:22:12.673854', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-29 16:22:30.661709', '/myapp/index/order/cancel_order', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-29 16:22:30.728815', '/myapp/index/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-29 16:23:29.340605', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-29 16:23:29.351232', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-29 16:23:29.354596', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-29 16:23:29.383119', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-29 16:23:29.403399', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-29 16:23:29.425514', '/myapp/admin/ad/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-29 16:23:30.576192', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-29 16:23:30.584190', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-29 16:23:30.591193', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-29 16:23:30.602195', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-29 16:23:30.622192', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-29 16:23:30.635188', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-29 16:23:41.290329', '/myapp/index/order/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-29 16:23:44.131855', '/myapp/index/order/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-29 16:23:44.183883', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-29 16:23:44.204996', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-29 16:23:48.022462', '/myapp/index/comment/listMyComments', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-29 16:23:48.240438', '/myapp/index/order/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-29 16:24:07.399201', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-29 16:24:07.404531', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-29 16:24:07.417627', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-29 16:24:07.458491', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-29 16:24:30.387951', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-29 16:24:30.855073', '/myapp/admin/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-29 16:24:38.336684', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-29 16:24:38.345281', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-29 16:24:38.356299', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-29 16:24:38.398186', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-29 16:24:38.430389', '/myapp/admin/ad/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-29 16:24:38.485655', '/myapp/admin/ad/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-29 16:24:39.446295', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-29 16:24:39.465934', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-29 16:24:39.473930', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-29 16:24:39.489988', '/myapp/index/notice/list_api', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-29 16:24:39.509251', '/myapp/index/notice/list_api', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-29 16:24:39.545680', '/myapp/index/notice/list_api', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-29 16:24:52.047814', '/myapp/index/order/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-29 16:24:52.112771', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-29 16:24:52.125280', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-29 16:24:53.124101', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-29 16:24:53.129890', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-29 16:24:53.186302', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-29 16:24:53.208349', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-29 16:24:53.218331', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-29 16:24:53.252337', '/myapp/index/user/info', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-29 16:24:57.293244', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-29 16:24:57.328254', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-29 16:24:57.369934', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-29 16:25:04.626625', '/myapp/index/user/register', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-29 16:25:07.355345', '/myapp/index/user/login', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-29 16:25:07.458204', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-29 16:25:07.462398', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-29 16:25:07.469083', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-29 16:25:07.515758', '/myapp/index/user/info', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-29 16:25:10.529349', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-29 16:25:10.543628', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-29 16:25:10.568799', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-29 16:25:10.581797', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-29 16:25:10.595810', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-29 16:25:10.619549', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-29 16:25:11.725173', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-29 16:25:11.735172', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-29 16:25:12.150415', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-29 16:25:13.137026', '/myapp/index/comment/listMyComments', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-29 16:25:13.764180', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-29 16:25:14.673516', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-29 16:25:15.140149', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-29 16:25:15.646095', '/myapp/index/comment/listMyComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-29 16:25:16.091393', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-29 16:25:16.724398', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-29 16:25:16.731230', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-29 16:25:17.368891', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-29 16:25:18.230950', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-29 16:25:18.785963', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-29 16:25:32.396945', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-29 16:25:32.765673', '/myapp/admin/order/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-29 16:25:35.365109', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-29 16:25:35.492689', '/myapp/admin/classification/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-29 16:25:36.199490', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-29 16:25:37.240700', '/myapp/admin/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-29 16:25:41.217797', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-29 16:25:41.226954', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-29 16:25:41.238213', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-29 16:25:41.245526', '/myapp/index/thing/getRecommend', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-29 16:25:41.293719', '/myapp/index/thing/getRecommend', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-29 16:25:41.316841', '/myapp/index/thing/getRecommend', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-29 16:25:45.887234', '/myapp/index/comment/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-29 16:25:45.933815', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-29 16:25:47.913918', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-29 16:25:47.975542', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-29 16:25:50.068308', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-29 16:25:53.158569', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-29 16:25:54.674118', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-29 16:25:55.555191', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-29 16:26:01.996896', '/myapp/admin/user/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-29 16:26:02.058387', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-29 16:26:06.126567', '/myapp/admin/adminLogin', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-29 16:26:06.386965', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-29 16:26:06.526232', '/myapp/admin/classification/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-29 16:26:09.047067', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-29 16:26:11.588408', '/myapp/admin/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-29 16:26:13.475974', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-29 16:26:21.316325', '/myapp/admin/adminLogin', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-29 16:26:21.556661', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-29 16:26:21.697816', '/myapp/admin/classification/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-29 16:26:22.857242', '/myapp/admin/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-29 16:26:23.385705', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-29 16:26:27.701577', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-29 16:26:28.553957', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-29 16:26:29.558996', '/myapp/admin/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-29 16:26:30.208506', '/myapp/admin/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-29 16:26:31.896603', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-29 16:26:42.092981', '/myapp/admin/ad/create', 'POST', NULL, '499');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-29 16:26:42.144113', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-29 16:26:42.229991', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-29 16:26:49.058722', '/myapp/admin/ad/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-29 16:26:49.103765', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-29 16:26:49.165138', '/upload/ad/1719649606801.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-29 16:26:51.627071', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-29 16:27:00.946773', '/myapp/admin/notice/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-29 16:27:00.987781', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-29 16:27:11.205397', '/myapp/admin/notice/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-29 16:27:11.257969', '/myapp/admin/notice/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-29 16:27:17.139805', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-29 16:27:18.016633', '/myapp/admin/opLog/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-29 16:27:20.976945', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-29 16:27:22.858213', '/myapp/admin/feedback/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-29 16:27:24.518953', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-29 16:27:32.786072', '/myapp/admin/feedback/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-29 16:27:33.635180', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-29 16:27:41.639142', '/myapp/admin/overview/count', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-29 16:27:46.495194', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-29 16:27:47.175476', '/myapp/admin/overview/count', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-29 16:27:49.258978', '/myapp/admin/feedback/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-29 16:27:55.024423', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-29 16:27:55.038912', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-29 16:27:55.063371', '/myapp/index/thing/getRecommend', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-29 16:27:55.072370', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-29 16:27:55.124005', '/upload/ad/1719649606801.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-29 16:27:55.158761', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-29 16:27:55.168759', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-29 16:27:55.220145', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-29 16:27:59.129395', '/myapp/index/comment/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-29 16:27:59.186082', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-29 16:28:01.276881', '/myapp/index/comment/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-29 16:28:01.321866', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-29 16:28:05.842901', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-29 16:28:05.847942', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-29 16:28:17.736023', '/myapp/index/feedback/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-29 16:28:20.353135', '/myapp/index/feedback/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-29 16:28:29.799330', '/myapp/index/feedback/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-29 16:28:30.567496', '/myapp/index/feedback/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-29 16:28:30.771151', '/myapp/index/feedback/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-29 16:28:30.956096', '/myapp/index/feedback/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-29 16:28:38.928026', '/myapp/index/feedback/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-29 16:28:50.865851', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-29 16:28:50.861854', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-29 16:29:29.515457', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-29 16:29:29.520460', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-29 16:29:43.214596', '/myapp/index/feedback/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-29 16:29:48.067924', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-29 16:29:48.073353', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-29 16:30:14.389882', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-29 16:30:14.399888', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-29 16:30:33.905519', '/myapp/index/feedback/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-29 16:30:36.914758', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-29 16:30:36.922006', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-29 16:30:40.842432', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-29 16:30:41.545118', '/myapp/admin/feedback/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-29 16:30:44.494659', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1128');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-29 16:30:45.149315', '/myapp/admin/feedback/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-29 16:30:46.749346', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-29 16:30:46.896344', '/myapp/admin/classification/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-29 16:30:48.036529', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-29 16:31:26.140574', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-29 16:31:26.158964', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-29 16:31:26.204122', '/myapp/index/thing/getRecommend', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-29 16:31:26.753972', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-29 16:31:28.715845', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-29 16:31:28.721228', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-29 16:31:28.741308', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-29 16:31:28.771667', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-29 16:35:02.791027', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-29 16:35:02.795038', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-29 16:35:02.807321', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-29 16:35:02.852861', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-29 16:35:04.713527', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-29 16:35:04.723851', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-29 16:35:04.771981', '/myapp/index/thing/getRecommend', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-29 16:35:05.688501', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-29 16:35:05.693452', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-29 16:35:05.714786', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-29 16:35:05.755908', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-29 16:35:15.582154', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-29 16:35:15.592152', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-29 16:35:15.607201', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-29 16:35:15.615720', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-29 16:35:15.631861', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-29 16:35:15.660401', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-29 16:35:39.240262', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-29 16:35:43.088554', '/myapp/admin/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-29 16:35:43.871583', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-29 16:35:44.003623', '/myapp/admin/classification/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-29 16:35:44.841993', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-29 16:36:07.858342', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-29 16:36:07.869340', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-29 16:36:07.875349', '/myapp/index/thing/getWishThingList', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-29 16:36:07.880340', '/myapp/index/thing/getWishThingList', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-29 16:36:07.902619', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-29 16:36:07.929250', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-29 16:36:09.870387', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-29 16:36:09.879775', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-29 16:36:09.883814', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-29 16:36:09.928257', '/myapp/index/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-29 16:36:10.373780', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-29 16:36:10.381792', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-29 16:36:10.440016', '/myapp/index/thing/getRecommend', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-29 16:36:10.865761', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-29 16:36:10.877715', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-29 16:36:10.888709', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-29 16:36:10.897711', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-29 16:36:10.911743', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-29 16:36:10.962464', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-29 16:36:11.834823', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-29 16:36:12.459084', '/myapp/index/comment/listMyComments', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-29 16:36:13.672220', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-29 16:36:17.720807', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-29 16:36:18.328624', '/myapp/admin/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-29 16:36:20.410235', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-29 16:36:23.427877', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-29 16:36:24.391694', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-29 16:36:26.962875', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-29 16:36:28.285766', '/myapp/admin/order/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-29 16:36:31.803380', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-29 16:36:31.927100', '/myapp/admin/classification/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-29 16:36:33.809474', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-29 16:36:34.921842', '/myapp/admin/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-29 16:36:36.393413', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-29 16:36:37.400879', '/myapp/admin/feedback/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-29 16:36:39.673982', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1032');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-29 16:36:40.477821', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-29 16:36:40.998838', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-29 16:36:51.624565', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-29 16:36:51.636448', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-29 16:36:51.698050', '/myapp/index/thing/getRecommend', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-29 16:37:08.583114', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-29 16:37:08.588112', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-29 16:37:08.604647', '/myapp/index/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-29 16:37:08.664293', '/myapp/index/classification/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-29 16:37:09.256979', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-29 16:37:09.266924', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-29 16:37:09.303366', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-29 16:37:10.417625', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-29 16:37:10.424627', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-29 16:37:10.436617', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-29 16:37:10.485346', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-29 16:37:11.859712', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-29 16:37:11.876374', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-29 16:37:11.905924', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-29 16:37:11.961970', '/upload/ad/1719649606801.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-29 16:37:12.006521', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-29 16:37:12.012518', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-29 16:37:12.015506', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-29 16:37:12.029388', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-29 16:37:13.116137', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-29 16:37:13.128378', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-29 16:37:13.138335', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-29 16:37:13.195890', '/myapp/index/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-29 16:37:13.980938', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-29 16:37:13.991041', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-29 16:37:14.020591', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-29 16:37:23.455130', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-29 16:37:23.460800', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-29 16:37:23.467016', '/myapp/index/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-29 16:37:23.517503', '/myapp/index/classification/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-29 16:37:28.935653', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-29 16:37:28.941749', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-29 16:37:28.991216', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-29 16:37:33.790505', '/myapp/admin/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-29 16:37:34.914810', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-29 16:37:35.039810', '/myapp/admin/classification/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-29 16:37:49.167845', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-29 16:38:10.807507', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-29 16:38:10.917100', '/myapp/admin/classification/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-29 16:38:13.065781', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-29 16:38:15.616634', '/myapp/admin/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-29 16:38:16.482421', '/myapp/admin/user/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-29 16:38:17.291060', '/myapp/admin/order/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-29 16:38:21.668341', '/myapp/admin/overview/count', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-29 16:38:22.823228', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-29 16:38:24.639365', '/myapp/admin/feedback/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-29 16:38:24.916390', '/myapp/admin/feedback/list', 'GET', NULL, '289');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-29 16:38:25.191057', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-29 16:38:32.985485', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-29 16:38:33.145223', '/myapp/admin/classification/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-29 16:38:49.010895', '/myapp/index/user/login', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-29 16:38:49.130157', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-29 16:38:49.134519', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-29 16:38:49.147006', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-29 16:38:49.186015', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-29 16:38:50.225845', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-29 16:38:50.230841', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-29 16:38:50.268935', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-29 16:38:50.811173', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-29 16:38:50.817851', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-29 16:38:50.854803', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-29 16:38:50.863794', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-29 16:38:50.873225', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-29 16:38:50.897940', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-29 16:39:05.368370', '/myapp/index/user/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-29 16:39:06.736558', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-29 16:39:06.743706', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-29 16:39:06.785622', '/upload/avatar/1719650336043.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-29 16:39:06.794899', '/upload/avatar/1719650336043.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-29 16:39:06.804895', '/upload/avatar/1719650336043.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-29 16:39:06.811895', '/upload/avatar/1719650336043.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-29 16:39:06.830580', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-29 16:39:08.355459', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-29 16:39:08.364484', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-29 16:39:08.372872', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-29 16:39:08.426488', '/myapp/index/user/info', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-29 16:39:09.823895', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-29 16:39:09.842470', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-29 16:39:09.869604', '/upload/ad/1719649606801.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-29 16:39:09.891608', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-29 16:39:09.910466', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-29 16:39:09.911257', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-29 16:39:09.922783', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-29 16:39:09.930245', '/upload/ad/1719649599788.jpeg', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-29 16:39:15.326450', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-29 16:39:15.374541', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-29 16:39:19.416953', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-29 16:39:19.427408', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-29 16:39:19.433398', '/myapp/index/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-29 16:39:19.486782', '/myapp/index/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-29 16:39:21.311692', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-29 16:39:21.320913', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-29 16:39:21.372355', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-29 16:39:21.384394', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-29 16:39:21.397862', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-29 16:39:21.426506', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-29 16:39:23.028709', '/myapp/index/comment/listMyComments', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-29 16:39:23.828234', '/myapp/index/order/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-29 16:39:24.563065', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-29 16:39:25.333906', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-29 16:39:25.909913', '/myapp/index/order/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-29 16:39:30.192634', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-29 16:39:31.924871', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-29 16:39:31.932762', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-29 16:39:31.942347', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-29 16:39:31.993625', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-29 16:39:34.866181', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-29 16:39:34.877528', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-29 16:39:34.902231', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-29 16:39:36.236018', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-29 16:39:36.250041', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-29 16:39:36.282711', '/myapp/index/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-29 16:39:36.313335', '/myapp/index/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-29 16:39:37.468822', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-29 16:39:37.475577', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-29 16:39:37.505593', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-29 16:39:38.413731', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-29 16:39:38.417538', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-29 16:39:38.451215', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-29 16:39:38.474836', '/myapp/index/thing/list', 'GET', NULL, '84');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1719647531817', 1, '1', '2024-06-29 15:52:11.828066', '刘德华', NULL, '12311111', '', 4, 2);
INSERT INTO `b_order` VALUES (2, '1719648769556', 1, '1', '2024-06-29 16:12:49.568038', '刘德华', '2024-06-30 10:00-12:00', '12311111111', '', 8, 2);
INSERT INTO `b_order` VALUES (3, '1719649318144', 1, '2', '2024-06-29 16:21:58.157539', '刘', '2024-06-30 14:00-16:00', '', '', 8, 2);
INSERT INTO `b_order` VALUES (4, '1719649424112', 1, '1', '2024-06-29 16:23:44.123768', '王蒙', '2024-06-30 14:00-16:00', '13211111111', '', 8, 2);
INSERT INTO `b_order` VALUES (5, '1719649492020', 1, '1', '2024-06-29 16:24:52.032197', '海滨', '2024-07-01 14:00-16:00', '999999', '', 1, 2);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 1, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 9, '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 2, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 4, 7, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 8, 6, '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 3, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `yysj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `wxts` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '阳光大学朝阳校区篮球馆', 'cover/1719579208373.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 5, 0, 0, 0, 6, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (2, '清华大学朝阳校区羽毛球馆', 'cover/1719579725786.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 5, 0, 0, 1, 2, NULL, '香港中路88号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (3, '人民大学乒乓球馆', 'cover/1719579730761.jpeg', '33', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 10, 0, 1, 1, 3, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (4, '河北大学拳击馆', 'cover/1719579735726.jpeg', '888', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 7, 0, 1, 1, 4, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (5, '武汉大学台球馆', 'cover/1719579807875.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 1, NULL, '香港中路88号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (6, '青岛大学乒乓球馆', 'cover/1719579790651.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 3, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (7, '苏州大学篮球馆', 'cover/1719579208373.jpeg', '129', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 6, NULL, '香港中路88号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (8, '北京大学足球场', 'cover/1719579744878.jpeg', '168', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 6, 0, 0, 0, 5, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (9, '篮球馆2222', 'cover/1719579750801.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 6, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (10, '足球场测试99', 'cover/1719579758418.jpeg', '68', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 6, NULL, '香港中路88号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (11, '苏州大学篮球场', 'cover/1719579765304.jpeg', '99', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 6, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');
INSERT INTO `b_thing` VALUES (12, '北京大学足球场', 'cover/1719579208373.jpeg', '79', '体育场馆基地的规划布点要合理，大型体育场馆的设计中应考虑人流和车流同城市交通之间的矛盾，包括在城市交通高峰负荷时的矛盾和与急救车辆行车路线之间的矛盾。一方面要保证体育馆的大量观众的安全疏散(在4～5分钟内能全部疏散到建筑物以外)，另一方面要避免体育馆使用时大量人流和车流堵塞城市交通。体育场馆应有大面积停车场地，并靠近交通干道和公共交通车站。\r\n平面布置\r\n体育馆平面布置应严格按照各项国际标准，如网球、排球赛场净高不低于12米。一般适应国际比赛的体育馆室内高度不低于15米。观众席要安排在最佳视觉范围内。比赛场地的长轴方向不应设天然采光窗。比赛场地和练习场地应联系方便。主席台位置应按比赛仪式要求选择地位适中、视线最佳的地段。主席台人员、观众和运动员的进出路线和房间应分开。运动员入口宜设在主席台对面。裁判席、记分牌、计时装置、广播、电视和电气控制室的位置均应合理安排，以使比赛顺利进行。\r\n设计方案\r\n观众席看台的剖面设计直接影响观赏质量。看台多设计成阶梯形，坡度一般不超过30度，台阶高度一般不大于45厘米。在剖面设计中，对于场地高程的确定，应根据交通疏散、机械运输、建筑造价综合考虑。一般体育场馆场地高程宜接近天然地坪和场外地坪。\r\n屋顶结构\r\n体育场馆跨度大，屋顶结构在整个建筑设计中占重要地位，对建筑造型起决定性的作用。体育馆的兴建促进了大跨度结构建筑的发展。可供采用的有空间网架结构、悬索结构、充气结构、张力结构等。', '9:00-22:00', '0', '2024-06-28 20:50:53.085243', 0, 0, 0, 0, 6, NULL, '朝阳区人民路99号', 3, '天气炎热注意防暑');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 2);
INSERT INTO `b_thing_collect` VALUES (1, 3, 2);
INSERT INTO `b_thing_collect` VALUES (3, 4, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 3, 2);
INSERT INTO `b_thing_wish` VALUES (3, 4, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '猫咪1112', 'avatar/1719650336043.jpeg', '23111111', NULL, NULL, NULL, '2024-06-29 15:48:35.719125', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-29 16:25:04.613268', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');
INSERT INTO `b_user` VALUES (4, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-29 16:26:01.981389', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-28 20:39:07.160771');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-28 20:39:07.464728');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-28 20:39:07.525961');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-28 20:39:07.531963');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-28 20:39:07.536966');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-28 20:39:07.630859');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-28 20:39:07.680868');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-28 20:39:07.731717');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-28 20:39:07.738730');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-28 20:39:07.791880');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-28 20:39:07.794886');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-28 20:39:07.800882');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-28 20:39:07.835742');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-28 20:39:07.886077');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-28 20:39:07.950692');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-28 20:39:07.957195');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-28 20:39:08.040279');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-28 20:39:08.920691');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-28 20:39:08.965510');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-28 20:39:09.161585');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-28 20:39:09.290388');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240628_2039', '2024-06-28 20:39:10.021485');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-28 20:39:10.060047');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
