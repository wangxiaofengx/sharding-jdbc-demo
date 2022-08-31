/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sharding_sphere_user

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 31/08/2022 18:20:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, NULL);
INSERT INTO `user_info` VALUES (2, NULL);
INSERT INTO `user_info` VALUES (3, NULL);
INSERT INTO `user_info` VALUES (4, NULL);
INSERT INTO `user_info` VALUES (5, NULL);
INSERT INTO `user_info` VALUES (6, NULL);
INSERT INTO `user_info` VALUES (7, NULL);
INSERT INTO `user_info` VALUES (8, NULL);
INSERT INTO `user_info` VALUES (9, NULL);
INSERT INTO `user_info` VALUES (10, NULL);

SET FOREIGN_KEY_CHECKS = 1;
