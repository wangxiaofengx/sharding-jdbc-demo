/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sharding_sphere_1

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 31/08/2022 18:19:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dict_order_type
-- ----------------------------
DROP TABLE IF EXISTS `dict_order_type`;
CREATE TABLE `dict_order_type`  (
  `id` bigint NOT NULL,
  `order_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict_order_type
-- ----------------------------
INSERT INTO `dict_order_type` VALUES (769590738240405504, '1');
INSERT INTO `dict_order_type` VALUES (769590738634670081, '2');
INSERT INTO `dict_order_type` VALUES (769590738693390336, '3');
INSERT INTO `dict_order_type` VALUES (769590738726944769, '4');
INSERT INTO `dict_order_type` VALUES (769590738777276416, '5');
INSERT INTO `dict_order_type` VALUES (769590738827608065, '6');
INSERT INTO `dict_order_type` VALUES (769590738861162496, '7');
INSERT INTO `dict_order_type` VALUES (769590738907299841, '8');
INSERT INTO `dict_order_type` VALUES (769590739003768832, '9');
INSERT INTO `dict_order_type` VALUES (769590739079266305, '10');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` int NOT NULL,
  `order_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, 1, '1111');

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
INSERT INTO `orders_1` VALUES (2, 2, 8, 2000);
INSERT INTO `orders_1` VALUES (4, 4, 6, 4000);
INSERT INTO `orders_1` VALUES (10, 10, 6, 10000);

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
INSERT INTO `orders_2` VALUES (9, 9, 2, 9000);

SET FOREIGN_KEY_CHECKS = 1;
