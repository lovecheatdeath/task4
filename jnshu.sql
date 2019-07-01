/*
 Navicat Premium Data Transfer

 Source Server         : task1
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:3306
 Source Schema         : jnshu

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 01/07/2019 17:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `create_at` bigint(13) NULL DEFAULT NULL,
  `update_at` bigint(13) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, '111', '111', 1, 123456789135, 1234567891489);

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(2) NULL DEFAULT NULL COMMENT '职业方向',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业名称',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `needed` int(6) NULL DEFAULT NULL,
  `studing` int(11) NULL DEFAULT NULL COMMENT '在学人数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES (1, 1, 'images/web.png', 1, 'Web前端工程师', 'WEB工程师的必备技能，唯一零门槛入门的技术职业。', 231, 446);
INSERT INTO `profession` VALUES (2, 1, 'images/andriod.png', 3, 'Android', '这个世界上最流行的手机操作系统，Android大显神威。', 3213, 775);
INSERT INTO `profession` VALUES (3, 1, 'images/java.png', 2, 'java', 'IT界的亲儿子，从出世到现在一直坚挺的中坚职业。', 1244, 354);
INSERT INTO `profession` VALUES (4, 1, 'images/python.png', 4, 'python', '一种简单而又强大的语言，它合理地结合了高性能与使编写程序变得简单有趣的特色', 123, 775);
INSERT INTO `profession` VALUES (5, 1, 'images/ios.png', 3, 'ios', '最近几年互联网前端开发的新贵，高冷职业的代表。', 221, 321);
INSERT INTO `profession` VALUES (6, 1, 'images/yunying.png', 5, '运行', '线上线下，好的运营让产品与用户形影不离。', 222, 123);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profession` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` int(6) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `create_at` bigint(13) NULL DEFAULT NULL,
  `update_at` bigint(13) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_salary`(`salary`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '安洁莉娜', 18, 'images/4.png', '我是来自叙拉古的信使，安心院安洁莉娜。嗯，叫我安洁莉娜就可以了。我能用xxxx来称呼博士你吗？', 'caster', 7000, 1, NULL, NULL);
INSERT INTO `student` VALUES (2, '夜魔', 14, 'images/1.png', '夜魔……啊，这只是我的代号。我的名字是葛罗莉亚，如果能叫我的名字，我会很高兴的……我很害怕，那个代号......', 'caster', 9000, 1, NULL, NULL);
INSERT INTO `student` VALUES (3, '白金', 16, 'images/2.png', '卡西米尔无胄盟刺客，依约而来。怎么称呼？嗯……就叫我白金吧，请多关照咯', 'archer', 10000, 1, NULL, NULL);
INSERT INTO `student` VALUES (4, '斯卡蒂', 21, 'images/3.png', '斯卡蒂，赏金猎人。你真要签下我？我可是那种，会给你带来灾祸的人哦。', 'saber', 8000, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
