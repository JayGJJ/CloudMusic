/*
 Navicat Premium Data Transfer

 Source Server         : admin
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : cloudmusic

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 04/01/2024 10:45:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `artist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (4, '《怪咖》', '薛之谦', '2021-01-01');
INSERT INTO `album` VALUES (5, '《惊叹号》', '周杰伦', '2021-02-01');
INSERT INTO `album` VALUES (6, '《sunkis》', '宋秉勤', '2021-03-01');
INSERT INTO `album` VALUES (7, '《痒》', '黄龄', '2021-04-01');
INSERT INTO `album` VALUES (8, '《尘》', '薛之谦', '2021-05-01');
INSERT INTO `album` VALUES (9, '《素颜》', '许嵩', '2021-06-01');
INSERT INTO `album` VALUES (10, '《SISTAR》', '杜雅璇', '2021-07-01');
INSERT INTO `album` VALUES (11, '《汪苏泷原创合集》', '汪苏泷', '2021-08-01');
INSERT INTO `album` VALUES (12, '《许嵩早期单曲合集》', '许嵩', '2021-09-01');
INSERT INTO `album` VALUES (13, '《星河万里》', '山治', '2021-10-01');
INSERT INTO `album` VALUES (14, '《可》', '薛之谦', '2021-11-01');
INSERT INTO `album` VALUES (15, '《G.E.M.》', '邓紫棋', '2021-12-01');
INSERT INTO `album` VALUES (16, '《就忘了吧》', '1K', '2022-01-01');
INSERT INTO `album` VALUES (17, '《爱你》', '王心凌', '2022-02-01');
INSERT INTO `album` VALUES (18, '《闪耀》', '网络歌手', '2022-03-01');
INSERT INTO `album` VALUES (19, '《善变》', '王靖雯', '2022-04-01');
INSERT INTO `album` VALUES (20, '《大海》', '张雨生', '2022-05-01');
INSERT INTO `album` VALUES (21, '《Zyboy》', '忠雨', '2022-06-01');
INSERT INTO `album` VALUES (22, '《我的世界》', '旺季稳', '2022-07-01');
INSERT INTO `album` VALUES (23, '《英雄联盟：双城之战》', '陈奕迅', '2022-08-01');
INSERT INTO `album` VALUES (24, '《If I Am》', 'Mr.', '2022-09-01');
INSERT INTO `album` VALUES (25, '《INDUSTRY BABY》', 'Lil Nax X/Jack Harlow', '2022-10-01');
INSERT INTO `album` VALUES (26, '《无赖》', '功夫胖KungFuPen/KEY.L刘聪', '2022-11-01');
INSERT INTO `album` VALUES (27, '《演.说.家》', '王以太', '0002-12-01');
INSERT INTO `album` VALUES (28, '《I Am What I Am》', '张国荣', '2023-01-01');
INSERT INTO `album` VALUES (29, '《Sorry Jony》', '那齐沃夫', '2023-02-01');
INSERT INTO `album` VALUES (30, '《Jay》', '周杰伦', '2023-03-01');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `song_id`(`song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 15, 29, '这首歌太好听了！', '2022-01-01 10:00:00');
INSERT INTO `comment` VALUES (2, 3, 7, '我喜欢这首歌曲！', '2022-01-02 11:00:00');
INSERT INTO `comment` VALUES (3, 9, 6, '旋律太棒了！', '2022-01-03 12:00:00');
INSERT INTO `comment` VALUES (4, 27, 23, '歌词意义深远。', '2022-01-04 13:00:00');
INSERT INTO `comment` VALUES (5, 12, 27, '这首歌总是让我心情愉快。', '2022-01-05 14:00:00');
INSERT INTO `comment` VALUES (6, 25, 19, '停不下来地听！', '2022-01-06 15:00:00');
INSERT INTO `comment` VALUES (7, 8, 28, '我最喜欢的之一。', '2022-01-07 16:00:00');
INSERT INTO `comment` VALUES (8, 2, 2, '旋律非常上口！', '2022-01-08 17:00:00');
INSERT INTO `comment` VALUES (9, 21, 21, '这首歌勾起了回忆。', '2022-01-09 18:00:00');
INSERT INTO `comment` VALUES (10, 5, 12, '歌词让我产生共鸣。', '2022-01-10 19:00:00');
INSERT INTO `comment` VALUES (11, 26, 9, '如此美妙的作品。', '2022-01-11 20:00:00');
INSERT INTO `comment` VALUES (12, 1, 30, '这首歌给我带来了力量。', '2022-01-12 21:00:00');
INSERT INTO `comment` VALUES (13, 18, 8, '每次听都有不同的感受。', '2022-01-13 22:00:00');
INSERT INTO `comment` VALUES (14, 14, 26, '这首歌让我想起了过去。', '2022-01-14 23:00:00');
INSERT INTO `comment` VALUES (15, 19, 13, '旋律很迷人。', '2022-01-15 00:00:00');
INSERT INTO `comment` VALUES (16, 17, 5, '歌词真实而深刻。', '2022-01-16 01:00:00');
INSERT INTO `comment` VALUES (17, 22, 18, '这首歌给我带来了安慰。', '2022-01-17 02:00:00');
INSERT INTO `comment` VALUES (18, 30, 25, '我喜欢这首歌的情感。', '2022-01-18 03:00:00');
INSERT INTO `comment` VALUES (19, 6, 10, '旋律让我陶醉其中。', '2022-01-19 04:00:00');
INSERT INTO `comment` VALUES (20, 13, 1, '这首歌太好听了！', '2022-01-20 05:00:00');
INSERT INTO `comment` VALUES (21, 4, 14, '我喜欢这首歌曲！', '2022-01-21 06:00:00');
INSERT INTO `comment` VALUES (22, 11, 3, '旋律太棒了！', '2022-01-22 07:00:00');
INSERT INTO `comment` VALUES (23, 28, 24, '歌词意义深远。', '2022-01-23 08:00:00');
INSERT INTO `comment` VALUES (24, 20, 16, '这首歌总是让我心情愉快。', '2022-01-24 09:00:00');
INSERT INTO `comment` VALUES (25, 7, 20, '停不下来地听！', '2022-01-25 10:00:00');
INSERT INTO `comment` VALUES (26, 29, 22, '我最喜欢的之一。', '2022-01-26 11:00:00');
INSERT INTO `comment` VALUES (27, 24, 17, '旋律非常上口！', '2022-01-27 12:00:00');
INSERT INTO `comment` VALUES (28, 23, 11, '这首歌勾起了回忆。', '2022-01-28 13:00:00');
INSERT INTO `comment` VALUES (29, 10, 15, '歌词让我产生共鸣。', '2022-01-29 14:00:00');
INSERT INTO `comment` VALUES (30, 16, 4, '如此美妙的作品。', '2022-01-30 15:00:00');
INSERT INTO `comment` VALUES (31, 30, 30, '这首歌给我带来了力量。', '2022-01-31 16:00:00');
INSERT INTO `comment` VALUES (32, 9, 9, '每次听都有不同的感受。', '2022-02-01 17:00:00');
INSERT INTO `comment` VALUES (33, 26, 27, '这首歌让我想起了过去。', '2022-02-02 18:00:00');
INSERT INTO `comment` VALUES (34, 13, 5, '旋律很迷人。', '2022-02-03 19:00:00');
INSERT INTO `comment` VALUES (35, 21, 18, '歌词真实而深刻。', '2022-02-04 20:00:00');
INSERT INTO `comment` VALUES (36, 5, 10, '这首歌给我带来了安慰。', '2022-02-05 21:00:00');
INSERT INTO `comment` VALUES (37, 15, 25, '我喜欢这首歌的情感。', '2022-02-06 22:00:00');
INSERT INTO `comment` VALUES (38, 11, 13, '旋律让我陶醉其中。', '2022-02-07 23:00:00');
INSERT INTO `comment` VALUES (39, 27, 1, '这首歌太好听了！', '2022-02-08 00:00:00');
INSERT INTO `comment` VALUES (40, 24, 14, '我喜欢这首歌曲！', '2022-02-09 01:00:00');
INSERT INTO `comment` VALUES (41, 22, 3, '旋律太棒了！', '2022-02-10 02:00:00');
INSERT INTO `comment` VALUES (42, 19, 24, '歌词意义深远。', '2022-02-11 03:00:00');
INSERT INTO `comment` VALUES (43, 28, 16, '这首歌总是让我心情愉快。', '2022-02-12 04:00:00');
INSERT INTO `comment` VALUES (44, 17, 20, '停不下来地听！', '2022-02-13 05:00:00');
INSERT INTO `comment` VALUES (45, 25, 22, '我最喜欢的之一。', '2022-02-14 06:00:00');
INSERT INTO `comment` VALUES (46, 4, 17, '旋律非常上口！', '2022-02-15 07:00:00');
INSERT INTO `comment` VALUES (47, 10, 11, '这首歌勾起了回忆。', '2022-02-16 08:00:00');
INSERT INTO `comment` VALUES (48, 6, 15, '歌词让我产生共鸣。', '2022-02-17 09:00:00');
INSERT INTO `comment` VALUES (49, 14, 4, '如此美妙的作品。', '2022-02-18 10:00:00');
INSERT INTO `comment` VALUES (50, 8, 8, '这首歌给我带来了力量。', '2022-02-19 11:00:00');
INSERT INTO `comment` VALUES (51, 1, 1, '这首歌真好听！', '2022-01-01 10:00:00');
INSERT INTO `comment` VALUES (52, 2, 1, '喜欢这首歌的旋律！', '2022-01-02 11:00:00');
INSERT INTO `comment` VALUES (53, 3, 2, '歌词写得很有深意！', '2022-01-03 12:00:00');
INSERT INTO `comment` VALUES (54, 4, 2, '节奏很棒！', '2022-01-04 13:00:00');
INSERT INTO `comment` VALUES (55, 5, 3, '这首歌让我回忆起很多美好的时光！', '2022-01-05 14:00:00');
INSERT INTO `comment` VALUES (56, 6, 3, '好听到让我想哭！', '2022-01-06 15:00:00');
INSERT INTO `comment` VALUES (57, 7, 4, '这首歌给我带来了无尽的感动！', '2022-01-07 16:00:00');
INSERT INTO `comment` VALUES (58, 8, 4, '旋律很动听！', '2022-01-08 17:00:00');
INSERT INTO `comment` VALUES (59, 9, 5, '歌词写得很有共鸣！', '2022-01-09 18:00:00');
INSERT INTO `comment` VALUES (60, 10, 5, '好喜欢这首歌！', '2022-01-10 19:00:00');
INSERT INTO `comment` VALUES (61, 11, 6, '这首歌真好听！', '2022-01-11 20:00:00');
INSERT INTO `comment` VALUES (62, 12, 6, '喜欢这首歌的旋律！', '2022-01-12 21:00:00');
INSERT INTO `comment` VALUES (63, 13, 7, '歌词写得很有深意！', '2022-01-13 22:00:00');
INSERT INTO `comment` VALUES (64, 14, 7, '节奏很棒！', '2022-01-14 23:00:00');
INSERT INTO `comment` VALUES (65, 15, 8, '这首歌让我回忆起很多美好的时光！', '2022-01-15 00:00:00');
INSERT INTO `comment` VALUES (66, 16, 8, '好听到让我想哭！', '2022-01-16 01:00:00');
INSERT INTO `comment` VALUES (67, 17, 9, '这首歌给我带来了无尽的感动！', '2022-01-17 02:00:00');
INSERT INTO `comment` VALUES (68, 18, 9, '旋律很动听！', '2022-01-18 03:00:00');
INSERT INTO `comment` VALUES (69, 19, 10, '歌词写得很有共鸣！', '2022-01-19 04:00:00');
INSERT INTO `comment` VALUES (70, 20, 10, '好喜欢这首歌！', '2022-01-20 05:00:00');
INSERT INTO `comment` VALUES (71, 21, 11, '这首歌真好听！', '2022-01-21 06:00:00');
INSERT INTO `comment` VALUES (72, 22, 11, '喜欢这首歌的旋律！', '2022-01-22 07:00:00');
INSERT INTO `comment` VALUES (73, 23, 12, '歌词写得很有深意！', '2022-01-23 08:00:00');
INSERT INTO `comment` VALUES (74, 24, 12, '节奏很棒！', '2022-01-24 09:00:00');
INSERT INTO `comment` VALUES (75, 25, 13, '这首歌让我回忆起很多美好的时光！', '2022-01-25 10:00:00');
INSERT INTO `comment` VALUES (76, 26, 13, '好听到让我想哭！', '2022-01-26 11:00:00');
INSERT INTO `comment` VALUES (77, 27, 14, '这首歌给我带来了无尽的感动！', '2022-01-27 12:00:00');
INSERT INTO `comment` VALUES (78, 28, 14, '旋律很动听！', '2022-01-28 13:00:00');
INSERT INTO `comment` VALUES (79, 29, 15, '歌词写得很有共鸣！', '2022-01-29 14:00:00');
INSERT INTO `comment` VALUES (80, 30, 15, '好喜欢这首歌！', '2022-01-30 15:00:00');
INSERT INTO `comment` VALUES (81, 31, 16, '这首歌真好听！', '2022-01-31 16:00:00');
INSERT INTO `comment` VALUES (82, 32, 16, '喜欢这首歌的旋律！', '2022-02-01 17:00:00');
INSERT INTO `comment` VALUES (83, 33, 17, '歌词写得很有深意！', '2022-02-02 18:00:00');
INSERT INTO `comment` VALUES (84, 34, 17, '节奏很棒！', '2022-02-03 19:00:00');
INSERT INTO `comment` VALUES (85, 35, 18, '这首歌让我回忆起很多美好的时光！', '2022-02-04 20:00:00');
INSERT INTO `comment` VALUES (86, 36, 18, '好听到让我想哭！', '2022-02-05 21:00:00');
INSERT INTO `comment` VALUES (87, 37, 19, '这首歌给我带来了无尽的感动！', '2022-02-06 22:00:00');
INSERT INTO `comment` VALUES (88, 38, 19, '旋律很动听！', '2022-02-07 23:00:00');
INSERT INTO `comment` VALUES (89, 39, 20, '歌词写得很有共鸣！', '2022-02-08 00:00:00');
INSERT INTO `comment` VALUES (90, 40, 20, '好喜欢这首歌！', '2022-02-09 01:00:00');
INSERT INTO `comment` VALUES (91, 41, 21, '这首歌真好听！', '2022-02-10 02:00:00');
INSERT INTO `comment` VALUES (92, 42, 21, '喜欢这首歌的旋律！', '2022-02-11 03:00:00');
INSERT INTO `comment` VALUES (93, 43, 22, '歌词写得很有深意！', '2022-02-12 04:00:00');
INSERT INTO `comment` VALUES (94, 44, 22, '节奏很棒！', '2022-02-13 05:00:00');
INSERT INTO `comment` VALUES (95, 45, 23, '这首歌让我回忆起很多美好的时光！', '2022-02-14 06:00:00');
INSERT INTO `comment` VALUES (96, 46, 23, '好听到让我想哭！', '2022-02-15 07:00:00');
INSERT INTO `comment` VALUES (97, 47, 24, '这首歌给我带来了无尽的感动！', '2022-02-16 08:00:00');
INSERT INTO `comment` VALUES (98, 48, 24, '旋律很动听！', '2022-02-17 09:00:00');
INSERT INTO `comment` VALUES (99, 49, 25, '歌词写得很有共鸣！', '2022-02-18 10:00:00');
INSERT INTO `comment` VALUES (100, 50, 25, '好喜欢这首歌！', '2022-02-19 11:00:00');
INSERT INTO `comment` VALUES (101, 1, 7, '超好听的一首歌！', NULL);

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `song_id`(`song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES (5, 9, 14);
INSERT INTO `favorite` VALUES (6, 36, 7);
INSERT INTO `favorite` VALUES (7, 49, 7);
INSERT INTO `favorite` VALUES (8, 9, 6);
INSERT INTO `favorite` VALUES (9, 22, 19);
INSERT INTO `favorite` VALUES (10, 37, 27);
INSERT INTO `favorite` VALUES (11, 2, 19);
INSERT INTO `favorite` VALUES (12, 44, 19);
INSERT INTO `favorite` VALUES (13, 18, 31);
INSERT INTO `favorite` VALUES (14, 42, 8);
INSERT INTO `favorite` VALUES (15, 36, 26);
INSERT INTO `favorite` VALUES (16, 2, 21);
INSERT INTO `favorite` VALUES (17, 13, 7);
INSERT INTO `favorite` VALUES (18, 13, 22);
INSERT INTO `favorite` VALUES (19, 36, 16);
INSERT INTO `favorite` VALUES (20, 16, 4);
INSERT INTO `favorite` VALUES (21, 30, 19);
INSERT INTO `favorite` VALUES (22, 13, 14);
INSERT INTO `favorite` VALUES (23, 23, 30);
INSERT INTO `favorite` VALUES (24, 23, 11);
INSERT INTO `favorite` VALUES (25, 18, 23);
INSERT INTO `favorite` VALUES (26, 27, 16);
INSERT INTO `favorite` VALUES (27, 50, 12);
INSERT INTO `favorite` VALUES (28, 49, 21);
INSERT INTO `favorite` VALUES (29, 20, 30);
INSERT INTO `favorite` VALUES (30, 32, 9);
INSERT INTO `favorite` VALUES (31, 23, 16);
INSERT INTO `favorite` VALUES (32, 3, 25);
INSERT INTO `favorite` VALUES (33, 41, 22);
INSERT INTO `favorite` VALUES (34, 2, 3);
INSERT INTO `favorite` VALUES (35, 19, 17);
INSERT INTO `favorite` VALUES (36, 32, 17);
INSERT INTO `favorite` VALUES (37, 35, 29);
INSERT INTO `favorite` VALUES (38, 24, 21);
INSERT INTO `favorite` VALUES (39, 44, 12);
INSERT INTO `favorite` VALUES (40, 13, 5);
INSERT INTO `favorite` VALUES (41, 1, 18);
INSERT INTO `favorite` VALUES (42, 43, 16);
INSERT INTO `favorite` VALUES (43, 47, 7);
INSERT INTO `favorite` VALUES (44, 12, 16);
INSERT INTO `favorite` VALUES (45, 45, 29);
INSERT INTO `favorite` VALUES (46, 47, 27);
INSERT INTO `favorite` VALUES (47, 26, 31);
INSERT INTO `favorite` VALUES (48, 21, 2);
INSERT INTO `favorite` VALUES (49, 2, 31);
INSERT INTO `favorite` VALUES (50, 42, 6);
INSERT INTO `favorite` VALUES (51, 24, 25);
INSERT INTO `favorite` VALUES (52, 26, 6);
INSERT INTO `favorite` VALUES (53, 16, 1);
INSERT INTO `favorite` VALUES (54, 12, 4);
INSERT INTO `favorite` VALUES (55, 41, 23);
INSERT INTO `favorite` VALUES (56, 9, 22);
INSERT INTO `favorite` VALUES (57, 48, 21);
INSERT INTO `favorite` VALUES (58, 26, 18);
INSERT INTO `favorite` VALUES (59, 15, 24);
INSERT INTO `favorite` VALUES (60, 48, 15);
INSERT INTO `favorite` VALUES (61, 22, 24);
INSERT INTO `favorite` VALUES (62, 26, 10);
INSERT INTO `favorite` VALUES (63, 49, 31);
INSERT INTO `favorite` VALUES (64, 48, 26);
INSERT INTO `favorite` VALUES (65, 13, 26);
INSERT INTO `favorite` VALUES (66, 19, 11);
INSERT INTO `favorite` VALUES (67, 30, 30);
INSERT INTO `favorite` VALUES (68, 1, 5);
INSERT INTO `favorite` VALUES (69, 38, 9);
INSERT INTO `favorite` VALUES (70, 6, 23);
INSERT INTO `favorite` VALUES (71, 19, 20);
INSERT INTO `favorite` VALUES (72, 50, 4);
INSERT INTO `favorite` VALUES (73, 32, 26);
INSERT INTO `favorite` VALUES (74, 9, 12);
INSERT INTO `favorite` VALUES (75, 16, 14);
INSERT INTO `favorite` VALUES (76, 17, 11);
INSERT INTO `favorite` VALUES (78, 1, 10);
INSERT INTO `favorite` VALUES (79, 1, 7);
INSERT INTO `favorite` VALUES (80, 1, 4);
INSERT INTO `favorite` VALUES (81, 1, 9);
INSERT INTO `favorite` VALUES (82, 1, 25);

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, '薛之谦', '男', '中国', '薛之谦，中国内地男歌手、词曲创作人，代表作品有《演员》、《认真的雪》等。');
INSERT INTO `singer` VALUES (2, '周杰伦', '男', '中国', '周杰伦，中国台湾男歌手、词曲创作人、演员，代表作品有《稻香》、《青花瓷》等。');
INSERT INTO `singer` VALUES (3, '宋秉勤', '男', '中国', '宋秉勤，中国内地男歌手、音乐制作人，代表作品有《trust me》等。');
INSERT INTO `singer` VALUES (4, '黄龄', '女', '中国', '黄龄，中国内地女歌手，代表作品有《痒》等。');
INSERT INTO `singer` VALUES (5, '许嵩', '男', '中国', '许嵩，中国内地男歌手、词曲创作人，代表作品有《素颜》、《玫瑰花的葬礼》等。');
INSERT INTO `singer` VALUES (6, '杜雅璇', '女', '中国', '杜雅璇，中国内地女歌手，代表作品有《Lemon》等。');
INSERT INTO `singer` VALUES (7, '汪苏泷', '男', '中国', '汪苏泷，中国内地男歌手、音乐制作人，代表作品有《好安静》等。');
INSERT INTO `singer` VALUES (8, '邓紫棋', '女', '中国', '邓紫棋，中国内地女歌手、词曲创作人，代表作品有《A.I.N.Y.》等。');
INSERT INTO `singer` VALUES (9, '王心凌', '女', '中国', '王心凌，中国台湾女歌手、演员，代表作品有《大眠》等。');
INSERT INTO `singer` VALUES (10, '网络歌手', '未知', '未知', '网络歌手，代表作品有《Da Da Da Da》等。');
INSERT INTO `singer` VALUES (11, '王靖雯', '女', '中国', '王靖雯，中国内地女歌手，代表作品有《早晚》等。');
INSERT INTO `singer` VALUES (12, '张雨生', '男', '中国', '张雨生，中国内地男歌手，代表作品有《大海》等。');
INSERT INTO `singer` VALUES (13, '忠雨', '男', '中国', '忠雨，中国内地男歌手，代表作品有《妈妈的话》等。');
INSERT INTO `singer` VALUES (14, '旺季稳', '男', '中国', '旺季稳，中国内地男歌手，代表作品有《我的世界》等。');
INSERT INTO `singer` VALUES (15, '陈奕迅', '男', '中国', '陈奕迅，中国香港男歌手、演员，代表作品有《孤勇者》等。');
INSERT INTO `singer` VALUES (16, 'Mr.', '男', '中国', 'Mr.，中国内地男歌手，代表作品有《遇到了》等。');
INSERT INTO `singer` VALUES (17, 'Lil Nax X/Jack Harlow', '男', '美国', 'Lil Nax X/Jack Harlow，美国男歌手，代表作品有《INDUSTRY BABY》等。');
INSERT INTO `singer` VALUES (18, '功夫胖KungFuPen/KEY.L刘聪', '男', '中国', '功夫胖KungFuPen/KEY.L刘聪，中国内地男歌手，代表作品有《无赖》等。');
INSERT INTO `singer` VALUES (19, '王以太', '男', '中国', '王以太，中国内地男歌手，代表作品有《阿司匹林》等。');
INSERT INTO `singer` VALUES (20, '张国荣', '男', '中国', '张国荣，中国香港男歌手、演员，代表作品有《玻璃之情》等。');
INSERT INTO `singer` VALUES (21, '那齐沃夫', '男', '中国', '那齐沃夫，中国内地男歌手，代表作品有《Sorry Jony》等。');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `songid` int(11) NOT NULL AUTO_INCREMENT,
  `songname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `singername` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mv` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `like` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`songid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '怪咖', '331s', '《怪咖》', '薛之谦', '《几个薛之谦》', 102);
INSERT INTO `song` VALUES (2, '你好吗', '320s', '《惊叹号》', '周杰伦', '《你好吗》', 129);
INSERT INTO `song` VALUES (3, 'trust me', '400s', '《sunkis》', '宋秉勤', '《TRUST》', 100);
INSERT INTO `song` VALUES (4, '痒', '515s', '《痒》', '黄龄', '《梦想的声音》', 124);
INSERT INTO `song` VALUES (5, '陪你去流浪', '480s', '《尘》', '薛之谦', '《陪你去流浪》', 102);
INSERT INTO `song` VALUES (6, '素颜', '600s', '《素颜》', '许嵩', '无MV', 107);
INSERT INTO `song` VALUES (7, 'Lemon', '800s', '《SISTAR》', '杜雅璇', '《Lenmon》', 124);
INSERT INTO `song` VALUES (8, '好安静', '230s', '《汪苏泷原创合集》', '汪苏泷', '《好安静》', 100);
INSERT INTO `song` VALUES (9, '玫瑰花的葬礼', '520s', '《许嵩早期单曲合集》', '许嵩', '《玫瑰花的葬礼》', 125);
INSERT INTO `song` VALUES (10, '等雾散去', '500s', '《星河万里》', '山治', '无MV', 103);
INSERT INTO `song` VALUES (11, '可', '520s', '《可》', '薛之谦', '《惊叹号》', 131);
INSERT INTO `song` VALUES (12, 'A.I.N.Y.', '460s', '《G.E.M.》', '邓紫棋', '《新的跳动》', 131);
INSERT INTO `song` VALUES (13, '就忘了吧', '520s', '《就忘了吧》', '1K', '无MV', 131);
INSERT INTO `song` VALUES (15, 'Da Da Da Da', '350s', '《闪耀》', '网络歌手', '无MV', 156);
INSERT INTO `song` VALUES (16, '早晚', '324s', '《善变》', '王靖雯', '无MV', 176);
INSERT INTO `song` VALUES (17, '大海', '267s', '《大海》', '张雨生', '《大海》', 124);
INSERT INTO `song` VALUES (18, '妈妈的话', '100s', '《Zyboy》', '忠雨', '《妈妈的话》', 131);
INSERT INTO `song` VALUES (19, '我的世界', '200s', '《我的世界》', '旺季稳', '《我的世界》', 124);
INSERT INTO `song` VALUES (20, '孤勇者', '258s', '《英雄联盟：双城之战》', '陈奕迅', '《孤勇者》', 156);
INSERT INTO `song` VALUES (21, '遇到了', '318s', '《If I Am》', 'Mr.', '《遇到了》', 125);
INSERT INTO `song` VALUES (22, 'INDUSTRY BAB', '324s', '《INDUSTRY BABY》', 'Lil Nax X/Jack Harlow', '《INDUSTRY BABY》', 156);
INSERT INTO `song` VALUES (23, '无赖', '327s', '《无赖》', '功夫胖KungFuPen/KEY.L刘聪', '《无赖》', 125);
INSERT INTO `song` VALUES (24, '阿司匹林', '352s', '《演.说.家》', '王以太', '《阿司匹林》', 125);
INSERT INTO `song` VALUES (25, '玻璃之情', '310s', '《I Am What I Am》', '张国荣', '《玻璃之情》', 156);
INSERT INTO `song` VALUES (26, 'Sorry Jony', '271s', '《Sorry Jony》', '那齐沃夫', '《Sorry Jony》', 125);
INSERT INTO `song` VALUES (27, '反方向的钟', '374s', '《Jay》', '周杰伦', '《反方向的钟》', 125);
INSERT INTO `song` VALUES (28, '黑色幽默', '324s', '《Jay》', '周杰伦', '《黑色幽默》', 176);
INSERT INTO `song` VALUES (29, '可爱女人', '314s', '《Jay》', '周杰伦', '《可爱女人》', 176);
INSERT INTO `song` VALUES (30, '断了的弦', '330s', '《寻找周杰伦》', '周杰伦', '《断了的弦》', 156);
INSERT INTO `song` VALUES (31, '轨迹', '347s', '《寻找周杰伦》', '周杰伦', '《轨迹》', 156);
INSERT INTO `song` VALUES (131, '131', '131', '131', '131', '131', 131);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123123');
INSERT INTO `user` VALUES (2, '张三', '123123');
INSERT INTO `user` VALUES (3, 'John Smith', '123123');
INSERT INTO `user` VALUES (4, '李四', '123123');
INSERT INTO `user` VALUES (5, 'Emma Johnson', '123123');
INSERT INTO `user` VALUES (6, '王五', '123123');
INSERT INTO `user` VALUES (7, 'Michael Brown', '123123');
INSERT INTO `user` VALUES (8, '赵六', '123123');
INSERT INTO `user` VALUES (9, 'Sophia Davis', '123123');
INSERT INTO `user` VALUES (10, '陈七', '123123');
INSERT INTO `user` VALUES (11, 'Daniel Wilson', '123123');
INSERT INTO `user` VALUES (12, '刘八', '123123');
INSERT INTO `user` VALUES (13, 'jay', '123123');
INSERT INTO `user` VALUES (14, 'Olivia Taylor', '123123');
INSERT INTO `user` VALUES (15, '朱九', '123123');
INSERT INTO `user` VALUES (16, 'James Anderson', '123123');
INSERT INTO `user` VALUES (17, '周十', '123123');
INSERT INTO `user` VALUES (18, 'Emily Martinez', '123123');
INSERT INTO `user` VALUES (19, '吴十一', '123123');
INSERT INTO `user` VALUES (20, 'Alexander Clark', '123123');
INSERT INTO `user` VALUES (21, '郑十二', '123123');
INSERT INTO `user` VALUES (22, 'Charlotte Rodriguez', '123123');
INSERT INTO `user` VALUES (23, '孙十三', '123123');
INSERT INTO `user` VALUES (24, 'Mia Lee', '123123');
INSERT INTO `user` VALUES (25, '杨十四', '123123');
INSERT INTO `user` VALUES (26, 'Benjamin Walker', '123123');
INSERT INTO `user` VALUES (27, '赵十五', '123123');
INSERT INTO `user` VALUES (28, 'Amelia Wright', '123123');
INSERT INTO `user` VALUES (29, '钱十六', '123123');
INSERT INTO `user` VALUES (30, 'Ethan Hill', '123123');
INSERT INTO `user` VALUES (31, '孙十七', '123123');
INSERT INTO `user` VALUES (32, 'Ava Scott', '123123');
INSERT INTO `user` VALUES (33, '李十八', '123123');
INSERT INTO `user` VALUES (34, 'Liam Green', '123123');
INSERT INTO `user` VALUES (35, '周十九', '123123');
INSERT INTO `user` VALUES (36, 'Oliver Adams', '123123');
INSERT INTO `user` VALUES (37, '吴二十', '123123');
INSERT INTO `user` VALUES (38, 'Isabella Baker', '123123');
INSERT INTO `user` VALUES (39, '郑二十一', '123123');
INSERT INTO `user` VALUES (40, 'Lucas Carter', '123123');
INSERT INTO `user` VALUES (41, '陈二十二', '123123');
INSERT INTO `user` VALUES (42, 'Sophia Murphy', '123123');
INSERT INTO `user` VALUES (43, '张二十三', '123123');
INSERT INTO `user` VALUES (44, 'Mason Turner', '123123');
INSERT INTO `user` VALUES (45, '王二十四', '123123');
INSERT INTO `user` VALUES (46, 'Harper Parker', '123123');
INSERT INTO `user` VALUES (47, '刘二十五', '123123');
INSERT INTO `user` VALUES (48, 'Evelyn Collins', '123123');
INSERT INTO `user` VALUES (49, '朱二十六', '123123');
INSERT INTO `user` VALUES (50, 'Jacob Bennett', '123123');
INSERT INTO `user` VALUES (51, 'gjj', '123');
INSERT INTO `user` VALUES (52, 'adm', '1231');
INSERT INTO `user` VALUES (53, 'adm', '1231');
INSERT INTO `user` VALUES (54, 'admin33', '123123');

SET FOREIGN_KEY_CHECKS = 1;
