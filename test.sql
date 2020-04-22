/*
 Navicat Premium Data Transfer

 Source Server         : localMysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/04/2020 00:53:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of board
-- ----------------------------
INSERT INTO `board` VALUES ('news', 1, '2020-04-19 16:04:35', '2020-04-19 16:04:39');
INSERT INTO `board` VALUES ('post', 2, '2020-04-19 16:06:03', '2020-04-19 16:06:11');

-- ----------------------------
-- Table structure for c_history
-- ----------------------------
DROP TABLE IF EXISTS `c_history`;
CREATE TABLE `c_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `confirm` int(11) NULL DEFAULT NULL,
  `suspect` int(11) NULL DEFAULT NULL,
  `dead` int(11) NULL DEFAULT NULL,
  `heal` int(11) NULL DEFAULT NULL,
  `nowConfirm` int(11) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importedCase` int(11) NULL DEFAULT NULL,
  `healRate` float(255, 0) NULL DEFAULT NULL,
  `deadRate` float(255, 0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_history
-- ----------------------------
INSERT INTO `c_history` VALUES (1, '2020-04-22 23:43:19', 41, 0, 1, 0, 0, '01.13', 0, 0, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (2, '2020-04-22 23:43:19', 41, 0, 1, 0, 0, '01.14', 0, 0, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (3, '2020-04-22 23:43:19', 41, 0, 2, 5, 0, '01.15', 0, 12, 5, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (4, '2020-04-22 23:43:19', 45, 0, 2, 8, 0, '01.16', 0, 18, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (5, '2020-04-22 23:43:19', 62, 0, 2, 12, 0, '01.17', 0, 19, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (6, '2020-04-22 23:43:19', 198, 0, 3, 17, 0, '01.18', 0, 9, 1, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (7, '2020-04-22 23:43:19', 275, 0, 4, 18, 0, '01.19', 0, 6, 1, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (8, '2020-04-22 23:43:19', 291, 54, 6, 25, 291, '01.20', 0, 9, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (9, '2020-04-22 23:43:19', 440, 37, 9, 25, 431, '01.21', 0, 6, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (10, '2020-04-22 23:43:19', 574, 393, 17, 25, 557, '01.22', 0, 4, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (11, '2020-04-22 23:43:19', 835, 1072, 25, 34, 776, '01.23', 0, 4, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (12, '2020-04-22 23:43:19', 1297, 1965, 41, 38, 1218, '01.24', 0, 3, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (13, '2020-04-22 23:43:19', 1985, 2684, 56, 49, 1880, '01.25', 0, 2, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (14, '2020-04-22 23:43:19', 2761, 5794, 80, 51, 2630, '01.26', 0, 2, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (15, '2020-04-22 23:43:19', 4535, 6973, 106, 60, 4369, '01.27', 0, 1, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (16, '2020-04-22 23:43:19', 5997, 9239, 132, 103, 5762, '01.28', 0, 2, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (17, '2020-04-22 23:43:19', 7736, 12167, 170, 124, 7442, '01.29', 0, 2, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (18, '2020-04-22 23:43:19', 9720, 15238, 213, 171, 9336, '01.30', 0, 2, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (19, '2020-04-22 23:43:19', 11821, 17988, 259, 243, 11319, '01.31', 0, 2, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (20, '2020-04-22 23:43:19', 14411, 19544, 304, 328, 13779, '02.01', 0, 2, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (21, '2020-04-22 23:43:19', 17238, 21558, 361, 475, 16402, '02.02', 0, 3, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (22, '2020-04-22 23:43:19', 20471, 23214, 425, 632, 19414, '02.03', 0, 3, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (23, '2020-04-22 23:43:19', 24363, 23260, 491, 892, 22980, '02.04', 0, 4, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (24, '2020-04-22 23:43:19', 28060, 24702, 564, 1153, 26343, '02.05', 0, 4, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (25, '2020-04-22 23:43:19', 31211, 26359, 637, 1542, 29032, '02.06', 0, 5, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (26, '2020-04-22 23:43:19', 34598, 27657, 723, 2052, 31823, '02.07', 0, 6, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (27, '2020-04-22 23:43:19', 37251, 28942, 812, 2651, 33788, '02.08', 0, 7, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (28, '2020-04-22 23:43:19', 40235, 23589, 909, 3283, 36043, '02.09', 0, 8, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (29, '2020-04-22 23:43:19', 42708, 21675, 1017, 3998, 37693, '02.10', 0, 9, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (30, '2020-04-22 23:43:19', 44730, 16067, 1114, 4742, 38874, '02.11', 0, 11, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (31, '2020-04-22 23:43:19', 59882, 13435, 1368, 5915, 52599, '02.12', 0, 10, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (32, '2020-04-22 23:43:19', 63932, 10109, 1381, 6728, 55823, '02.13', 0, 10, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (33, '2020-04-22 23:43:19', 66576, 8969, 1524, 8101, 56951, '02.14', 0, 12, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (34, '2020-04-22 23:43:19', 68584, 8228, 1666, 9425, 57493, '02.15', 0, 14, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (35, '2020-04-22 23:43:19', 70635, 7264, 1772, 10853, 58010, '02.16', 0, 15, 2, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (36, '2020-04-22 23:43:19', 72528, 6242, 1870, 12561, 58097, '02.17', 0, 17, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (37, '2020-04-22 23:43:19', 74279, 5248, 2006, 14387, 57886, '02.18', 0, 19, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (38, '2020-04-22 23:43:19', 75002, 4922, 2121, 16157, 56386, '02.19', 0, 21, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (39, '2020-04-22 23:43:19', 75993, 5206, 2239, 18266, 55051, '02.20', 0, 24, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (40, '2020-04-22 23:43:19', 76392, 5365, 2348, 20673, 53371, '02.21', 0, 27, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (41, '2020-04-22 23:43:19', 77041, 4148, 2445, 22907, 51689, '02.22', 0, 30, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (42, '2020-04-22 23:43:19', 77262, 3434, 2595, 24757, 49910, '02.23', 0, 32, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (43, '2020-04-22 23:43:19', 77779, 2824, 2666, 27353, 47760, '02.24', 0, 35, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (44, '2020-04-22 23:43:19', 78190, 2491, 2718, 29775, 45697, '02.25', 0, 38, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (45, '2020-04-22 23:43:19', 78630, 2358, 2747, 32531, 43352, '02.26', 0, 41, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (46, '2020-04-22 23:43:19', 78959, 2308, 2791, 36157, 40011, '02.27', 0, 46, 3, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (47, '2020-04-22 23:43:19', 79389, 1418, 2838, 39049, 37502, '02.28', 0, 49, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (48, '2020-04-22 23:43:19', 79968, 851, 2873, 41675, 35420, '02.29', 0, 52, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (49, '2020-04-22 23:43:19', 80174, 715, 2915, 44518, 32741, '03.01', 0, 55, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (50, '2020-04-22 23:43:19', 80302, 587, 2946, 47260, 30096, '03.02', 0, 59, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (51, '2020-04-22 23:43:19', 80422, 520, 2984, 49914, 27524, '03.03', 0, 62, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (52, '2020-04-22 23:43:19', 80565, 522, 3015, 52109, 25441, '03.04', 20, 65, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (53, '2020-04-22 23:43:19', 80710, 482, 3045, 53793, 23872, '03.05', 36, 67, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (54, '2020-04-22 23:43:19', 80813, 502, 3073, 55477, 22263, '03.06', 60, 69, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (55, '2020-04-22 23:43:19', 80859, 458, 3100, 57143, 20616, '03.07', 63, 71, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (56, '2020-04-22 23:43:19', 80904, 421, 3123, 58684, 19097, '03.08', 67, 72, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (57, '2020-04-22 23:43:19', 80924, 349, 3140, 59982, 17802, '03.09', 69, 74, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (58, '2020-04-22 23:43:19', 80955, 285, 3162, 61567, 16226, '03.10', 79, 76, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (59, '2020-04-22 23:43:19', 80992, 253, 3173, 62887, 14920, '03.11', 85, 78, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (60, '2020-04-22 23:43:19', 81003, 147, 3180, 64216, 13607, '03.12', 88, 79, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (61, '2020-04-22 23:43:19', 81021, 115, 3194, 65649, 12178, '03.13', 95, 81, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (62, '2020-04-22 23:43:19', 81048, 113, 3204, 67022, 10822, '03.14', 111, 83, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (63, '2020-04-22 23:43:19', 81077, 134, 3218, 67863, 9996, '03.15', 123, 84, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (64, '2020-04-22 23:43:19', 81116, 128, 3231, 68799, 9086, '03.16', 143, 85, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (65, '2020-04-22 23:43:19', 81151, 119, 3242, 69725, 8184, '03.17', 155, 86, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (66, '2020-04-22 23:43:19', 81235, 105, 3250, 70547, 7438, '03.18', 189, 87, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (67, '2020-04-22 23:43:19', 81300, 104, 3253, 71284, 6763, '03.19', 228, 88, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (68, '2020-04-22 23:43:19', 81416, 106, 3261, 71876, 6013, '03.20', 269, 88, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (69, '2020-04-22 23:43:19', 81498, 118, 3267, 72382, 5849, '03.21', 314, 89, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (70, '2020-04-22 23:43:19', 81600, 136, 3276, 72841, 5483, '03.22', 353, 89, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (71, '2020-04-22 23:43:19', 81747, 132, 3283, 73299, 5165, '03.23', 427, 90, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (72, '2020-04-22 23:43:19', 81846, 134, 3287, 73791, 4768, '03.24', 474, 90, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (73, '2020-04-22 23:43:19', 81960, 159, 3293, 74196, 4471, '03.25', 541, 90, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (74, '2020-04-22 23:43:19', 82078, 189, 3298, 74737, 4043, '03.26', 595, 91, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (75, '2020-04-22 23:43:19', 82213, 184, 3301, 75122, 3790, '03.27', 649, 91, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (76, '2020-04-22 23:43:19', 82341, 174, 3306, 75600, 3435, '03.28', 693, 92, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (77, '2020-04-22 23:43:19', 82447, 168, 3311, 75937, 3199, '03.29', 723, 92, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (78, '2020-04-22 23:43:19', 82545, 183, 3314, 76225, 3006, '03.30', 771, 92, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (79, '2020-04-22 23:43:19', 82631, 172, 3321, 76415, 2895, '03.31', 806, 92, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (80, '2020-04-22 23:43:19', 82724, 153, 3327, 76610, 2787, '04.01', 841, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (81, '2020-04-22 23:43:19', 82802, 135, 3331, 76785, 2686, '04.02', 870, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (82, '2020-04-22 23:43:19', 82861, 114, 3335, 76984, 2556, '04.03', 888, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (83, '2020-04-22 23:43:19', 82930, 107, 3338, 77210, 2382, '04.04', 913, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (84, '2020-04-22 23:43:19', 83005, 88, 3340, 77348, 2317, '04.05', 951, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (85, '2020-04-22 23:43:19', 83071, 89, 3340, 77450, 2281, '04.06', 983, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (86, '2020-04-22 23:43:19', 83157, 83, 3342, 77586, 2229, '04.07', 1042, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (87, '2020-04-22 23:43:19', 83249, 73, 3344, 77711, 2194, '04.08', 1103, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (88, '2020-04-22 23:43:19', 83305, 53, 3345, 77838, 2122, '04.09', 1141, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (89, '2020-04-22 23:43:19', 83369, 44, 3349, 77935, 2085, '04.10', 1183, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (90, '2020-04-22 23:43:19', 83482, 82, 3349, 78020, 2113, '04.11', 1280, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (91, '2020-04-22 23:43:19', 83602, 72, 3351, 78145, 2106, '04.12', 1378, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (92, '2020-04-22 23:43:19', 83696, 72, 3351, 78262, 2083, '04.13', 1464, 93, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (93, '2020-04-22 23:43:19', 83745, 73, 3352, 78389, 2004, '04.14', 1500, 94, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (94, '2020-04-22 23:43:19', 83797, 63, 3352, 78504, 1941, '04.15', 1534, 94, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (95, '2020-04-22 23:43:19', 83824, 62, 3352, 78600, 1872, '04.16', 1549, 94, 4, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (96, '2020-04-22 23:43:19', 84180, 63, 4642, 77744, 1794, '04.17', 1566, 92, 5, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (97, '2020-04-22 23:43:19', 84201, 48, 4642, 77825, 1734, '04.18', 1575, 92, 5, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (98, '2020-04-22 23:43:19', 84237, 43, 4642, 77895, 1700, '04.19', 1583, 92, 5, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (99, '2020-04-22 23:43:19', 84250, 37, 4642, 77978, 1630, '04.20', 1587, 93, 5, '2020-04-22 23:43:19');
INSERT INTO `c_history` VALUES (100, '2020-04-22 23:43:19', 84287, 35, 4642, 78042, 1603, '04.21', 1610, 93, 5, '2020-04-22 23:43:19');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `APIType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 790 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('中国', 'basic', 'country', 1);
INSERT INTO `country` VALUES ('香港', 'basic', 'province', 2);
INSERT INTO `country` VALUES ('黑龙江', 'basic', 'province', 3);
INSERT INTO `country` VALUES ('台湾', 'basic', 'province', 4);
INSERT INTO `country` VALUES ('湖北', 'basic', 'province', 5);
INSERT INTO `country` VALUES ('上海', 'basic', 'province', 6);
INSERT INTO `country` VALUES ('广东', 'basic', 'province', 7);
INSERT INTO `country` VALUES ('内蒙古', 'basic', 'province', 8);
INSERT INTO `country` VALUES ('北京', 'basic', 'province', 9);
INSERT INTO `country` VALUES ('山西', 'basic', 'province', 10);
INSERT INTO `country` VALUES ('澳门', 'basic', 'province', 11);
INSERT INTO `country` VALUES ('浙江', 'basic', 'province', 12);
INSERT INTO `country` VALUES ('福建', 'basic', 'province', 13);
INSERT INTO `country` VALUES ('山东', 'basic', 'province', 14);
INSERT INTO `country` VALUES ('天津', 'basic', 'province', 15);
INSERT INTO `country` VALUES ('江苏', 'basic', 'province', 16);
INSERT INTO `country` VALUES ('河北', 'basic', 'province', 17);
INSERT INTO `country` VALUES ('四川', 'basic', 'province', 18);
INSERT INTO `country` VALUES ('云南', 'basic', 'province', 19);
INSERT INTO `country` VALUES ('吉林', 'basic', 'province', 20);
INSERT INTO `country` VALUES ('重庆', 'basic', 'province', 21);
INSERT INTO `country` VALUES ('辽宁', 'basic', 'province', 22);
INSERT INTO `country` VALUES ('安徽', 'basic', 'province', 23);
INSERT INTO `country` VALUES ('贵州', 'basic', 'province', 24);
INSERT INTO `country` VALUES ('陕西', 'basic', 'province', 25);
INSERT INTO `country` VALUES ('湖南', 'basic', 'province', 26);
INSERT INTO `country` VALUES ('海南', 'basic', 'province', 27);
INSERT INTO `country` VALUES ('广西', 'basic', 'province', 28);
INSERT INTO `country` VALUES ('甘肃', 'basic', 'province', 29);
INSERT INTO `country` VALUES ('江西', 'basic', 'province', 30);
INSERT INTO `country` VALUES ('青海', 'basic', 'province', 31);
INSERT INTO `country` VALUES ('西藏', 'basic', 'province', 32);
INSERT INTO `country` VALUES ('河南', 'basic', 'province', 33);
INSERT INTO `country` VALUES ('宁夏', 'basic', 'province', 34);
INSERT INTO `country` VALUES ('新疆', 'basic', 'province', 35);
INSERT INTO `country` VALUES ('境外输入', 'basic', 'city', 36);
INSERT INTO `country` VALUES ('伊春', 'basic', 'city', 37);
INSERT INTO `country` VALUES ('鹤岗', 'basic', 'city', 38);
INSERT INTO `country` VALUES ('牡丹江', 'basic', 'city', 39);
INSERT INTO `country` VALUES ('佳木斯', 'basic', 'city', 40);
INSERT INTO `country` VALUES ('双鸭山', 'basic', 'city', 41);
INSERT INTO `country` VALUES ('哈尔滨', 'basic', 'city', 42);
INSERT INTO `country` VALUES ('七台河', 'basic', 'city', 43);
INSERT INTO `country` VALUES ('齐齐哈尔', 'basic', 'city', 44);
INSERT INTO `country` VALUES ('绥化', 'basic', 'city', 45);
INSERT INTO `country` VALUES ('鸡西', 'basic', 'city', 46);
INSERT INTO `country` VALUES ('黑河', 'basic', 'city', 47);
INSERT INTO `country` VALUES ('大庆', 'basic', 'city', 48);
INSERT INTO `country` VALUES ('大兴安岭', 'basic', 'city', 49);
INSERT INTO `country` VALUES ('鄂州', 'basic', 'city', 50);
INSERT INTO `country` VALUES ('潜江', 'basic', 'city', 51);
INSERT INTO `country` VALUES ('武汉', 'basic', 'city', 52);
INSERT INTO `country` VALUES ('十堰', 'basic', 'city', 53);
INSERT INTO `country` VALUES ('咸宁', 'basic', 'city', 54);
INSERT INTO `country` VALUES ('黄冈', 'basic', 'city', 55);
INSERT INTO `country` VALUES ('宜昌', 'basic', 'city', 56);
INSERT INTO `country` VALUES ('天门', 'basic', 'city', 57);
INSERT INTO `country` VALUES ('孝感', 'basic', 'city', 58);
INSERT INTO `country` VALUES ('荆门', 'basic', 'city', 59);
INSERT INTO `country` VALUES ('随州', 'basic', 'city', 60);
INSERT INTO `country` VALUES ('仙桃', 'basic', 'city', 61);
INSERT INTO `country` VALUES ('襄阳', 'basic', 'city', 62);
INSERT INTO `country` VALUES ('荆州', 'basic', 'city', 63);
INSERT INTO `country` VALUES ('神农架', 'basic', 'city', 64);
INSERT INTO `country` VALUES ('恩施州', 'basic', 'city', 65);
INSERT INTO `country` VALUES ('黄石', 'basic', 'city', 66);
INSERT INTO `country` VALUES ('宝山', 'basic', 'city', 67);
INSERT INTO `country` VALUES ('闵行', 'basic', 'city', 68);
INSERT INTO `country` VALUES ('外地来沪', 'basic', 'city', 69);
INSERT INTO `country` VALUES ('普陀', 'basic', 'city', 70);
INSERT INTO `country` VALUES ('杨浦', 'basic', 'city', 71);
INSERT INTO `country` VALUES ('长宁', 'basic', 'city', 72);
INSERT INTO `country` VALUES ('虹口', 'basic', 'city', 73);
INSERT INTO `country` VALUES ('奉贤', 'basic', 'city', 74);
INSERT INTO `country` VALUES ('松江', 'basic', 'city', 75);
INSERT INTO `country` VALUES ('静安', 'basic', 'city', 76);
INSERT INTO `country` VALUES ('徐汇', 'basic', 'city', 77);
INSERT INTO `country` VALUES ('崇明', 'basic', 'city', 78);
INSERT INTO `country` VALUES ('浦东', 'basic', 'city', 79);
INSERT INTO `country` VALUES ('黄浦', 'basic', 'city', 80);
INSERT INTO `country` VALUES ('青浦', 'basic', 'city', 81);
INSERT INTO `country` VALUES ('嘉定', 'basic', 'city', 82);
INSERT INTO `country` VALUES ('金山', 'basic', 'city', 83);
INSERT INTO `country` VALUES ('揭阳', 'basic', 'city', 84);
INSERT INTO `country` VALUES ('广州', 'basic', 'city', 85);
INSERT INTO `country` VALUES ('深圳', 'basic', 'city', 86);
INSERT INTO `country` VALUES ('肇庆', 'basic', 'city', 87);
INSERT INTO `country` VALUES ('东莞', 'basic', 'city', 88);
INSERT INTO `country` VALUES ('潮州', 'basic', 'city', 89);
INSERT INTO `country` VALUES ('佛山', 'basic', 'city', 90);
INSERT INTO `country` VALUES ('中山', 'basic', 'city', 91);
INSERT INTO `country` VALUES ('惠州', 'basic', 'city', 92);
INSERT INTO `country` VALUES ('阳江', 'basic', 'city', 93);
INSERT INTO `country` VALUES ('茂名', 'basic', 'city', 94);
INSERT INTO `country` VALUES ('韶关', 'basic', 'city', 95);
INSERT INTO `country` VALUES ('珠海', 'basic', 'city', 96);
INSERT INTO `country` VALUES ('清远', 'basic', 'city', 97);
INSERT INTO `country` VALUES ('汕头', 'basic', 'city', 98);
INSERT INTO `country` VALUES ('湛江', 'basic', 'city', 99);
INSERT INTO `country` VALUES ('江门', 'basic', 'city', 100);
INSERT INTO `country` VALUES ('河源', 'basic', 'city', 101);
INSERT INTO `country` VALUES ('汕尾', 'basic', 'city', 102);
INSERT INTO `country` VALUES ('梅州', 'basic', 'city', 103);
INSERT INTO `country` VALUES ('呼和浩特', 'basic', 'city', 104);
INSERT INTO `country` VALUES ('包头', 'basic', 'city', 105);
INSERT INTO `country` VALUES ('乌兰察布', 'basic', 'city', 106);
INSERT INTO `country` VALUES ('乌海', 'basic', 'city', 107);
INSERT INTO `country` VALUES ('巴彦淖尔', 'basic', 'city', 108);
INSERT INTO `country` VALUES ('通辽', 'basic', 'city', 109);
INSERT INTO `country` VALUES ('呼伦贝尔', 'basic', 'city', 110);
INSERT INTO `country` VALUES ('锡林郭勒', 'basic', 'city', 111);
INSERT INTO `country` VALUES ('赤峰', 'basic', 'city', 112);
INSERT INTO `country` VALUES ('兴安盟', 'basic', 'city', 113);
INSERT INTO `country` VALUES ('西城', 'basic', 'city', 114);
INSERT INTO `country` VALUES ('朝阳', 'basic', 'city', 115);
INSERT INTO `country` VALUES ('海淀', 'basic', 'city', 116);
INSERT INTO `country` VALUES ('怀柔', 'basic', 'city', 117);
INSERT INTO `country` VALUES ('门头沟', 'basic', 'city', 118);
INSERT INTO `country` VALUES ('延庆', 'basic', 'city', 119);
INSERT INTO `country` VALUES ('通州', 'basic', 'city', 120);
INSERT INTO `country` VALUES ('石景山', 'basic', 'city', 121);
INSERT INTO `country` VALUES ('昌平', 'basic', 'city', 122);
INSERT INTO `country` VALUES ('顺义', 'basic', 'city', 123);
INSERT INTO `country` VALUES ('外地来京', 'basic', 'city', 124);
INSERT INTO `country` VALUES ('丰台', 'basic', 'city', 125);
INSERT INTO `country` VALUES ('房山', 'basic', 'city', 126);
INSERT INTO `country` VALUES ('东城', 'basic', 'city', 127);
INSERT INTO `country` VALUES ('大兴', 'basic', 'city', 128);
INSERT INTO `country` VALUES ('大同', 'basic', 'city', 129);
INSERT INTO `country` VALUES ('运城', 'basic', 'city', 130);
INSERT INTO `country` VALUES ('晋中', 'basic', 'city', 131);
INSERT INTO `country` VALUES ('忻州', 'basic', 'city', 132);
INSERT INTO `country` VALUES ('吕梁', 'basic', 'city', 133);
INSERT INTO `country` VALUES ('临汾', 'basic', 'city', 134);
INSERT INTO `country` VALUES ('长治', 'basic', 'city', 135);
INSERT INTO `country` VALUES ('太原', 'basic', 'city', 136);
INSERT INTO `country` VALUES ('朔州', 'basic', 'city', 137);
INSERT INTO `country` VALUES ('阳泉', 'basic', 'city', 138);
INSERT INTO `country` VALUES ('晋城', 'basic', 'city', 139);
INSERT INTO `country` VALUES ('台州', 'basic', 'city', 140);
INSERT INTO `country` VALUES ('丽水', 'basic', 'city', 141);
INSERT INTO `country` VALUES ('金华', 'basic', 'city', 142);
INSERT INTO `country` VALUES ('宁波', 'basic', 'city', 143);
INSERT INTO `country` VALUES ('嘉兴', 'basic', 'city', 144);
INSERT INTO `country` VALUES ('省十里丰监狱', 'basic', 'city', 145);
INSERT INTO `country` VALUES ('衢州', 'basic', 'city', 146);
INSERT INTO `country` VALUES ('杭州', 'basic', 'city', 147);
INSERT INTO `country` VALUES ('绍兴', 'basic', 'city', 148);
INSERT INTO `country` VALUES ('温州', 'basic', 'city', 149);
INSERT INTO `country` VALUES ('舟山', 'basic', 'city', 150);
INSERT INTO `country` VALUES ('湖州', 'basic', 'city', 151);
INSERT INTO `country` VALUES ('漳州', 'basic', 'city', 152);
INSERT INTO `country` VALUES ('莆田', 'basic', 'city', 153);
INSERT INTO `country` VALUES ('三明', 'basic', 'city', 154);
INSERT INTO `country` VALUES ('泉州', 'basic', 'city', 155);
INSERT INTO `country` VALUES ('厦门', 'basic', 'city', 156);
INSERT INTO `country` VALUES ('福州', 'basic', 'city', 157);
INSERT INTO `country` VALUES ('龙岩', 'basic', 'city', 158);
INSERT INTO `country` VALUES ('宁德', 'basic', 'city', 159);
INSERT INTO `country` VALUES ('南平', 'basic', 'city', 160);
INSERT INTO `country` VALUES ('青岛', 'basic', 'city', 161);
INSERT INTO `country` VALUES ('泰安', 'basic', 'city', 162);
INSERT INTO `country` VALUES ('济南', 'basic', 'city', 163);
INSERT INTO `country` VALUES ('菏泽', 'basic', 'city', 164);
INSERT INTO `country` VALUES ('滨州', 'basic', 'city', 165);
INSERT INTO `country` VALUES ('烟台', 'basic', 'city', 166);
INSERT INTO `country` VALUES ('威海', 'basic', 'city', 167);
INSERT INTO `country` VALUES ('聊城', 'basic', 'city', 168);
INSERT INTO `country` VALUES ('日照', 'basic', 'city', 169);
INSERT INTO `country` VALUES ('枣庄', 'basic', 'city', 170);
INSERT INTO `country` VALUES ('淄博', 'basic', 'city', 171);
INSERT INTO `country` VALUES ('临沂', 'basic', 'city', 172);
INSERT INTO `country` VALUES ('德州', 'basic', 'city', 173);
INSERT INTO `country` VALUES ('济宁', 'basic', 'city', 174);
INSERT INTO `country` VALUES ('潍坊', 'basic', 'city', 175);
INSERT INTO `country` VALUES ('津南区', 'basic', 'city', 176);
INSERT INTO `country` VALUES ('河北区', 'basic', 'city', 177);
INSERT INTO `country` VALUES ('和平区', 'basic', 'city', 178);
INSERT INTO `country` VALUES ('西青区', 'basic', 'city', 179);
INSERT INTO `country` VALUES ('红桥区', 'basic', 'city', 180);
INSERT INTO `country` VALUES ('河西区', 'basic', 'city', 181);
INSERT INTO `country` VALUES ('宁河区', 'basic', 'city', 182);
INSERT INTO `country` VALUES ('宝坻区', 'basic', 'city', 183);
INSERT INTO `country` VALUES ('外地来津', 'basic', 'city', 184);
INSERT INTO `country` VALUES ('东丽区', 'basic', 'city', 185);
INSERT INTO `country` VALUES ('南开区', 'basic', 'city', 186);
INSERT INTO `country` VALUES ('河东区', 'basic', 'city', 187);
INSERT INTO `country` VALUES ('北辰区', 'basic', 'city', 188);
INSERT INTO `country` VALUES ('滨海新区', 'basic', 'city', 189);
INSERT INTO `country` VALUES ('武清区', 'basic', 'city', 190);
INSERT INTO `country` VALUES ('苏州', 'basic', 'city', 191);
INSERT INTO `country` VALUES ('连云港', 'basic', 'city', 192);
INSERT INTO `country` VALUES ('南通', 'basic', 'city', 193);
INSERT INTO `country` VALUES ('盐城', 'basic', 'city', 194);
INSERT INTO `country` VALUES ('无锡', 'basic', 'city', 195);
INSERT INTO `country` VALUES ('镇江', 'basic', 'city', 196);
INSERT INTO `country` VALUES ('徐州', 'basic', 'city', 197);
INSERT INTO `country` VALUES ('南京', 'basic', 'city', 198);
INSERT INTO `country` VALUES ('宿迁', 'basic', 'city', 199);
INSERT INTO `country` VALUES ('常州', 'basic', 'city', 200);
INSERT INTO `country` VALUES ('泰州', 'basic', 'city', 201);
INSERT INTO `country` VALUES ('扬州', 'basic', 'city', 202);
INSERT INTO `country` VALUES ('邯郸', 'basic', 'city', 203);
INSERT INTO `country` VALUES ('张家口', 'basic', 'city', 204);
INSERT INTO `country` VALUES ('唐山', 'basic', 'city', 205);
INSERT INTO `country` VALUES ('秦皇岛', 'basic', 'city', 206);
INSERT INTO `country` VALUES ('石家庄', 'basic', 'city', 207);
INSERT INTO `country` VALUES ('沧州', 'basic', 'city', 208);
INSERT INTO `country` VALUES ('保定', 'basic', 'city', 209);
INSERT INTO `country` VALUES ('承德', 'basic', 'city', 210);
INSERT INTO `country` VALUES ('邢台', 'basic', 'city', 211);
INSERT INTO `country` VALUES ('衡水', 'basic', 'city', 212);
INSERT INTO `country` VALUES ('廊坊', 'basic', 'city', 213);
INSERT INTO `country` VALUES ('内江', 'basic', 'city', 214);
INSERT INTO `country` VALUES ('成都', 'basic', 'city', 215);
INSERT INTO `country` VALUES ('凉山', 'basic', 'city', 216);
INSERT INTO `country` VALUES ('资阳', 'basic', 'city', 217);
INSERT INTO `country` VALUES ('眉山', 'basic', 'city', 218);
INSERT INTO `country` VALUES ('雅安', 'basic', 'city', 219);
INSERT INTO `country` VALUES ('绵阳', 'basic', 'city', 220);
INSERT INTO `country` VALUES ('阿坝', 'basic', 'city', 221);
INSERT INTO `country` VALUES ('巴中', 'basic', 'city', 222);
INSERT INTO `country` VALUES ('达州', 'basic', 'city', 223);
INSERT INTO `country` VALUES ('广安', 'basic', 'city', 224);
INSERT INTO `country` VALUES ('宜宾', 'basic', 'city', 225);
INSERT INTO `country` VALUES ('乐山', 'basic', 'city', 226);
INSERT INTO `country` VALUES ('攀枝花', 'basic', 'city', 227);
INSERT INTO `country` VALUES ('南充', 'basic', 'city', 228);
INSERT INTO `country` VALUES ('遂宁', 'basic', 'city', 229);
INSERT INTO `country` VALUES ('德阳', 'basic', 'city', 230);
INSERT INTO `country` VALUES ('泸州', 'basic', 'city', 231);
INSERT INTO `country` VALUES ('自贡', 'basic', 'city', 232);
INSERT INTO `country` VALUES ('甘孜', 'basic', 'city', 233);
INSERT INTO `country` VALUES ('德宏州', 'basic', 'city', 234);
INSERT INTO `country` VALUES ('昭通市', 'basic', 'city', 235);
INSERT INTO `country` VALUES ('昆明', 'basic', 'city', 236);
INSERT INTO `country` VALUES ('临沧', 'basic', 'city', 237);
INSERT INTO `country` VALUES ('普洱', 'basic', 'city', 238);
INSERT INTO `country` VALUES ('文山州', 'basic', 'city', 239);
INSERT INTO `country` VALUES ('丽江市', 'basic', 'city', 240);
INSERT INTO `country` VALUES ('西双版纳州', 'basic', 'city', 241);
INSERT INTO `country` VALUES ('玉溪', 'basic', 'city', 242);
INSERT INTO `country` VALUES ('保山市', 'basic', 'city', 243);
INSERT INTO `country` VALUES ('曲靖', 'basic', 'city', 244);
INSERT INTO `country` VALUES ('红河', 'basic', 'city', 245);
INSERT INTO `country` VALUES ('大理', 'basic', 'city', 246);
INSERT INTO `country` VALUES ('楚雄州', 'basic', 'city', 247);
INSERT INTO `country` VALUES ('长春', 'basic', 'city', 248);
INSERT INTO `country` VALUES ('通化', 'basic', 'city', 249);
INSERT INTO `country` VALUES ('白城', 'basic', 'city', 250);
INSERT INTO `country` VALUES ('梅河口市', 'basic', 'city', 251);
INSERT INTO `country` VALUES ('松原', 'basic', 'city', 252);
INSERT INTO `country` VALUES ('延边', 'basic', 'city', 253);
INSERT INTO `country` VALUES ('四平', 'basic', 'city', 254);
INSERT INTO `country` VALUES ('公主岭', 'basic', 'city', 255);
INSERT INTO `country` VALUES ('辽源', 'basic', 'city', 256);
INSERT INTO `country` VALUES ('荣昌区', 'basic', 'city', 257);
INSERT INTO `country` VALUES ('长寿区', 'basic', 'city', 258);
INSERT INTO `country` VALUES ('涪陵区', 'basic', 'city', 259);
INSERT INTO `country` VALUES ('渝中区', 'basic', 'city', 260);
INSERT INTO `country` VALUES ('巴南区', 'basic', 'city', 261);
INSERT INTO `country` VALUES ('垫江县', 'basic', 'city', 262);
INSERT INTO `country` VALUES ('云阳县', 'basic', 'city', 263);
INSERT INTO `country` VALUES ('奉节县', 'basic', 'city', 264);
INSERT INTO `country` VALUES ('两江新区', 'basic', 'city', 265);
INSERT INTO `country` VALUES ('南岸区', 'basic', 'city', 266);
INSERT INTO `country` VALUES ('石柱县', 'basic', 'city', 267);
INSERT INTO `country` VALUES ('綦江区', 'basic', 'city', 268);
INSERT INTO `country` VALUES ('万州区', 'basic', 'city', 269);
INSERT INTO `country` VALUES ('九龙坡区', 'basic', 'city', 270);
INSERT INTO `country` VALUES ('丰都县', 'basic', 'city', 271);
INSERT INTO `country` VALUES ('潼南区', 'basic', 'city', 272);
INSERT INTO `country` VALUES ('江北区', 'basic', 'city', 273);
INSERT INTO `country` VALUES ('渝北区', 'basic', 'city', 274);
INSERT INTO `country` VALUES ('彭水县', 'basic', 'city', 275);
INSERT INTO `country` VALUES ('忠县', 'basic', 'city', 276);
INSERT INTO `country` VALUES ('开州区', 'basic', 'city', 277);
INSERT INTO `country` VALUES ('大足区', 'basic', 'city', 278);
INSERT INTO `country` VALUES ('合川区', 'basic', 'city', 279);
INSERT INTO `country` VALUES ('大渡口区', 'basic', 'city', 280);
INSERT INTO `country` VALUES ('巫山县', 'basic', 'city', 281);
INSERT INTO `country` VALUES ('巫溪县', 'basic', 'city', 282);
INSERT INTO `country` VALUES ('沙坪坝区', 'basic', 'city', 283);
INSERT INTO `country` VALUES ('万盛经开区', 'basic', 'city', 284);
INSERT INTO `country` VALUES ('酉阳县', 'basic', 'city', 285);
INSERT INTO `country` VALUES ('璧山区', 'basic', 'city', 286);
INSERT INTO `country` VALUES ('高新区', 'basic', 'city', 287);
INSERT INTO `country` VALUES ('江津区', 'basic', 'city', 288);
INSERT INTO `country` VALUES ('永川区', 'basic', 'city', 289);
INSERT INTO `country` VALUES ('武隆区', 'basic', 'city', 290);
INSERT INTO `country` VALUES ('城口县', 'basic', 'city', 291);
INSERT INTO `country` VALUES ('梁平区', 'basic', 'city', 292);
INSERT INTO `country` VALUES ('黔江区', 'basic', 'city', 293);
INSERT INTO `country` VALUES ('秀山县', 'basic', 'city', 294);
INSERT INTO `country` VALUES ('铜梁区', 'basic', 'city', 295);
INSERT INTO `country` VALUES ('抚顺', 'basic', 'city', 296);
INSERT INTO `country` VALUES ('沈阳', 'basic', 'city', 297);
INSERT INTO `country` VALUES ('大连', 'basic', 'city', 298);
INSERT INTO `country` VALUES ('营口', 'basic', 'city', 299);
INSERT INTO `country` VALUES ('朝阳市', 'basic', 'city', 300);
INSERT INTO `country` VALUES ('锦州', 'basic', 'city', 301);
INSERT INTO `country` VALUES ('丹东', 'basic', 'city', 302);
INSERT INTO `country` VALUES ('鞍山', 'basic', 'city', 303);
INSERT INTO `country` VALUES ('葫芦岛', 'basic', 'city', 304);
INSERT INTO `country` VALUES ('阜新', 'basic', 'city', 305);
INSERT INTO `country` VALUES ('本溪', 'basic', 'city', 306);
INSERT INTO `country` VALUES ('铁岭', 'basic', 'city', 307);
INSERT INTO `country` VALUES ('辽阳', 'basic', 'city', 308);
INSERT INTO `country` VALUES ('盘锦', 'basic', 'city', 309);
INSERT INTO `country` VALUES ('滁州', 'basic', 'city', 310);
INSERT INTO `country` VALUES ('池州', 'basic', 'city', 311);
INSERT INTO `country` VALUES ('宣城', 'basic', 'city', 312);
INSERT INTO `country` VALUES ('蚌埠', 'basic', 'city', 313);
INSERT INTO `country` VALUES ('芜湖', 'basic', 'city', 314);
INSERT INTO `country` VALUES ('合肥', 'basic', 'city', 315);
INSERT INTO `country` VALUES ('淮北', 'basic', 'city', 316);
INSERT INTO `country` VALUES ('六安', 'basic', 'city', 317);
INSERT INTO `country` VALUES ('淮南', 'basic', 'city', 318);
INSERT INTO `country` VALUES ('安庆', 'basic', 'city', 319);
INSERT INTO `country` VALUES ('马鞍山', 'basic', 'city', 320);
INSERT INTO `country` VALUES ('亳州', 'basic', 'city', 321);
INSERT INTO `country` VALUES ('阜阳', 'basic', 'city', 322);
INSERT INTO `country` VALUES ('黄山', 'basic', 'city', 323);
INSERT INTO `country` VALUES ('铜陵', 'basic', 'city', 324);
INSERT INTO `country` VALUES ('贵阳', 'basic', 'city', 325);
INSERT INTO `country` VALUES ('六盘水', 'basic', 'city', 326);
INSERT INTO `country` VALUES ('遵义', 'basic', 'city', 327);
INSERT INTO `country` VALUES ('毕节', 'basic', 'city', 328);
INSERT INTO `country` VALUES ('铜仁', 'basic', 'city', 329);
INSERT INTO `country` VALUES ('黔西南州', 'basic', 'city', 330);
INSERT INTO `country` VALUES ('黔南州', 'basic', 'city', 331);
INSERT INTO `country` VALUES ('黔东南州', 'basic', 'city', 332);
INSERT INTO `country` VALUES ('安顺', 'basic', 'city', 333);
INSERT INTO `country` VALUES ('韩城', 'basic', 'city', 334);
INSERT INTO `country` VALUES ('渭南', 'basic', 'city', 335);
INSERT INTO `country` VALUES ('咸阳', 'basic', 'city', 336);
INSERT INTO `country` VALUES ('杨凌', 'basic', 'city', 337);
INSERT INTO `country` VALUES ('榆林', 'basic', 'city', 338);
INSERT INTO `country` VALUES ('安康', 'basic', 'city', 339);
INSERT INTO `country` VALUES ('宝鸡', 'basic', 'city', 340);
INSERT INTO `country` VALUES ('汉中', 'basic', 'city', 341);
INSERT INTO `country` VALUES ('商洛', 'basic', 'city', 342);
INSERT INTO `country` VALUES ('西安', 'basic', 'city', 343);
INSERT INTO `country` VALUES ('延安', 'basic', 'city', 344);
INSERT INTO `country` VALUES ('娄底', 'basic', 'city', 345);
INSERT INTO `country` VALUES ('怀化', 'basic', 'city', 346);
INSERT INTO `country` VALUES ('湘西自治州', 'basic', 'city', 347);
INSERT INTO `country` VALUES ('长沙', 'basic', 'city', 348);
INSERT INTO `country` VALUES ('益阳', 'basic', 'city', 349);
INSERT INTO `country` VALUES ('湘潭', 'basic', 'city', 350);
INSERT INTO `country` VALUES ('衡阳', 'basic', 'city', 351);
INSERT INTO `country` VALUES ('岳阳', 'basic', 'city', 352);
INSERT INTO `country` VALUES ('张家界', 'basic', 'city', 353);
INSERT INTO `country` VALUES ('永州', 'basic', 'city', 354);
INSERT INTO `country` VALUES ('郴州', 'basic', 'city', 355);
INSERT INTO `country` VALUES ('常德', 'basic', 'city', 356);
INSERT INTO `country` VALUES ('邵阳', 'basic', 'city', 357);
INSERT INTO `country` VALUES ('株洲', 'basic', 'city', 358);
INSERT INTO `country` VALUES ('东方', 'basic', 'city', 359);
INSERT INTO `country` VALUES ('儋州', 'basic', 'city', 360);
INSERT INTO `country` VALUES ('三亚', 'basic', 'city', 361);
INSERT INTO `country` VALUES ('海口', 'basic', 'city', 362);
INSERT INTO `country` VALUES ('琼中县', 'basic', 'city', 363);
INSERT INTO `country` VALUES ('琼海', 'basic', 'city', 364);
INSERT INTO `country` VALUES ('万宁', 'basic', 'city', 365);
INSERT INTO `country` VALUES ('澄迈县', 'basic', 'city', 366);
INSERT INTO `country` VALUES ('乐东', 'basic', 'city', 367);
INSERT INTO `country` VALUES ('文昌', 'basic', 'city', 368);
INSERT INTO `country` VALUES ('定安县', 'basic', 'city', 369);
INSERT INTO `country` VALUES ('昌江县', 'basic', 'city', 370);
INSERT INTO `country` VALUES ('临高县', 'basic', 'city', 371);
INSERT INTO `country` VALUES ('陵水县', 'basic', 'city', 372);
INSERT INTO `country` VALUES ('防城港', 'basic', 'city', 373);
INSERT INTO `country` VALUES ('来宾', 'basic', 'city', 374);
INSERT INTO `country` VALUES ('北海', 'basic', 'city', 375);
INSERT INTO `country` VALUES ('桂林', 'basic', 'city', 376);
INSERT INTO `country` VALUES ('梧州', 'basic', 'city', 377);
INSERT INTO `country` VALUES ('百色', 'basic', 'city', 378);
INSERT INTO `country` VALUES ('河池', 'basic', 'city', 379);
INSERT INTO `country` VALUES ('贺州', 'basic', 'city', 380);
INSERT INTO `country` VALUES ('玉林', 'basic', 'city', 381);
INSERT INTO `country` VALUES ('南宁', 'basic', 'city', 382);
INSERT INTO `country` VALUES ('柳州', 'basic', 'city', 383);
INSERT INTO `country` VALUES ('钦州', 'basic', 'city', 384);
INSERT INTO `country` VALUES ('贵港', 'basic', 'city', 385);
INSERT INTO `country` VALUES ('定西', 'basic', 'city', 386);
INSERT INTO `country` VALUES ('兰州', 'basic', 'city', 387);
INSERT INTO `country` VALUES ('白银', 'basic', 'city', 388);
INSERT INTO `country` VALUES ('平凉', 'basic', 'city', 389);
INSERT INTO `country` VALUES ('陇南', 'basic', 'city', 390);
INSERT INTO `country` VALUES ('天水', 'basic', 'city', 391);
INSERT INTO `country` VALUES ('临夏', 'basic', 'city', 392);
INSERT INTO `country` VALUES ('庆阳', 'basic', 'city', 393);
INSERT INTO `country` VALUES ('金昌', 'basic', 'city', 394);
INSERT INTO `country` VALUES ('张掖', 'basic', 'city', 395);
INSERT INTO `country` VALUES ('甘南州', 'basic', 'city', 396);
INSERT INTO `country` VALUES ('上饶', 'basic', 'city', 397);
INSERT INTO `country` VALUES ('南昌', 'basic', 'city', 398);
INSERT INTO `country` VALUES ('九江', 'basic', 'city', 399);
INSERT INTO `country` VALUES ('赣江新区', 'basic', 'city', 400);
INSERT INTO `country` VALUES ('萍乡', 'basic', 'city', 401);
INSERT INTO `country` VALUES ('新余', 'basic', 'city', 402);
INSERT INTO `country` VALUES ('景德镇', 'basic', 'city', 403);
INSERT INTO `country` VALUES ('吉安', 'basic', 'city', 404);
INSERT INTO `country` VALUES ('宜春', 'basic', 'city', 405);
INSERT INTO `country` VALUES ('鹰潭', 'basic', 'city', 406);
INSERT INTO `country` VALUES ('抚州', 'basic', 'city', 407);
INSERT INTO `country` VALUES ('赣州', 'basic', 'city', 408);
INSERT INTO `country` VALUES ('海北州', 'basic', 'city', 409);
INSERT INTO `country` VALUES ('西宁', 'basic', 'city', 410);
INSERT INTO `country` VALUES ('拉萨', 'basic', 'city', 411);
INSERT INTO `country` VALUES ('漯河', 'basic', 'city', 412);
INSERT INTO `country` VALUES ('周口', 'basic', 'city', 413);
INSERT INTO `country` VALUES ('开封', 'basic', 'city', 414);
INSERT INTO `country` VALUES ('平顶山', 'basic', 'city', 415);
INSERT INTO `country` VALUES ('洛阳', 'basic', 'city', 416);
INSERT INTO `country` VALUES ('南阳', 'basic', 'city', 417);
INSERT INTO `country` VALUES ('濮阳', 'basic', 'city', 418);
INSERT INTO `country` VALUES ('焦作', 'basic', 'city', 419);
INSERT INTO `country` VALUES ('驻马店', 'basic', 'city', 420);
INSERT INTO `country` VALUES ('鹤壁', 'basic', 'city', 421);
INSERT INTO `country` VALUES ('三门峡', 'basic', 'city', 422);
INSERT INTO `country` VALUES ('商丘', 'basic', 'city', 423);
INSERT INTO `country` VALUES ('许昌', 'basic', 'city', 424);
INSERT INTO `country` VALUES ('新乡', 'basic', 'city', 425);
INSERT INTO `country` VALUES ('郑州', 'basic', 'city', 426);
INSERT INTO `country` VALUES ('信阳', 'basic', 'city', 427);
INSERT INTO `country` VALUES ('济源示范区', 'basic', 'city', 428);
INSERT INTO `country` VALUES ('安阳', 'basic', 'city', 429);
INSERT INTO `country` VALUES ('固原', 'basic', 'city', 430);
INSERT INTO `country` VALUES ('银川', 'basic', 'city', 431);
INSERT INTO `country` VALUES ('吴忠', 'basic', 'city', 432);
INSERT INTO `country` VALUES ('中卫', 'basic', 'city', 433);
INSERT INTO `country` VALUES ('宁东管委会', 'basic', 'city', 434);
INSERT INTO `country` VALUES ('石嘴山', 'basic', 'city', 435);
INSERT INTO `country` VALUES ('乌鲁木齐', 'basic', 'city', 436);
INSERT INTO `country` VALUES ('昌吉州', 'basic', 'city', 437);
INSERT INTO `country` VALUES ('吐鲁番', 'basic', 'city', 438);
INSERT INTO `country` VALUES ('兵团第九师', 'basic', 'city', 439);
INSERT INTO `country` VALUES ('兵团第十二师', 'basic', 'city', 440);
INSERT INTO `country` VALUES ('兵团第四师', 'basic', 'city', 441);
INSERT INTO `country` VALUES ('阿克苏', 'basic', 'city', 442);
INSERT INTO `country` VALUES ('第八师石河子', 'basic', 'city', 443);
INSERT INTO `country` VALUES ('巴州', 'basic', 'city', 444);
INSERT INTO `country` VALUES ('第七师', 'basic', 'city', 445);
INSERT INTO `country` VALUES ('马里兰', 'foreign', 'province', 446);
INSERT INTO `country` VALUES ('马萨诸塞', 'foreign', 'province', 447);
INSERT INTO `country` VALUES ('新泽西', 'foreign', 'province', 448);
INSERT INTO `country` VALUES ('华盛顿州', 'foreign', 'province', 449);
INSERT INTO `country` VALUES ('佛罗里达', 'foreign', 'province', 450);
INSERT INTO `country` VALUES ('德克萨斯', 'foreign', 'province', 451);
INSERT INTO `country` VALUES ('伊利诺伊', 'foreign', 'province', 452);
INSERT INTO `country` VALUES ('印第安纳', 'foreign', 'province', 453);
INSERT INTO `country` VALUES ('俄亥俄州', 'foreign', 'province', 454);
INSERT INTO `country` VALUES ('田纳西', 'foreign', 'province', 455);
INSERT INTO `country` VALUES ('弗吉尼亚', 'foreign', 'province', 456);
INSERT INTO `country` VALUES ('科罗拉多', 'foreign', 'province', 457);
INSERT INTO `country` VALUES ('密歇根州', 'foreign', 'province', 458);
INSERT INTO `country` VALUES ('乔治亚', 'foreign', 'province', 459);
INSERT INTO `country` VALUES ('纽约', 'foreign', 'province', 460);
INSERT INTO `country` VALUES ('北卡罗来纳', 'foreign', 'province', 461);
INSERT INTO `country` VALUES ('美军', 'foreign', 'province', 462);
INSERT INTO `country` VALUES ('密苏里州', 'foreign', 'province', 463);
INSERT INTO `country` VALUES ('康涅狄格', 'foreign', 'province', 464);
INSERT INTO `country` VALUES ('阿拉巴马州', 'foreign', 'province', 465);
INSERT INTO `country` VALUES ('亚利桑那', 'foreign', 'province', 466);
INSERT INTO `country` VALUES ('宾夕法尼亚', 'foreign', 'province', 467);
INSERT INTO `country` VALUES ('路易斯安那州', 'foreign', 'province', 468);
INSERT INTO `country` VALUES ('加利福尼亚', 'foreign', 'province', 469);
INSERT INTO `country` VALUES ('南卡罗来纳州', 'foreign', 'province', 470);
INSERT INTO `country` VALUES ('威斯康星', 'foreign', 'province', 471);
INSERT INTO `country` VALUES ('罗德岛', 'foreign', 'province', 472);
INSERT INTO `country` VALUES ('密西西比州', 'foreign', 'province', 473);
INSERT INTO `country` VALUES ('内华达', 'foreign', 'province', 474);
INSERT INTO `country` VALUES ('犹他', 'foreign', 'province', 475);
INSERT INTO `country` VALUES ('肯塔基', 'foreign', 'province', 476);
INSERT INTO `country` VALUES ('华盛顿特区', 'foreign', 'province', 477);
INSERT INTO `country` VALUES ('特拉华州', 'foreign', 'province', 478);
INSERT INTO `country` VALUES ('爱荷华州', 'foreign', 'province', 479);
INSERT INTO `country` VALUES ('俄克拉荷马', 'foreign', 'province', 480);
INSERT INTO `country` VALUES ('新墨西哥州', 'foreign', 'province', 481);
INSERT INTO `country` VALUES ('堪萨斯州', 'foreign', 'province', 482);
INSERT INTO `country` VALUES ('明尼苏达', 'foreign', 'province', 483);
INSERT INTO `country` VALUES ('俄勒冈', 'foreign', 'province', 484);
INSERT INTO `country` VALUES ('爱达荷州', 'foreign', 'province', 485);
INSERT INTO `country` VALUES ('阿肯色州', 'foreign', 'province', 486);
INSERT INTO `country` VALUES ('南达科塔州', 'foreign', 'province', 487);
INSERT INTO `country` VALUES ('波多黎各', 'foreign', 'province', 488);
INSERT INTO `country` VALUES ('新罕布什尔', 'foreign', 'province', 489);
INSERT INTO `country` VALUES ('内布拉斯加', 'foreign', 'province', 490);
INSERT INTO `country` VALUES ('纳瓦霍族保留地', 'foreign', 'province', 491);
INSERT INTO `country` VALUES ('缅因州', 'foreign', 'province', 492);
INSERT INTO `country` VALUES ('西弗吉尼亚', 'foreign', 'province', 493);
INSERT INTO `country` VALUES ('佛蒙特', 'foreign', 'province', 494);
INSERT INTO `country` VALUES ('联邦监狱局', 'foreign', 'province', 495);
INSERT INTO `country` VALUES ('夏威夷', 'foreign', 'province', 496);
INSERT INTO `country` VALUES ('北达科他州', 'foreign', 'province', 497);
INSERT INTO `country` VALUES ('蒙大拿', 'foreign', 'province', 498);
INSERT INTO `country` VALUES ('阿拉斯加州', 'foreign', 'province', 499);
INSERT INTO `country` VALUES ('怀俄明州', 'foreign', 'province', 500);
INSERT INTO `country` VALUES ('关岛', 'foreign', 'province', 501);
INSERT INTO `country` VALUES ('至尊公主号邮轮', 'foreign', 'province', 502);
INSERT INTO `country` VALUES ('美属维尔京群岛', 'foreign', 'province', 503);
INSERT INTO `country` VALUES ('钻石公主号邮轮', 'foreign', 'province', 504);
INSERT INTO `country` VALUES ('北马里亚纳群岛', 'foreign', 'province', 505);
INSERT INTO `country` VALUES ('撤回侨民', 'foreign', 'province', 506);
INSERT INTO `country` VALUES ('地区待确认', 'foreign', 'province', 507);
INSERT INTO `country` VALUES ('威尔士', 'foreign', 'province', 508);
INSERT INTO `country` VALUES ('英格兰', 'foreign', 'province', 509);
INSERT INTO `country` VALUES ('北爱尔兰', 'foreign', 'province', 510);
INSERT INTO `country` VALUES ('苏格兰', 'foreign', 'province', 511);
INSERT INTO `country` VALUES ('皮埃蒙特', 'foreign', 'province', 512);
INSERT INTO `country` VALUES ('伦巴第', 'foreign', 'province', 513);
INSERT INTO `country` VALUES ('威尼托', 'foreign', 'province', 514);
INSERT INTO `country` VALUES ('艾米利亚-罗马涅', 'foreign', 'province', 515);
INSERT INTO `country` VALUES ('博尔扎诺', 'foreign', 'province', 516);
INSERT INTO `country` VALUES ('利古里亚', 'foreign', 'province', 517);
INSERT INTO `country` VALUES ('特伦蒂诺-上阿迪杰', 'foreign', 'province', 518);
INSERT INTO `country` VALUES ('托斯卡纳', 'foreign', 'province', 519);
INSERT INTO `country` VALUES ('翁布里亚', 'foreign', 'province', 520);
INSERT INTO `country` VALUES ('西西里', 'foreign', 'province', 521);
INSERT INTO `country` VALUES ('撒丁岛', 'foreign', 'province', 522);
INSERT INTO `country` VALUES ('阿普利亚', 'foreign', 'province', 523);
INSERT INTO `country` VALUES ('瓦莱达奥斯塔', 'foreign', 'province', 524);
INSERT INTO `country` VALUES ('巴西利卡塔', 'foreign', 'province', 525);
INSERT INTO `country` VALUES ('卡拉布里亚', 'foreign', 'province', 526);
INSERT INTO `country` VALUES ('拉齐奥', 'foreign', 'province', 527);
INSERT INTO `country` VALUES ('莫利塞', 'foreign', 'province', 528);
INSERT INTO `country` VALUES ('弗留利-威尼斯-朱利亚', 'foreign', 'province', 529);
INSERT INTO `country` VALUES ('阿布鲁佐', 'foreign', 'province', 530);
INSERT INTO `country` VALUES ('坎帕尼亚', 'foreign', 'province', 531);
INSERT INTO `country` VALUES ('马尔凯', 'foreign', 'province', 532);
INSERT INTO `country` VALUES ('伊斯法罕省', 'foreign', 'province', 533);
INSERT INTO `country` VALUES ('德黑兰省', 'foreign', 'province', 534);
INSERT INTO `country` VALUES ('马赞德兰省', 'foreign', 'province', 535);
INSERT INTO `country` VALUES ('洛雷斯坦省', 'foreign', 'province', 536);
INSERT INTO `country` VALUES ('胡泽斯坦省', 'foreign', 'province', 537);
INSERT INTO `country` VALUES ('加兹温省', 'foreign', 'province', 538);
INSERT INTO `country` VALUES ('吉兰省', 'foreign', 'province', 539);
INSERT INTO `country` VALUES ('西阿塞拜疆省', 'foreign', 'province', 540);
INSERT INTO `country` VALUES ('东阿塞拜疆省', 'foreign', 'province', 541);
INSERT INTO `country` VALUES ('赞詹省', 'foreign', 'province', 542);
INSERT INTO `country` VALUES ('古列斯坦省', 'foreign', 'province', 543);
INSERT INTO `country` VALUES ('亚兹德省', 'foreign', 'province', 544);
INSERT INTO `country` VALUES ('塞姆南省', 'foreign', 'province', 545);
INSERT INTO `country` VALUES ('拉扎维霍拉桑省', 'foreign', 'province', 546);
INSERT INTO `country` VALUES ('阿尔达比勒省', 'foreign', 'province', 547);
INSERT INTO `country` VALUES ('中央省', 'foreign', 'province', 548);
INSERT INTO `country` VALUES ('哈马丹省', 'foreign', 'province', 549);
INSERT INTO `country` VALUES ('库尔德斯坦省', 'foreign', 'province', 550);
INSERT INTO `country` VALUES ('法尔斯省', 'foreign', 'province', 551);
INSERT INTO `country` VALUES ('伊拉姆省', 'foreign', 'province', 552);
INSERT INTO `country` VALUES ('南霍拉桑省', 'foreign', 'province', 553);
INSERT INTO `country` VALUES ('克尔曼沙省', 'foreign', 'province', 554);
INSERT INTO `country` VALUES ('库姆省', 'foreign', 'province', 555);
INSERT INTO `country` VALUES ('克尔曼省', 'foreign', 'province', 556);
INSERT INTO `country` VALUES ('北霍拉桑省', 'foreign', 'province', 557);
INSERT INTO `country` VALUES ('锡斯坦俾路支斯坦省', 'foreign', 'province', 558);
INSERT INTO `country` VALUES ('霍尔木兹甘省', 'foreign', 'province', 559);
INSERT INTO `country` VALUES ('科吉卢耶博韦艾哈迈德省', 'foreign', 'province', 560);
INSERT INTO `country` VALUES ('布什尔省', 'foreign', 'province', 561);
INSERT INTO `country` VALUES ('恰马哈勒巴赫蒂亚里省', 'foreign', 'province', 562);
INSERT INTO `country` VALUES ('厄尔布尔士省', 'foreign', 'province', 563);
INSERT INTO `country` VALUES ('首尔', 'foreign', 'province', 564);
INSERT INTO `country` VALUES ('京畿道', 'foreign', 'province', 565);
INSERT INTO `country` VALUES ('大邱', 'foreign', 'province', 566);
INSERT INTO `country` VALUES ('庆尚北道', 'foreign', 'province', 567);
INSERT INTO `country` VALUES ('全罗南道', 'foreign', 'province', 568);
INSERT INTO `country` VALUES ('光州', 'foreign', 'province', 569);
INSERT INTO `country` VALUES ('全罗北道', 'foreign', 'province', 570);
INSERT INTO `country` VALUES ('济州岛', 'foreign', 'province', 571);
INSERT INTO `country` VALUES ('世宗', 'foreign', 'province', 572);
INSERT INTO `country` VALUES ('仁川', 'foreign', 'province', 573);
INSERT INTO `country` VALUES ('忠清南道', 'foreign', 'province', 574);
INSERT INTO `country` VALUES ('庆尚南道', 'foreign', 'province', 575);
INSERT INTO `country` VALUES ('忠清北道', 'foreign', 'province', 576);
INSERT INTO `country` VALUES ('江原道', 'foreign', 'province', 577);
INSERT INTO `country` VALUES ('釜山', 'foreign', 'province', 578);
INSERT INTO `country` VALUES ('蔚山', 'foreign', 'province', 579);
INSERT INTO `country` VALUES ('神奈川县', 'foreign', 'province', 580);
INSERT INTO `country` VALUES ('千叶县', 'foreign', 'province', 581);
INSERT INTO `country` VALUES ('东京', 'foreign', 'province', 582);
INSERT INTO `country` VALUES ('大阪府', 'foreign', 'province', 583);
INSERT INTO `country` VALUES ('广岛县', 'foreign', 'province', 584);
INSERT INTO `country` VALUES ('群马县', 'foreign', 'province', 585);
INSERT INTO `country` VALUES ('京都府', 'foreign', 'province', 586);
INSERT INTO `country` VALUES ('福井县', 'foreign', 'province', 587);
INSERT INTO `country` VALUES ('兵库县', 'foreign', 'province', 588);
INSERT INTO `country` VALUES ('检疫等工作人员', 'foreign', 'province', 589);
INSERT INTO `country` VALUES ('石川县', 'foreign', 'province', 590);
INSERT INTO `country` VALUES ('北海道', 'foreign', 'province', 591);
INSERT INTO `country` VALUES ('岐阜县', 'foreign', 'province', 592);
INSERT INTO `country` VALUES ('福冈县', 'foreign', 'province', 593);
INSERT INTO `country` VALUES ('埼玉县', 'foreign', 'province', 594);
INSERT INTO `country` VALUES ('冲绳县', 'foreign', 'province', 595);
INSERT INTO `country` VALUES ('宫城县', 'foreign', 'province', 596);
INSERT INTO `country` VALUES ('富山县', 'foreign', 'province', 597);
INSERT INTO `country` VALUES ('滋贺县', 'foreign', 'province', 598);
INSERT INTO `country` VALUES ('高知县', 'foreign', 'province', 599);
INSERT INTO `country` VALUES ('山形县', 'foreign', 'province', 600);
INSERT INTO `country` VALUES ('奈良县', 'foreign', 'province', 601);
INSERT INTO `country` VALUES ('大分县', 'foreign', 'province', 602);
INSERT INTO `country` VALUES ('新潟县', 'foreign', 'province', 603);
INSERT INTO `country` VALUES ('静冈县', 'foreign', 'province', 604);
INSERT INTO `country` VALUES ('福岛县', 'foreign', 'province', 605);
INSERT INTO `country` VALUES ('长野县', 'foreign', 'province', 606);
INSERT INTO `country` VALUES ('爱知县', 'foreign', 'province', 607);
INSERT INTO `country` VALUES ('山梨县', 'foreign', 'province', 608);
INSERT INTO `country` VALUES ('栃木县', 'foreign', 'province', 609);
INSERT INTO `country` VALUES ('和歌山县', 'foreign', 'province', 610);
INSERT INTO `country` VALUES ('爱媛县', 'foreign', 'province', 611);
INSERT INTO `country` VALUES ('熊本县', 'foreign', 'province', 612);
INSERT INTO `country` VALUES ('三重县', 'foreign', 'province', 613);
INSERT INTO `country` VALUES ('山口县', 'foreign', 'province', 614);
INSERT INTO `country` VALUES ('香川县', 'foreign', 'province', 615);
INSERT INTO `country` VALUES ('青森县', 'foreign', 'province', 616);
INSERT INTO `country` VALUES ('冈山县', 'foreign', 'province', 617);
INSERT INTO `country` VALUES ('长崎县', 'foreign', 'province', 618);
INSERT INTO `country` VALUES ('宫崎县', 'foreign', 'province', 619);
INSERT INTO `country` VALUES ('秋田县', 'foreign', 'province', 620);
INSERT INTO `country` VALUES ('佐贺县', 'foreign', 'province', 621);
INSERT INTO `country` VALUES ('岛根县', 'foreign', 'province', 622);
INSERT INTO `country` VALUES ('武汉包机回国者', 'foreign', 'province', 623);
INSERT INTO `country` VALUES ('鹿儿岛县', 'foreign', 'province', 624);
INSERT INTO `country` VALUES ('德岛县', 'foreign', 'province', 625);
INSERT INTO `country` VALUES ('鸟取县', 'foreign', 'province', 626);
INSERT INTO `country` VALUES ('茨城县', 'foreign', 'province', 627);
INSERT INTO `country` VALUES ('大田', 'foreign', 'province', 628);
INSERT INTO `country` VALUES ('法国', 'foreign', 'country', 629);
INSERT INTO `country` VALUES ('美国', 'foreign', 'country', 630);
INSERT INTO `country` VALUES ('英国', 'foreign', 'country', 631);
INSERT INTO `country` VALUES ('意大利', 'foreign', 'country', 632);
INSERT INTO `country` VALUES ('西班牙', 'foreign', 'country', 633);
INSERT INTO `country` VALUES ('德国', 'foreign', 'country', 634);
INSERT INTO `country` VALUES ('伊朗', 'foreign', 'country', 635);
INSERT INTO `country` VALUES ('荷兰', 'foreign', 'country', 636);
INSERT INTO `country` VALUES ('瑞士', 'foreign', 'country', 637);
INSERT INTO `country` VALUES ('奥地利', 'foreign', 'country', 638);
INSERT INTO `country` VALUES ('比利时', 'foreign', 'country', 639);
INSERT INTO `country` VALUES ('韩国', 'foreign', 'country', 640);
INSERT INTO `country` VALUES ('土耳其', 'foreign', 'country', 641);
INSERT INTO `country` VALUES ('葡萄牙', 'foreign', 'country', 642);
INSERT INTO `country` VALUES ('加拿大', 'foreign', 'country', 643);
INSERT INTO `country` VALUES ('塞尔维亚', 'foreign', 'country', 644);
INSERT INTO `country` VALUES ('以色列', 'foreign', 'country', 645);
INSERT INTO `country` VALUES ('挪威', 'foreign', 'country', 646);
INSERT INTO `country` VALUES ('巴西', 'foreign', 'country', 647);
INSERT INTO `country` VALUES ('澳大利亚', 'foreign', 'country', 648);
INSERT INTO `country` VALUES ('瑞典', 'foreign', 'country', 649);
INSERT INTO `country` VALUES ('捷克', 'foreign', 'country', 650);
INSERT INTO `country` VALUES ('丹麦', 'foreign', 'country', 651);
INSERT INTO `country` VALUES ('马来西亚', 'foreign', 'country', 652);
INSERT INTO `country` VALUES ('爱尔兰', 'foreign', 'country', 653);
INSERT INTO `country` VALUES ('智利', 'foreign', 'country', 654);
INSERT INTO `country` VALUES ('卢森堡', 'foreign', 'country', 655);
INSERT INTO `country` VALUES ('罗马尼亚', 'foreign', 'country', 656);
INSERT INTO `country` VALUES ('厄瓜多尔', 'foreign', 'country', 657);
INSERT INTO `country` VALUES ('波兰', 'foreign', 'country', 658);
INSERT INTO `country` VALUES ('俄罗斯', 'foreign', 'country', 659);
INSERT INTO `country` VALUES ('日本本土', 'foreign', 'country', 660);
INSERT INTO `country` VALUES ('巴基斯坦', 'foreign', 'country', 661);
INSERT INTO `country` VALUES ('菲律宾', 'foreign', 'country', 662);
INSERT INTO `country` VALUES ('泰国', 'foreign', 'country', 663);
INSERT INTO `country` VALUES ('沙特阿拉伯', 'foreign', 'country', 664);
INSERT INTO `country` VALUES ('印度尼西亚', 'foreign', 'country', 665);
INSERT INTO `country` VALUES ('南非', 'foreign', 'country', 666);
INSERT INTO `country` VALUES ('芬兰', 'foreign', 'country', 667);
INSERT INTO `country` VALUES ('希腊', 'foreign', 'country', 668);
INSERT INTO `country` VALUES ('印度', 'foreign', 'country', 669);
INSERT INTO `country` VALUES ('冰岛', 'foreign', 'country', 670);
INSERT INTO `country` VALUES ('墨西哥', 'foreign', 'country', 671);
INSERT INTO `country` VALUES ('巴拿马', 'foreign', 'country', 672);
INSERT INTO `country` VALUES ('多米尼加', 'foreign', 'country', 673);
INSERT INTO `country` VALUES ('新加坡', 'foreign', 'country', 674);
INSERT INTO `country` VALUES ('秘鲁', 'foreign', 'country', 675);
INSERT INTO `country` VALUES ('阿根廷', 'foreign', 'country', 676);
INSERT INTO `country` VALUES ('克罗地亚', 'foreign', 'country', 677);
INSERT INTO `country` VALUES ('钻石号邮轮', 'foreign', 'country', 678);
INSERT INTO `country` VALUES ('哥伦比亚', 'foreign', 'country', 679);
INSERT INTO `country` VALUES ('斯洛文尼亚', 'foreign', 'country', 680);
INSERT INTO `country` VALUES ('爱沙尼亚', 'foreign', 'country', 681);
INSERT INTO `country` VALUES ('卡塔尔', 'foreign', 'country', 682);
INSERT INTO `country` VALUES ('阿联酋', 'foreign', 'country', 683);
INSERT INTO `country` VALUES ('埃及', 'foreign', 'country', 684);
INSERT INTO `country` VALUES ('新西兰', 'foreign', 'country', 685);
INSERT INTO `country` VALUES ('阿塞拜疆', 'foreign', 'country', 686);
INSERT INTO `country` VALUES ('伊拉克', 'foreign', 'country', 687);
INSERT INTO `country` VALUES ('摩洛哥', 'foreign', 'country', 688);
INSERT INTO `country` VALUES ('巴林', 'foreign', 'country', 689);
INSERT INTO `country` VALUES ('阿尔及利亚', 'foreign', 'country', 690);
INSERT INTO `country` VALUES ('亚美尼亚', 'foreign', 'country', 691);
INSERT INTO `country` VALUES ('乌克兰', 'foreign', 'country', 692);
INSERT INTO `country` VALUES ('立陶宛', 'foreign', 'country', 693);
INSERT INTO `country` VALUES ('匈牙利', 'foreign', 'country', 694);
INSERT INTO `country` VALUES ('黎巴嫩', 'foreign', 'country', 695);
INSERT INTO `country` VALUES ('拉脱维亚', 'foreign', 'country', 696);
INSERT INTO `country` VALUES ('斯洛伐克', 'foreign', 'country', 697);
INSERT INTO `country` VALUES ('安道尔', 'foreign', 'country', 698);
INSERT INTO `country` VALUES ('波黑', 'foreign', 'country', 699);
INSERT INTO `country` VALUES ('保加利亚', 'foreign', 'country', 700);
INSERT INTO `country` VALUES ('突尼斯', 'foreign', 'country', 701);
INSERT INTO `country` VALUES ('乌拉圭', 'foreign', 'country', 702);
INSERT INTO `country` VALUES ('哈萨克斯坦', 'foreign', 'country', 703);
INSERT INTO `country` VALUES ('哥斯达黎加', 'foreign', 'country', 704);
INSERT INTO `country` VALUES ('科威特', 'foreign', 'country', 705);
INSERT INTO `country` VALUES ('北马其顿', 'foreign', 'country', 706);
INSERT INTO `country` VALUES ('约旦', 'foreign', 'country', 707);
INSERT INTO `country` VALUES ('摩尔多瓦', 'foreign', 'country', 708);
INSERT INTO `country` VALUES ('圣马力诺', 'foreign', 'country', 709);
INSERT INTO `country` VALUES ('布基纳法索', 'foreign', 'country', 710);
INSERT INTO `country` VALUES ('塞浦路斯', 'foreign', 'country', 711);
INSERT INTO `country` VALUES ('阿尔巴尼亚', 'foreign', 'country', 712);
INSERT INTO `country` VALUES ('越南', 'foreign', 'country', 713);
INSERT INTO `country` VALUES ('阿曼', 'foreign', 'country', 714);
INSERT INTO `country` VALUES ('科特迪瓦', 'foreign', 'country', 715);
INSERT INTO `country` VALUES ('塞内加尔', 'foreign', 'country', 716);
INSERT INTO `country` VALUES ('加纳', 'foreign', 'country', 717);
INSERT INTO `country` VALUES ('乌兹别克斯坦', 'foreign', 'country', 718);
INSERT INTO `country` VALUES ('马耳他', 'foreign', 'country', 719);
INSERT INTO `country` VALUES ('阿富汗', 'foreign', 'country', 720);
INSERT INTO `country` VALUES ('喀麦隆', 'foreign', 'country', 721);
INSERT INTO `country` VALUES ('洪都拉斯', 'foreign', 'country', 722);
INSERT INTO `country` VALUES ('文莱', 'foreign', 'country', 723);
INSERT INTO `country` VALUES ('斯里兰卡', 'foreign', 'country', 724);
INSERT INTO `country` VALUES ('委内瑞拉', 'foreign', 'country', 725);
INSERT INTO `country` VALUES ('古巴', 'foreign', 'country', 726);
INSERT INTO `country` VALUES ('尼日利亚', 'foreign', 'country', 727);
INSERT INTO `country` VALUES ('毛里求斯', 'foreign', 'country', 728);
INSERT INTO `country` VALUES ('巴勒斯坦', 'foreign', 'country', 729);
INSERT INTO `country` VALUES ('柬埔寨', 'foreign', 'country', 730);
INSERT INTO `country` VALUES ('格鲁吉亚', 'foreign', 'country', 731);
INSERT INTO `country` VALUES ('白俄罗斯', 'foreign', 'country', 732);
INSERT INTO `country` VALUES ('黑山', 'foreign', 'country', 733);
INSERT INTO `country` VALUES ('吉尔吉斯斯坦', 'foreign', 'country', 734);
INSERT INTO `country` VALUES ('刚果（金）', 'foreign', 'country', 735);
INSERT INTO `country` VALUES ('玻利维亚', 'foreign', 'country', 736);
INSERT INTO `country` VALUES ('卢旺达', 'foreign', 'country', 737);
INSERT INTO `country` VALUES ('巴拉圭', 'foreign', 'country', 738);
INSERT INTO `country` VALUES ('列支敦士登公国', 'foreign', 'country', 739);
INSERT INTO `country` VALUES ('肯尼亚', 'foreign', 'country', 740);
INSERT INTO `country` VALUES ('孟加拉', 'foreign', 'country', 741);
INSERT INTO `country` VALUES ('摩纳哥', 'foreign', 'country', 742);
INSERT INTO `country` VALUES ('马达加斯加', 'foreign', 'country', 743);
INSERT INTO `country` VALUES ('赞比亚', 'foreign', 'country', 744);
INSERT INTO `country` VALUES ('危地马拉', 'foreign', 'country', 745);
INSERT INTO `country` VALUES ('乌干达', 'foreign', 'country', 746);
INSERT INTO `country` VALUES ('多哥', 'foreign', 'country', 747);
INSERT INTO `country` VALUES ('圭亚那', 'foreign', 'country', 748);
INSERT INTO `country` VALUES ('马里', 'foreign', 'country', 749);
INSERT INTO `country` VALUES ('吉布提', 'foreign', 'country', 750);
INSERT INTO `country` VALUES ('埃塞俄比亚', 'foreign', 'country', 751);
INSERT INTO `country` VALUES ('缅甸', 'foreign', 'country', 752);
INSERT INTO `country` VALUES ('刚果（布）', 'foreign', 'country', 753);
INSERT INTO `country` VALUES ('坦桑尼亚', 'foreign', 'country', 754);
INSERT INTO `country` VALUES ('尼日尔', 'foreign', 'country', 755);
INSERT INTO `country` VALUES ('马尔代夫', 'foreign', 'country', 756);
INSERT INTO `country` VALUES ('几内亚', 'foreign', 'country', 757);
INSERT INTO `country` VALUES ('赤道几内亚', 'foreign', 'country', 758);
INSERT INTO `country` VALUES ('厄立特里亚', 'foreign', 'country', 759);
INSERT INTO `country` VALUES ('蒙古', 'foreign', 'country', 760);
INSERT INTO `country` VALUES ('纳米比亚', 'foreign', 'country', 761);
INSERT INTO `country` VALUES ('叙利亚', 'foreign', 'country', 762);
INSERT INTO `country` VALUES ('斯威士兰', 'foreign', 'country', 763);
INSERT INTO `country` VALUES ('老挝', 'foreign', 'country', 764);
INSERT INTO `country` VALUES ('塞舌尔', 'foreign', 'country', 765);
INSERT INTO `country` VALUES ('海地', 'foreign', 'country', 766);
INSERT INTO `country` VALUES ('苏里南', 'foreign', 'country', 767);
INSERT INTO `country` VALUES ('莫桑比克', 'foreign', 'country', 768);
INSERT INTO `country` VALUES ('加蓬', 'foreign', 'country', 769);
INSERT INTO `country` VALUES ('安哥拉', 'foreign', 'country', 770);
INSERT INTO `country` VALUES ('安提瓜和巴布达', 'foreign', 'country', 771);
INSERT INTO `country` VALUES ('津巴布韦', 'foreign', 'country', 772);
INSERT INTO `country` VALUES ('苏丹', 'foreign', 'country', 773);
INSERT INTO `country` VALUES ('梵蒂冈', 'foreign', 'country', 774);
INSERT INTO `country` VALUES ('中非共和国', 'foreign', 'country', 775);
INSERT INTO `country` VALUES ('贝宁', 'foreign', 'country', 776);
INSERT INTO `country` VALUES ('佛得角', 'foreign', 'country', 777);
INSERT INTO `country` VALUES ('尼泊尔', 'foreign', 'country', 778);
INSERT INTO `country` VALUES ('毛里塔尼亚', 'foreign', 'country', 779);
INSERT INTO `country` VALUES ('乍得', 'foreign', 'country', 780);
INSERT INTO `country` VALUES ('冈比亚', 'foreign', 'country', 781);
INSERT INTO `country` VALUES ('尼加拉瓜', 'foreign', 'country', 782);
INSERT INTO `country` VALUES ('不丹', 'foreign', 'country', 783);
INSERT INTO `country` VALUES ('利比里亚', 'foreign', 'country', 784);
INSERT INTO `country` VALUES ('索马里', 'foreign', 'country', 785);
INSERT INTO `country` VALUES ('几内亚比绍', 'foreign', 'country', 786);
INSERT INTO `country` VALUES ('伯利兹', 'foreign', 'country', 787);
INSERT INTO `country` VALUES ('巴布亚新几内亚', 'foreign', 'country', 788);
INSERT INTO `country` VALUES ('东帝汶', 'foreign', 'country', 789);

-- ----------------------------
-- Table structure for data_china
-- ----------------------------
DROP TABLE IF EXISTS `data_china`;
CREATE TABLE `data_china`  (
  `updateTime` datetime(0) NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `confirm` int(255) NULL DEFAULT NULL,
  `suspect` int(255) NULL DEFAULT NULL,
  `heal` int(255) NULL DEFAULT NULL,
  `dead` int(255) NULL DEFAULT NULL,
  `nowConfirm` int(255) NULL DEFAULT NULL,
  `healRate` float(255, 0) NULL DEFAULT NULL,
  `deadRate` float(255, 0) NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 491 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_china
-- ----------------------------
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', 'all', 84294, 35, 78091, 4642, 1561, 93, 6, '', 1);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 921, 0, 477, 13, 431, 52, 1, 'all', 2);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 384, 0, 7, 0, 377, 2, 0, '境外输入', 3);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 251, 0, 195, 4, 52, 78, 2, '哈尔滨', 4);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 17, 0, 15, 0, 2, 88, 0, '牡丹江', 5);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 52, 0, 49, 3, 0, 94, 6, '双鸭山', 6);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 3, 0, 3, 0, 0, 100, 0, '大兴安岭', 7);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 14, 0, 14, 0, 0, 100, 0, '黑河', 8);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 26, 0, 25, 1, 0, 96, 4, '大庆', 9);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 43, 0, 42, 1, 0, 98, 2, '齐齐哈尔', 10);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 47, 0, 43, 4, 0, 91, 9, '绥化', 11);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 5, 0, 5, 0, 0, 100, 0, '鹤岗', 12);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 17, 0, 17, 0, 0, 100, 0, '七台河', 13);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 46, 0, 46, 0, 0, 100, 0, '鸡西', 14);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 1, 0, 1, 0, 0, 100, 0, '伊春', 15);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '黑龙江', 15, 0, 15, 0, 0, 100, 0, '佳木斯', 16);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '香港', 1033, 0, 678, 4, 351, 66, 0, 'all', 17);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '香港', 1033, 0, 678, 4, 351, 66, 0, '地区待确认', 18);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '台湾', 426, 0, 236, 6, 184, 55, 1, 'all', 19);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '台湾', 426, 0, 236, 6, 184, 55, 1, '地区待确认', 20);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 639, 0, 532, 7, 100, 83, 1, 'all', 21);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 300, 0, 201, 0, 99, 67, 0, '境外输入', 22);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 111, 0, 109, 1, 1, 98, 1, '外地来沪', 23);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 6, 0, 6, 0, 0, 100, 0, '青浦', 24);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 22, 0, 21, 1, 0, 95, 5, '宝山', 25);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 9, 0, 7, 2, 0, 78, 22, '嘉定', 26);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 18, 0, 17, 1, 0, 94, 6, '徐汇', 27);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 16, 0, 15, 1, 0, 94, 6, '静安', 28);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 6, 0, 5, 1, 0, 83, 17, '黄浦', 29);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 61, 0, 61, 0, 0, 100, 0, '浦东', 30);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 31);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 4, 0, 4, 0, 0, 100, 0, '崇明', 32);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 4, 0, 4, 0, 0, 100, 0, '金山', 33);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 7, 0, 7, 0, 0, 100, 0, '虹口', 34);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 9, 0, 9, 0, 0, 100, 0, '奉贤', 35);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 9, 0, 9, 0, 0, 100, 0, '杨浦', 36);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 11, 0, 11, 0, 0, 100, 0, '普陀', 37);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 13, 0, 13, 0, 0, 100, 0, '长宁', 38);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 14, 0, 14, 0, 0, 100, 0, '松江', 39);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '上海', 19, 0, 19, 0, 0, 100, 0, '闵行', 40);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 68128, 0, 63519, 4512, 97, 93, 7, 'all', 41);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 50333, 0, 46367, 3869, 97, 92, 8, '武汉', 42);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 252, 0, 245, 7, 0, 97, 3, '恩施州', 43);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 931, 0, 894, 37, 0, 96, 4, '宜昌', 44);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 1015, 0, 976, 39, 0, 96, 4, '黄石', 45);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 1580, 0, 1528, 52, 0, 97, 3, '荆州', 46);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 1307, 0, 1262, 45, 0, 97, 3, '随州', 47);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 928, 0, 887, 41, 0, 96, 4, '荆门', 48);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 836, 0, 821, 15, 0, 98, 2, '咸宁', 49);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 2907, 0, 2782, 125, 0, 96, 4, '黄冈', 50);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 672, 0, 664, 8, 0, 99, 1, '十堰', 51);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 496, 0, 481, 15, 0, 97, 3, '天门', 52);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 3518, 0, 3389, 129, 0, 96, 4, '孝感', 53);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 11, 0, 11, 0, 0, 100, 0, '神农架', 54);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 198, 0, 189, 9, 0, 95, 5, '潜江', 55);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 1394, 0, 1335, 59, 0, 96, 4, '鄂州', 56);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 1175, 0, 1135, 40, 0, 97, 3, '襄阳', 57);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖北', 575, 0, 553, 22, 0, 96, 4, '仙桃', 58);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 194, 0, 108, 1, 85, 56, 1, 'all', 59);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 118, 0, 34, 0, 84, 29, 0, '境外输入', 60);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 8, 0, 7, 0, 1, 87, 0, '呼伦贝尔', 61);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 11, 0, 11, 0, 0, 100, 0, '包头', 62);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 7, 0, 7, 0, 0, 100, 0, '呼和浩特', 63);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 3, 0, 3, 0, 0, 100, 0, '乌兰察布', 64);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 9, 0, 9, 0, 0, 100, 0, '赤峰', 65);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 9, 0, 9, 0, 0, 100, 0, '锡林郭勒', 66);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 7, 0, 7, 0, 0, 100, 0, '通辽', 67);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 11, 0, 11, 0, 0, 100, 0, '鄂尔多斯', 68);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 8, 0, 7, 1, 0, 87, 12, '巴彦淖尔', 69);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 1, 0, 1, 0, 0, 100, 0, '兴安盟', 70);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '内蒙古', 2, 0, 2, 0, 0, 100, 0, '乌海', 71);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 593, 0, 518, 8, 67, 87, 1, 'all', 72);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 75, 0, 0, 0, 75, 0, 0, '朝阳', 73);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 64, 0, 0, 0, 64, 0, 0, '海淀', 74);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 174, 0, 112, 0, 62, 64, 0, '境外输入', 75);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 53, 0, 0, 0, 53, 0, 0, '西城', 76);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 43, 0, 0, 0, 43, 0, 0, '丰台', 77);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 39, 0, 0, 0, 39, 0, 0, '大兴', 78);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 29, 0, 0, 0, 29, 0, 0, '昌平', 79);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 25, 0, 0, 0, 25, 0, 0, '外地来京', 80);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 19, 0, 0, 0, 19, 0, 0, '通州', 81);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 16, 0, 0, 0, 16, 0, 0, '房山', 82);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 14, 0, 0, 0, 14, 0, 0, '东城', 83);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 14, 0, 0, 0, 14, 0, 0, '石景山', 84);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 10, 0, 0, 0, 10, 0, 0, '顺义', 85);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 7, 0, 0, 0, 7, 0, 0, '密云', 86);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 7, 0, 0, 0, 7, 0, 0, '怀柔', 87);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 3, 0, 0, 0, 3, 0, 0, '门头沟', 88);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 1, 0, 0, 0, 1, 0, 0, '延庆', 89);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '北京', 0, 0, 406, 8, -414, 0, 0, '地区待确认', 90);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 1582, 0, 1511, 8, 63, 96, 1, 'all', 91);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 191, 0, 159, 0, 32, 83, 0, '境外输入', 92);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 375, 0, 354, 1, 20, 94, 0, '广州', 93);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 422, 0, 415, 3, 4, 98, 1, '深圳', 94);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 88, 0, 85, 0, 3, 97, 0, '佛山', 95);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 10, 0, 8, 0, 2, 80, 0, '揭阳', 96);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 67, 0, 66, 0, 1, 99, 0, '中山', 97);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 5, 0, 4, 0, 1, 80, 0, '河源', 98);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 16, 0, 16, 0, 0, 100, 0, '梅州', 99);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 25, 0, 25, 0, 0, 100, 0, '汕头', 100);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 98, 0, 97, 1, 0, 99, 1, '珠海', 101);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 23, 0, 23, 0, 0, 100, 0, '江门', 102);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 103);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 22, 0, 22, 0, 0, 100, 0, '湛江', 104);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 5, 0, 5, 0, 0, 100, 0, '潮州', 105);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 19, 0, 18, 1, 0, 95, 5, '肇庆', 106);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 12, 0, 12, 0, 0, 100, 0, '清远', 107);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 99, 0, 98, 1, 0, 99, 1, '东莞', 108);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 14, 0, 14, 0, 0, 100, 0, '阳江', 109);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 62, 0, 62, 0, 0, 100, 0, '惠州', 110);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 14, 0, 14, 0, 0, 100, 0, '茂名', 111);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 10, 0, 9, 1, 0, 90, 10, '韶关', 112);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广东', 5, 0, 5, 0, 0, 100, 0, '汕尾', 113);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 197, 0, 140, 0, 57, 71, 0, 'all', 114);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 64, 0, 7, 0, 57, 11, 0, '境外输入', 115);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 37, 0, 37, 0, 0, 100, 0, '晋中', 116);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 12, 0, 12, 0, 0, 100, 0, '大同', 117);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 19, 0, 19, 0, 0, 100, 0, '运城', 118);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 7, 0, 7, 0, 0, 100, 0, '忻州', 119);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 10, 0, 10, 0, 0, 100, 0, '晋城', 120);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 8, 0, 8, 0, 0, 100, 0, '长治', 121);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 20, 0, 20, 0, 0, 100, 0, '太原', 122);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 8, 0, 8, 0, 0, 100, 0, '朔州', 123);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 2, 0, 2, 0, 0, 100, 0, '临汾', 124);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 4, 0, 4, 0, 0, 100, 0, '阳泉', 125);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山西', 6, 0, 6, 0, 0, 100, 0, '吕梁', 126);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 279, 0, 253, 3, 23, 91, 1, 'all', 127);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 34, 0, 11, 0, 23, 32, 0, '境外输入', 128);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 1, 0, 1, 0, 0, 100, 0, '韩城', 129);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 15, 0, 15, 0, 0, 100, 0, '渭南', 130);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 17, 0, 17, 0, 0, 100, 0, '咸阳', 131);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 120, 0, 117, 3, 0, 97, 2, '西安', 132);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 26, 0, 26, 0, 0, 100, 0, '汉中', 133);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 1, 0, 1, 0, 0, 100, 0, '杨凌', 134);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 135);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 3, 0, 3, 0, 0, 100, 0, '榆林', 136);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 7, 0, 7, 0, 0, 100, 0, '商洛', 137);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 8, 0, 8, 0, 0, 100, 0, '铜川', 138);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 8, 0, 8, 0, 0, 100, 0, '延安', 139);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 13, 0, 13, 0, 0, 100, 0, '宝鸡', 140);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '陕西', 26, 0, 26, 0, 0, 100, 0, '安康', 141);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '澳门', 45, 0, 24, 0, 21, 53, 0, 'all', 142);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '澳门', 45, 0, 24, 0, 21, 53, 0, '地区待确认', 143);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 1268, 0, 1252, 1, 15, 99, 0, 'all', 144);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 50, 0, 35, 0, 15, 70, 0, '境外输入', 145);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 10, 0, 10, 0, 0, 100, 0, '舟山', 146);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 36, 0, 36, 0, 0, 100, 0, '省十里丰监狱', 147);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 17, 0, 17, 0, 0, 100, 0, '丽水', 148);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 146, 0, 146, 0, 0, 100, 0, '台州', 149);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 14, 0, 14, 0, 0, 100, 0, '衢州', 150);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 55, 0, 55, 0, 0, 100, 0, '金华', 151);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 42, 0, 42, 0, 0, 100, 0, '绍兴', 152);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 46, 0, 46, 0, 0, 100, 0, '嘉兴', 153);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 10, 0, 10, 0, 0, 100, 0, '湖州', 154);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 504, 0, 503, 1, 0, 100, 0, '温州', 155);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 157, 0, 157, 0, 0, 100, 0, '宁波', 156);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '浙江', 181, 0, 181, 0, 0, 100, 0, '杭州', 157);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 787, 0, 766, 7, 14, 97, 1, 'all', 158);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 24, 0, 14, 0, 10, 58, 0, '境外输入', 159);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 65, 0, 60, 1, 4, 92, 2, '青岛', 160);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 35, 0, 33, 2, 0, 94, 6, '泰安', 161);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 47, 0, 47, 0, 0, 100, 0, '济南', 162);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 47, 0, 47, 0, 0, 100, 0, '烟台', 163);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 24, 0, 24, 0, 0, 100, 0, '枣庄', 164);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 30, 0, 29, 1, 0, 97, 3, '淄博', 165);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 44, 0, 44, 0, 0, 100, 0, '潍坊', 166);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 260, 0, 260, 0, 0, 100, 0, '济宁', 167);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 38, 0, 37, 1, 0, 97, 3, '威海', 168);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 16, 0, 16, 0, 0, 100, 0, '日照', 169);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 49, 0, 49, 0, 0, 100, 0, '临沂', 170);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 37, 0, 35, 2, 0, 95, 5, '德州', 171);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 38, 0, 38, 0, 0, 100, 0, '聊城', 172);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 15, 0, 15, 0, 0, 100, 0, '滨州', 173);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '山东', 18, 0, 18, 0, 0, 100, 0, '菏泽', 174);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 355, 0, 342, 1, 12, 96, 0, 'all', 175);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 59, 0, 47, 0, 12, 80, 0, '境外输入', 176);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 56, 0, 56, 0, 0, 100, 0, '莆田', 177);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 20, 0, 20, 0, 0, 100, 0, '漳州', 178);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 179);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 26, 0, 26, 0, 0, 100, 0, '宁德', 180);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 6, 0, 6, 0, 0, 100, 0, '龙岩', 181);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 20, 0, 20, 0, 0, 100, 0, '南平', 182);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 14, 0, 14, 0, 0, 100, 0, '三明', 183);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 47, 0, 47, 0, 0, 100, 0, '泉州', 184);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 35, 0, 35, 0, 0, 100, 0, '厦门', 185);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '福建', 72, 0, 71, 1, 0, 99, 1, '福州', 186);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 189, 0, 176, 3, 10, 93, 2, 'all', 187);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 53, 0, 45, 0, 8, 85, 0, '境外输入', 188);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 6, 0, 6, 0, 0, 100, 0, '和平区', 189);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 12, 0, 12, 0, 0, 100, 0, '河北区', 190);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 2, 0, 2, 0, 0, 100, 0, '津南区', 191);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 6, 0, 6, 0, 0, 100, 0, '北辰区', 192);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 6, 0, 6, 0, 0, 100, 0, '南开区', 193);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 15, 0, 14, 1, 0, 93, 7, '河东区', 194);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 4, 0, 4, 0, 0, 100, 0, '宁河区', 195);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 60, 0, 58, 2, 0, 97, 3, '宝坻区', 196);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 6, 0, 6, 0, 0, 100, 0, '外地来津', 197);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 3, 0, 3, 0, 0, 100, 0, '滨海新区', 198);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 4, 0, 4, 0, 0, 100, 0, '河西区', 199);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 2, 0, 2, 0, 0, 100, 0, '武清区', 200);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 4, 0, 4, 0, 0, 100, 0, '东丽区', 201);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 4, 0, 4, 0, 0, 100, 0, '西青区', 202);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '天津', 2, 0, 2, 0, 0, 100, 0, '红桥区', 203);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 653, 0, 645, 0, 8, 99, 0, 'all', 204);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 22, 0, 14, 0, 8, 64, 0, '境外输入', 205);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 48, 0, 48, 0, 0, 100, 0, '连云港', 206);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 40, 0, 40, 0, 0, 100, 0, '南通', 207);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 87, 0, 87, 0, 0, 100, 0, '苏州', 208);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 93, 0, 93, 0, 0, 100, 0, '南京', 209);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 55, 0, 55, 0, 0, 100, 0, '无锡', 210);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 79, 0, 79, 0, 0, 100, 0, '徐州', 211);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 13, 0, 13, 0, 0, 100, 0, '宿迁', 212);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 66, 0, 66, 0, 0, 100, 0, '淮安', 213);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 12, 0, 12, 0, 0, 100, 0, '镇江', 214);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 51, 0, 51, 0, 0, 100, 0, '常州', 215);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 23, 0, 23, 0, 0, 100, 0, '扬州', 216);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 27, 0, 27, 0, 0, 100, 0, '盐城', 217);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江苏', 37, 0, 37, 0, 0, 100, 0, '泰州', 218);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 106, 0, 98, 1, 7, 92, 1, 'all', 219);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 13, 0, 6, 0, 7, 46, 0, '境外输入', 220);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 6, 0, 6, 0, 0, 100, 0, '通化', 221);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 45, 0, 45, 0, 0, 100, 0, '长春', 222);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 1, 0, 1, 0, 0, 100, 0, '白城', 223);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 15, 0, 14, 1, 0, 93, 7, '四平', 224);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 6, 0, 6, 0, 0, 100, 0, '公主岭', 225);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 7, 0, 7, 0, 0, 100, 0, '辽源', 226);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 5, 0, 5, 0, 0, 100, 0, '延边', 227);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 5, 0, 5, 0, 0, 100, 0, '吉林', 228);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 2, 0, 2, 0, 0, 100, 0, '松原', 229);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '吉林', 1, 0, 1, 0, 0, 100, 0, '梅河口市', 230);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 328, 0, 317, 6, 5, 97, 2, 'all', 231);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 10, 0, 5, 0, 5, 50, 0, '境外输入', 232);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 58, 0, 57, 1, 0, 98, 2, '唐山', 233);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 41, 0, 41, 0, 0, 100, 0, '张家口', 234);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 32, 0, 32, 0, 0, 100, 0, '邯郸', 235);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 29, 0, 29, 0, 0, 100, 0, '石家庄', 236);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 7, 0, 7, 0, 0, 100, 0, '承德', 237);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 8, 0, 8, 0, 0, 100, 0, '衡水', 238);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 10, 0, 9, 1, 0, 90, 10, '秦皇岛', 239);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 23, 0, 22, 1, 0, 96, 4, '邢台', 240);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 30, 0, 30, 0, 0, 100, 0, '廊坊', 241);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 32, 0, 32, 0, 0, 100, 0, '保定', 242);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河北', 48, 0, 45, 3, 0, 94, 6, '沧州', 243);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 184, 0, 178, 2, 4, 97, 1, 'all', 244);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 10, 0, 6, 0, 4, 60, 0, '境外输入', 245);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 25, 0, 25, 0, 0, 100, 0, '昭通市', 246);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 5, 0, 5, 0, 0, 100, 0, '德宏州', 247);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 53, 0, 53, 0, 0, 100, 0, '昆明', 248);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 9, 0, 9, 0, 0, 100, 0, '保山市', 249);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 14, 0, 13, 1, 0, 93, 7, '玉溪', 250);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 9, 0, 9, 0, 0, 100, 0, '红河', 251);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 13, 0, 13, 0, 0, 100, 0, '曲靖', 252);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 13, 0, 13, 0, 0, 100, 0, '大理', 253);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 15, 0, 14, 1, 0, 93, 7, '西双版纳州', 254);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 2, 0, 2, 0, 0, 100, 0, '文山州', 255);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 4, 0, 4, 0, 0, 100, 0, '普洱', 256);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 4, 0, 4, 0, 0, 100, 0, '楚雄州', 257);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 7, 0, 7, 0, 0, 100, 0, '丽江市', 258);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '云南', 1, 0, 1, 0, 0, 100, 0, '临沧', 259);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 579, 0, 570, 6, 3, 98, 1, 'all', 260);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 3, 0, 0, 0, 3, 0, 0, '境外输入', 261);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 5, 0, 5, 0, 0, 100, 0, '涪陵区', 262);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 23, 0, 23, 0, 0, 100, 0, '綦江区', 263);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 22, 0, 22, 0, 0, 100, 0, '长寿区', 264);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 14, 0, 14, 0, 0, 100, 0, '大足区', 265);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 9, 0, 9, 0, 0, 100, 0, '沙坪坝区', 266);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 28, 0, 28, 0, 0, 100, 0, '江北区', 267);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 10, 0, 10, 0, 0, 100, 0, '丰都县', 268);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 18, 0, 18, 0, 0, 100, 0, '潼南区', 269);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 10, 0, 10, 0, 0, 100, 0, '铜梁区', 270);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 15, 0, 15, 0, 0, 100, 0, '南岸区', 271);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 21, 0, 20, 1, 0, 95, 5, '九龙坡区', 272);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 17, 0, 17, 0, 0, 100, 0, '两江新区', 273);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 118, 0, 114, 4, 0, 97, 3, '万州区', 274);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 6, 0, 6, 0, 0, 100, 0, '巴南区', 275);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 20, 0, 20, 0, 0, 100, 0, '垫江县', 276);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 25, 0, 25, 0, 0, 100, 0, '云阳县', 277);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 22, 0, 22, 0, 0, 100, 0, '奉节县', 278);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 20, 0, 20, 0, 0, 100, 0, '渝中区', 279);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 15, 0, 15, 0, 0, 100, 0, '石柱县', 280);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 9, 0, 9, 0, 0, 100, 0, '荣昌区', 281);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 17, 0, 17, 0, 0, 100, 0, '渝北区', 282);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 2, 0, 2, 0, 0, 100, 0, '彭水县', 283);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 21, 0, 21, 0, 0, 100, 0, '忠县', 284);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 21, 0, 20, 1, 0, 95, 5, '开州区', 285);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 23, 0, 23, 0, 0, 100, 0, '合川区', 286);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 7, 0, 7, 0, 0, 100, 0, '大渡口区', 287);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 14, 0, 14, 0, 0, 100, 0, '巫溪县', 288);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 10, 0, 10, 0, 0, 100, 0, '巫山县', 289);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 1, 0, 1, 0, 0, 100, 0, '万盛经开区', 290);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 1, 0, 1, 0, 0, 100, 0, '酉阳县', 291);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 9, 0, 9, 0, 0, 100, 0, '璧山区', 292);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 4, 0, 4, 0, 0, 100, 0, '高新区', 293);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 5, 0, 5, 0, 0, 100, 0, '永川区', 294);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 4, 0, 4, 0, 0, 100, 0, '江津区', 295);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 1, 0, 1, 0, 0, 100, 0, '武隆区', 296);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 4, 0, 4, 0, 0, 100, 0, '梁平区', 297);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 2, 0, 2, 0, 0, 100, 0, '城口县', 298);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 2, 0, 2, 0, 0, 100, 0, '黔江区', 299);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '重庆', 1, 0, 1, 0, 0, 100, 0, '秀山县', 300);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 561, 0, 556, 3, 2, 99, 1, 'all', 301);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 21, 0, 20, 0, 1, 95, 0, '境外输入', 302);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 145, 0, 141, 3, 1, 97, 2, '成都', 303);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 13, 0, 13, 0, 0, 100, 0, '凉山', 304);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 9, 0, 9, 0, 0, 100, 0, '自贡', 305);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 16, 0, 16, 0, 0, 100, 0, '攀枝花', 306);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 24, 0, 24, 0, 0, 100, 0, '泸州', 307);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 18, 0, 18, 0, 0, 100, 0, '德阳', 308);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 22, 0, 22, 0, 0, 100, 0, '绵阳', 309);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 6, 0, 6, 0, 0, 100, 0, '广元', 310);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 17, 0, 17, 0, 0, 100, 0, '遂宁', 311);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 22, 0, 22, 0, 0, 100, 0, '内江', 312);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 3, 0, 3, 0, 0, 100, 0, '乐山', 313);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 78, 0, 78, 0, 0, 100, 0, '甘孜', 314);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 1, 0, 1, 0, 0, 100, 0, '阿坝', 315);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 4, 0, 4, 0, 0, 100, 0, '资阳', 316);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 8, 0, 8, 0, 0, 100, 0, '眉山', 317);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 7, 0, 7, 0, 0, 100, 0, '雅安', 318);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 24, 0, 24, 0, 0, 100, 0, '巴中', 319);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 42, 0, 42, 0, 0, 100, 0, '达州', 320);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 30, 0, 30, 0, 0, 100, 0, '广安', 321);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 12, 0, 12, 0, 0, 100, 0, '宜宾', 322);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '四川', 39, 0, 39, 0, 0, 100, 0, '南充', 323);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 146, 0, 143, 2, 1, 98, 1, 'all', 324);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 1, 0, 0, 0, 1, 0, 0, '抚顺', 325);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 18, 0, 18, 0, 0, 100, 0, '大连', 326);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 21, 0, 21, 0, 0, 100, 0, '境外输入', 327);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 28, 0, 28, 0, 0, 100, 0, '沈阳', 328);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 6, 0, 5, 1, 0, 83, 17, '朝阳市', 329);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 11, 0, 11, 0, 0, 100, 0, '丹东', 330);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 12, 0, 11, 1, 0, 92, 8, '葫芦岛', 331);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 7, 0, 7, 0, 0, 100, 0, '铁岭', 332);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 4, 0, 4, 0, 0, 100, 0, '鞍山', 333);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 12, 0, 12, 0, 0, 100, 0, '锦州', 334);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 11, 0, 11, 0, 0, 100, 0, '盘锦', 335);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 8, 0, 8, 0, 0, 100, 0, '阜新', 336);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 3, 0, 3, 0, 0, 100, 0, '本溪', 337);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 3, 0, 3, 0, 0, 100, 0, '辽阳', 338);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '辽宁', 1, 0, 1, 0, 0, 100, 0, '营口', 339);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 991, 0, 984, 6, 1, 99, 1, 'all', 340);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 1, 0, 0, 0, 1, 0, 0, '境外输入', 341);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 9, 0, 9, 0, 0, 100, 0, '黄山', 342);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 17, 0, 17, 0, 0, 100, 0, '池州', 343);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 108, 0, 108, 0, 0, 100, 0, '亳州', 344);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 69, 0, 69, 0, 0, 100, 0, '六安', 345);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 41, 0, 41, 0, 0, 100, 0, '宿州', 346);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 155, 0, 155, 0, 0, 100, 0, '阜阳', 347);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 13, 0, 13, 0, 0, 100, 0, '滁州', 348);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 6, 0, 6, 0, 0, 100, 0, '宣城', 349);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 83, 0, 83, 0, 0, 100, 0, '安庆', 350);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 29, 0, 29, 0, 0, 100, 0, '铜陵', 351);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 27, 0, 27, 0, 0, 100, 0, '淮北', 352);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 38, 0, 38, 0, 0, 100, 0, '马鞍山', 353);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 27, 0, 27, 0, 0, 100, 0, '淮南', 354);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 160, 0, 155, 5, 0, 97, 3, '蚌埠', 355);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 34, 0, 34, 0, 0, 100, 0, '芜湖', 356);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '安徽', 174, 0, 173, 1, 0, 99, 1, '合肥', 357);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 168, 0, 162, 6, 0, 96, 4, 'all', 358);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 39, 0, 39, 0, 0, 100, 0, '海口', 359);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 15, 0, 14, 1, 0, 93, 7, '儋州', 360);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 54, 0, 53, 1, 0, 98, 2, '三亚', 361);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 3, 0, 2, 1, 0, 67, 33, '东方', 362);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 13, 0, 13, 0, 0, 100, 0, '万宁', 363);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 9, 0, 8, 1, 0, 89, 11, '澄迈县', 364);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 7, 0, 7, 0, 0, 100, 0, '昌江县', 365);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 3, 0, 3, 0, 0, 100, 0, '保亭', 366);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 6, 0, 5, 1, 0, 83, 17, '琼海', 367);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 6, 0, 6, 0, 0, 100, 0, '临高县', 368);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 4, 0, 4, 0, 0, 100, 0, '陵水县', 369);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 2, 0, 2, 0, 0, 100, 0, '乐东', 370);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 3, 0, 3, 0, 0, 100, 0, '文昌', 371);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 3, 0, 2, 1, 0, 67, 33, '定安县', 372);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '海南', 1, 0, 1, 0, 0, 100, 0, '琼中县', 373);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 75, 0, 75, 0, 0, 100, 0, 'all', 374);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 3, 0, 3, 0, 0, 100, 0, '境外输入', 375);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 34, 0, 34, 0, 0, 100, 0, '银川', 376);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 28, 0, 28, 0, 0, 100, 0, '吴忠', 377);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 5, 0, 5, 0, 0, 100, 0, '固原', 378);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 3, 0, 3, 0, 0, 100, 0, '中卫', 379);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 1, 0, 1, 0, 0, 100, 0, '石嘴山', 380);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '宁夏', 1, 0, 1, 0, 0, 100, 0, '宁东管委会', 381);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 254, 0, 252, 2, 0, 99, 1, 'all', 382);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 2, 0, 2, 0, 0, 100, 0, '境外输入', 383);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 44, 0, 43, 1, 0, 98, 2, '北海', 384);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 19, 0, 19, 0, 0, 100, 0, '防城港', 385);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 11, 0, 11, 0, 0, 100, 0, '来宾', 386);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 24, 0, 24, 0, 0, 100, 0, '柳州', 387);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 55, 0, 55, 0, 0, 100, 0, '南宁', 388);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 28, 0, 27, 1, 0, 96, 4, '河池', 389);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 32, 0, 32, 0, 0, 100, 0, '桂林', 390);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 11, 0, 11, 0, 0, 100, 0, '玉林', 391);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 8, 0, 8, 0, 0, 100, 0, '钦州', 392);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 8, 0, 8, 0, 0, 100, 0, '贵港', 393);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 5, 0, 5, 0, 0, 100, 0, '梧州', 394);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 3, 0, 3, 0, 0, 100, 0, '百色', 395);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '广西', 4, 0, 4, 0, 0, 100, 0, '贺州', 396);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 139, 0, 137, 2, 0, 99, 1, 'all', 397);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 47, 0, 47, 0, 0, 100, 0, '境外输入', 398);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 37, 0, 35, 2, 0, 95, 5, '兰州', 399);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 9, 0, 9, 0, 0, 100, 0, '定西', 400);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 401);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 9, 0, 9, 0, 0, 100, 0, '平凉', 402);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 3, 0, 3, 0, 0, 100, 0, '庆阳', 403);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 4, 0, 4, 0, 0, 100, 0, '白银', 404);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 8, 0, 8, 0, 0, 100, 0, '甘南州', 405);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 12, 0, 12, 0, 0, 100, 0, '天水', 406);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 4, 0, 4, 0, 0, 100, 0, '陇南', 407);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 3, 0, 3, 0, 0, 100, 0, '临夏', 408);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 2, 0, 2, 0, 0, 100, 0, '张掖', 409);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '甘肃', 1, 0, 1, 0, 0, 100, 0, '金昌', 410);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 1276, 0, 1254, 22, 0, 98, 2, 'all', 411);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 36, 0, 36, 0, 0, 100, 0, '漯河', 412);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 3, 0, 3, 0, 0, 100, 0, '境外输入', 413);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 0, 0, 0, 0, 0, 0, 0, '地区待确认', 414);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 76, 0, 75, 1, 0, 99, 1, '周口', 415);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 156, 0, 153, 3, 0, 98, 2, '南阳', 416);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 274, 0, 272, 2, 0, 99, 1, '信阳', 417);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 157, 0, 152, 5, 0, 97, 3, '郑州', 418);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 5, 0, 5, 0, 0, 100, 0, '济源示范区', 419);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 53, 0, 53, 0, 0, 100, 0, '安阳', 420);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 57, 0, 54, 3, 0, 95, 5, '新乡', 421);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 39, 0, 38, 1, 0, 97, 3, '许昌', 422);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 91, 0, 88, 3, 0, 97, 3, '商丘', 423);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 139, 0, 139, 0, 0, 100, 0, '驻马店', 424);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 32, 0, 31, 1, 0, 97, 3, '焦作', 425);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 26, 0, 26, 0, 0, 100, 0, '开封', 426);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 58, 0, 57, 1, 0, 98, 2, '平顶山', 427);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 31, 0, 30, 1, 0, 97, 3, '洛阳', 428);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 17, 0, 17, 0, 0, 100, 0, '濮阳', 429);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 19, 0, 19, 0, 0, 100, 0, '鹤壁', 430);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '河南', 7, 0, 6, 1, 0, 86, 14, '三门峡', 431);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 937, 0, 936, 1, 0, 100, 0, 'all', 432);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 2, 0, 2, 0, 0, 100, 0, '境外输入', 433);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 118, 0, 118, 0, 0, 100, 0, '九江', 434);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 230, 0, 230, 0, 0, 100, 0, '南昌', 435);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 123, 0, 123, 0, 0, 100, 0, '上饶', 436);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 130, 0, 130, 0, 0, 100, 0, '新余', 437);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 72, 0, 72, 0, 0, 100, 0, '抚州', 438);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 22, 0, 22, 0, 0, 100, 0, '吉安', 439);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 76, 0, 75, 1, 0, 99, 1, '赣州', 440);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 33, 0, 33, 0, 0, 100, 0, '萍乡', 441);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 106, 0, 106, 0, 0, 100, 0, '宜春', 442);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 18, 0, 18, 0, 0, 100, 0, '鹰潭', 443);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 6, 0, 6, 0, 0, 100, 0, '景德镇', 444);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '江西', 1, 0, 1, 0, 0, 100, 0, '赣江新区', 445);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 76, 0, 73, 3, 0, 96, 4, 'all', 446);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 4, 0, 3, 1, 0, 75, 25, '兵团第九师', 447);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 3, 0, 3, 0, 0, 100, 0, '吐鲁番', 448);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 23, 0, 23, 0, 0, 100, 0, '乌鲁木齐', 449);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 4, 0, 4, 0, 0, 100, 0, '昌吉州', 450);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 4, 0, 3, 1, 0, 75, 25, '第八师石河子', 451);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 10, 0, 9, 1, 0, 90, 10, '兵团第四师', 452);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 18, 0, 18, 0, 0, 100, 0, '伊犁州', 453);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 2, 0, 2, 0, 0, 100, 0, '六师五家渠', 454);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 3, 0, 3, 0, 0, 100, 0, '兵团第十二师', 455);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 3, 0, 3, 0, 0, 100, 0, '巴州', 456);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 1, 0, 1, 0, 0, 100, 0, '第七师', 457);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '新疆', 1, 0, 1, 0, 0, 100, 0, '阿克苏', 458);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '西藏', 1, 0, 1, 0, 0, 100, 0, 'all', 459);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '西藏', 1, 0, 1, 0, 0, 100, 0, '拉萨', 460);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 1019, 0, 1015, 4, 0, 100, 0, 'all', 461);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 1, 0, 1, 0, 0, 100, 0, '境外输入', 462);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 8, 0, 8, 0, 0, 100, 0, '湘西自治州', 463);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 76, 0, 76, 0, 0, 100, 0, '娄底', 464);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 40, 0, 40, 0, 0, 100, 0, '怀化', 465);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 44, 0, 44, 0, 0, 100, 0, '永州', 466);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 39, 0, 39, 0, 0, 100, 0, '郴州', 467);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 60, 0, 60, 0, 0, 100, 0, '益阳', 468);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 5, 0, 5, 0, 0, 100, 0, '张家界', 469);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 82, 0, 82, 0, 0, 100, 0, '常德', 470);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 156, 0, 155, 1, 0, 99, 1, '岳阳', 471);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 102, 0, 101, 1, 0, 99, 1, '邵阳', 472);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 36, 0, 36, 0, 0, 100, 0, '湘潭', 473);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 80, 0, 80, 0, 0, 100, 0, '株洲', 474);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 48, 0, 48, 0, 0, 100, 0, '衡阳', 475);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '湖南', 242, 0, 240, 2, 0, 99, 1, '长沙', 476);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 147, 0, 145, 2, 0, 99, 1, 'all', 477);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 1, 0, 1, 0, 0, 100, 0, '境外输入', 478);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 36, 0, 35, 1, 0, 97, 3, '贵阳', 479);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 32, 0, 32, 0, 0, 100, 0, '遵义', 480);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 10, 0, 9, 1, 0, 90, 10, '六盘水', 481);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 23, 0, 23, 0, 0, 100, 0, '毕节', 482);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 17, 0, 17, 0, 0, 100, 0, '黔南州', 483);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 4, 0, 4, 0, 0, 100, 0, '安顺', 484);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 10, 0, 10, 0, 0, 100, 0, '黔东南州', 485);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 10, 0, 10, 0, 0, 100, 0, '铜仁', 486);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '贵州', 4, 0, 4, 0, 0, 100, 0, '黔西南州', 487);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '青海', 18, 0, 18, 0, 0, 100, 0, 'all', 488);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '青海', 3, 0, 3, 0, 0, 100, 0, '海北州', 489);
INSERT INTO `data_china` VALUES ('2020-04-22 19:58:10', '中国', '青海', 15, 0, 15, 0, 0, 100, 0, '西宁', 490);

-- ----------------------------
-- Table structure for data_global
-- ----------------------------
DROP TABLE IF EXISTS `data_global`;
CREATE TABLE `data_global`  (
  `updateTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `continent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `confirm` int(255) NULL DEFAULT NULL,
  `heal` int(255) NULL DEFAULT NULL,
  `dead` int(255) NULL DEFAULT NULL,
  `nowConfirm` int(255) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 351 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_global
-- ----------------------------
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '全球', 'all', '', 2508339, 618758, 175070, 1714511, 1);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', 'all', 143071, 4856, 2513, 135702, 2);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '纽约', 253195, 29593, 18822, 204780, 3);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '新泽西', 88806, 730, 4520, 83556, 4);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '马萨诸塞', 39643, 1299, 1809, 36535, 5);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '宾夕法尼亚', 34005, 466, 1357, 32182, 6);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '加利福尼亚', 33840, 3337, 1228, 29275, 7);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '密歇根州', 32000, 3237, 2468, 26295, 8);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '伊利诺伊', 31508, 645, 1349, 29514, 9);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '佛罗里达', 27058, 174, 823, 26061, 10);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '路易斯安那州', 24523, 0, 1328, 23195, 11);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '德克萨斯', 20087, 5707, 520, 13860, 12);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '康涅狄格', 19815, 63, 1331, 18421, 13);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '乔治亚', 19398, 340, 774, 18284, 14);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '马里兰', 13684, 917, 582, 12185, 15);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '俄亥俄州', 12919, 448, 509, 11962, 16);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '华盛顿州', 12486, 1782, 658, 10046, 17);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '印第安纳', 11688, 1559, 577, 9552, 18);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '科罗拉多', 10112, 559, 449, 9104, 19);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '弗吉尼亚', 8990, 721, 300, 7969, 20);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '田纳西', 7238, 3575, 152, 3511, 21);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '北卡罗来纳', 6969, 1234, 220, 5515, 22);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '密苏里州', 5904, 547, 215, 5142, 23);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '退伍军人事务部', 5534, 0, 339, 5195, 24);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '美军', 5335, 1332, 22, 3981, 25);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '罗德岛', 5090, 0, 155, 4935, 26);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '阿拉巴马州', 5078, 0, 164, 4914, 27);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '亚利桑那', 5068, 6, 191, 4871, 28);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '威斯康星', 4541, 196, 234, 4111, 29);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '密西西比州', 4512, 0, 169, 4343, 30);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '南卡罗来纳州', 4439, 0, 124, 4315, 31);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '内华达', 3830, 1958, 163, 1709, 32);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '犹他', 3213, 218, 28, 2967, 33);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '爱荷华州', 3159, 1171, 79, 1909, 34);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '肯塔基', 3050, 1174, 154, 1722, 35);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '华盛顿特区', 2927, 630, 105, 2192, 36);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '特拉华州', 2745, 495, 72, 2178, 37);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '俄克拉荷马', 2680, 1614, 143, 923, 38);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '明尼苏达', 2470, 1160, 143, 1167, 39);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '堪萨斯州', 2065, 444, 102, 1519, 40);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '阿肯色州', 1971, 726, 42, 1203, 41);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '新墨西哥州', 1971, 465, 58, 1448, 42);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '俄勒冈', 1956, 42, 75, 1839, 43);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '爱达荷州', 1736, 660, 48, 1028, 44);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '南达科塔州', 1685, 709, 7, 969, 45);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '内布拉斯加', 1648, 0, 33, 1615, 46);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '新罕布什尔', 1447, 521, 42, 884, 47);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '纳瓦霍族保留地', 1321, 0, 45, 1276, 48);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '波多黎各', 1252, 0, 63, 1189, 49);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '西弗吉尼亚', 908, 265, 26, 617, 50);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '缅因州', 875, 435, 35, 405, 51);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '联邦监狱局', 816, 238, 22, 556, 52);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '佛蒙特', 816, 0, 38, 778, 53);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '北达科他州', 627, 189, 13, 425, 54);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '夏威夷', 584, 423, 10, 151, 55);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '蒙大拿', 433, 243, 10, 180, 56);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '怀俄明州', 429, 290, 2, 137, 57);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '阿拉斯加州', 321, 153, 9, 159, 58);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '关岛', 136, 97, 5, 34, 59);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '至尊公主号邮轮', 103, 0, 3, 100, 60);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '美属维尔京群岛', 53, 46, 3, 4, 61);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '钻石公主号邮轮', 49, 0, 0, 49, 62);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '北马里亚纳群岛', 14, 11, 2, 1, 63);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '撤回侨民', 4, 0, 0, 4, 64);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '美国', '地区待确认', 0, 0, 0, 0, 65);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '英国', 'all', 104145, 375, 13759, 90011, 66);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '英国', '英格兰', 96117, 370, 15606, 80141, 67);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '英国', '苏格兰', 8672, 0, 915, 7757, 68);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '英国', '威尔士', 7850, 0, 609, 7241, 69);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '英国', '北爱尔兰', 2758, 0, 207, 2551, 70);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', 'all', 97689, 13030, 10779, 73880, 71);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '伦巴第', 67931, 21374, 12579, 33978, 72);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '艾米利亚-罗马涅', 23092, 6701, 3147, 13244, 73);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '皮埃蒙特', 21955, 4659, 2485, 14811, 74);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '威尼托', 16404, 5173, 1154, 10077, 75);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '托斯卡纳', 8603, 1295, 686, 6622, 76);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '利古里亚', 6764, 2311, 990, 3463, 77);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '拉齐奥', 5895, 1130, 363, 4402, 78);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '马尔凯', 5877, 1825, 834, 3218, 79);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '坎帕尼亚', 4135, 872, 317, 2946, 80);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '阿普利亚', 3622, 459, 351, 2812, 81);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '特伦蒂诺-上阿迪杰', 3614, 1329, 376, 1909, 82);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '西西里', 2835, 370, 206, 2259, 83);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '弗留利-威尼斯-朱利亚', 2792, 1229, 241, 1322, 84);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '阿布鲁佐', 2667, 329, 271, 2067, 85);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '博尔扎诺', 2410, 623, 251, 1536, 86);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '翁布里亚', 1353, 886, 60, 407, 87);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '撒丁岛', 1236, 306, 93, 837, 88);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '瓦莱达奥斯塔', 1093, 445, 126, 522, 89);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '卡拉布里亚', 1047, 152, 76, 819, 90);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '巴西利卡塔', 350, 81, 24, 245, 91);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '莫利塞', 282, 51, 18, 213, 92);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '意大利', '地区待确认', 0, 0, 0, 0, 93);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '西班牙', 'all', 85195, 14709, 7340, 63146, 94);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '德国', 'all', 63929, 9211, 560, 54158, 95);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', 'all', 44606, 14656, 2898, 27052, 96);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '地区待确认', 19857, 13911, 2757, 3189, 97);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '德黑兰省', 5098, 0, 0, 5098, 98);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '伊斯法罕省', 1979, 0, 0, 1979, 99);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '马赞德兰省', 1700, 0, 0, 1700, 100);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '吉兰省', 1191, 0, 0, 1191, 101);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '库姆省', 1178, 0, 0, 1178, 102);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '厄尔布尔士省', 1177, 0, 0, 1177, 103);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '中央省', 882, 0, 0, 882, 104);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '拉扎维霍拉桑省', 858, 0, 0, 858, 105);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '东阿塞拜疆省', 813, 0, 0, 813, 106);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '亚兹德省', 725, 0, 0, 725, 107);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '加兹温省', 669, 0, 0, 669, 108);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '塞姆南省', 645, 0, 0, 645, 109);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '法尔斯省', 505, 0, 0, 505, 110);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '洛雷斯坦省', 476, 0, 0, 476, 111);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '胡泽斯坦省', 444, 0, 0, 444, 112);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '西阿塞拜疆省', 395, 0, 0, 395, 113);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '赞詹省', 394, 0, 0, 394, 114);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '古列斯坦省', 391, 0, 0, 391, 115);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '阿尔达比勒省', 289, 0, 0, 289, 116);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '哈马丹省', 243, 0, 0, 243, 117);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '库尔德斯坦省', 238, 0, 0, 238, 118);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '伊拉姆省', 183, 0, 0, 183, 119);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '南霍拉桑省', 178, 0, 0, 178, 120);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '克尔曼沙省', 175, 0, 0, 175, 121);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '克尔曼省', 169, 0, 0, 169, 122);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '北霍拉桑省', 165, 0, 0, 165, 123);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '霍尔木兹甘省', 148, 0, 0, 148, 124);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '锡斯坦俾路支斯坦省', 134, 0, 0, 134, 125);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '科吉卢耶博韦艾哈迈德省', 73, 0, 0, 73, 126);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '恰马哈勒巴赫蒂亚里省', 68, 0, 0, 68, 127);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊朗', '布什尔省', 55, 0, 0, 55, 128);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '法国', 'all', 40751, 7238, 2612, 30901, 129);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '瑞士', 'all', 15526, 1823, 312, 13391, 130);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '奥地利', 'all', 14476, 8986, 410, 5080, 131);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '比利时', 'all', 11899, 1527, 513, 9859, 132);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '荷兰', 'all', 11814, 253, 864, 10697, 133);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', 'all', 9976, 5828, 169, 3979, 134);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '大邱', 6836, 5827, 165, 844, 135);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '庆尚北道', 1363, 1079, 51, 233, 136);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '京畿道', 658, 404, 14, 240, 137);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '首尔', 628, 322, 2, 304, 138);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '地区待确认', 423, 50, 0, 373, 139);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '忠清南道', 141, 122, 0, 19, 140);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '釜山', 134, 115, 3, 16, 141);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '庆尚南道', 117, 89, 0, 28, 142);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '仁川', 92, 57, 0, 35, 143);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '江原道', 53, 31, 2, 20, 144);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '世宗', 46, 33, 0, 13, 145);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '忠清北道', 45, 39, 0, 6, 146);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '蔚山', 43, 35, 1, 7, 147);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '大田', 40, 27, 0, 13, 148);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '光州', 30, 22, 0, 8, 149);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '全罗北道', 17, 9, 0, 8, 150);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '全罗南道', 15, 8, 0, 7, 151);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '韩国', '济州岛', 13, 8, 0, 5, 152);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '土耳其', 'all', 9217, 105, 131, 8981, 153);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '葡萄牙', 'all', 6408, 43, 140, 6225, 154);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '加拿大', 'all', 6320, 466, 65, 5789, 155);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '塞尔维亚', 'all', 4465, 118, 94, 4253, 156);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '以色列', 'all', 4347, 139, 15, 4193, 157);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '挪威', 'all', 4284, 7, 26, 4251, 158);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '巴西', 'all', 4256, 6, 136, 4114, 159);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '大洋洲', '澳大利亚', 'all', 4245, 244, 18, 3983, 160);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '瑞典', 'all', 3700, 16, 110, 3574, 161);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '捷克', 'all', 2817, 11, 16, 2790, 162);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '丹麦', 'all', 2724, 73, 72, 2579, 163);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '马来西亚', 'all', 2626, 479, 37, 2110, 164);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '爱尔兰', 'all', 2615, 5, 46, 2564, 165);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '智利', 'all', 2449, 156, 8, 2285, 166);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '卢森堡', 'all', 1988, 40, 22, 1926, 167);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '罗马尼亚', 'all', 1952, 206, 46, 1700, 168);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '厄瓜多尔', 'all', 1924, 3, 58, 1863, 169);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '波兰', 'all', 1905, 7, 26, 1872, 170);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '俄罗斯', 'all', 1836, 66, 9, 1761, 171);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', 'all', 1724, 372, 52, 1300, 172);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '东京', 3439, 0, 5, 3434, 173);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '大阪府', 1380, 0, 2, 1378, 174);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '神奈川县', 836, 0, 3, 833, 175);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '千叶县', 746, 0, 0, 746, 176);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '埼玉县', 726, 0, 1, 725, 177);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '福冈县', 563, 0, 0, 563, 178);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '兵库县', 560, 0, 7, 553, 179);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '北海道', 495, 0, 4, 491, 180);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '爱知县', 449, 0, 19, 430, 181);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '京都府', 275, 0, 0, 275, 182);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '石川县', 199, 0, 0, 199, 183);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '茨城县', 151, 0, 0, 151, 184);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '岐阜县', 147, 0, 0, 147, 185);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '检疫等工作人员', 142, 0, 0, 142, 186);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '广岛县', 142, 0, 0, 142, 187);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '富山县', 141, 0, 0, 141, 188);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '群马县', 134, 0, 1, 133, 189);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '冲绳县', 130, 0, 0, 130, 190);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '福井县', 119, 0, 0, 119, 191);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '滋贺县', 88, 0, 0, 88, 192);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '宫城县', 84, 0, 0, 84, 193);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '奈良县', 75, 0, 0, 75, 194);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '高知县', 70, 0, 1, 69, 195);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '山形县', 65, 0, 0, 65, 196);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '福岛县', 65, 0, 0, 65, 197);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '新潟县', 61, 0, 0, 61, 198);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '大分县', 60, 0, 0, 60, 199);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '长野县', 57, 0, 0, 57, 200);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '静冈县', 57, 0, 0, 57, 201);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '栃木县', 52, 0, 0, 52, 202);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '长崎县', 51, 0, 0, 51, 203);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '山梨县', 51, 0, 0, 51, 204);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '和歌山县', 49, 0, 1, 48, 205);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '爱媛县', 47, 0, 0, 47, 206);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '三重县', 43, 0, 0, 43, 207);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '熊本县', 43, 0, 0, 43, 208);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '山口县', 31, 0, 0, 31, 209);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '香川县', 28, 0, 0, 28, 210);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '青森县', 22, 0, 0, 22, 211);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '冈山县', 19, 0, 0, 19, 212);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '佐贺县', 18, 0, 0, 18, 213);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '宫崎县', 17, 0, 0, 17, 214);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '岛根县', 16, 0, 0, 16, 215);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '秋田县', 16, 0, 0, 16, 216);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '武汉包机回国者', 14, 0, 0, 14, 217);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '鹿儿岛县', 10, 0, 0, 10, 218);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '德岛县', 5, 0, 0, 5, 219);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '鸟取县', 3, 0, 0, 3, 220);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '日本本土', '地区待确认', 0, 1424, 251, -1675, 221);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '巴基斯坦', 'all', 1625, 29, 20, 1576, 222);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '菲律宾', 'all', 1546, 42, 78, 1426, 223);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '泰国', 'all', 1524, 127, 9, 1388, 224);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '沙特阿拉伯', 'all', 1453, 115, 8, 1330, 225);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '印度尼西亚', 'all', 1414, 75, 122, 1217, 226);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '南非', 'all', 1280, 31, 2, 1247, 227);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '芬兰', 'all', 1240, 10, 11, 1219, 228);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '希腊', 'all', 1156, 52, 38, 1066, 229);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '印度', 'all', 1071, 99, 29, 943, 230);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '冰岛', 'all', 1020, 135, 2, 883, 231);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '墨西哥', 'all', 993, 4, 20, 969, 232);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '巴拿马', 'all', 989, 4, 24, 961, 233);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '多米尼加', 'all', 901, 4, 42, 855, 234);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '新加坡', 'all', 879, 228, 3, 648, 235);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '秘鲁', 'all', 852, 16, 18, 818, 236);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '阿根廷', 'all', 820, 72, 80, 668, 237);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '克罗地亚', 'all', 713, 55, 6, 652, 238);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '其他', '钻石号邮轮', 'all', 712, 603, 11, 98, 239);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '哥伦比亚', 'all', 702, 10, 10, 682, 240);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '斯洛文尼亚', 'all', 684, 10, 9, 665, 241);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '爱沙尼亚', 'all', 645, 20, 1, 624, 242);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '卡塔尔', 'all', 634, 48, 1, 585, 243);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '阿联酋', 'all', 611, 61, 5, 545, 244);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '埃及', 'all', 609, 132, 40, 437, 245);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '大洋洲', '新西兰', 'all', 589, 56, 1, 532, 246);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '阿塞拜疆', 'all', 584, 32, 5, 547, 247);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '伊拉克', 'all', 547, 143, 42, 362, 248);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '摩洛哥', 'all', 516, 13, 27, 476, 249);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '巴林', 'all', 515, 279, 4, 232, 250);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '阿尔及利亚', 'all', 511, 32, 31, 448, 251);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '亚美尼亚', 'all', 481, 30, 3, 448, 252);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '乌克兰', 'all', 480, 6, 11, 463, 253);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '立陶宛', 'all', 460, 1, 7, 452, 254);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '匈牙利', 'all', 447, 34, 15, 398, 255);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '黎巴嫩', 'all', 446, 32, 11, 403, 256);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '拉脱维亚', 'all', 347, 1, 0, 346, 257);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '斯洛伐克', 'all', 336, 2, 0, 334, 258);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '安道尔', 'all', 334, 6, 6, 322, 259);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '波黑', 'all', 324, 8, 6, 310, 260);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '保加利亚', 'all', 313, 4, 3, 306, 261);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '突尼斯', 'all', 312, 2, 8, 302, 262);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '乌拉圭', 'all', 309, 6, 1, 302, 263);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '哈萨克斯坦', 'all', 302, 21, 1, 280, 264);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '哥斯达黎加', 'all', 295, 3, 2, 290, 265);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '科威特', 'all', 266, 72, 0, 194, 266);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '约旦', 'all', 259, 18, 3, 238, 267);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '北马其顿', 'all', 259, 3, 6, 250, 268);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '摩尔多瓦', 'all', 231, 2, 2, 227, 269);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '圣马力诺', 'all', 224, 6, 22, 196, 270);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '布基纳法索', 'all', 222, 23, 12, 187, 271);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '塞浦路斯', 'all', 214, 15, 6, 193, 272);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '阿尔巴尼亚', 'all', 212, 33, 10, 169, 273);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '越南', 'all', 194, 52, 0, 142, 274);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '阿曼', 'all', 179, 29, 0, 150, 275);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '科特迪瓦', 'all', 165, 4, 1, 160, 276);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '塞内加尔', 'all', 162, 28, 0, 134, 277);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '加纳', 'all', 152, 2, 5, 145, 278);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '马耳他', 'all', 149, 2, 0, 147, 279);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '乌兹别克斯坦', 'all', 149, 7, 2, 140, 280);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '阿富汗', 'all', 145, 2, 4, 139, 281);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '喀麦隆', 'all', 142, 5, 6, 131, 282);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '洪都拉斯', 'all', 139, 3, 1, 135, 283);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '文莱', 'all', 127, 38, 1, 88, 284);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '斯里兰卡', 'all', 122, 11, 1, 110, 285);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '古巴', 'all', 119, 4, 3, 112, 286);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '委内瑞拉', 'all', 119, 39, 2, 78, 287);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '尼日利亚', 'all', 111, 3, 1, 107, 288);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '毛里求斯', 'all', 107, 0, 2, 105, 289);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '巴勒斯坦', 'all', 106, 18, 1, 87, 290);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '柬埔寨', 'all', 103, 21, 0, 82, 291);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '格鲁吉亚', 'all', 98, 18, 0, 80, 292);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '白俄罗斯', 'all', 94, 32, 0, 62, 293);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '黑山', 'all', 85, 0, 1, 84, 294);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '吉尔吉斯斯坦', 'all', 84, 0, 0, 84, 295);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '刚果（金）', 'all', 81, 3, 8, 70, 296);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '玻利维亚', 'all', 81, 0, 0, 81, 297);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '卢旺达', 'all', 70, 0, 0, 70, 298);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '巴拉圭', 'all', 64, 1, 3, 60, 299);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '列支敦士登公国', 'all', 56, 0, 0, 56, 300);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '肯尼亚', 'all', 50, 1, 1, 48, 301);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '孟加拉', 'all', 49, 19, 5, 25, 302);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '摩纳哥', 'all', 43, 1, 0, 42, 303);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '马达加斯加', 'all', 43, 0, 0, 43, 304);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '赞比亚', 'all', 35, 0, 0, 35, 305);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '危地马拉', 'all', 34, 10, 1, 23, 306);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '乌干达', 'all', 33, 0, 0, 33, 307);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '多哥', 'all', 30, 7, 1, 22, 308);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '圭亚那', 'all', 28, 6, 1, 21, 309);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '马里', 'all', 25, 0, 2, 23, 310);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '吉布提', 'all', 25, 0, 0, 25, 311);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '埃塞俄比亚', 'all', 23, 2, 0, 21, 312);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '缅甸', 'all', 20, 0, 1, 19, 313);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '坦桑尼亚', 'all', 19, 1, 0, 18, 314);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '刚果（布）', 'all', 19, 0, 0, 19, 315);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '尼日尔', 'all', 18, 0, 1, 17, 316);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '马尔代夫', 'all', 17, 11, 0, 6, 317);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '几内亚', 'all', 16, 1, 0, 15, 318);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '赤道几内亚', 'all', 14, 0, 0, 14, 319);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '蒙古', 'all', 12, 0, 0, 12, 320);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '厄立特里亚', 'all', 12, 0, 0, 12, 321);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '纳米比亚', 'all', 11, 0, 0, 11, 322);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '叙利亚', 'all', 10, 0, 1, 9, 323);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '斯威士兰', 'all', 9, 0, 0, 9, 324);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '南美洲', '苏里南', 'all', 8, 0, 0, 8, 325);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '莫桑比克', 'all', 8, 0, 0, 8, 326);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '海地', 'all', 8, 0, 0, 8, 327);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '塞舌尔', 'all', 8, 0, 0, 8, 328);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '老挝', 'all', 8, 0, 0, 8, 329);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '加蓬', 'all', 7, 0, 1, 6, 330);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '津巴布韦', 'all', 7, 0, 1, 6, 331);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '安提瓜和巴布达', 'all', 7, 0, 0, 7, 332);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '安哥拉', 'all', 7, 0, 2, 5, 333);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '佛得角', 'all', 6, 0, 1, 5, 334);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '中非共和国', 'all', 6, 0, 0, 6, 335);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '苏丹', 'all', 6, 0, 1, 5, 336);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '贝宁', 'all', 6, 0, 0, 6, 337);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '欧洲', '梵蒂冈', 'all', 6, 0, 0, 6, 338);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '尼泊尔', 'all', 5, 1, 0, 4, 339);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '乍得', 'all', 5, 0, 0, 5, 340);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '毛里塔尼亚', 'all', 5, 2, 0, 3, 341);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '尼加拉瓜', 'all', 4, 0, 1, 3, 342);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '不丹', 'all', 4, 0, 0, 4, 343);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '冈比亚', 'all', 4, 0, 1, 3, 344);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '索马里', 'all', 3, 0, 0, 3, 345);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '利比里亚', 'all', 3, 0, 0, 3, 346);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '北美洲', '伯利兹', 'all', 2, 0, 0, 2, 347);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '非洲', '几内亚比绍', 'all', 2, 0, 0, 2, 348);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '大洋洲', '巴布亚新几内亚', 'all', 1, 0, 0, 1, 349);
INSERT INTO `data_global` VALUES ('2020-04-22 22:56:02', '亚洲', '东帝汶', 'all', 1, 0, 0, 1, 350);

-- ----------------------------
-- Table structure for g_history
-- ----------------------------
DROP TABLE IF EXISTS `g_history`;
CREATE TABLE `g_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `confirm` int(11) NULL DEFAULT NULL,
  `dead` int(11) NULL DEFAULT NULL,
  `heal` int(11) NULL DEFAULT NULL,
  `newAddConfirm` int(11) NULL DEFAULT NULL,
  `deadRate` float(255, 0) NULL DEFAULT NULL,
  `healRate` float(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_history
-- ----------------------------
INSERT INTO `g_history` VALUES (1, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '01.28', 57, 0, 3, 19, 0, 5);
INSERT INTO `g_history` VALUES (2, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '01.29', 74, 0, 3, 12, 0, 4);
INSERT INTO `g_history` VALUES (3, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '01.30', 98, 0, 6, 14, 0, 6);
INSERT INTO `g_history` VALUES (4, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '01.31', 124, 0, 11, 24, 0, 9);
INSERT INTO `g_history` VALUES (5, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.01', 139, 0, 11, 26, 0, 8);
INSERT INTO `g_history` VALUES (6, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.02', 149, 1, 11, 14, 1, 7);
INSERT INTO `g_history` VALUES (7, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.03', 154, 1, 12, 7, 1, 8);
INSERT INTO `g_history` VALUES (8, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.04', 177, 1, 19, 6, 1, 11);
INSERT INTO `g_history` VALUES (9, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.05', 201, 1, 21, 32, 0, 10);
INSERT INTO `g_history` VALUES (10, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.06', 225, 1, 25, 25, 0, 11);
INSERT INTO `g_history` VALUES (11, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.07', 273, 1, 27, 54, 0, 10);
INSERT INTO `g_history` VALUES (12, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.08', 299, 1, 29, 18, 0, 10);
INSERT INTO `g_history` VALUES (13, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.09', 313, 1, 30, 19, 0, 10);
INSERT INTO `g_history` VALUES (14, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.10', 385, 1, 36, 12, 0, 9);
INSERT INTO `g_history` VALUES (15, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.11', 397, 1, 44, 76, 0, 11);
INSERT INTO `g_history` VALUES (16, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.12', 444, 1, 50, 46, 0, 11);
INSERT INTO `g_history` VALUES (17, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.13', 505, 2, 56, 6, 0, 11);
INSERT INTO `g_history` VALUES (18, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.14', 516, 2, 59, 58, 0, 11);
INSERT INTO `g_history` VALUES (19, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.15', 601, 3, 61, 21, 0, 10);
INSERT INTO `g_history` VALUES (20, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.16', 687, 3, 84, 157, 0, 12);
INSERT INTO `g_history` VALUES (21, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.17', 800, 3, 88, 111, 0, 11);
INSERT INTO `g_history` VALUES (22, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.18', 904, 3, 114, 10, 0, 13);
INSERT INTO `g_history` VALUES (23, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.19', 1018, 3, 127, 120, 0, 12);
INSERT INTO `g_history` VALUES (24, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.20', 1096, 8, 127, 149, 1, 12);
INSERT INTO `g_history` VALUES (25, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.21', 1231, 11, 142, 127, 1, 12);
INSERT INTO `g_history` VALUES (26, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.22', 1528, 14, 154, 182, 1, 10);
INSERT INTO `g_history` VALUES (27, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.23', 1895, 22, 155, 386, 1, 8);
INSERT INTO `g_history` VALUES (28, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.24', 2286, 32, 173, 300, 1, 8);
INSERT INTO `g_history` VALUES (29, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.25', 2575, 40, 192, 365, 2, 7);
INSERT INTO `g_history` VALUES (30, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.26', 3085, 51, 220, 459, 2, 7);
INSERT INTO `g_history` VALUES (31, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.27', 3945, 64, 310, 736, 2, 8);
INSERT INTO `g_history` VALUES (32, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.28', 4947, 80, 360, 1030, 2, 7);
INSERT INTO `g_history` VALUES (33, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '02.29', 6305, 95, 455, 1309, 2, 7);
INSERT INTO `g_history` VALUES (34, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.01', 7342, 112, 1020, 1161, 2, 14);
INSERT INTO `g_history` VALUES (35, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.02', 9628, 152, 558, 1589, 2, 6);
INSERT INTO `g_history` VALUES (36, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.03', 12047, 184, 895, 1800, 2, 7);
INSERT INTO `g_history` VALUES (37, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.04', 13897, 236, 909, 2078, 2, 7);
INSERT INTO `g_history` VALUES (38, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.05', 16234, 296, 1087, 4166, 2, 7);
INSERT INTO `g_history` VALUES (39, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.06', 19488, 366, 1566, 2743, 2, 8);
INSERT INTO `g_history` VALUES (40, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.07', 23013, 452, 1730, 3641, 2, 8);
INSERT INTO `g_history` VALUES (41, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.08', 26959, 561, 3208, 3706, 2, 12);
INSERT INTO `g_history` VALUES (42, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.09', 30814, 766, 3614, 4063, 2, 12);
INSERT INTO `g_history` VALUES (43, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.10', 35796, 977, 4212, 3972, 3, 12);
INSERT INTO `g_history` VALUES (44, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.11', 41212, 1232, 5274, 4596, 3, 13);
INSERT INTO `g_history` VALUES (45, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.12', 48743, 1577, 5779, 6702, 3, 12);
INSERT INTO `g_history` VALUES (46, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.13', 58493, 1944, 6544, 7485, 3, 11);
INSERT INTO `g_history` VALUES (47, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.14', 67414, 2354, 7947, 9747, 3, 12);
INSERT INTO `g_history` VALUES (48, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.15', 79582, 2765, 9304, 11511, 3, 12);
INSERT INTO `g_history` VALUES (49, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.16', 92523, 3473, 10447, 14579, 4, 11);
INSERT INTO `g_history` VALUES (50, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.17', 106190, 4276, 11680, 11714, 4, 11);
INSERT INTO `g_history` VALUES (51, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.18', 122946, 4988, 13496, 15084, 4, 11);
INSERT INTO `g_history` VALUES (52, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.19', 147281, 6078, 15402, 17886, 4, 10);
INSERT INTO `g_history` VALUES (53, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.20', 169551, 6952, 17687, 24119, 4, 10);
INSERT INTO `g_history` VALUES (54, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.21', 195941, 8087, 20216, 28260, 4, 10);
INSERT INTO `g_history` VALUES (55, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.22', 235102, 10391, 23721, 32658, 4, 10);
INSERT INTO `g_history` VALUES (56, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.23', 270017, 12125, 26708, 32677, 4, 10);
INSERT INTO `g_history` VALUES (57, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.24', 313330, 14001, 29295, 39642, 4, 9);
INSERT INTO `g_history` VALUES (58, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.25', 355599, 16391, 35306, 40603, 5, 10);
INSERT INTO `g_history` VALUES (59, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.26', 407265, 18872, 41192, 49092, 5, 10);
INSERT INTO `g_history` VALUES (60, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.27', 465884, 21829, 50267, 46354, 5, 11);
INSERT INTO `g_history` VALUES (61, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.28', 536355, 25279, 59191, 62362, 5, 11);
INSERT INTO `g_history` VALUES (62, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.29', 598686, 28682, 67858, 63031, 5, 11);
INSERT INTO `g_history` VALUES (63, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.30', 658696, 31868, 78275, 58305, 5, 12);
INSERT INTO `g_history` VALUES (64, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '03.31', 662138, 32395, 79048, 57402, 5, 12);
INSERT INTO `g_history` VALUES (65, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.02', 662453, 32406, 79648, 72699, 5, 12);
INSERT INTO `g_history` VALUES (66, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.03', 662459, 32407, 79648, 75745, 5, 12);
INSERT INTO `g_history` VALUES (67, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.05', 662770, 32408, 79654, 81932, 5, 12);
INSERT INTO `g_history` VALUES (68, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.13', 665615, 32472, 79757, 76274, 5, 12);
INSERT INTO `g_history` VALUES (69, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.14', 666039, 32472, 79757, 71674, 5, 12);
INSERT INTO `g_history` VALUES (70, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.15', 666450, 32486, 79757, 70013, 5, 12);
INSERT INTO `g_history` VALUES (71, '2020-04-22 22:56:02', '2020-04-22 23:43:15', '04.17', 753222, 44754, 88303, 82546, 6, 12);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('771bead4-6cd9-492d-be05-50ff925b90b2', 8, 1, '2020-04-19 16:32:36', '2020-04-19 16:32:36');
INSERT INTO `token` VALUES ('edd5d1c1-ac00-4f22-9fa1-1a1accb43d86', 8, 2, '2020-04-19 16:32:36', '2020-04-19 16:32:36');
INSERT INTO `token` VALUES ('c213970b-525b-43d7-8a54-ccad35052673', 8, 3, '2020-04-19 17:35:55', '2020-04-19 17:35:55');
INSERT INTO `token` VALUES ('6523055c-d8bd-453d-b5db-c8368f377d80', 8, 4, '2020-04-19 17:35:55', '2020-04-19 17:35:55');
INSERT INTO `token` VALUES ('dc196e5c-bcd3-4da2-aa86-599f173fe0a6', 8, 5, '2020-04-19 17:37:07', '2020-04-19 17:37:07');
INSERT INTO `token` VALUES ('b5d3251e-ab39-401e-8526-f953e99a3120', 8, 6, '2020-04-19 17:37:07', '2020-04-19 17:37:07');
INSERT INTO `token` VALUES ('f3a5511e-0980-49a3-bb1e-cb86fa736fc9', 8, 7, '2020-04-19 17:37:07', '2020-04-19 17:37:07');
INSERT INTO `token` VALUES ('1393a798-8364-4995-be6d-aa3970e7d8a0', 8, 8, '2020-04-19 17:37:07', '2020-04-19 17:37:07');
INSERT INTO `token` VALUES ('42c67c66-dc7b-46c2-942d-65e7bd7aa18d', 8, 9, '2020-04-19 18:46:30', '2020-04-19 18:46:30');
INSERT INTO `token` VALUES ('048eebcb-f1b9-441a-8107-c0d91db16c9e', 8, 10, '2020-04-19 18:46:30', '2020-04-19 18:46:30');
INSERT INTO `token` VALUES ('b114c36e-cff1-4c07-837d-d6f67fe3cc9b', 8, 11, '2020-04-19 18:53:40', '2020-04-19 18:53:40');
INSERT INTO `token` VALUES ('9ffce96d-5dc9-4974-bce3-e76aa78f707e', 8, 12, '2020-04-19 18:54:51', '2020-04-19 18:54:51');
INSERT INTO `token` VALUES ('b36f6dac-5448-4c41-8526-eed9e5907f74', 8, 13, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('36c8dca5-6c80-40f5-a8b7-5c3145ef78bc', 8, 14, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('7ba394c2-975b-4d64-a760-6c563fb07bb5', 8, 15, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('6c87b2b9-a008-41c2-9f73-b6ac3d962f54', 8, 16, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('4cc810f5-8710-41a3-bdc8-a185dd10d7b5', 8, 17, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('efe43f3d-c00b-4d39-8f13-f702a502a1be', 8, 18, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('84283d27-08fd-4064-9025-f689e6b6c696', 8, 19, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('82037337-9af0-416c-83ad-d6b98821246b', 8, 20, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('dc087b17-6ae5-4be5-9646-ac5dd94dea93', 8, 21, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('4cdf0ebf-50c4-4c67-b710-abe0704dedc8', 8, 22, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('1c40132e-6bc9-4728-94ba-6d8c44cdf584', 8, 23, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('12606eec-2b5d-49c7-8e7c-fb900c4ba261', 8, 24, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('511eb6e0-2b9a-49f1-9b5c-d9a89a61e864', 8, 25, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('5aa9ad8f-e12f-411b-92e3-be50e7f6ff40', 8, 26, '2020-04-19 18:55:21', '2020-04-19 18:55:21');
INSERT INTO `token` VALUES ('b2e03683-d285-4af3-8ce3-4dd8f28e5d76', 8, 27, '2020-04-20 22:43:25', '2020-04-20 22:43:25');
INSERT INTO `token` VALUES ('7ec69877-8993-43c0-85bd-afc4559486c0', 8, 28, '2020-04-20 23:48:00', '2020-04-20 23:48:00');
INSERT INTO `token` VALUES ('516588cb-926a-46c7-b366-9871b197c8e0', 8, 29, '2020-04-20 23:48:00', '2020-04-20 23:48:00');
INSERT INTO `token` VALUES ('87cb1e69-9f1f-4eea-9b09-0ee53fd63535', 8, 30, '2020-04-20 23:48:00', '2020-04-20 23:48:00');
INSERT INTO `token` VALUES ('08e4cbda-50e6-4cdb-bc1b-912789964ed1', 8, 31, '2020-04-21 13:18:58', '2020-04-21 13:18:58');
INSERT INTO `token` VALUES ('293392a7-231d-42e2-b777-1702ba4ca13e', 8, 32, '2020-04-21 13:18:58', '2020-04-21 13:18:58');
INSERT INTO `token` VALUES ('81ecf628-296c-49da-93aa-4f43e7a1fb84', 8, 33, '2020-04-21 13:18:58', '2020-04-21 13:18:58');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `views` int(255) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, '2020-04-19 16:20:45', '2020-04-19 16:20:42', 3, 'Test1', 'This is a Test', 1, 1, 'www.baidu.com');
INSERT INTO `topic` VALUES (2, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '新型肺炎实时动态1668363', '新型肺炎实时动态1668363', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%9E%8B%E8%82%BA%E7%82%8E%E5%AE%9E%E6%97%B6%E5%8A%A8%E6%80%81&sa=osari_hotword_1&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (3, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '新增输入主要来自接壤国家970372', '新增输入主要来自接壤国家970372', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%A2%9E%E8%BE%93%E5%85%A5%E4%B8%BB%E8%A6%81%E6%9D%A5%E8%87%AA%E6%8E%A5%E5%A3%A4%E5%9B%BD%E5%AE%B6&sa=osari_hotword_2&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (4, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '研究称美新冠早期死亡被低估885251', '研究称美新冠早期死亡被低估885251', 1, 1, 'https://m.baidu.com/s?word=%E7%A0%94%E7%A9%B6%E7%A7%B0%E7%BE%8E%E6%96%B0%E5%86%A0%E6%97%A9%E6%9C%9F%E6%AD%BB%E4%BA%A1%E8%A2%AB%E4%BD%8E%E4%BC%B0&sa=osari_hotword_3&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (5, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '世卫辟谣新冠病毒起源自实验室790372', '世卫辟谣新冠病毒起源自实验室790372', 1, 1, 'https://m.baidu.com/s?word=%E4%B8%96%E5%8D%AB%E8%BE%9F%E8%B0%A3%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E8%B5%B7%E6%BA%90%E8%87%AA%E5%AE%9E%E9%AA%8C%E5%AE%A4&sa=osari_hotword_4&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (6, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '美国新冠病毒感染病例超82万690237', '美国新冠病毒感染病例超82万690237', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E6%84%9F%E6%9F%93%E7%97%85%E4%BE%8B%E8%B6%8582%E4%B8%87&sa=osari_hotword_5&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (7, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '哈尔滨医院如何层层失守460275', '哈尔滨医院如何层层失守460275', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8C%BB%E9%99%A2%E5%A6%82%E4%BD%95%E5%B1%82%E5%B1%82%E5%A4%B1%E5%AE%88&sa=osari_hotword_6&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (8, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '哈尔滨卫健委披露院内感染原因390271', '哈尔滨卫健委披露院内感染原因390271', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8D%AB%E5%81%A5%E5%A7%94%E6%8A%AB%E9%9C%B2%E9%99%A2%E5%86%85%E6%84%9F%E6%9F%93%E5%8E%9F%E5%9B%A0&sa=osari_hotword_7&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (9, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '钟南山说我们挺过来了352183', '钟南山说我们挺过来了352183', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%AF%B4%E6%88%91%E4%BB%AC%E6%8C%BA%E8%BF%87%E6%9D%A5%E4%BA%86&sa=osari_hotword_8&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (10, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '女子扬言有肺炎朝乘务员吐口水290372', '女子扬言有肺炎朝乘务员吐口水290372', 1, 1, 'https://m.baidu.com/s?word=%E5%A5%B3%E5%AD%90%E6%89%AC%E8%A8%80%E6%9C%89%E8%82%BA%E7%82%8E%E6%9C%9D%E4%B9%98%E5%8A%A1%E5%91%98%E5%90%90%E5%8F%A3%E6%B0%B4&sa=osari_hotword_9&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (11, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '被打记者手机内容遭清空283256', '被打记者手机内容遭清空283256', 1, 1, 'https://m.baidu.com/s?word=%E8%A2%AB%E6%89%93%E8%AE%B0%E8%80%85%E6%89%8B%E6%9C%BA%E5%86%85%E5%AE%B9%E9%81%AD%E6%B8%85%E7%A9%BA&sa=osari_hotword_10&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (12, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '钟南山赞成现在复课270271', '钟南山赞成现在复课270271', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%B5%9E%E6%88%90%E7%8E%B0%E5%9C%A8%E5%A4%8D%E8%AF%BE&sa=osari_hotword_11&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (13, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '美国入冬或迎第2波更严重疫情260262', '美国入冬或迎第2波更严重疫情260262', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E5%85%A5%E5%86%AC%E6%88%96%E8%BF%8E%E7%AC%AC2%E6%B3%A2%E6%9B%B4%E4%B8%A5%E9%87%8D%E7%96%AB%E6%83%85&sa=osari_hotword_12&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (14, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '特朗普宣布美国暂停移民60天250275', '特朗普宣布美国暂停移民60天250275', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E5%AE%A3%E5%B8%83%E7%BE%8E%E5%9B%BD%E6%9A%82%E5%81%9C%E7%A7%BB%E6%B0%9160%E5%A4%A9&sa=osari_hotword_13&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (15, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '印度总统府约500人居家隔离230274', '印度总统府约500人居家隔离230274', 1, 1, 'https://m.baidu.com/s?word=%E5%8D%B0%E5%BA%A6%E6%80%BB%E7%BB%9F%E5%BA%9C%E7%BA%A6500%E4%BA%BA%E5%B1%85%E5%AE%B6%E9%9A%94%E7%A6%BB&sa=osari_hotword_14&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (16, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '全球确诊病例超250万例220373', '全球确诊病例超250万例220373', 1, 1, 'https://m.baidu.com/s?word=%E5%85%A8%E7%90%83%E7%A1%AE%E8%AF%8A%E7%97%85%E4%BE%8B%E8%B6%85250%E4%B8%87%E4%BE%8B&sa=osari_hotword_15&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (17, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '特朗普点名哈佛大学还钱214362', '特朗普点名哈佛大学还钱214362', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E7%82%B9%E5%90%8D%E5%93%88%E4%BD%9B%E5%A4%A7%E5%AD%A6%E8%BF%98%E9%92%B1&sa=osari_hotword_16&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (18, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '纽约殡仪馆堆满遗体纸箱203745', '纽约殡仪馆堆满遗体纸箱203745', 1, 1, 'https://m.baidu.com/s?word=%E7%BA%BD%E7%BA%A6%E6%AE%A1%E4%BB%AA%E9%A6%86%E5%A0%86%E6%BB%A1%E9%81%97%E4%BD%93%E7%BA%B8%E7%AE%B1&sa=osari_hotword_17&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (19, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, 'SM将举办线上付费演唱会190372', 'SM将举办线上付费演唱会190372', 1, 1, 'https://m.baidu.com/s?word=SM%E5%B0%86%E4%B8%BE%E5%8A%9E%E7%BA%BF%E4%B8%8A%E4%BB%98%E8%B4%B9%E6%BC%94%E5%94%B1%E4%BC%9A&sa=osari_hotword_18&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (20, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '北京体育健身场所开放安排189037', '北京体育健身场所开放安排189037', 1, 1, 'https://m.baidu.com/s?word=%E5%8C%97%E4%BA%AC%E4%BD%93%E8%82%B2%E5%81%A5%E8%BA%AB%E5%9C%BA%E6%89%80%E5%BC%80%E6%94%BE%E5%AE%89%E6%8E%92&sa=osari_hotword_19&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (21, '2020-04-22 18:25:58', '2020-04-22 18:25:58', 0, '张文宏回应不能喝粥180382', '张文宏回应不能喝粥180382', 1, 1, 'https://m.baidu.com/s?word=%E5%BC%A0%E6%96%87%E5%AE%8F%E5%9B%9E%E5%BA%94%E4%B8%8D%E8%83%BD%E5%96%9D%E7%B2%A5&sa=osari_hotword_20&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (22, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '新型肺炎实时动态1668363', '新型肺炎实时动态1668363', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%9E%8B%E8%82%BA%E7%82%8E%E5%AE%9E%E6%97%B6%E5%8A%A8%E6%80%81&sa=osari_hotword_1&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (23, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '新增输入主要来自接壤国家970372', '新增输入主要来自接壤国家970372', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%A2%9E%E8%BE%93%E5%85%A5%E4%B8%BB%E8%A6%81%E6%9D%A5%E8%87%AA%E6%8E%A5%E5%A3%A4%E5%9B%BD%E5%AE%B6&sa=osari_hotword_2&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (24, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '研究称美新冠早期死亡被低估885251', '研究称美新冠早期死亡被低估885251', 1, 1, 'https://m.baidu.com/s?word=%E7%A0%94%E7%A9%B6%E7%A7%B0%E7%BE%8E%E6%96%B0%E5%86%A0%E6%97%A9%E6%9C%9F%E6%AD%BB%E4%BA%A1%E8%A2%AB%E4%BD%8E%E4%BC%B0&sa=osari_hotword_3&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (25, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '世卫辟谣新冠病毒起源自实验室790372', '世卫辟谣新冠病毒起源自实验室790372', 1, 1, 'https://m.baidu.com/s?word=%E4%B8%96%E5%8D%AB%E8%BE%9F%E8%B0%A3%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E8%B5%B7%E6%BA%90%E8%87%AA%E5%AE%9E%E9%AA%8C%E5%AE%A4&sa=osari_hotword_4&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (26, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '美国新冠病毒感染病例超82万690237', '美国新冠病毒感染病例超82万690237', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E6%84%9F%E6%9F%93%E7%97%85%E4%BE%8B%E8%B6%8582%E4%B8%87&sa=osari_hotword_5&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (27, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '哈尔滨医院如何层层失守460275', '哈尔滨医院如何层层失守460275', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8C%BB%E9%99%A2%E5%A6%82%E4%BD%95%E5%B1%82%E5%B1%82%E5%A4%B1%E5%AE%88&sa=osari_hotword_6&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (28, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '哈尔滨卫健委披露院内感染原因390271', '哈尔滨卫健委披露院内感染原因390271', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8D%AB%E5%81%A5%E5%A7%94%E6%8A%AB%E9%9C%B2%E9%99%A2%E5%86%85%E6%84%9F%E6%9F%93%E5%8E%9F%E5%9B%A0&sa=osari_hotword_7&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (29, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '钟南山说我们挺过来了352183', '钟南山说我们挺过来了352183', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%AF%B4%E6%88%91%E4%BB%AC%E6%8C%BA%E8%BF%87%E6%9D%A5%E4%BA%86&sa=osari_hotword_8&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (30, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '女子扬言有肺炎朝乘务员吐口水290372', '女子扬言有肺炎朝乘务员吐口水290372', 1, 1, 'https://m.baidu.com/s?word=%E5%A5%B3%E5%AD%90%E6%89%AC%E8%A8%80%E6%9C%89%E8%82%BA%E7%82%8E%E6%9C%9D%E4%B9%98%E5%8A%A1%E5%91%98%E5%90%90%E5%8F%A3%E6%B0%B4&sa=osari_hotword_9&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (31, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '被打记者手机内容遭清空283256', '被打记者手机内容遭清空283256', 1, 1, 'https://m.baidu.com/s?word=%E8%A2%AB%E6%89%93%E8%AE%B0%E8%80%85%E6%89%8B%E6%9C%BA%E5%86%85%E5%AE%B9%E9%81%AD%E6%B8%85%E7%A9%BA&sa=osari_hotword_10&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (32, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '钟南山赞成现在复课270271', '钟南山赞成现在复课270271', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%B5%9E%E6%88%90%E7%8E%B0%E5%9C%A8%E5%A4%8D%E8%AF%BE&sa=osari_hotword_11&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (33, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '美国入冬或迎第2波更严重疫情260262', '美国入冬或迎第2波更严重疫情260262', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E5%85%A5%E5%86%AC%E6%88%96%E8%BF%8E%E7%AC%AC2%E6%B3%A2%E6%9B%B4%E4%B8%A5%E9%87%8D%E7%96%AB%E6%83%85&sa=osari_hotword_12&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (34, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '特朗普宣布美国暂停移民60天250275', '特朗普宣布美国暂停移民60天250275', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E5%AE%A3%E5%B8%83%E7%BE%8E%E5%9B%BD%E6%9A%82%E5%81%9C%E7%A7%BB%E6%B0%9160%E5%A4%A9&sa=osari_hotword_13&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (35, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '印度总统府约500人居家隔离230274', '印度总统府约500人居家隔离230274', 1, 1, 'https://m.baidu.com/s?word=%E5%8D%B0%E5%BA%A6%E6%80%BB%E7%BB%9F%E5%BA%9C%E7%BA%A6500%E4%BA%BA%E5%B1%85%E5%AE%B6%E9%9A%94%E7%A6%BB&sa=osari_hotword_14&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (36, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '全球确诊病例超250万例220373', '全球确诊病例超250万例220373', 1, 1, 'https://m.baidu.com/s?word=%E5%85%A8%E7%90%83%E7%A1%AE%E8%AF%8A%E7%97%85%E4%BE%8B%E8%B6%85250%E4%B8%87%E4%BE%8B&sa=osari_hotword_15&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (37, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '特朗普点名哈佛大学还钱214362', '特朗普点名哈佛大学还钱214362', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E7%82%B9%E5%90%8D%E5%93%88%E4%BD%9B%E5%A4%A7%E5%AD%A6%E8%BF%98%E9%92%B1&sa=osari_hotword_16&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (38, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '纽约殡仪馆堆满遗体纸箱203745', '纽约殡仪馆堆满遗体纸箱203745', 1, 1, 'https://m.baidu.com/s?word=%E7%BA%BD%E7%BA%A6%E6%AE%A1%E4%BB%AA%E9%A6%86%E5%A0%86%E6%BB%A1%E9%81%97%E4%BD%93%E7%BA%B8%E7%AE%B1&sa=osari_hotword_17&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (39, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, 'SM将举办线上付费演唱会190372', 'SM将举办线上付费演唱会190372', 1, 1, 'https://m.baidu.com/s?word=SM%E5%B0%86%E4%B8%BE%E5%8A%9E%E7%BA%BF%E4%B8%8A%E4%BB%98%E8%B4%B9%E6%BC%94%E5%94%B1%E4%BC%9A&sa=osari_hotword_18&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (40, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '北京体育健身场所开放安排189037', '北京体育健身场所开放安排189037', 1, 1, 'https://m.baidu.com/s?word=%E5%8C%97%E4%BA%AC%E4%BD%93%E8%82%B2%E5%81%A5%E8%BA%AB%E5%9C%BA%E6%89%80%E5%BC%80%E6%94%BE%E5%AE%89%E6%8E%92&sa=osari_hotword_19&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (41, '2020-04-22 23:41:36', '2020-04-22 23:41:36', 0, '张文宏回应不能喝粥180382', '张文宏回应不能喝粥180382', 1, 1, 'https://m.baidu.com/s?word=%E5%BC%A0%E6%96%87%E5%AE%8F%E5%9B%9E%E5%BA%94%E4%B8%8D%E8%83%BD%E5%96%9D%E7%B2%A5&sa=osari_hotword_20&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (42, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '新型肺炎实时动态1668363', '新型肺炎实时动态1668363', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%9E%8B%E8%82%BA%E7%82%8E%E5%AE%9E%E6%97%B6%E5%8A%A8%E6%80%81&sa=osari_hotword_1&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (43, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '新增输入主要来自接壤国家970372', '新增输入主要来自接壤国家970372', 1, 1, 'https://m.baidu.com/s?word=%E6%96%B0%E5%A2%9E%E8%BE%93%E5%85%A5%E4%B8%BB%E8%A6%81%E6%9D%A5%E8%87%AA%E6%8E%A5%E5%A3%A4%E5%9B%BD%E5%AE%B6&sa=osari_hotword_2&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (44, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '研究称美新冠早期死亡被低估885251', '研究称美新冠早期死亡被低估885251', 1, 1, 'https://m.baidu.com/s?word=%E7%A0%94%E7%A9%B6%E7%A7%B0%E7%BE%8E%E6%96%B0%E5%86%A0%E6%97%A9%E6%9C%9F%E6%AD%BB%E4%BA%A1%E8%A2%AB%E4%BD%8E%E4%BC%B0&sa=osari_hotword_3&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (45, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '世卫辟谣新冠病毒起源自实验室790372', '世卫辟谣新冠病毒起源自实验室790372', 1, 1, 'https://m.baidu.com/s?word=%E4%B8%96%E5%8D%AB%E8%BE%9F%E8%B0%A3%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E8%B5%B7%E6%BA%90%E8%87%AA%E5%AE%9E%E9%AA%8C%E5%AE%A4&sa=osari_hotword_4&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (46, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '美国新冠病毒感染病例超82万690237', '美国新冠病毒感染病例超82万690237', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E6%96%B0%E5%86%A0%E7%97%85%E6%AF%92%E6%84%9F%E6%9F%93%E7%97%85%E4%BE%8B%E8%B6%8582%E4%B8%87&sa=osari_hotword_5&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (47, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '哈尔滨医院如何层层失守460275', '哈尔滨医院如何层层失守460275', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8C%BB%E9%99%A2%E5%A6%82%E4%BD%95%E5%B1%82%E5%B1%82%E5%A4%B1%E5%AE%88&sa=osari_hotword_6&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (48, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '哈尔滨卫健委披露院内感染原因390271', '哈尔滨卫健委披露院内感染原因390271', 1, 1, 'https://m.baidu.com/s?word=%E5%93%88%E5%B0%94%E6%BB%A8%E5%8D%AB%E5%81%A5%E5%A7%94%E6%8A%AB%E9%9C%B2%E9%99%A2%E5%86%85%E6%84%9F%E6%9F%93%E5%8E%9F%E5%9B%A0&sa=osari_hotword_7&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (49, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '钟南山说我们挺过来了352183', '钟南山说我们挺过来了352183', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%AF%B4%E6%88%91%E4%BB%AC%E6%8C%BA%E8%BF%87%E6%9D%A5%E4%BA%86&sa=osari_hotword_8&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (50, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '女子扬言有肺炎朝乘务员吐口水290372', '女子扬言有肺炎朝乘务员吐口水290372', 1, 1, 'https://m.baidu.com/s?word=%E5%A5%B3%E5%AD%90%E6%89%AC%E8%A8%80%E6%9C%89%E8%82%BA%E7%82%8E%E6%9C%9D%E4%B9%98%E5%8A%A1%E5%91%98%E5%90%90%E5%8F%A3%E6%B0%B4&sa=osari_hotword_9&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (51, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '被打记者手机内容遭清空283256', '被打记者手机内容遭清空283256', 1, 1, 'https://m.baidu.com/s?word=%E8%A2%AB%E6%89%93%E8%AE%B0%E8%80%85%E6%89%8B%E6%9C%BA%E5%86%85%E5%AE%B9%E9%81%AD%E6%B8%85%E7%A9%BA&sa=osari_hotword_10&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (52, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '钟南山赞成现在复课270271', '钟南山赞成现在复课270271', 1, 1, 'https://m.baidu.com/s?word=%E9%92%9F%E5%8D%97%E5%B1%B1%E8%B5%9E%E6%88%90%E7%8E%B0%E5%9C%A8%E5%A4%8D%E8%AF%BE&sa=osari_hotword_11&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (53, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '美国入冬或迎第2波更严重疫情260262', '美国入冬或迎第2波更严重疫情260262', 1, 1, 'https://m.baidu.com/s?word=%E7%BE%8E%E5%9B%BD%E5%85%A5%E5%86%AC%E6%88%96%E8%BF%8E%E7%AC%AC2%E6%B3%A2%E6%9B%B4%E4%B8%A5%E9%87%8D%E7%96%AB%E6%83%85&sa=osari_hotword_12&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (54, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '特朗普宣布美国暂停移民60天250275', '特朗普宣布美国暂停移民60天250275', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E5%AE%A3%E5%B8%83%E7%BE%8E%E5%9B%BD%E6%9A%82%E5%81%9C%E7%A7%BB%E6%B0%9160%E5%A4%A9&sa=osari_hotword_13&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (55, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '印度总统府约500人居家隔离230274', '印度总统府约500人居家隔离230274', 1, 1, 'https://m.baidu.com/s?word=%E5%8D%B0%E5%BA%A6%E6%80%BB%E7%BB%9F%E5%BA%9C%E7%BA%A6500%E4%BA%BA%E5%B1%85%E5%AE%B6%E9%9A%94%E7%A6%BB&sa=osari_hotword_14&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (56, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '全球确诊病例超250万例220373', '全球确诊病例超250万例220373', 1, 1, 'https://m.baidu.com/s?word=%E5%85%A8%E7%90%83%E7%A1%AE%E8%AF%8A%E7%97%85%E4%BE%8B%E8%B6%85250%E4%B8%87%E4%BE%8B&sa=osari_hotword_15&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (57, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '特朗普点名哈佛大学还钱214362', '特朗普点名哈佛大学还钱214362', 1, 1, 'https://m.baidu.com/s?word=%E7%89%B9%E6%9C%97%E6%99%AE%E7%82%B9%E5%90%8D%E5%93%88%E4%BD%9B%E5%A4%A7%E5%AD%A6%E8%BF%98%E9%92%B1&sa=osari_hotword_16&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (58, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '纽约殡仪馆堆满遗体纸箱203745', '纽约殡仪馆堆满遗体纸箱203745', 1, 1, 'https://m.baidu.com/s?word=%E7%BA%BD%E7%BA%A6%E6%AE%A1%E4%BB%AA%E9%A6%86%E5%A0%86%E6%BB%A1%E9%81%97%E4%BD%93%E7%BA%B8%E7%AE%B1&sa=osari_hotword_17&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (59, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, 'SM将举办线上付费演唱会190372', 'SM将举办线上付费演唱会190372', 1, 1, 'https://m.baidu.com/s?word=SM%E5%B0%86%E4%B8%BE%E5%8A%9E%E7%BA%BF%E4%B8%8A%E4%BB%98%E8%B4%B9%E6%BC%94%E5%94%B1%E4%BC%9A&sa=osari_hotword_18&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (60, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '北京体育健身场所开放安排189037', '北京体育健身场所开放安排189037', 1, 1, 'https://m.baidu.com/s?word=%E5%8C%97%E4%BA%AC%E4%BD%93%E8%82%B2%E5%81%A5%E8%BA%AB%E5%9C%BA%E6%89%80%E5%BC%80%E6%94%BE%E5%AE%89%E6%8E%92&sa=osari_hotword_19&mmsuse=sarifrom@osari_map');
INSERT INTO `topic` VALUES (61, '2020-04-22 23:43:14', '2020-04-22 23:43:14', 0, '张文宏回应不能喝粥180382', '张文宏回应不能喝粥180382', 1, 1, 'https://m.baidu.com/s?word=%E5%BC%A0%E6%96%87%E5%AE%8F%E5%9B%9E%E5%BA%94%E4%B8%8D%E8%83%BD%E5%96%9D%E7%B2%A5&sa=osari_hotword_20&mmsuse=sarifrom@osari_map');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updateTime` datetime(0) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('yehuo12138', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 1, '2020-04-11 19:06:09', '2020-04-11 19:06:09');
INSERT INTO `user` VALUES ('newuser', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 2, '2020-04-12 22:20:39', '2020-04-12 22:20:39');
INSERT INTO `user` VALUES ('newOne', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 3, '2020-04-12 22:35:40', '2020-04-12 22:35:40');
INSERT INTO `user` VALUES ('username1', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 4, '2020-04-12 22:37:35', '2020-04-12 22:37:35');
INSERT INTO `user` VALUES ('user2', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 5, '2020-04-12 22:47:38', '2020-04-12 22:47:38');
INSERT INTO `user` VALUES ('user3', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 6, '2020-04-12 22:47:38', '2020-04-12 22:47:38');
INSERT INTO `user` VALUES ('user4', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 7, '2020-04-12 22:47:38', '2020-04-12 22:47:38');
INSERT INTO `user` VALUES ('user0', '36f5f81c35faf28dd8957d81f7a07ded6fd2a68db558bda9a5ca4904638ebfe4', '这个人很懒，什么都没有填', '/images/default_head_pic.jpg', 8, '2020-04-18 15:42:37', '2020-04-18 15:42:37');

SET FOREIGN_KEY_CHECKS = 1;
