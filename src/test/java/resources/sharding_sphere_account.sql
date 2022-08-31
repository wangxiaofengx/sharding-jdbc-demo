/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sharding_sphere_account

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 31/08/2022 18:19:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `money` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 1, 100);
INSERT INTO `account` VALUES (2, 2, 200);
INSERT INTO `account` VALUES (3, 3, 300);
INSERT INTO `account` VALUES (4, 4, 400);
INSERT INTO `account` VALUES (5, 5, 500);
INSERT INTO `account` VALUES (6, 6, 600);
INSERT INTO `account` VALUES (7, 7, 700);
INSERT INTO `account` VALUES (8, 8, 800);
INSERT INTO `account` VALUES (9, 9, 900);
INSERT INTO `account` VALUES (10, 10, 1000);

SET FOREIGN_KEY_CHECKS = 1;
