/*
 Navicat Premium Data Transfer

 Source Server         : Dev01(办公室)
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 192.168.2.211:3306
 Source Schema         : mini_shop

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 12/04/2021 18:11:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品标题',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `introduction` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品简介',
  `details` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细描述',
  `old_price` int NULL DEFAULT NULL COMMENT '原价',
  `new_price` int NULL DEFAULT NULL COMMENT '现价',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '测试商品1', 'https://cdn.jsdelivr.net/gh/VioletFreesia/static@master/webp/%E5%A3%81%E7%BA%B8108.webp', '商品简介', '商品详情', 22, 20, '2021-03-24 16:43:21', '2021-03-24 16:43:21', 0);
INSERT INTO `goods` VALUES (2, '测试商品2', 'https://cdn.jsdelivr.net/gh/VioletFreesia/static@master/webp/%E5%A3%81%E7%BA%B8109.webp', '商品简介', '商品详情', 25, 20, '2021-03-24 16:43:42', '2021-03-24 16:43:42', 0);
INSERT INTO `goods` VALUES (3, '商品标题', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1024562883,2125115411&fm=26&gp=0.jpg', '介绍', '这是个商品', 11, 12, '2021-04-01 08:18:27', '2021-04-01 08:18:27', 0);
INSERT INTO `goods` VALUES (4, '商品标题', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1313437979,1767166206&fm=26&gp=0.jpg', '介绍', '这是个商品', 91, 42, '2021-04-01 08:19:17', '2021-04-01 08:19:17', 0);
INSERT INTO `goods` VALUES (5, '商品标题', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3358349073,3747095210&fm=26&gp=0.jpg', '介绍', '这是个商品', 91, 42, '2021-04-01 08:21:30', '2021-04-01 08:21:30', 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` int NOT NULL COMMENT '用户编号',
  `goods_id` int NOT NULL COMMENT '商品编号',
  `goods_number` int NOT NULL COMMENT '商品数量',
  `linkman` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单联系人',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `total` int NOT NULL COMMENT '订单总金额',
  `paid_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `status` int NOT NULL DEFAULT 0 COMMENT '订单状态 0: 已下单 1: 已支付 2: 已取消',
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (66, 2, 1, 1, 'tt', '12312312311', 20, NULL, 2, '', '2021-04-09 12:09:11', '2021-04-09 12:09:11', 0);
INSERT INTO `orders` VALUES (67, 2, 2, 1, 'rr', '12312312311', 20, NULL, 2, '', '2021-04-10 06:48:36', '2021-04-10 06:48:36', 0);
INSERT INTO `orders` VALUES (68, 2, 3, 1, 'nn', '12312312311', 12, NULL, 2, '', '2021-04-10 06:49:37', '2021-04-10 06:49:37', 0);
INSERT INTO `orders` VALUES (69, 2, 4, 1, 'ww', '12312312312', 42, NULL, 2, '', '2021-04-10 07:08:51', '2021-04-10 07:08:51', 0);
INSERT INTO `orders` VALUES (70, 2, 5, 1, '哈哈', '12312312311', 42, NULL, 2, '', '2021-04-10 07:22:10', '2021-04-10 07:22:10', 0);
INSERT INTO `orders` VALUES (71, 2, 1, 1, 'uuu', '13123112311', 20, NULL, 2, '', '2021-04-10 12:36:04', '2021-04-10 12:36:04', 0);
INSERT INTO `orders` VALUES (72, 2, 2, 4, 'tt', '12312312311', 80, NULL, 2, '', '2021-04-10 12:36:30', '2021-04-10 12:36:30', 0);
INSERT INTO `orders` VALUES (73, 2, 1, 1, '马冬梅', '12312312311', 20, NULL, 2, '', '2021-04-11 08:18:10', '2021-04-11 08:18:10', 0);
INSERT INTO `orders` VALUES (74, 2, 2, 2, '张三', '12312311111', 40, NULL, 2, '', '2021-04-11 08:18:50', '2021-04-11 08:18:50', 0);
INSERT INTO `orders` VALUES (75, 2, 4, 1, '李四', '12211143211', 42, NULL, 0, '', '2021-04-11 08:19:16', '2021-04-11 08:19:16', 0);
INSERT INTO `orders` VALUES (76, 4, 1, 1, '王二', '12312312311', 20, NULL, 0, '', '2021-04-12 08:57:55', '2021-04-12 08:57:55', 1);
INSERT INTO `orders` VALUES (77, 4, 1, 1, 'tttt', '12312312311', 20, NULL, 0, '', '2021-04-12 17:08:33', '2021-04-12 17:08:33', 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `open_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信用户openId, 单平台唯一标识',
  `union_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户唯一标识, 多平台唯一标识',
  `role` int NOT NULL DEFAULT 1 COMMENT '用户角色 1: 管理员  2: 客户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '是否被删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `open_id`(`open_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'otUqK53-Rd4QZmoaEzLs7u0ERXMI', NULL, 2, '2021-04-02 18:13:51', '2021-04-02 18:13:51', 0);
INSERT INTO `user_info` VALUES (2, 'oovRc6XvJZVbZB54vRbYBcKWSPm0', NULL, 2, '2021-04-08 11:33:23', '2021-04-08 11:33:23', 0);
INSERT INTO `user_info` VALUES (3, 'oovRc6WDN3GkUFNpDYrrQ4jwgBXA', NULL, 2, '2021-04-11 12:06:47', '2021-04-11 12:06:47', 0);
INSERT INTO `user_info` VALUES (4, 'oapg445wvg-vFntR0i5Em22GJ5-w', 'oRXmGjkAjyMq8h-q1eaGDXhJ7sbA', 2, '2021-04-12 08:56:20', '2021-04-12 08:56:20', 0);

SET FOREIGN_KEY_CHECKS = 1;
