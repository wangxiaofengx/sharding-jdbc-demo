/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sharding_sphere

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 31/08/2022 18:19:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders_1
-- ----------------------------
DROP TABLE IF EXISTS `orders_1`;
CREATE TABLE `orders_1`  (
  `id` int NOT NULL,
  `order_type` int NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `amount` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_1
-- ----------------------------

-- ----------------------------
-- Table structure for orders_2
-- ----------------------------
DROP TABLE IF EXISTS `orders_2`;
CREATE TABLE `orders_2`  (
  `id` int NOT NULL,
  `order_type` int NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `amount` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_2
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
