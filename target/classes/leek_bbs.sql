/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40)
 Source Host           : localhost:3306
 Source Schema         : leek_bbs

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40)
 File Encoding         : 65001

 Date: 16/01/2025 17:29:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `aid` int(11) NULL DEFAULT NULL COMMENT '要关注的用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES (6, 3, 1);
INSERT INTO `attention` VALUES (7, 2, 5);
INSERT INTO `attention` VALUES (10, 3, 4);
INSERT INTO `attention` VALUES (13, 3, 2);
INSERT INTO `attention` VALUES (14, 3, 18);
INSERT INTO `attention` VALUES (15, 4, 3);
INSERT INTO `attention` VALUES (16, 21, 4);
INSERT INTO `attention` VALUES (17, 22, 21);
INSERT INTO `attention` VALUES (18, 21, 2);
INSERT INTO `attention` VALUES (19, 23, 4);
INSERT INTO `attention` VALUES (20, 21, 23);

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `user_experience` int(11) NULL DEFAULT 10 COMMENT '最后获得的经验',
  `time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2020-05-10' COMMENT '最后获取经验的具体时间',
  `total_experience` int(11) NULL DEFAULT 10 COMMENT '总经验',
  `reserve1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户经验详细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of experience
-- ----------------------------
INSERT INTO `experience` VALUES (1, 1, 50, '2025-01-11', 50, NULL, NULL);
INSERT INTO `experience` VALUES (2, 2, 50, '2025-01-07', 50, NULL, NULL);
INSERT INTO `experience` VALUES (3, 3, 50, '2025-01-04', 620, NULL, NULL);
INSERT INTO `experience` VALUES (4, 4, 50, '2025-01-03', 1200, NULL, NULL);
INSERT INTO `experience` VALUES (5, 5, 50, '2025-01-02', 100, NULL, NULL);
INSERT INTO `experience` VALUES (6, 6, 50, '2025-01-02', 100, NULL, NULL);
INSERT INTO `experience` VALUES (7, 7, 5, '2025-01-07', 120, NULL, NULL);
INSERT INTO `experience` VALUES (8, 8, 10, '2024-12-30', 160, NULL, NULL);
INSERT INTO `experience` VALUES (9, 11, 10, '2025-01-04', 10, NULL, NULL);
INSERT INTO `experience` VALUES (10, 12, 10, '2025-01-12', 10, NULL, NULL);
INSERT INTO `experience` VALUES (11, 13, 10, '2025-01-03', 10, NULL, NULL);
INSERT INTO `experience` VALUES (12, 14, 10, '2025-01-11', 10, NULL, NULL);
INSERT INTO `experience` VALUES (13, 15, 10, '2025-01-04', 10, NULL, NULL);
INSERT INTO `experience` VALUES (14, 16, 10, '2025-01-05', 10, NULL, NULL);
INSERT INTO `experience` VALUES (15, 17, 10, '2025-01-11', 10, NULL, NULL);
INSERT INTO `experience` VALUES (16, 18, 10, '2025-01-11', 10, NULL, NULL);
INSERT INTO `experience` VALUES (17, 19, 10, '2025-01-10', 10, NULL, NULL);
INSERT INTO `experience` VALUES (18, 20, 10, '2025-01-04', 10, NULL, NULL);
INSERT INTO `experience` VALUES (19, 21, 10, '2025-01-08', 10, NULL, NULL);
INSERT INTO `experience` VALUES (20, 22, 10, '2025-01-13', 10, NULL, NULL);
INSERT INTO `experience` VALUES (21, 23, 10, '2025-01-14 22:23:07', 20, NULL, NULL);
INSERT INTO `experience` VALUES (22, 24, 10, '2025-01-13', 10, NULL, NULL);

-- ----------------------------
-- Table structure for friend_group
-- ----------------------------
DROP TABLE IF EXISTS `friend_group`;
CREATE TABLE `friend_group`  (
  `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分组id',
  `group_name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组名称',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '分组所属用户',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好友分组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friend_group
-- ----------------------------
INSERT INTO `friend_group` VALUES (1, '  村里人~', 3);
INSERT INTO `friend_group` VALUES (2, '  同学-', 3);
INSERT INTO `friend_group` VALUES (3, '   无所谓~', 3);
INSERT INTO `friend_group` VALUES (4, ' 独自承受这伤痛。', 3);
INSERT INTO `friend_group` VALUES (5, ' ╲◢ ╲◢', 3);
INSERT INTO `friend_group` VALUES (6, '  朋友', 4);
INSERT INTO `friend_group` VALUES (7, '  兄弟们 ^`', 4);
INSERT INTO `friend_group` VALUES (8, '  家人们`~', 3);
INSERT INTO `friend_group` VALUES (9, '  同学们~', 15);
INSERT INTO `friend_group` VALUES (10, '  家人们`~', 15);
INSERT INTO `friend_group` VALUES (11, '  ╲◢ ╲◢', 15);
INSERT INTO `friend_group` VALUES (12, '  兄弟们 ^`', 15);
INSERT INTO `friend_group` VALUES (13, '  家人们`~', 16);
INSERT INTO `friend_group` VALUES (14, '  同学们~', 16);
INSERT INTO `friend_group` VALUES (15, '    ╲◢ ╲◢', 16);
INSERT INTO `friend_group` VALUES (16, '    兄弟们 ^`', 16);
INSERT INTO `friend_group` VALUES (17, '同学们~', 17);
INSERT INTO `friend_group` VALUES (18, '  ╲◢ ╲◢', 17);
INSERT INTO `friend_group` VALUES (19, '  兄弟们 ^`', 17);
INSERT INTO `friend_group` VALUES (20, '  家人们`~', 17);
INSERT INTO `friend_group` VALUES (21, '同学们~', 18);
INSERT INTO `friend_group` VALUES (22, '  ╲◢ ╲◢', 18);
INSERT INTO `friend_group` VALUES (23, '  兄弟们 ^`', 18);
INSERT INTO `friend_group` VALUES (24, '  家人们`~', 18);
INSERT INTO `friend_group` VALUES (25, '同学们~', 19);
INSERT INTO `friend_group` VALUES (26, '  ╲◢ ╲◢', 19);
INSERT INTO `friend_group` VALUES (27, '  兄弟们 ^`', 19);
INSERT INTO `friend_group` VALUES (28, '  家人们`~', 19);
INSERT INTO `friend_group` VALUES (29, '同学们~', 20);
INSERT INTO `friend_group` VALUES (30, '  ╲◢ ╲◢', 20);
INSERT INTO `friend_group` VALUES (31, '  兄弟们 ^`', 20);
INSERT INTO `friend_group` VALUES (32, '  家人们`~', 20);
INSERT INTO `friend_group` VALUES (33, '同学们~', 21);
INSERT INTO `friend_group` VALUES (34, '  ╲◢ ╲◢', 21);
INSERT INTO `friend_group` VALUES (35, '  兄弟们 ^`', 21);
INSERT INTO `friend_group` VALUES (36, '  家人们`~', 21);
INSERT INTO `friend_group` VALUES (37, '同学们~', 22);
INSERT INTO `friend_group` VALUES (38, '  ╲◢ ╲◢', 22);
INSERT INTO `friend_group` VALUES (39, '  兄弟们 ^`', 22);
INSERT INTO `friend_group` VALUES (40, '  家人们`~', 22);
INSERT INTO `friend_group` VALUES (41, '同学们~', 23);
INSERT INTO `friend_group` VALUES (42, '  ╲◢ ╲◢', 23);
INSERT INTO `friend_group` VALUES (43, '  兄弟们 ^`', 23);
INSERT INTO `friend_group` VALUES (44, '  家人们`~', 23);
INSERT INTO `friend_group` VALUES (45, '同学们~', 24);
INSERT INTO `friend_group` VALUES (46, '  ╲◢ ╲◢', 24);
INSERT INTO `friend_group` VALUES (47, '  兄弟们 ^`', 24);
INSERT INTO `friend_group` VALUES (48, '  家人们`~', 24);

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级称号',
  `img` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级图片',
  `g_condition` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '满足条件',
  `reserve1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '等级参照表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '幼儿园', '/grade_img/grade_img_01.png', '0', NULL, NULL);
INSERT INTO `grade` VALUES (2, '小学生', '/grade_img/grade_img_02.png', '20', NULL, NULL);
INSERT INTO `grade` VALUES (3, '初中生', '/grade_img/grade_img_03.png', '200', NULL, NULL);
INSERT INTO `grade` VALUES (4, '高中生', '/grade_img/grade_img_04.png', '500', NULL, NULL);
INSERT INTO `grade` VALUES (5, '大学生', '/grade_img/grade_img_05.png', '900', NULL, NULL);
INSERT INTO `grade` VALUES (6, '硕士生', '/grade_img/grade_img_06.png', '1500', NULL, NULL);
INSERT INTO `grade` VALUES (7, '博士生', '/grade_img/grade_img_07.png', '2200', NULL, NULL);
INSERT INTO `grade` VALUES (8, '博士后', '/grade_img/grade_img_08.png', '3500', NULL, NULL);

-- ----------------------------
-- Table structure for integral
-- ----------------------------
DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `user_integral` int(11) NULL DEFAULT 10 COMMENT '获得的积分',
  `last_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2020-05-10' COMMENT '最后获取积分的具体时间',
  `total_integral` int(11) NULL DEFAULT 10 COMMENT '总积分',
  `reserve1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户积分详细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of integral
-- ----------------------------
INSERT INTO `integral` VALUES (1, 1, 20, '2025-01-08 01:03:07', 10, NULL, NULL);
INSERT INTO `integral` VALUES (2, 2, 10, '2025-01-06 23:26:18', 30, NULL, NULL);
INSERT INTO `integral` VALUES (3, 3, 8, '2025-01-11 00:35:54', 190, NULL, NULL);
INSERT INTO `integral` VALUES (4, 4, 2, '2025-01-03 19:57:22', 82, NULL, NULL);
INSERT INTO `integral` VALUES (5, 5, 20, '2024-12-30 19:10:21', 10, NULL, NULL);
INSERT INTO `integral` VALUES (6, 6, 4, '2025-01-10 05:17:49', 32, NULL, NULL);
INSERT INTO `integral` VALUES (7, 7, 30, '2025-01-10 18:06:11', 10, NULL, NULL);
INSERT INTO `integral` VALUES (8, 8, 20, '2025-01-03 19:04:52', 26, NULL, NULL);
INSERT INTO `integral` VALUES (9, 11, 10, '2025-01-11 03:21:18', 10, NULL, NULL);
INSERT INTO `integral` VALUES (10, 12, 4, '2025-01-06 09:39:02', 16, NULL, NULL);
INSERT INTO `integral` VALUES (11, 13, 2, '2025-01-10 04:05:53', 12, NULL, NULL);
INSERT INTO `integral` VALUES (12, 14, 10, '2025-01-10 11:41:03', 10, NULL, NULL);
INSERT INTO `integral` VALUES (13, 15, 10, '2025-01-11 18:13:51', 10, NULL, NULL);
INSERT INTO `integral` VALUES (14, 16, 10, '2025-01-04 13:55:54', 10, NULL, NULL);
INSERT INTO `integral` VALUES (15, 17, 2, '2025-01-01 06:00:10', 12, NULL, NULL);
INSERT INTO `integral` VALUES (16, 18, 2, '2024-12-31 19:28:55', 12, NULL, NULL);
INSERT INTO `integral` VALUES (17, 19, 10, '2025-01-10 05:35:15', 10, NULL, NULL);
INSERT INTO `integral` VALUES (18, 20, 10, '2025-01-06 19:34:25', 10, NULL, NULL);
INSERT INTO `integral` VALUES (19, 21, 2, '2025-01-08 12:28:49', 14, NULL, NULL);
INSERT INTO `integral` VALUES (20, 22, 10, '2025-01-03 01:11:46', 10, NULL, NULL);
INSERT INTO `integral` VALUES (21, 23, 2, '2025-01-09 02:42:11', 14, NULL, NULL);
INSERT INTO `integral` VALUES (22, 24, 2, '2025-01-01 17:05:15', 12, NULL, NULL);

-- ----------------------------
-- Table structure for leave_word
-- ----------------------------
DROP TABLE IF EXISTS `leave_word`;
CREATE TABLE `leave_word`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_u_id` int(11) NULL DEFAULT NULL COMMENT '留言者id',
  `leave_name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言者名称',
  `leave_photo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言者头像',
  `leave_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言内容',
  `to_u_id` int(11) NULL DEFAULT NULL COMMENT '留言给哪个用户id',
  `leave_time` datetime NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of leave_word
-- ----------------------------
INSERT INTO `leave_word` VALUES (1, 1, '001-1号', 'statics/images/u1.png', 'Hello , 最近在干嘛呢?', 3, '2024-12-30 03:50:45');
INSERT INTO `leave_word` VALUES (2, 2, '001-2号', 'statics/images/u2.jpg', '如此甚好 , 最近在干嘛呢?', 3, '2025-01-09 02:37:49');
INSERT INTO `leave_word` VALUES (3, 4, '测试者', 'statics/images/toux1.png', '唉,文化馆服务费文件翻皮水!', 3, '2025-01-10 18:02:55');
INSERT INTO `leave_word` VALUES (4, 5, '001-5号', 'statics/images/01_small.gif', 'Hello , 最近在干嘛呢?', 3, '2025-01-05 21:52:38');
INSERT INTO `leave_word` VALUES (5, 2, '001-2号', 'statics/images/u2.jpg', '呵呵,和我给我二哥加尔各答!', 3, '2025-01-04 06:20:58');
INSERT INTO `leave_word` VALUES (6, 4, '测试者', 'statics/images/toux1.png', 'Hello , 最近在干嘛呢?', 3, '2025-01-01 08:12:56');
INSERT INTO `leave_word` VALUES (7, 5, '001-5号', 'statics/images/01_small.gif', '呵呵,和我给我二哥加尔各答!', 4, '2025-01-12 16:03:16');
INSERT INTO `leave_word` VALUES (8, 6, '001-6号', 'statics/images/u3.jpg', '呵呵,和我给我二哥加尔各答!', 4, '2025-01-10 07:54:33');
INSERT INTO `leave_word` VALUES (9, 3, '迷失者', 'uploadfiles/2020/5/ea6ba8a30e774a5998d79c307c6dd451.jpg', '<p>个哈哈哈发货<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/bc/otm_thumb.gif\" alt=\"[奥特曼]\" data-w-e=\"1\"></p>', 4, '2025-01-13 13:43:52');
INSERT INTO `leave_word` VALUES (10, 3, '迷失者', 'statics/images/u4.jpg', '<p>测试</p>', 7, '2025-01-10 14:20:52');
INSERT INTO `leave_word` VALUES (11, 3, '迷失者', 'statics/images/u4.jpg', '<p>wefewfwef<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"></p>', 2, '2025-01-09 21:37:23');
INSERT INTO `leave_word` VALUES (12, 3, '迷失者', 'statics/images/u4.jpg', '<p>萨比的v户人家给IB</p>', 17, '2025-01-13 03:31:13');
INSERT INTO `leave_word` VALUES (13, 3, '迷失者', 'statics/images/u4.jpg', '<p><br></p>', 2, '2025-01-05 00:33:39');
INSERT INTO `leave_word` VALUES (14, 3, '迷失者', 'statics/images/u4.jpg', '<p>cthujjko<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\" alt=\"[给力]\" data-w-e=\"1\"></p>', 18, '2025-01-04 01:33:34');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `n_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `n_time` datetime NULL DEFAULT NULL COMMENT '发表时间',
  `n_in_plate_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告归属专区',
  `n_uid` int(11) NULL DEFAULT NULL,
  `n_plate_id` int(11) NULL DEFAULT NULL COMMENT '所属板块id',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '测试公告', 'xdtrcftvgybhunjmk', '2025-01-10 07:55:42', '游戏交流', 1, 4);
INSERT INTO `notice` VALUES (2, 'dfgyh', 'cdftvgbnjkm<img src=\"http://localhost:8080/leek_bbs/statics/layui/images/face/1.gif\" alt=\"[嘻嘻]\">', '2025-01-02 14:45:00', '校园趣事', 1, 3);
INSERT INTO `notice` VALUES (3, '测试表白墙公告', '<p>测试表白墙公告测试表白墙公告</p>', '2025-01-02 19:42:10', '告白墙', 1, 5);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `available` tinyint(1) NULL DEFAULT NULL COMMENT '是否有效(0无效,1有效)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for plate
-- ----------------------------
DROP TABLE IF EXISTS `plate`;
CREATE TABLE `plate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块名称',
  `plate_photo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块图片',
  `theme` int(11) NULL DEFAULT 0 COMMENT '板块主题数',
  `posts` int(11) NULL DEFAULT 0 COMMENT '板块帖子数',
  `collect_total` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '板块被收藏数',
  `plate_vest` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块归属区',
  `reserve1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块地址',
  `reserve2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '板块表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plate
-- ----------------------------
INSERT INTO `plate` VALUES (1, '学院专区', 'common_2_icon.png', 7, 11, '325', '校园专区', '校园各学院的交流讨论', NULL);
INSERT INTO `plate` VALUES (2, '社团专区', 'common_37_icon.png', 3, 1, '325', '校园专区', '校园个社团的讨论专区', NULL);
INSERT INTO `plate` VALUES (3, '校园趣事', 'common_38_icon.png', 4, 5, '325', '校园专区', '校园的各种趣事讨论区', NULL);
INSERT INTO `plate` VALUES (4, '游戏交流', 'common_43_icon.png', 13, 34, '325', '交流与讨论', '游戏交流的圣地', NULL);
INSERT INTO `plate` VALUES (5, '表白墙', 'common_49_icon.png', 3, 3, '325', '交流与讨论', '各兄弟姐妹的交往圣地', NULL);
INSERT INTO `plate` VALUES (6, '兼职', 'common_41_icon.png', 1, 2, '325', '交流与讨论', '获取兼职的一种途径', NULL);
INSERT INTO `plate` VALUES (7, '学校资源共享', 'common_52_icon.png', 2, 0, '325', '交流与讨论', '各大学习资源共享圣地', NULL);
INSERT INTO `plate` VALUES (8, '编程开发', 'common_53_icon.png', 0, 0, '325', '交流与讨论', '爱好编程的交流圣地', NULL);
INSERT INTO `plate` VALUES (9, '综合交流', 'common_44_icon.png', 1, 1, '325', '交流与讨论', '各种交流的集结', NULL);
INSERT INTO `plate` VALUES (10, '求助问答', 'common_40_icon.png', 0, 0, '325', '交流与讨论', '解决问题的一种途径', NULL);
INSERT INTO `plate` VALUES (11, '寻物启事', 'common_56_icon.jpg', 0, 0, '325', '交流与讨论', '寻找丢失物品的一种快捷途径', NULL);
INSERT INTO `plate` VALUES (12, '休闲灌水', 'common_50_icon.png', 2, 0, '325', '交流与讨论', '休闲娱乐的好地方', NULL);
INSERT INTO `plate` VALUES (13, '官方通告', 'common_46_icon.png', 0, 0, '325', '论坛事务', '官方通告的发布', NULL);
INSERT INTO `plate` VALUES (14, '申述举报', 'common_54_icon.png', 0, 0, '325', '论坛事务', '申述举报交流', NULL);
INSERT INTO `plate` VALUES (15, '建议反馈', 'common_38_icon.png', 0, 0, '325', '论坛事务', '建议反馈交流', NULL);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子主题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '帖子内容',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '发帖者用户id',
  `browse_count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '帖子被查看数',
  `reply_count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '帖子回复数',
  `publish_time` datetime NULL DEFAULT NULL COMMENT '帖子发表时间',
  `first_post` tinyint(1) NULL DEFAULT 0 COMMENT '是否新人帖(0.false,1.true)',
  `post_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '6' COMMENT '帖子状态(0违规,1正常,2置顶,3推荐,4精华,5优秀,6未审核)',
  `post_heat` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '帖子热度(数量)',
  `share_count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '帖子分享次数',
  `post_grade` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '帖子评分数',
  `post_collect` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '帖子被收藏数',
  `post_top` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '帖子被顶人数',
  `post_tread` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '帖子被踩人数',
  `post_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子作者',
  `plate_id` int(11) NULL DEFAULT NULL COMMENT '帖子所在板块',
  `last_reply` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后回复者',
  `last_reply_time` datetime NULL DEFAULT NULL COMMENT '最后回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, '好用的工具', '在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~\n\n而市面上这种软件一个月就需要30大洋，真心用不起啊，所以今天我分享一款免费使用的软件~\n\n自己使用一年多了，真心好用~\n\n扫描全能王\n这是高级账户版，下载后直接就可以使用，无需登录，如果你怕文件丢失可以注册一个账户登录，但是这个我没测试过~\n\n作者：笔启\n链接：https://www.jianshu.com/p/51fc60c5fb4b\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 2, 11, 21, '2025-01-03 23:49:12', 1, '2', 34, 3, '25', '16', '24', '6', '002-2号', 4, 'aini00', '2025-01-06 23:17:33');
INSERT INTO `post` VALUES (2, '好用的工具2', '这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 3, 22, 11, '2024-12-31 21:48:17', 0, '4', 56, 0, '34', '34', '34', '4', '迷失者', 4, '005-5号', '2025-01-13 09:53:14');
INSERT INTO `post` VALUES (3, '真实的故事', '七十年代初，我们村有个女青年。经别人介绍认识邻村的男青年。对方都有好感，不久后他们结婚，婚后他们很恩爱。那时候农村没有穿衣镜，两个人每天出门上工都会帮助对方整理衣服，满意才出门。可他的婆婆有点看不惯这个儿媳妇。她的儿媳妇很能干，那时候都是有公社，大队，小队，没有私人的。他的儿媳妇每晚收工都会拿点小队里的东西回家。她婆婆知道后，就怀疑她儿媳妇和队长有勾搭，不然就拿不到。就逼着她儿子离婚，她儿子不同意，她就要死要活的，儿子无奈离婚了，离婚后才知道女人怀孕了，儿子就跪求他母亲能让他媳妇回家生孩子。他母亲好不容易同意了，他又求别人去他丈母娘家里说，想见自己媳妇一面，可惜他丈母娘就是不同意。很快，十月怀胎生了个儿子，他高兴坏了。就挑一担东西去看他媳妇，他丈母娘就是不让进门。可怜他跪在地上就是不走，他丈母娘用荆棘条抽打，他白色的褂子都被血染红了。直到他昏过去，被家人抬回家后生了一场大病。病好之后，他每天从他们村子走到我们村来找他的媳妇，来的时候都是向前走着的，回家时都是向后退着走，别人问他为什么退着走，他说他媳妇要是回家他退着走能看到。正着走就看不到了。后来他直接住坟地，没过两年就死了。他的媳妇孩子满月后，她母亲又给她找个婆家，嫁过去一年就生病死了。这是个真实的故事，我婆婆和我说。\n\n作者：优雅的转身_5eb5\n链接：https://www.jianshu.com/p/71eb5161f9f8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 5, 44, 0, '2025-01-06 17:11:44', 1, '4', 45, 0, '67', '23', '23', '3', '005-5号', 2, '迷失者', '2025-01-11 15:37:13');
INSERT INTO `post` VALUES (4, 'jvm的原理', '为了充分压榨计算机处理器的性能，多任务处理在现代计算机操作系统中已经是一项必备技能了。\n\n另外由于大部分的计算任务都不可能只靠处理器来单独“计算”完成，处理器需要与内存交互，如读取运算数据，存储运算结果等，这个IO操作是很难消除的。而如今的计算机的存储设备与处理器的运算速度有几个数量级的差距，所以需要在处理器与内存之间加入一层---高速缓存，用来将运算需要使用到的数据复制到缓存中，让运算能快速进行，当运算结束后再从缓存同步回内存之中，这样处理器就可以无需等待缓慢的内存读写了。\n\n高速缓存的引入也带来了一个新的问题:缓存一致性:\n\n多处理器系统，每个处理器都有自己的高速缓存，它们又共享同一个主存:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/060df29fc982\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 4, 11, 3, '2025-01-09 18:55:20', 0, '3', 34, 1, '57', '48', '35', '3', '测试者', 1, 'user', '2024-12-31 13:08:58');
INSERT INTO `post` VALUES (5, 'java+websokect应用', '启用websocket\n从标准的HTTP或者HTTPS协议切换到WebSocket时，将会使用一种称为升级握手的机制。因此，使用WebSocket的应用程序将始终以HTTP/S作为开始，然后再执行升级。这个升级动作发生的确切时刻特定于应用程序；它可能会发生在启动时，也可能会发生在请求了某个特定的URL之后\n\n约定：\n\n如果被请求的 URL 以/ws 结尾，那么我们将会把该协议升级为 WebSocket；\n\n否则，服务器将使用基本的 HTTP/S\n\n服务器逻辑:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/b762f2f618f7\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 4, 23, 1, '2025-01-06 10:40:09', 1, '1', 34, 1, '35', '24', '34', '3', '测试者', 2, '111', '2025-01-03 01:17:12');
INSERT INTO `post` VALUES (6, '【加固分析】之灭灭论坛某些人的威风', '在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~\n\n而市面上这种软件一个月就需要30大洋，真心用不起啊，所以今天我分享一款免费使用的软件~\n\n自己使用一年多了，真心好用~\n\n扫描全能王\n这是高级账户版，下载后直接就可以使用，无需登录，如果你怕文件丢失可以注册一个账户登录，但是这个我没测试过~\n\n作者：笔启\n链接：https://www.jianshu.com/p/51fc60c5fb4b\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 3, 11, 0, '2025-01-11 03:16:57', 1, '1', 34, 0, '23', '12', '23', '5', '迷失者', 4, '迷失者', '2024-12-30 21:34:11');
INSERT INTO `post` VALUES (7, '程序员：面试官，来你要是能说出ZooKeeper原理，我转身就走', '这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 4, 22, 4, '2025-01-10 16:36:01', 0, '4', 56, 2, '35', '34', '35', '4', '测试者', 3, '0001', '2025-01-09 09:04:11');
INSERT INTO `post` VALUES (8, 'Java面试详解(2020版)：500+ 面试题和核心知识点详解', '七十年代初，我们村有个女青年。经别人介绍认识邻村的男青年。对方都有好感，不久后他们结婚，婚后他们很恩爱。那时候农村没有穿衣镜，两个人每天出门上工都会帮助对方整理衣服，满意才出门。可他的婆婆有点看不惯这个儿媳妇。她的儿媳妇很能干，那时候都是有公社，大队，小队，没有私人的。他的儿媳妇每晚收工都会拿点小队里的东西回家。她婆婆知道后，就怀疑她儿媳妇和队长有勾搭，不然就拿不到。就逼着她儿子离婚，她儿子不同意，她就要死要活的，儿子无奈离婚了，离婚后才知道女人怀孕了，儿子就跪求他母亲能让他媳妇回家生孩子。他母亲好不容易同意了，他又求别人去他丈母娘家里说，想见自己媳妇一面，可惜他丈母娘就是不同意。很快，十月怀胎生了个儿子，他高兴坏了。就挑一担东西去看他媳妇，他丈母娘就是不让进门。可怜他跪在地上就是不走，他丈母娘用荆棘条抽打，他白色的褂子都被血染红了。直到他昏过去，被家人抬回家后生了一场大病。病好之后，他每天从他们村子走到我们村来找他的媳妇，来的时候都是向前走着的，回家时都是向后退着走，别人问他为什么退着走，他说他媳妇要是回家他退着走能看到。正着走就看不到了。后来他直接住坟地，没过两年就死了。他的媳妇孩子满月后，她母亲又给她找个婆家，嫁过去一年就生病死了。这是个真实的故事，我婆婆和我说。\n\n作者：优雅的转身_5eb5\n链接：https://www.jianshu.com/p/71eb5161f9f8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 5, 44, 1, '2025-01-02 06:59:10', 1, '4', 45, 0, '67', '24', '24', '3', '005-5号', 9, '005-5号', '2024-12-31 02:41:12');
INSERT INTO `post` VALUES (9, 'jvm的原理2', '为了充分压榨计算机处理器的性能，多任务处理在现代计算机操作系统中已经是一项必备技能了。\n\n另外由于大部分的计算任务都不可能只靠处理器来单独“计算”完成，处理器需要与内存交互，如读取运算数据，存储运算结果等，这个IO操作是很难消除的。而如今的计算机的存储设备与处理器的运算速度有几个数量级的差距，所以需要在处理器与内存之间加入一层---高速缓存，用来将运算需要使用到的数据复制到缓存中，让运算能快速进行，当运算结束后再从缓存同步回内存之中，这样处理器就可以无需等待缓慢的内存读写了。\n\n高速缓存的引入也带来了一个新的问题:缓存一致性:\n\n多处理器系统，每个处理器都有自己的高速缓存，它们又共享同一个主存:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/060df29fc982\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 3, 11, 0, '2024-12-30 02:39:59', 0, '4', 34, 0, '56', '45', '34', '3', '迷失者', 1, '迷失者', '2024-12-30 21:29:47');
INSERT INTO `post` VALUES (10, 'java+websokect应用2', '启用websocket\n从标准的HTTP或者HTTPS协议切换到WebSocket时，将会使用一种称为升级握手的机制。因此，使用WebSocket的应用程序将始终以HTTP/S作为开始，然后再执行升级。这个升级动作发生的确切时刻特定于应用程序；它可能会发生在启动时，也可能会发生在请求了某个特定的URL之后\n\n约定：\n\n如果被请求的 URL 以/ws 结尾，那么我们将会把该协议升级为 WebSocket；\n\n否则，服务器将使用基本的 HTTP/S\n\n服务器逻辑:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/b762f2f618f7\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 3, 23, 0, '2025-01-06 04:20:10', 1, '1', 34, 0, '34', '23', '34', '3', '迷失者', 12, '迷失者', '2025-01-01 19:23:32');
INSERT INTO `post` VALUES (11, '300行代码实现Spring核心原理（彻底搞懂IOC、DI）', '在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~\n\n而市面上这种软件一个月就需要30大洋，真心用不起啊，所以今天我分享一款免费使用的软件~\n\n自己使用一年多了，真心好用~\n\n扫描全能王\n这是高级账户版，下载后直接就可以使用，无需登录，如果你怕文件丢失可以注册一个账户登录，但是这个我没测试过~\n\n作者：笔启\n链接：https://www.jianshu.com/p/51fc60c5fb4b\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 4, 11, 3, '2025-01-06 00:36:54', 1, '1', 34, 1, '23', '13', '23', '6', '测试者', 4, '0001', '2025-01-03 21:22:10');
INSERT INTO `post` VALUES (12, '好用的工具4', '这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 7, 22, 1, '2025-01-03 01:08:32', 0, '6', 56, 1, '35', '35', '34', '4', '007-7号', 3, 'aini00', '2025-01-09 21:35:16');
INSERT INTO `post` VALUES (13, '真实的故事4', '七十年代初，我们村有个女青年。经别人介绍认识邻村的男青年。对方都有好感，不久后他们结婚，婚后他们很恩爱。那时候农村没有穿衣镜，两个人每天出门上工都会帮助对方整理衣服，满意才出门。可他的婆婆有点看不惯这个儿媳妇。她的儿媳妇很能干，那时候都是有公社，大队，小队，没有私人的。他的儿媳妇每晚收工都会拿点小队里的东西回家。她婆婆知道后，就怀疑她儿媳妇和队长有勾搭，不然就拿不到。就逼着她儿子离婚，她儿子不同意，她就要死要活的，儿子无奈离婚了，离婚后才知道女人怀孕了，儿子就跪求他母亲能让他媳妇回家生孩子。他母亲好不容易同意了，他又求别人去他丈母娘家里说，想见自己媳妇一面，可惜他丈母娘就是不同意。很快，十月怀胎生了个儿子，他高兴坏了。就挑一担东西去看他媳妇，他丈母娘就是不让进门。可怜他跪在地上就是不走，他丈母娘用荆棘条抽打，他白色的褂子都被血染红了。直到他昏过去，被家人抬回家后生了一场大病。病好之后，他每天从他们村子走到我们村来找他的媳妇，来的时候都是向前走着的，回家时都是向后退着走，别人问他为什么退着走，他说他媳妇要是回家他退着走能看到。正着走就看不到了。后来他直接住坟地，没过两年就死了。他的媳妇孩子满月后，她母亲又给她找个婆家，嫁过去一年就生病死了。这是个真实的故事，我婆婆和我说。\n\n作者：优雅的转身_5eb5\n链接：https://www.jianshu.com/p/71eb5161f9f8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 6, 44, 0, '2025-01-05 00:23:52', 1, '0', 45, 0, '67', '23', '23', '3', '006-6号', 2, '006-6号', '2025-01-10 10:27:04');
INSERT INTO `post` VALUES (14, 'jvm的原理3', '为了充分压榨计算机处理器的性能，多任务处理在现代计算机操作系统中已经是一项必备技能了。\n\n另外由于大部分的计算任务都不可能只靠处理器来单独“计算”完成，处理器需要与内存交互，如读取运算数据，存储运算结果等，这个IO操作是很难消除的。而如今的计算机的存储设备与处理器的运算速度有几个数量级的差距，所以需要在处理器与内存之间加入一层---高速缓存，用来将运算需要使用到的数据复制到缓存中，让运算能快速进行，当运算结束后再从缓存同步回内存之中，这样处理器就可以无需等待缓慢的内存读写了。\n\n高速缓存的引入也带来了一个新的问题:缓存一致性:\n\n多处理器系统，每个处理器都有自己的高速缓存，它们又共享同一个主存:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/060df29fc982\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 5, 11, 1, '2024-12-30 13:00:18', 0, '1', 34, 2, '57', '46', '34', '3', '005-5号', 1, '005-5号', '2025-01-05 19:23:33');
INSERT INTO `post` VALUES (15, 'java+websokect应用3', '启用websocket\n从标准的HTTP或者HTTPS协议切换到WebSocket时，将会使用一种称为升级握手的机制。因此，使用WebSocket的应用程序将始终以HTTP/S作为开始，然后再执行升级。这个升级动作发生的确切时刻特定于应用程序；它可能会发生在启动时，也可能会发生在请求了某个特定的URL之后\n\n约定：\n\n如果被请求的 URL 以/ws 结尾，那么我们将会把该协议升级为 WebSocket；\n\n否则，服务器将使用基本的 HTTP/S\n\n服务器逻辑:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/b762f2f618f7\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', 2, 23, 1, '2025-01-04 09:03:09', 1, '1', 34, 1, '34', '23', '34', '3', '002-2号', 6, 'aini00', '2025-01-05 11:41:59');
INSERT INTO `post` VALUES (16, 'ceshi', '<p>wefwefwefwe<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/af/cry.gif\" alt=\"[衰]\" data-w-e=\"1\"></p>', 3, 0, 0, '2024-12-31 12:49:38', 0, '1', 0, 0, '1', '1', '1', '1', '迷失者', 4, '迷失者', '2025-01-03 15:08:42');
INSERT INTO `post` VALUES (17, 'erhbytny', '<p>额我国符合率<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f4/cj_thumb.gif\" alt=\"[吃惊]\" data-w-e=\"1\"></p>', 3, 0, 1, '2025-01-11 14:31:51', 0, '1', 0, 0, '1', '1', '1', '1', '迷失者', 6, 'aini00', '2025-01-03 00:51:19');
INSERT INTO `post` VALUES (18, '游戏测试', '<p>阿那更好共和国好好干<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/af/kl_thumb.gif\" alt=\"[可怜]\" data-w-e=\"1\"></p>', 3, 0, 0, '2025-01-13 01:15:09', 0, '1', 0, 1, '1', '1', '2', '1', '迷失者', 4, '迷失者', '2025-01-13 13:50:30');
INSERT INTO `post` VALUES (19, '试试水', '<p>唉,微分无法重复特工<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6e/panda_thumb.gif\" alt=\"[熊猫]\" data-w-e=\"1\"></p>', 4, 0, 0, '2024-12-30 11:20:16', 0, '1', 0, 0, '1', '1', '1', '1', '测试者', 3, '测试者', '2025-01-08 00:56:39');
INSERT INTO `post` VALUES (20, '测试12138', '<p>测试20200604</p>', 3, 0, 0, '2025-01-06 09:38:59', 0, '4', 0, 0, '1', '1', '1', '1', '迷失者', 12, '迷失者', '2024-12-30 00:05:26');
INSERT INTO `post` VALUES (21, 'java 中的 String', '<p>解析：<br><br>s1和s2：<br><br>String s1 = \"123\";先是在字符串常量池创建了一个字符串常量“123”，“123”常量是有地址值，地址值赋值给s1。接着声明 String s2=“123”,由于s1已经在方法区的常量池创建字符串常量\"123\"，进入常量池规则：如果常量池中没有这个常量，就创建一个，如果有就不再创建了，故直接把常量\"123\"的地址值赋值给s2，所以s1==s2为true。<br><br>由于String类重写了equals方法，s1.equals(s2)比较的是字符串的内容，s1和s2的内容都是\"123\"，故s1.equals(s2)为true。<br><br>s3和s4：<br><br>s3创建了一个新的字符串\"1234\"，s4是两个新的字符串\"12\"和\"34\"通过\"+“符号连接所得，根据Java中常量优化机制, “12” 和\"34\"两个字符串常量在编译期就连接创建了字符串\"1234”,由于字符串\"1234\"在常量池中存在，故直接把\"1234\"在常量池的地址赋值给s4，所以s3==s4为true。<br><br>s3和s5：<br><br>s5是由一个变量s1连接一个新的字符串\"4\"，首先会在常量池创建字符串\"4\"，然后进行\"+“操作，根据字符串的串联规则，s5会在堆内存中创建StringBuilder（或StringBuffer）对象，通过append方法拼接s1和字符串常量\"4”，此时拼接成的字符串\"1234\"是StringBuilder（或StringBuffer）类型的对象，通过调用toString方法转成String对象\"1234\"，所以s5此时实际指向的是堆内存中的\"1234\"对象，堆内存中对象的地址和常量池中对象的地址不一致，故s3==s5为false。<br>————————————————<br>版权声明：本文为CSDN博主「xqnode」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。<br>原文链接：https://blog.csdn.net/xqnode/article/details/106663571</p>', 3, 0, 0, '2024-12-30 08:54:29', 0, '1', 0, 0, '1', '1', '1', '1', '迷失者', 1, '迷失者', '2025-01-03 03:28:01');
INSERT INTO `post` VALUES (22, '发话人换购', '<p>收到GV反而开放男<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6e/shamea_thumb.gif\" alt=\"[害羞]\" data-w-e=\"1\"></p>', 3, 0, 0, '2025-01-03 10:06:14', 0, '1', 0, 1, '1', '2', '2', '1', '迷失者', 4, '迷失者', '2025-01-01 11:54:05');
INSERT INTO `post` VALUES (28, 'wfewf', '<p>wefewf<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/a0/kbsa_thumb.gif\" alt=\"[挖鼻屎]\" data-w-e=\"1\"></p>', 18, 0, 0, '2025-01-03 07:27:21', 0, '1', 0, 0, '1', '1', '1', '2', 'woai00', 3, 'woai00', '2025-01-08 20:05:52');
INSERT INTO `post` VALUES (29, '告白测试!', '<p>哎哎哎哎哎嗷嗷嗷嗷嗷&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/e9/sk_thumb.gif\" alt=\"[思考]\" data-w-e=\"1\"></p>', 20, 0, 0, '2025-01-11 01:52:13', 0, '1', 0, 0, '1', '1', '1', '1', '也许吧', 5, '也许吧', '2025-01-07 16:56:43');
INSERT INTO `post` VALUES (30, '游戏帖子', '<p>问个人搞人头<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/af/cry.gif\" alt=\"[衰]\" data-w-e=\"1\"></p><p><img src=\"/leek_bbs/uploadfiles/2020/6/bcf3e8dcc6de4bc592f5cf7485ad91a9.jpg\" style=\"max-width:100%;\"><br></p>', 20, 0, 0, '2025-01-02 15:00:02', 0, '1', 0, 0, '1', '1', '1', '1', '也许吧', 4, '也许吧', '2025-01-11 19:31:09');
INSERT INTO `post` VALUES (31, '测试', '<p>这是游戏版块发帖测试<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/7a/shenshou_thumb.gif\" alt=\"[草泥马]\" data-w-e=\"1\"></p>', 3, 0, 1, '2025-01-11 12:58:21', 0, '2', 0, 0, '1', '1', '2', '1', '迷失者', 4, 'admin', '2025-01-01 04:18:03');
INSERT INTO `post` VALUES (32, '表白墙', '<p>xxx年级xxx班级的姑娘很好看，求联系方式</p>', 21, 0, 3, '2025-01-09 11:28:51', 0, '1', 0, 1, '2', '2', '1', '1', '小白', 5, 'user1', '2024-12-31 21:50:28');
INSERT INTO `post` VALUES (33, '校园趣事发布2024-1-4', '<p><span style=\"font-weight: bold;\">校园趣事</span></p><p>发布校园趣事发布校园趣事发布校园趣事发布校园趣事发布校园趣事发布</p>', 21, 0, 0, '2024-12-31 23:11:05', 0, '1', 0, 0, '1', '1', '1', '1', '小白', 3, '小白', '2025-01-01 22:11:06');
INSERT INTO `post` VALUES (34, 'www', '<p>www</p>', 23, 0, 6, '2025-01-13 15:18:33', 0, '1', 0, 0, '1', '1', '1', '1', '111', 1, '111', '2024-12-31 18:13:48');
INSERT INTO `post` VALUES (35, '测试帖', '<p>测试</p>', 23, 0, 1, '2025-01-08 08:40:19', 0, '1', 0, 0, '1', '1', '2', '1', '111', 1, 'user', '2025-01-04 01:26:03');
INSERT INTO `post` VALUES (36, '111', '<p>1111</p>', 21, 0, 0, '2025-01-14 22:23:07', 0, '1', 0, 0, '1', '1', '1', '1', '小白哥', 1, '小白哥', '2025-01-14 22:23:07');

-- ----------------------------
-- Table structure for post_details
-- ----------------------------
DROP TABLE IF EXISTS `post_details`;
CREATE TABLE `post_details`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pd_uid` int(11) NULL DEFAULT NULL COMMENT '回复此帖子的用户id',
  `post_id` int(11) NULL DEFAULT NULL COMMENT '帖子主题id',
  `pd_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '帖子回复内容',
  `seat` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位子(沙发,椅子,凳子,地毯,凉席,报纸,地板,地下室,下水道)',
  `reply_time` datetime NULL DEFAULT NULL COMMENT '帖子回复时间',
  `isLook` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否已查看',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子回复表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_details
-- ----------------------------
INSERT INTO `post_details` VALUES (2, 3, 1, '终于生了', '2', '2024-12-30 12:49:32', '1');
INSERT INTO `post_details` VALUES (3, 2, 1, '是公是母啊', '3', '2025-01-09 16:41:21', '1');
INSERT INTO `post_details` VALUES (4, 1, 1, '好像都有', '4', '2025-01-02 14:44:57', '1');
INSERT INTO `post_details` VALUES (5, 7, 1, '那让老夫来一卦', '5', '2025-01-05 21:50:30', '0');
INSERT INTO `post_details` VALUES (6, 4, 1, '阿各方问候不完善', '6', '2025-01-13 16:16:18', '0');
INSERT INTO `post_details` VALUES (9, 4, 2, 'as规划和老人看过', '2', '2025-01-03 14:54:42', '1');
INSERT INTO `post_details` VALUES (10, 5, 2, '很大方Gij人挺好个G二胖', '3', '2025-01-01 23:24:08', '1');
INSERT INTO `post_details` VALUES (11, 3, 4, '很失望v哥说过', '1', '2025-01-07 20:57:12', '1');
INSERT INTO `post_details` VALUES (12, 3, 1, '<p>在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~ 而市面上这种软件一个月就需要30大洋，真心用不起啊，所以今天我分享一款免费使用的软件~&nbsp;<a href=\"http://www.baidu.com/\" target=\"_blank\">Go</a>&nbsp;&nbsp;&nbsp;<br></p>', '8', '2025-01-12 00:43:31', '0');
INSERT INTO `post_details` VALUES (13, 3, 1, '<p>ε=(´ο｀*)))唉,人生真不容易啊!!<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/9d/sada_thumb.gif\" alt=\"[泪]\" data-w-e=\"1\">&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/1a/bs_thumb.gif\" alt=\"[悲伤]\" data-w-e=\"1\"></p>', '9', '2025-01-06 22:09:00', '0');
INSERT INTO `post_details` VALUES (14, 3, 1, '<p>嗷嗷嗷啊,让暴风雨来的更猛烈些吧 !&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/7c/angrya_thumb.gif\" alt=\"[怒]\" data-w-e=\"1\"></p>', '10', '2025-01-05 18:13:47', '0');
INSERT INTO `post_details` VALUES (15, 4, 1, '<p>在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~ 而市面上这种软件一个月就需要30大洋，真心用不起啊!&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/71/bs2_thumb.gif\" alt=\"[鄙视]\" data-w-e=\"1\">&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/40/cool_thumb.gif\" alt=\"[酷]\" data-w-e=\"1\"><br></p>', '11', '2025-01-10 21:38:34', '1');
INSERT INTO `post_details` VALUES (18, 6, 1, '<p>一群废物啊,&nbsp; ^_^&nbsp; &nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\" alt=\"[给力]\" data-w-e=\"1\">O(∩_∩)O哈哈~</p>', '13', '2024-12-30 02:40:59', '0');
INSERT INTO `post_details` VALUES (19, 6, 1, '<h4 style=\"text-align: center;\"><span style=\"background-color: rgb(249, 150, 59);\">就不相信了,冲啊</span><span style=\"background-color: rgb(77, 128, 191);\">&nbsp;</span><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/40/cool_thumb.gif\" alt=\"[酷]\" data-w-e=\"1\" style=\"background-color: rgb(250, 251, 252);\"></h4>', '14', '2024-12-30 20:21:15', '0');
INSERT INTO `post_details` VALUES (21, 6, 1, '<p>啊未婚夫华为问各 位&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif\" alt=\"[神马]\" data-w-e=\"1\">&nbsp;</p><p><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\" alt=\"[给力]\" data-w-e=\"1\">&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/89/hufen_thumb.gif\" alt=\"[互粉]\" data-w-e=\"1\"><br></p>', '16', '2025-01-10 07:54:35', '0');
INSERT INTO `post_details` VALUES (22, 6, 1, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <span style=\"font-size: 32px;opacity: .6;\">“</span>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">007-7号&nbsp;&nbsp;发表于&nbsp;2020-05-14 09:41</spna><br>\n                                <div class=\"text-hidden\">那让老夫来一卦</div>\n                                <div style=\"float:right;margin-top:-40px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>(⊙_⊙)?&nbsp; &nbsp; &nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f2/wg_thumb.gif\" alt=\"[围观]\" data-w-e=\"1\"></p>', '17', '2025-01-10 12:52:44', '0');
INSERT INTO `post_details` VALUES (27, 3, 8, '<div class=\"citeReply\" style=\"margin-left:10px;margin-bottom: 20px;\">\n                            <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                            <spna style=\"margin-left:15px;opacity: 0.7\">005-5号&nbsp;&nbsp;发表于&nbsp;2020-05-15 16:24</spna><br>\n                            <div class=\"text-hidden\">七十年代初，我们村有个女青年。经别人介绍认识邻村的男青年。对方都有好感，不久后他们结婚，婚后他们很恩爱。那时候农村没有穿衣镜，两个人每天出门上工都会帮助对方整理衣服，满意才出门。可他的婆婆有点看不惯这个儿媳妇。她的儿媳妇很能干，那时候都是有公社，大队，小队，没有私人的。他的儿媳妇每晚收工都会拿点小队里的东西回家。她婆婆知道后，就怀疑她儿媳妇和队长有勾搭，不然就拿不到。就逼着她儿子离婚，她儿子不同意，她就要死要活的，儿子无奈离婚了，离婚后才知道女人怀孕了，儿子就跪求他母亲能让他媳妇回家生孩子。他母亲好不容易同意了，他又求别人去他丈母娘家里说，想见自己媳妇一面，可惜他丈母娘就是不同意。很快，十月怀胎生了个儿子，他高兴坏了。就挑一担东西去看他媳妇，他丈母娘就是不让进门。可怜他跪在地上就是不走，他丈母娘用荆棘条抽打，他白色的褂子都被血染红了。直到他昏过去，被家人抬回家后生了一场大病。病好之后，他每天从他们村子走到我们村来找他的媳妇，来的时候都是向前走着的，回家时都是向后退着走，别人问他为什么退着走，他说他媳妇要是回家他退着走能看到。正着走就看不到了。后来他直接住坟地，没过两年就死了。他的媳妇孩子满月后，她母亲又给她找个婆家，嫁过去一年就生病死了。这是个真实的故事，我婆婆和我说。\n\n作者：优雅的转身_5eb5\n链接：https://www.jianshu.com/p/71eb5161f9f8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                            <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                        </div><blockquote>O(∩_∩)O哈哈~&nbsp;&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif\" alt=\"[哈哈]\" data-w-e=\"1\" style=\"background-color: rgb(255, 255, 255);\"></blockquote>', '1', '2025-01-12 09:33:36', '1');
INSERT INTO `post_details` VALUES (29, 3, 2, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">005-5号&nbsp;&nbsp;发表于&nbsp;2020-05-15 09:43</spna><br>\n                                <div class=\"text-hidden\">很大方Gij人挺好个G二胖</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>去违反违反&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6b/sleepa_thumb.gif\" alt=\"[睡觉]\" data-w-e=\"1\"></p>', '5', '2025-01-08 23:52:25', '1');
INSERT INTO `post_details` VALUES (30, 4, 2, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">迷失者&nbsp;&nbsp;发表于&nbsp;2020-04-08 16:23</spna><br>\n                                <div class=\"text-hidden\">这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>黄飞鸿沃尔夫格&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/49/hatea_thumb.gif\" alt=\"[哼]\" data-w-e=\"1\"></p>', '6', '2025-01-06 06:52:32', '1');
INSERT INTO `post_details` VALUES (33, 4, 2, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">迷失者&nbsp;&nbsp;发表于&nbsp;2020-04-08 16:23</spna><br>\n                                <div class=\"text-hidden\">这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>为符号位IE返利网&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/b6/sb_thumb.gif\" alt=\"[生病]\" data-w-e=\"1\"></p>', '3', '2025-01-13 14:55:48', '1');
INSERT INTO `post_details` VALUES (34, 4, 2, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">迷失者&nbsp;&nbsp;发表于&nbsp;2020-04-08 16:23</spna><br>\n                                <div class=\"text-hidden\">这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><blockquote>o(*￣︶￣*)o&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/d9/dizzya_thumb.gif\" alt=\"[晕]\" data-w-e=\"1\" style=\"background-color: rgb(255, 255, 255);\"></blockquote>', '4', '2025-01-10 16:51:12', '1');
INSERT INTO `post_details` VALUES (35, 4, 2, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">测试者&nbsp;&nbsp;发表于&nbsp;2020-05-22 21:08</spna><br>\n                                <div class=\"text-hidden\"><div class=\"citeReply\" style=\"margin-bottom: 20px; display: none;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">迷失者&nbsp;&nbsp;发表于&nbsp;2020-04-08 16:23</spna><br>\n                                <div class=\"text-hidden\">这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><blockquote>o(*￣︶￣*)o&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/d9/dizzya_thumb.gif\" alt=\"[晕]\" data-w-e=\"1\" style=\"background-color: rgb(255, 255, 255);\"></blockquote></div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>威风威风&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/89/nm_thumb.gif\" alt=\"[怒骂]\" data-w-e=\"1\"></p>', '5', '2025-01-07 15:53:28', '0');
INSERT INTO `post_details` VALUES (37, 4, 14, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">005-5号&nbsp;&nbsp;发表于&nbsp;2020-05-11 16:24</spna><br>\n                                <div class=\"text-hidden\">为了充分压榨计算机处理器的性能，多任务处理在现代计算机操作系统中已经是一项必备技能了。\n\n另外由于大部分的计算任务都不可能只靠处理器来单独“计算”完成，处理器需要与内存交互，如读取运算数据，存储运算结果等，这个IO操作是很难消除的。而如今的计算机的存储设备与处理器的运算速度有几个数量级的差距，所以需要在处理器与内存之间加入一层---高速缓存，用来将运算需要使用到的数据复制到缓存中，让运算能快速进行，当运算结束后再从缓存同步回内存之中，这样处理器就可以无需等待缓慢的内存读写了。\n\n高速缓存的引入也带来了一个新的问题:缓存一致性:\n\n多处理器系统，每个处理器都有自己的高速缓存，它们又共享同一个主存:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/060df29fc982\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>矮个人我国何师傅号给我深V&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6e/panda_thumb.gif\" alt=\"[熊猫]\" data-w-e=\"1\"></p>', '1', '2025-01-03 01:14:00', '0');
INSERT INTO `post_details` VALUES (39, 3, 4, '<blockquote>我师父GV我国 爱疯舞访问&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/d3/clock_thumb.gif\" alt=\"[钟]\" data-w-e=\"1\" style=\"background-color: rgb(250, 251, 252);\"></blockquote>', '2', '2025-01-08 16:27:11', '1');
INSERT INTO `post_details` VALUES (41, 6, 2, '<p>唉,人生啊<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif\" alt=\"[威武]\" data-w-e=\"1\"></p>', '1', '2025-01-05 08:58:52', '0');
INSERT INTO `post_details` VALUES (43, 3, 2, '<p>如果世界漆黑其实我很美!&nbsp;<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[坏笑]\" data-w-e=\"1\"></p>', '4', '2025-01-07 09:50:59', '0');
INSERT INTO `post_details` VALUES (45, 3, 12, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">007-7号&nbsp;&nbsp;发表于&nbsp;2020-05-16 16:23</spna><br>\n                                <div class=\"text-hidden\">这么久以来，我也分享了不少好东西，有非常好用的影视软件，音乐下载软件，免费看小说、漫画的软件以及各种会员版软件~\n\n但一直没有一些办公类的实用软件，前两天一位朋友私下问我有没有一款录屏的软件，希望我可以分享一下，自己十分需要，那么今天我就安利一款~\n\noCam录屏\n支持系统：win系统\n\n测评设备：win7 64位系统\n\n测评结果：软件功能非常齐全，录制视频无水印\n\noCam录屏是一款免费的录屏软件，而且录制出来的视频是没有任何水印的，软件非常小巧，使用很方便~\n\n打开软件，会直接进入录制页面~\n\n\n\n作者：笔启\n链接：https://www.jianshu.com/p/7a3079bab5e8\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>测试</p>', '1', '2025-01-07 02:15:57', '0');
INSERT INTO `post_details` VALUES (47, 3, 7, '<p>一场面试已经进行了许久，几番“交战”下来，程序员Y已经是满头大汗…<br><br>面试官：这样吧，你再来说说Zookeeper的工作原理<br><br>程序员Y（终于按捺不住自己心头的怒火）：有事没事问底层，有事没事问原理，我TMD写代码又不是做学术，会用就行了，知道底层原理有屁用啊？<br><br>面试官：小伙子啊！你如果连某个技术的底层原理都搞不懂的话，那你又怎么能把它运用自如呢？你又怎么会知道在不同的场景下应该使用什么样的框架呢？<br><br>程序员Y：那我不管，我觉得我能在我所在的岗位做好我自己要做的事情就行了，熟知原理这些还浪费时间，工作中有用不到…<br><br>面试官：好了，既然你这样想，你先回家等通知吧…（朝着门口）下一位…<br><br>程序员Y：凭什么啊？我就面试一个7K的岗位，基础的我都答上来了，来，你来跟我讲讲Zookeeper的工作原理，要是能说出来，我转身就走…<br><br>面试官：行，小伙子啊，听我娓娓道来…<br><br>首先，通俗来讲，Zookeeper 的核心是原子广播，这个机制保证了各个 server 之间的同步。实现这个机制的协议叫做 Zab 协议。Zab 协议有两种模式，它们分别是恢复模式和广播模式。<br><br>当服务启动或者在领导者崩溃后，Zab 就进入了恢复模式，当领导者被选举出来，且大多数 server 的完成了和 leader 的状态同步以后，恢复模式就结束了。<br><br>状态同步保证了 leader 和 server 具有相同的系统状态。<br><br>一旦 leader 已经和多数的 follower 进行了状态同步后，他就可以开始广播消息了，即进入广播状态。这时候当一个 server 加入 zookeeper 服务中，它会在恢复模式下启动，发现 leader，并和 leader 进行状态同步。待到同步结束，它也参与消息广播。Zookeeper服务一直维持在 Broadcast 状态，直到 leader 崩溃了或者 leader 失去了大部分的followers 支持。<br><br>广播模式需要保证 proposal 被按顺序处理，因此 zk 采用了递增的事务 id 号(zxid)来保证。所有的提议(proposal)都在被提出的时候加上了 zxid。<br><br>实现中 zxid 是一个 64 为的数字，它高 32 位是 epoch 用来标识 leader 关系是否改变，每次一个 leader 被选出来，它都会有一个新的 epoch。低 32 位是个递增计数。<br><br>当 leader 崩溃或者 leader 失去大多数的 follower，这时候 zk 进入恢复模式，恢复模式需要重新选举出一个新的 leader，让所有的 server 都恢复到一个正确的状态。<br><br>如果往多了来讲，它内部原理具体分为以下十项：<br><br>请求、事务和标识符<br>群首选举<br>Zab：状态更新的广播协议<br>观察者<br>服务器的构成<br>本地存储<br>服务器与会话<br>服务器与监视点<br>客户端<br>序列化<br>面试官：怎么样小伙子？知道了吗？<br><br>程序员Y：虽然听了半天我也没有听懂你说的什么，但是感觉很有道理的样子，告辞！<br>————————————————<br>版权声明：本文为CSDN博主「EnjoyEDU」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。<br>原文链接：https://blog.csdn.net/EnjoyEDU/article/details/106094565</p>', '1', '2025-01-13 08:35:57', '0');
INSERT INTO `post_details` VALUES (48, 3, 7, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">迷失者&nbsp;&nbsp;发表于&nbsp;2020-06-11 11:02</spna><br>\n                                <div class=\"text-hidden\"><p>一场面试已经进行了许久，几番“交战”下来，程序员Y已经是满头大汗…<br><br>面试官：这样吧，你再来说说Zookeeper的工作原理<br><br>程序员Y（终于按捺不住自己心头的怒火）：有事没事问底层，有事没事问原理，我TMD写代码又不是做学术，会用就行了，知道底层原理有屁用啊？<br><br>面试官：小伙子啊！你如果连某个技术的底层原理都搞不懂的话，那你又怎么能把它运用自如呢？你又怎么会知道在不同的场景下应该使用什么样的框架呢？<br><br>程序员Y：那我不管，我觉得我能在我所在的岗位做好我自己要做的事情就行了，熟知原理这些还浪费时间，工作中有用不到…<br><br>面试官：好了，既然你这样想，你先回家等通知吧…（朝着门口）下一位…<br><br>程序员Y：凭什么啊？我就面试一个7K的岗位，基础的我都答上来了，来，你来跟我讲讲Zookeeper的工作原理，要是能说出来，我转身就走…<br><br>面试官：行，小伙子啊，听我娓娓道来…<br><br>首先，通俗来讲，Zookeeper 的核心是原子广播，这个机制保证了各个 server 之间的同步。实现这个机制的协议叫做 Zab 协议。Zab 协议有两种模式，它们分别是恢复模式和广播模式。<br><br>当服务启动或者在领导者崩溃后，Zab 就进入了恢复模式，当领导者被选举出来，且大多数 server 的完成了和 leader 的状态同步以后，恢复模式就结束了。<br><br>状态同步保证了 leader 和 server 具有相同的系统状态。<br><br>一旦 leader 已经和多数的 follower 进行了状态同步后，他就可以开始广播消息了，即进入广播状态。这时候当一个 server 加入 zookeeper 服务中，它会在恢复模式下启动，发现 leader，并和 leader 进行状态同步。待到同步结束，它也参与消息广播。Zookeeper服务一直维持在 Broadcast 状态，直到 leader 崩溃了或者 leader 失去了大部分的followers 支持。<br><br>广播模式需要保证 proposal 被按顺序处理，因此 zk 采用了递增的事务 id 号(zxid)来保证。所有的提议(proposal)都在被提出的时候加上了 zxid。<br><br>实现中 zxid 是一个 64 为的数字，它高 32 位是 epoch 用来标识 leader 关系是否改变，每次一个 leader 被选出来，它都会有一个新的 epoch。低 32 位是个递增计数。<br><br>当 leader 崩溃或者 leader 失去大多数的 follower，这时候 zk 进入恢复模式，恢复模式需要重新选举出一个新的 leader，让所有的 server 都恢复到一个正确的状态。<br><br>如果往多了来讲，它内部原理具体分为以下十项：<br><br>请求、事务和标识符<br>群首选举<br>Zab：状态更新的广播协议<br>观察者<br>服务器的构成<br>本地存储<br>服务器与会话<br>服务器与监视点<br>客户端<br>序列化<br>面试官：怎么样小伙子？知道了吗？<br><br>程序员Y：虽然听了半天我也没有听懂你说的什么，但是感觉很有道理的样子，告辞！<br>————————————————<br>版权声明：本文为CSDN博主「EnjoyEDU」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。<br>原文链接：https://blog.csdn.net/EnjoyEDU/article/details/106094565</p></div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>6666666666666&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\" alt=\"[给力]\" data-w-e=\"1\"></p>', '2', '2024-12-30 00:09:45', '0');
INSERT INTO `post_details` VALUES (49, 3, 7, '<p>唉,<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"></p>', '3', '2025-01-08 08:51:09', '0');
INSERT INTO `post_details` VALUES (51, 18, 27, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">abcd&nbsp;&nbsp;发表于&nbsp;2020-06-17 09:04</spna><br>\n                                <div class=\"text-hidden\"><p>xdrcvjgbh<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f4/cj_thumb.gif\" alt=\"[吃惊]\" data-w-e=\"1\"><img src=\"/leek_bbs/uploadfiles/2020/6/1c3cd119229f40b09d8bb1954a9babf7.jpg\" style=\"max-width: 100%;\"></p></div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>futfyhhuj</p>', '1', '2025-01-10 19:18:06', '0');
INSERT INTO `post_details` VALUES (52, 18, 27, '<p>sedrtfghu<img src=\"/leek_bbs/uploadfiles/2020/6/352e8d50ceb445acad80120662b4f944.jpg\" style=\"max-width: 100%;\"><img src=\"/leek_bbs/uploadfiles/2020/6/880bf4c916b14aecacca2c2a71f6658f.png\" style=\"max-width: 100%;\"><img src=\"/leek_bbs/uploadfiles/2020/6/1c526d054a94425e90b733c77642a7c9.png\" style=\"max-width: 100%;\"></p>', '2', '2025-01-05 14:11:13', '0');
INSERT INTO `post_details` VALUES (53, 3, 11, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">测试者&nbsp;&nbsp;发表于&nbsp;2020-05-15 16:23</spna><br>\n                                <div class=\"text-hidden\">在日常的工作和生活中，经常需要把一张表格或者文档上面的文字转换为扫描电子版，如果是自己在输入一遍也会比较麻烦~\n\n而市面上这种软件一个月就需要30大洋，真心用不起啊，所以今天我分享一款免费使用的软件~\n\n自己使用一年多了，真心好用~\n\n扫描全能王\n这是高级账户版，下载后直接就可以使用，无需登录，如果你怕文件丢失可以注册一个账户登录，但是这个我没测试过~\n\n作者：笔启\n链接：https://www.jianshu.com/p/51fc60c5fb4b\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>人生挺无奈的,加油&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/bc/otm_thumb.gif\" alt=\"[奥特曼]\" data-w-e=\"1\"></p>', '1', '2025-01-05 02:46:36', '0');
INSERT INTO `post_details` VALUES (54, 3, 17, '<p>测试回复<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/a0/kbsa_thumb.gif\" alt=\"[挖鼻屎]\" data-w-e=\"1\"></p>', '1', '2025-01-03 18:38:58', '0');
INSERT INTO `post_details` VALUES (55, 20, 11, '<p>卧槽啊,无法解决的bug!&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/62/crazya_thumb.gif\" alt=\"[抓狂]\" data-w-e=\"1\"></p>', '1', '2024-12-31 13:03:39', '0');
INSERT INTO `post_details` VALUES (56, 20, 7, '<p>O(∩_∩)O哈哈~&nbsp;<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/81/rabbit_thumb.gif\" alt=\"[兔子]\" data-w-e=\"1\"></p>', '1', '2025-01-12 15:48:07', '0');
INSERT INTO `post_details` VALUES (57, 3, 15, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">002-2号&nbsp;&nbsp;发表于&nbsp;2020-05-21 16:33</spna><br>\n                                <div class=\"text-hidden\">启用websocket\n从标准的HTTP或者HTTPS协议切换到WebSocket时，将会使用一种称为升级握手的机制。因此，使用WebSocket的应用程序将始终以HTTP/S作为开始，然后再执行升级。这个升级动作发生的确切时刻特定于应用程序；它可能会发生在启动时，也可能会发生在请求了某个特定的URL之后\n\n约定：\n\n如果被请求的 URL 以/ws 结尾，那么我们将会把该协议升级为 WebSocket；\n\n否则，服务器将使用基本的 HTTP/S\n\n服务器逻辑:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/b762f2f618f7\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>挺好的<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c3/zy_thumb.gif\" alt=\"[挤眼]\" data-w-e=\"1\"></p>', '1', '2025-01-10 18:05:11', '0');
INSERT INTO `post_details` VALUES (58, 4, 31, '<p>评论操作&nbsp;<img alt=\"[挖鼻屎]\" src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/a0/kbsa_thumb.gif\" data-w-e=\"1\"></p>', '1', '2025-01-03 19:02:47', '0');
INSERT INTO `post_details` VALUES (59, 21, 4, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">测试者&nbsp;&nbsp;发表于&nbsp;2020-05-11 16:24</spna><br>\n                                <div class=\"text-hidden\">为了充分压榨计算机处理器的性能，多任务处理在现代计算机操作系统中已经是一项必备技能了。\n\n另外由于大部分的计算任务都不可能只靠处理器来单独“计算”完成，处理器需要与内存交互，如读取运算数据，存储运算结果等，这个IO操作是很难消除的。而如今的计算机的存储设备与处理器的运算速度有几个数量级的差距，所以需要在处理器与内存之间加入一层---高速缓存，用来将运算需要使用到的数据复制到缓存中，让运算能快速进行，当运算结束后再从缓存同步回内存之中，这样处理器就可以无需等待缓慢的内存读写了。\n\n高速缓存的引入也带来了一个新的问题:缓存一致性:\n\n多处理器系统，每个处理器都有自己的高速缓存，它们又共享同一个主存:\n\n作者：Cool_Pomelo\n链接：https://www.jianshu.com/p/060df29fc982\n来源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>11122</p>', '1', '2025-01-01 17:09:35', '0');
INSERT INTO `post_details` VALUES (60, 21, 32, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">小白&nbsp;&nbsp;发表于&nbsp;2024-01-04 10:19</spna><br>\n                                <div class=\"text-hidden\"><p>xxx年级xxx班级的姑娘很好看，求联系方式</p></div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>1111111</p>', '1', '2025-01-06 14:38:21', '0');
INSERT INTO `post_details` VALUES (61, 21, 32, '<p>12121212</p>', '2', '2024-12-31 06:47:06', '0');
INSERT INTO `post_details` VALUES (62, 22, 32, '<div class=\"citeReply\" style=\"margin-bottom: 20px;\">\n                                <div style=\"position: absolute;left:-8px;top:4px;font-size: 32px;opacity: .6;\">“</div>\n                                <spna style=\"margin-left:15px;opacity: 0.7\">小白&nbsp;&nbsp;发表于&nbsp;2024-01-04 10:21</spna><br>\n                                <div class=\"text-hidden\"><p>12121212</p></div>\n                                <div style=\"position:absolute;right:-6px;bottom:-12px;font-size: 32px;opacity: .6;\">”</div>\n                            </div><p>哈哈哈哈哈<br></p>', '1', '2025-01-11 09:34:39', '0');
INSERT INTO `post_details` VALUES (63, 21, 35, '<p>goodgoodgood</p>', '1', '2025-01-05 19:26:42', '0');
INSERT INTO `post_details` VALUES (64, 23, 34, '<p>ss</p>', '1', '2025-01-10 01:33:37', '0');
INSERT INTO `post_details` VALUES (65, 23, 34, '<p>脏话1</p>', '2', '2025-01-07 09:37:57', '0');
INSERT INTO `post_details` VALUES (66, 23, 34, '<p>*</p>', '3', '2024-12-31 13:06:52', '0');
INSERT INTO `post_details` VALUES (67, 23, 34, '<p>我是*</p>', '4', '2025-01-13 14:55:48', '0');
INSERT INTO `post_details` VALUES (69, 23, 34, '<p>楼主是*</p>', '6', '2025-01-10 16:48:58', '0');
INSERT INTO `post_details` VALUES (70, 23, 5, '<p>*</p>', '1', '2025-01-06 09:34:42', '0');

-- ----------------------------
-- Table structure for post_operation
-- ----------------------------
DROP TABLE IF EXISTS `post_operation`;
CREATE TABLE `post_operation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NULL DEFAULT NULL COMMENT '主题id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `isCompletion` tinyint(1) NULL DEFAULT 1 COMMENT '是否已做操作(0.false,1.true)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户主题操作表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_operation
-- ----------------------------
INSERT INTO `post_operation` VALUES (1, 1, 3, 1);
INSERT INTO `post_operation` VALUES (2, 1, 4, 1);
INSERT INTO `post_operation` VALUES (3, 1, 5, 1);
INSERT INTO `post_operation` VALUES (4, 8, 3, 1);
INSERT INTO `post_operation` VALUES (5, 14, 4, 1);
INSERT INTO `post_operation` VALUES (6, 4, 3, 1);
INSERT INTO `post_operation` VALUES (7, 5, 3, 1);
INSERT INTO `post_operation` VALUES (8, 7, 3, 1);
INSERT INTO `post_operation` VALUES (9, 11, 6, 1);
INSERT INTO `post_operation` VALUES (10, 7, 4, 1);
INSERT INTO `post_operation` VALUES (11, 18, 3, 1);
INSERT INTO `post_operation` VALUES (12, 12, 3, 1);
INSERT INTO `post_operation` VALUES (13, 22, 3, 1);
INSERT INTO `post_operation` VALUES (14, 27, 18, 1);
INSERT INTO `post_operation` VALUES (15, 28, 3, 1);
INSERT INTO `post_operation` VALUES (16, 31, 3, 1);
INSERT INTO `post_operation` VALUES (17, 4, 21, 1);
INSERT INTO `post_operation` VALUES (18, 32, 21, 1);
INSERT INTO `post_operation` VALUES (19, 35, 21, 1);

-- ----------------------------
-- Table structure for post_report
-- ----------------------------
DROP TABLE IF EXISTS `post_report`;
CREATE TABLE `post_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `pid` int(11) NULL DEFAULT NULL COMMENT '主题或帖子id',
  `r_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '举报类型',
  `r_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容描述',
  `rp_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '1.主题2.帖子',
  `r_time` datetime NULL DEFAULT NULL COMMENT '举报时间',
  `r_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '处理状态(0未处理,1已处理)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子举报表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_report
-- ----------------------------
INSERT INTO `post_report` VALUES (1, 6, 7, '其他', '这是一个举报测试!!', '1', '2025-01-01 00:37:02', '1');
INSERT INTO `post_report` VALUES (7, 3, 17, '其他', '内容涉黄,望处理!', '2', '2025-01-09 11:27:50', '1');
INSERT INTO `post_report` VALUES (9, 3, 46, '其他', '内容太水了,要处理下!', '2', '2025-01-01 16:53:22', '1');
INSERT INTO `post_report` VALUES (10, 3, 44, '内容涉黄', '内容太过暴力!', '2', '2025-01-10 02:45:28', '1');
INSERT INTO `post_report` VALUES (11, 3, 27, '涉嫌广告', '乱发一些广告!', '2', '2025-01-12 00:46:52', '0');
INSERT INTO `post_report` VALUES (12, 18, 20, '其他', 'fyguhfigibkjh', '1', '2025-01-13 13:38:34', '1');
INSERT INTO `post_report` VALUES (18, 3, 1, '样式问题', 'wefwefwef', '1', '2024-12-30 01:28:08', '1');
INSERT INTO `post_report` VALUES (19, 4, 31, '样式问题', '样式盗取', '1', '2025-01-09 00:17:20', '1');

-- ----------------------------
-- Table structure for post_share
-- ----------------------------
DROP TABLE IF EXISTS `post_share`;
CREATE TABLE `post_share`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `post_id` int(11) NULL DEFAULT NULL COMMENT '帖子主题id',
  `post_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `share_time` datetime NULL DEFAULT NULL,
  `plate_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子所在板块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户分享表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_share
-- ----------------------------
INSERT INTO `post_share` VALUES (3, 3, 1, 'jvm的原理', '2025-01-01 04:27:40', '编程开发');
INSERT INTO `post_share` VALUES (4, 4, 1, 'java+websokect', '2025-01-13 01:20:29', '编程开发');
INSERT INTO `post_share` VALUES (5, 4, 14, 'jvm的原理3', '2025-01-08 11:13:39', '学院专区');
INSERT INTO `post_share` VALUES (6, 3, 14, 'jvm的原理3', '2025-01-04 07:36:04', '学院专区');
INSERT INTO `post_share` VALUES (7, 3, 4, 'jvm的原理', '2025-01-06 10:40:59', '学院专区');
INSERT INTO `post_share` VALUES (8, 3, 5, 'java+websokect应用', '2024-12-30 21:33:05', '兼职');
INSERT INTO `post_share` VALUES (9, 3, 7, '程序员：面试官，来你要是能说出ZooKeeper原理，我转身就走', '2025-01-02 14:45:55', '校园趣事');
INSERT INTO `post_share` VALUES (10, 6, 7, '程序员：面试官，来你要是能说出ZooKeeper原理，我转身就走', '2025-01-08 03:29:03', '校园趣事');
INSERT INTO `post_share` VALUES (11, 6, 1, '好用的工具', '2025-01-01 00:32:39', '游戏交流');
INSERT INTO `post_share` VALUES (12, 6, 11, '300行代码实现Spring核心原理（彻底搞懂IOC、DI）', '2025-01-03 11:22:23', '游戏交流');
INSERT INTO `post_share` VALUES (13, 3, 18, '游戏测试', '2025-01-01 00:36:59', '游戏交流');
INSERT INTO `post_share` VALUES (14, 3, 12, '好用的工具4', '2025-01-12 11:10:22', '校园趣事');
INSERT INTO `post_share` VALUES (15, 3, 22, '发话人换购', '2025-01-08 18:48:38', '游戏交流');
INSERT INTO `post_share` VALUES (16, 18, 27, 'fvggyhjb', '2025-01-02 22:27:26', '游戏交流');
INSERT INTO `post_share` VALUES (17, 3, 15, 'java+websokect应用3', '2025-01-01 21:51:37', '兼职');
INSERT INTO `post_share` VALUES (18, 21, 32, '表白墙', '2025-01-05 23:09:52', '告白墙');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `role_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '超级管理员');
INSERT INTO `role` VALUES (2, 'boardmaster', '板块管理员');
INSERT INTO `role` VALUES (3, 'cuser', '系统用户');
INSERT INTO `role` VALUES (4, 'menu', '菜单管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NULL DEFAULT NULL COMMENT '资源id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `continuous_days` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户连续签到的天数',
  `total_days` int(11) NULL DEFAULT 0 COMMENT '用户签到总天数',
  `month_days` int(11) NULL DEFAULT 0 COMMENT '月签到天数',
  `last_sign_time` datetime NULL DEFAULT '2020-05-10 12:35:37' COMMENT '签到时间',
  `last_award` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '最后签到奖励',
  `sign_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '签到状态\'0未签到,1已签到\'',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户签到详细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES (1, 1, '5', 5, 3, '2024-12-31 19:19:13', '22', '1');
INSERT INTO `sign` VALUES (2, 2, '3', 5, 5, '2025-01-11 02:03:59', '2', '1');
INSERT INTO `sign` VALUES (3, 3, '4', 30, 11, '2025-01-02 19:45:24', '8', '1');
INSERT INTO `sign` VALUES (4, 4, '1', 38, 4, '2025-01-02 15:57:48', '2', '1');
INSERT INTO `sign` VALUES (5, 5, '3', 6, 2, '2025-01-10 13:11:15', '8', '1');
INSERT INTO `sign` VALUES (6, 6, '2', 14, 15, '2025-01-03 20:02:40', '4', '1');
INSERT INTO `sign` VALUES (7, 7, '1', 2, 11, '2025-01-10 03:05:00', '2', '1');
INSERT INTO `sign` VALUES (8, 8, '2', 6, 8, '2025-01-02 17:26:00', '4', '1');
INSERT INTO `sign` VALUES (9, 11, '1', 1, 1, '2025-01-03 13:37:28', '0', '1');
INSERT INTO `sign` VALUES (10, 12, '2', 2, 2, '2025-01-07 21:01:28', '4', '1');
INSERT INTO `sign` VALUES (11, 13, '1', 1, 1, '2025-01-09 03:42:08', '2', '1');
INSERT INTO `sign` VALUES (12, 14, '0', 0, 0, '2025-01-05 10:32:21', '0', '1');
INSERT INTO `sign` VALUES (13, 15, '0', 0, 0, '2025-01-11 16:03:12', '0', '1');
INSERT INTO `sign` VALUES (14, 16, '0', 0, 0, '2025-01-01 15:38:17', '0', '1');
INSERT INTO `sign` VALUES (15, 17, '1', 1, 1, '2025-01-05 20:37:33', '2', '1');
INSERT INTO `sign` VALUES (16, 18, '1', 1, 1, '2024-12-30 01:26:00', '2', '1');
INSERT INTO `sign` VALUES (17, 19, '0', 0, 0, '2025-01-03 13:42:49', '0', '1');
INSERT INTO `sign` VALUES (18, 20, '0', 0, 0, '2025-01-13 14:54:46', '0', '1');
INSERT INTO `sign` VALUES (19, 21, '1', 2, 2, '2025-01-12 06:05:34', '2', '1');
INSERT INTO `sign` VALUES (20, 22, '0', 0, 0, '2025-01-04 08:50:12', '0', '1');
INSERT INTO `sign` VALUES (21, 23, '1', 2, 2, '2025-01-05 01:38:01', '2', '1');
INSERT INTO `sign` VALUES (22, 24, '1', 1, 1, '2025-01-11 21:54:49', '2', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行方法',
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求地址',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 436 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'aini00', '删除评论数据', '[类名]:com.lindong.controller.IPostsDetailsManageController [方法名]:deletePostsDetails', 'stair/postsDetailsManagedeletePostsDetails', '127.0.0.1', '2025-01-07 17:20:31');
INSERT INTO `sys_log` VALUES (2, 'aini00', '处理举报数据', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-04 10:26:49');
INSERT INTO `sys_log` VALUES (3, 'aini00', '删除举报数据', '[类名]:com.lindong.controller.PostReportManageController [方法名]:deletePostReport', 'stair/postReportManage/deletePostReport', '127.0.0.1', '2025-01-02 12:08:09');
INSERT INTO `sys_log` VALUES (4, 'aini00', '移动帖子所在版块', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-07 14:49:17');
INSERT INTO `sys_log` VALUES (5, 'aini00', '移动帖子所在版块', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-30 19:19:10');
INSERT INTO `sys_log` VALUES (6, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-01 19:27:52');
INSERT INTO `sys_log` VALUES (7, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-30 08:44:41');
INSERT INTO `sys_log` VALUES (8, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-10 22:06:41');
INSERT INTO `sys_log` VALUES (9, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-11 19:27:55');
INSERT INTO `sys_log` VALUES (10, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-10 11:34:29');
INSERT INTO `sys_log` VALUES (11, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-02 05:57:03');
INSERT INTO `sys_log` VALUES (12, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-07 20:03:45');
INSERT INTO `sys_log` VALUES (13, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-04 20:20:10');
INSERT INTO `sys_log` VALUES (14, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-01 18:17:05');
INSERT INTO `sys_log` VALUES (15, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-04 20:26:36');
INSERT INTO `sys_log` VALUES (16, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-03 17:26:05');
INSERT INTO `sys_log` VALUES (17, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-11 09:38:00');
INSERT INTO `sys_log` VALUES (18, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-12 08:37:00');
INSERT INTO `sys_log` VALUES (19, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-11 19:30:07');
INSERT INTO `sys_log` VALUES (20, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-12 00:54:29');
INSERT INTO `sys_log` VALUES (21, 'aini00', '修改用户角色信息', '[类名]:com.lindong.controller.RoleManageController [方法名]:alterUserRoles', 'stair/roleManage/alterUserRoles', '127.0.0.1', '2025-01-03 23:54:33');
INSERT INTO `sys_log` VALUES (22, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-12 15:04:25');
INSERT INTO `sys_log` VALUES (23, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-01 01:38:04');
INSERT INTO `sys_log` VALUES (24, 'aini00', '修改用户角色信息', '[类名]:com.lindong.controller.RoleManageController [方法名]:alterUserRoles', 'stair/roleManage/alterUserRoles', '127.0.0.1', '2025-01-06 04:25:34');
INSERT INTO `sys_log` VALUES (25, 'aini00', '修改用户角色信息', '[类名]:com.lindong.controller.RoleManageController [方法名]:alterUserRoles', 'stair/roleManage/alterUserRoles', '127.0.0.1', '2025-01-04 10:16:02');
INSERT INTO `sys_log` VALUES (26, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-07 23:37:10');
INSERT INTO `sys_log` VALUES (27, 'aini00', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2024-12-30 09:59:48');
INSERT INTO `sys_log` VALUES (28, 'admin', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-12 00:45:46');
INSERT INTO `sys_log` VALUES (29, 'admin', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-04 18:02:49');
INSERT INTO `sys_log` VALUES (30, 'admin', NULL, '[类名]:com.lindong.controller.RoleManageController [方法名]:findAll', 'stair/roleManage/listRole', '127.0.0.1', '2025-01-13 17:25:01');
INSERT INTO `sys_log` VALUES (35, 'admin', '修改用户角色信息', '[类名]:com.lindong.controller.UserRoleManageController [方法名]:alterUserRoles', 'stair/userRoleManage/alterUserRoles', '127.0.0.1', '2025-01-01 02:55:23');
INSERT INTO `sys_log` VALUES (36, 'admin', '添加角色', '[类名]:com.lindong.controller.RoleManageController [方法名]:insertRoles', 'stair/roleManage/insertRoles', '127.0.0.1', '2025-01-11 18:12:47');
INSERT INTO `sys_log` VALUES (37, 'admin', '删除角色', '[类名]:com.lindong.controller.RoleManageController [方法名]:deleteRoles', 'stair/roleManage/deleteRoles', '127.0.0.1', '2025-01-08 07:35:01');
INSERT INTO `sys_log` VALUES (38, 'admin', '修改用户角色信息', '[类名]:com.lindong.controller.UserRoleManageController [方法名]:alterUserRoles', 'stair/userRoleManage/alterUserRoles', '127.0.0.1', '2025-01-09 10:17:09');
INSERT INTO `sys_log` VALUES (39, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-31 00:24:57');
INSERT INTO `sys_log` VALUES (44, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-05 22:57:00');
INSERT INTO `sys_log` VALUES (45, 'admin', '删除用户角色', '[类名]:com.lindong.controller.UserRoleManageController [方法名]:deleteUserRoles', 'stair/userRoleManage/deleteUserRoles', '127.0.0.1', '2025-01-10 23:16:25');
INSERT INTO `sys_log` VALUES (46, 'admin', '删除举报数据', '[类名]:com.lindong.controller.PostReportManageController [方法名]:deletePostReport', 'stair/postReportManage/deletePostReport', '127.0.0.1', '2025-01-09 06:26:23');
INSERT INTO `sys_log` VALUES (47, 'aini00', '删除评论(回帖)数据', '[类名]:com.lindong.controller.PostsDetailsManageController [方法名]:deletePostsDetails', 'stair/postsDetailsManagedeletePostsDetails', '127.0.0.1', '2025-01-04 00:07:35');
INSERT INTO `sys_log` VALUES (48, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-05 03:55:14');
INSERT INTO `sys_log` VALUES (49, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-07 09:37:58');
INSERT INTO `sys_log` VALUES (50, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2024-12-30 00:07:34');
INSERT INTO `sys_log` VALUES (51, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-06 21:50:32');
INSERT INTO `sys_log` VALUES (52, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-11 07:59:00');
INSERT INTO `sys_log` VALUES (53, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-12 08:29:24');
INSERT INTO `sys_log` VALUES (54, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-05 15:32:43');
INSERT INTO `sys_log` VALUES (55, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-13 00:54:29');
INSERT INTO `sys_log` VALUES (56, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-02 10:54:09');
INSERT INTO `sys_log` VALUES (57, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 23:36:06');
INSERT INTO `sys_log` VALUES (58, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-03 03:39:50');
INSERT INTO `sys_log` VALUES (59, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-10 15:34:55');
INSERT INTO `sys_log` VALUES (60, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-01 12:59:26');
INSERT INTO `sys_log` VALUES (61, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-10 16:53:20');
INSERT INTO `sys_log` VALUES (62, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-13 02:22:39');
INSERT INTO `sys_log` VALUES (63, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:publishNotice', 'stair/noticeManage/publishNotice', '127.0.0.1', '2025-01-12 13:32:01');
INSERT INTO `sys_log` VALUES (64, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-07 05:42:55');
INSERT INTO `sys_log` VALUES (65, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 16:59:53');
INSERT INTO `sys_log` VALUES (66, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 13:33:02');
INSERT INTO `sys_log` VALUES (67, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 12:02:38');
INSERT INTO `sys_log` VALUES (68, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/resetPassword', '127.0.0.1', '2025-01-12 14:38:27');
INSERT INTO `sys_log` VALUES (69, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-08 11:12:37');
INSERT INTO `sys_log` VALUES (70, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 19:30:01');
INSERT INTO `sys_log` VALUES (71, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 03:46:25');
INSERT INTO `sys_log` VALUES (72, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 19:34:29');
INSERT INTO `sys_log` VALUES (73, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 01:07:27');
INSERT INTO `sys_log` VALUES (74, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 07:46:56');
INSERT INTO `sys_log` VALUES (75, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-08 00:55:37');
INSERT INTO `sys_log` VALUES (76, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-08 19:04:54');
INSERT INTO `sys_log` VALUES (77, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 21:26:32');
INSERT INTO `sys_log` VALUES (78, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-08 07:20:49');
INSERT INTO `sys_log` VALUES (79, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 21:17:43');
INSERT INTO `sys_log` VALUES (80, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 16:04:22');
INSERT INTO `sys_log` VALUES (81, 'aini00', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-04 22:46:06');
INSERT INTO `sys_log` VALUES (82, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 20:33:14');
INSERT INTO `sys_log` VALUES (83, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/resetPassword', '127.0.0.1', '2025-01-05 23:11:05');
INSERT INTO `sys_log` VALUES (84, 'aini00', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2024-12-31 01:42:23');
INSERT INTO `sys_log` VALUES (85, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 17:15:06');
INSERT INTO `sys_log` VALUES (86, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 17:09:37');
INSERT INTO `sys_log` VALUES (87, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 08:48:01');
INSERT INTO `sys_log` VALUES (88, 'admin', '添加用户角色', '[类名]:com.lindong.controller.UserRoleManageController [方法名]:insertUserRoles', 'stair/userRoleManage/insertUserRoles', '127.0.0.1', '2025-01-03 09:55:26');
INSERT INTO `sys_log` VALUES (89, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 16:12:01');
INSERT INTO `sys_log` VALUES (90, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-06 07:07:42');
INSERT INTO `sys_log` VALUES (91, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-11 17:05:17');
INSERT INTO `sys_log` VALUES (92, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-11 21:05:45');
INSERT INTO `sys_log` VALUES (93, 'admin', '删除帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:deletePosts', 'stair/postsManage/deletePosts', '127.0.0.1', '2025-01-06 03:12:37');
INSERT INTO `sys_log` VALUES (94, 'admin', '删除评论(回帖)数据', '[类名]:com.lindong.controller.PostsDetailsManageController [方法名]:deletePostsDetails', 'stair/postsDetailsManagedeletePostsDetails', '127.0.0.1', '2025-01-06 17:05:16');
INSERT INTO `sys_log` VALUES (95, 'admin', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-13 12:22:21');
INSERT INTO `sys_log` VALUES (96, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-04 05:14:26');
INSERT INTO `sys_log` VALUES (97, 'admin', '公告更新', '[类名]:com.lindong.controller.NoticeManageController [方法名]:updateNoticeById', 'stair/noticeManage/updateNoticeById', '127.0.0.1', '2025-01-06 00:46:46');
INSERT INTO `sys_log` VALUES (98, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-05 08:12:58');
INSERT INTO `sys_log` VALUES (99, 'admin', '添加公告', '[类名]:com.lindong.controller.NoticeManageController [方法名]:publishNotice', 'stair/noticeManage/publishNotice', '127.0.0.1', '2025-01-10 05:23:17');
INSERT INTO `sys_log` VALUES (103, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-09 15:22:51');
INSERT INTO `sys_log` VALUES (104, 'admin', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-10 11:40:01');
INSERT INTO `sys_log` VALUES (105, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-13 05:00:21');
INSERT INTO `sys_log` VALUES (106, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-02 17:24:50');
INSERT INTO `sys_log` VALUES (107, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 06:33:54');
INSERT INTO `sys_log` VALUES (108, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 17:56:32');
INSERT INTO `sys_log` VALUES (109, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 20:31:04');
INSERT INTO `sys_log` VALUES (110, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 22:11:07');
INSERT INTO `sys_log` VALUES (111, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 18:47:37');
INSERT INTO `sys_log` VALUES (112, 'aini00', '删除评论(回帖)数据', '[类名]:com.lindong.controller.PostsDetailsManageController [方法名]:deletePostsDetails', 'stair/postsDetailsManagedeletePostsDetails', '127.0.0.1', '2025-01-02 19:55:09');
INSERT INTO `sys_log` VALUES (113, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-30 11:25:40');
INSERT INTO `sys_log` VALUES (114, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-12 11:08:14');
INSERT INTO `sys_log` VALUES (115, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-02 03:21:24');
INSERT INTO `sys_log` VALUES (116, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2024-12-31 10:19:20');
INSERT INTO `sys_log` VALUES (117, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-02 16:14:08');
INSERT INTO `sys_log` VALUES (118, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2024-12-30 12:35:27');
INSERT INTO `sys_log` VALUES (119, 'aini00', '删除举报数据', '[类名]:com.lindong.controller.PostReportManageController [方法名]:deletePostReport', 'stair/postReportManage/deletePostReport', '127.0.0.1', '2025-01-06 23:34:50');
INSERT INTO `sys_log` VALUES (120, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-05 03:07:08');
INSERT INTO `sys_log` VALUES (121, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-08 11:16:55');
INSERT INTO `sys_log` VALUES (122, 'aini00', '举报处理', '[类名]:com.lindong.controller.PostReportManageController [方法名]:disposePostReport', 'stair/postReportManage/disposePostReport', '127.0.0.1', '2025-01-01 06:51:30');
INSERT INTO `sys_log` VALUES (123, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-30 10:11:39');
INSERT INTO `sys_log` VALUES (124, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-03 12:29:56');
INSERT INTO `sys_log` VALUES (125, 'aini00', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-10 05:26:34');
INSERT INTO `sys_log` VALUES (126, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 21:50:35');
INSERT INTO `sys_log` VALUES (127, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-07 07:17:33');
INSERT INTO `sys_log` VALUES (128, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2024-12-31 19:24:35');
INSERT INTO `sys_log` VALUES (129, 'aini00', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-03 18:48:42');
INSERT INTO `sys_log` VALUES (130, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 06:04:35');
INSERT INTO `sys_log` VALUES (131, 'aini00', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/resetPassword', '127.0.0.1', '2025-01-03 18:45:29');
INSERT INTO `sys_log` VALUES (132, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 06:00:08');
INSERT INTO `sys_log` VALUES (133, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-03 00:02:06');
INSERT INTO `sys_log` VALUES (134, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 22:19:50');
INSERT INTO `sys_log` VALUES (135, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-10 12:54:01');
INSERT INTO `sys_log` VALUES (136, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 01:01:56');
INSERT INTO `sys_log` VALUES (137, 'admin', '添加用户', '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/addUser', '127.0.0.1', '2025-01-04 04:10:19');
INSERT INTO `sys_log` VALUES (138, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 09:42:21');
INSERT INTO `sys_log` VALUES (139, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 08:38:12');
INSERT INTO `sys_log` VALUES (140, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 23:36:04');
INSERT INTO `sys_log` VALUES (141, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/resetPassword', '127.0.0.1', '2025-01-06 09:20:33');
INSERT INTO `sys_log` VALUES (142, 'admin', '添加用户角色', '[类名]:com.lindong.controller.UserRoleManageController [方法名]:insertUserRoles', 'stair/userRoleManage/insertUserRoles', '127.0.0.1', '2025-01-02 03:24:39');
INSERT INTO `sys_log` VALUES (143, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 03:42:04');
INSERT INTO `sys_log` VALUES (144, 'admin', '添加用户', '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/addUser', '127.0.0.1', '2025-01-10 22:58:03');
INSERT INTO `sys_log` VALUES (145, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 19:53:59');
INSERT INTO `sys_log` VALUES (146, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-09 10:15:03');
INSERT INTO `sys_log` VALUES (147, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 08:17:22');
INSERT INTO `sys_log` VALUES (148, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2024-12-30 19:07:11');
INSERT INTO `sys_log` VALUES (149, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-05 08:04:17');
INSERT INTO `sys_log` VALUES (150, 'admin', '公告更新', '[类名]:com.lindong.controller.NoticeManageController [方法名]:updateNoticeById', 'stair/noticeManage/updateNoticeById', '127.0.0.1', '2025-01-10 06:38:26');
INSERT INTO `sys_log` VALUES (151, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-10 23:10:52');
INSERT INTO `sys_log` VALUES (152, 'admin', '公告更新', '[类名]:com.lindong.controller.NoticeManageController [方法名]:updateNoticeById', 'stair/noticeManage/updateNoticeById', '127.0.0.1', '2024-12-31 17:02:58');
INSERT INTO `sys_log` VALUES (153, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-02 01:51:09');
INSERT INTO `sys_log` VALUES (154, 'admin', '添加公告', '[类名]:com.lindong.controller.NoticeManageController [方法名]:publishNotice', 'stair/noticeManage/publishNotice', '127.0.0.1', '2025-01-11 10:41:08');
INSERT INTO `sys_log` VALUES (155, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 12:53:52');
INSERT INTO `sys_log` VALUES (156, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-03 19:03:47');
INSERT INTO `sys_log` VALUES (157, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 14:38:23');
INSERT INTO `sys_log` VALUES (158, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 00:59:54');
INSERT INTO `sys_log` VALUES (159, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 22:03:28');
INSERT INTO `sys_log` VALUES (160, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 19:19:10');
INSERT INTO `sys_log` VALUES (161, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 03:49:44');
INSERT INTO `sys_log` VALUES (162, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 01:33:34');
INSERT INTO `sys_log` VALUES (163, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 09:20:30');
INSERT INTO `sys_log` VALUES (164, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 02:59:37');
INSERT INTO `sys_log` VALUES (165, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 17:16:11');
INSERT INTO `sys_log` VALUES (166, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 04:28:47');
INSERT INTO `sys_log` VALUES (167, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 05:40:37');
INSERT INTO `sys_log` VALUES (168, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 16:08:36');
INSERT INTO `sys_log` VALUES (169, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 05:14:33');
INSERT INTO `sys_log` VALUES (170, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 18:31:20');
INSERT INTO `sys_log` VALUES (171, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 17:13:55');
INSERT INTO `sys_log` VALUES (172, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 20:25:35');
INSERT INTO `sys_log` VALUES (173, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 19:49:44');
INSERT INTO `sys_log` VALUES (174, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 23:07:44');
INSERT INTO `sys_log` VALUES (175, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 09:58:42');
INSERT INTO `sys_log` VALUES (176, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 02:29:11');
INSERT INTO `sys_log` VALUES (177, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 00:31:34');
INSERT INTO `sys_log` VALUES (178, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 21:29:46');
INSERT INTO `sys_log` VALUES (179, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 13:39:36');
INSERT INTO `sys_log` VALUES (180, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 10:03:59');
INSERT INTO `sys_log` VALUES (181, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 18:40:00');
INSERT INTO `sys_log` VALUES (182, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 05:59:16');
INSERT INTO `sys_log` VALUES (183, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 23:51:19');
INSERT INTO `sys_log` VALUES (184, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 08:35:51');
INSERT INTO `sys_log` VALUES (185, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 23:19:45');
INSERT INTO `sys_log` VALUES (186, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 15:48:09');
INSERT INTO `sys_log` VALUES (187, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 10:06:09');
INSERT INTO `sys_log` VALUES (188, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 21:06:49');
INSERT INTO `sys_log` VALUES (189, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 10:51:58');
INSERT INTO `sys_log` VALUES (190, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 15:18:35');
INSERT INTO `sys_log` VALUES (191, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 07:27:23');
INSERT INTO `sys_log` VALUES (192, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 20:21:18');
INSERT INTO `sys_log` VALUES (193, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 07:17:30');
INSERT INTO `sys_log` VALUES (194, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-04 13:01:22');
INSERT INTO `sys_log` VALUES (195, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 01:43:29');
INSERT INTO `sys_log` VALUES (196, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-09 22:50:24');
INSERT INTO `sys_log` VALUES (197, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-06 06:48:15');
INSERT INTO `sys_log` VALUES (198, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2024-12-31 16:46:48');
INSERT INTO `sys_log` VALUES (199, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-03 23:55:36');
INSERT INTO `sys_log` VALUES (200, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 17:38:04');
INSERT INTO `sys_log` VALUES (201, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 00:49:58');
INSERT INTO `sys_log` VALUES (202, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-07 06:57:01');
INSERT INTO `sys_log` VALUES (203, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 03:55:15');
INSERT INTO `sys_log` VALUES (204, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-06 19:28:58');
INSERT INTO `sys_log` VALUES (205, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 07:16:23');
INSERT INTO `sys_log` VALUES (206, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 13:25:23');
INSERT INTO `sys_log` VALUES (207, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 06:14:23');
INSERT INTO `sys_log` VALUES (208, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 04:11:22');
INSERT INTO `sys_log` VALUES (209, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 05:22:08');
INSERT INTO `sys_log` VALUES (210, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 10:32:23');
INSERT INTO `sys_log` VALUES (211, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 06:32:49');
INSERT INTO `sys_log` VALUES (212, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 05:28:41');
INSERT INTO `sys_log` VALUES (213, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 07:14:19');
INSERT INTO `sys_log` VALUES (214, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 15:31:39');
INSERT INTO `sys_log` VALUES (215, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 11:20:17');
INSERT INTO `sys_log` VALUES (216, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 01:06:22');
INSERT INTO `sys_log` VALUES (217, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 15:39:16');
INSERT INTO `sys_log` VALUES (218, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 05:55:55');
INSERT INTO `sys_log` VALUES (219, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 10:36:45');
INSERT INTO `sys_log` VALUES (220, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2024-12-30 14:10:01');
INSERT INTO `sys_log` VALUES (221, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 23:02:18');
INSERT INTO `sys_log` VALUES (222, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 23:50:14');
INSERT INTO `sys_log` VALUES (223, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-03 15:07:45');
INSERT INTO `sys_log` VALUES (224, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 21:05:51');
INSERT INTO `sys_log` VALUES (225, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2024-12-30 07:41:30');
INSERT INTO `sys_log` VALUES (226, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 15:00:02');
INSERT INTO `sys_log` VALUES (227, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 20:41:51');
INSERT INTO `sys_log` VALUES (228, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-09 18:00:45');
INSERT INTO `sys_log` VALUES (229, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 11:13:37');
INSERT INTO `sys_log` VALUES (230, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 10:42:17');
INSERT INTO `sys_log` VALUES (231, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 19:06:04');
INSERT INTO `sys_log` VALUES (232, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 02:22:32');
INSERT INTO `sys_log` VALUES (233, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 03:04:55');
INSERT INTO `sys_log` VALUES (234, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 04:50:36');
INSERT INTO `sys_log` VALUES (235, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 15:44:45');
INSERT INTO `sys_log` VALUES (236, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 13:11:12');
INSERT INTO `sys_log` VALUES (237, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 15:53:28');
INSERT INTO `sys_log` VALUES (238, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 04:46:20');
INSERT INTO `sys_log` VALUES (239, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 16:27:13');
INSERT INTO `sys_log` VALUES (240, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 00:53:25');
INSERT INTO `sys_log` VALUES (241, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 19:46:28');
INSERT INTO `sys_log` VALUES (242, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 19:56:15');
INSERT INTO `sys_log` VALUES (243, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 14:38:21');
INSERT INTO `sys_log` VALUES (244, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 02:02:54');
INSERT INTO `sys_log` VALUES (245, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 10:50:53');
INSERT INTO `sys_log` VALUES (246, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 22:00:12');
INSERT INTO `sys_log` VALUES (247, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 06:30:41');
INSERT INTO `sys_log` VALUES (248, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 12:53:52');
INSERT INTO `sys_log` VALUES (249, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 19:57:23');
INSERT INTO `sys_log` VALUES (250, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 02:23:37');
INSERT INTO `sys_log` VALUES (251, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 20:24:30');
INSERT INTO `sys_log` VALUES (252, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 22:48:13');
INSERT INTO `sys_log` VALUES (253, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 22:31:47');
INSERT INTO `sys_log` VALUES (254, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 12:27:43');
INSERT INTO `sys_log` VALUES (255, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 04:03:47');
INSERT INTO `sys_log` VALUES (256, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 14:32:57');
INSERT INTO `sys_log` VALUES (257, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 21:01:25');
INSERT INTO `sys_log` VALUES (258, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 23:47:58');
INSERT INTO `sys_log` VALUES (259, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-06 14:29:41');
INSERT INTO `sys_log` VALUES (260, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 16:37:00');
INSERT INTO `sys_log` VALUES (261, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 23:19:40');
INSERT INTO `sys_log` VALUES (262, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 18:47:37');
INSERT INTO `sys_log` VALUES (263, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 22:29:33');
INSERT INTO `sys_log` VALUES (264, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 21:34:11');
INSERT INTO `sys_log` VALUES (265, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-10 13:09:06');
INSERT INTO `sys_log` VALUES (266, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 18:46:33');
INSERT INTO `sys_log` VALUES (267, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 21:54:52');
INSERT INTO `sys_log` VALUES (268, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 11:29:02');
INSERT INTO `sys_log` VALUES (269, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 11:17:00');
INSERT INTO `sys_log` VALUES (270, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 17:10:43');
INSERT INTO `sys_log` VALUES (271, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 04:41:54');
INSERT INTO `sys_log` VALUES (272, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 18:23:36');
INSERT INTO `sys_log` VALUES (273, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 15:31:43');
INSERT INTO `sys_log` VALUES (274, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-13 01:09:34');
INSERT INTO `sys_log` VALUES (275, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-07 12:13:34');
INSERT INTO `sys_log` VALUES (276, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 09:22:39');
INSERT INTO `sys_log` VALUES (277, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-11 18:21:32');
INSERT INTO `sys_log` VALUES (278, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 08:58:48');
INSERT INTO `sys_log` VALUES (279, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-12 03:22:26');
INSERT INTO `sys_log` VALUES (280, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 00:58:46');
INSERT INTO `sys_log` VALUES (281, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 07:42:37');
INSERT INTO `sys_log` VALUES (282, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-13 08:38:09');
INSERT INTO `sys_log` VALUES (283, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 15:46:54');
INSERT INTO `sys_log` VALUES (284, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 11:38:49');
INSERT INTO `sys_log` VALUES (285, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-11 08:20:35');
INSERT INTO `sys_log` VALUES (286, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 22:48:14');
INSERT INTO `sys_log` VALUES (287, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-01 09:33:33');
INSERT INTO `sys_log` VALUES (288, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 18:36:42');
INSERT INTO `sys_log` VALUES (289, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 09:53:14');
INSERT INTO `sys_log` VALUES (290, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-05 01:41:14');
INSERT INTO `sys_log` VALUES (291, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 00:41:23');
INSERT INTO `sys_log` VALUES (292, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-01 00:33:45');
INSERT INTO `sys_log` VALUES (293, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 07:11:01');
INSERT INTO `sys_log` VALUES (294, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 15:40:22');
INSERT INTO `sys_log` VALUES (295, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-31 04:25:31');
INSERT INTO `sys_log` VALUES (296, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 02:35:37');
INSERT INTO `sys_log` VALUES (297, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-09 18:52:03');
INSERT INTO `sys_log` VALUES (298, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 01:23:47');
INSERT INTO `sys_log` VALUES (299, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 12:20:06');
INSERT INTO `sys_log` VALUES (300, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 05:33:09');
INSERT INTO `sys_log` VALUES (301, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-12 02:14:49');
INSERT INTO `sys_log` VALUES (302, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 11:13:40');
INSERT INTO `sys_log` VALUES (303, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 13:34:15');
INSERT INTO `sys_log` VALUES (304, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-05 22:05:37');
INSERT INTO `sys_log` VALUES (305, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2024-12-31 11:49:37');
INSERT INTO `sys_log` VALUES (306, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 13:48:19');
INSERT INTO `sys_log` VALUES (307, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-11 19:35:33');
INSERT INTO `sys_log` VALUES (308, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 07:29:36');
INSERT INTO `sys_log` VALUES (309, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-06 18:18:13');
INSERT INTO `sys_log` VALUES (310, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 09:23:43');
INSERT INTO `sys_log` VALUES (311, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-06 04:33:12');
INSERT INTO `sys_log` VALUES (312, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 07:20:46');
INSERT INTO `sys_log` VALUES (313, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-01 22:05:39');
INSERT INTO `sys_log` VALUES (314, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 02:23:44');
INSERT INTO `sys_log` VALUES (315, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-06 06:54:41');
INSERT INTO `sys_log` VALUES (316, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 11:11:34');
INSERT INTO `sys_log` VALUES (317, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-09 17:44:31');
INSERT INTO `sys_log` VALUES (318, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-08 08:39:13');
INSERT INTO `sys_log` VALUES (319, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-11 03:17:57');
INSERT INTO `sys_log` VALUES (320, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2024-12-30 21:32:02');
INSERT INTO `sys_log` VALUES (321, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 21:40:41');
INSERT INTO `sys_log` VALUES (322, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-07 01:04:11');
INSERT INTO `sys_log` VALUES (323, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 20:08:11');
INSERT INTO `sys_log` VALUES (324, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-06 01:40:12');
INSERT INTO `sys_log` VALUES (325, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-13 15:59:01');
INSERT INTO `sys_log` VALUES (326, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 21:56:58');
INSERT INTO `sys_log` VALUES (327, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-13 05:06:47');
INSERT INTO `sys_log` VALUES (328, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-03 01:10:45');
INSERT INTO `sys_log` VALUES (329, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-10 20:33:14');
INSERT INTO `sys_log` VALUES (330, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-05 03:54:09');
INSERT INTO `sys_log` VALUES (331, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-12 23:35:01');
INSERT INTO `sys_log` VALUES (332, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-08 20:04:48');
INSERT INTO `sys_log` VALUES (333, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-01 20:43:04');
INSERT INTO `sys_log` VALUES (334, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 13:20:02');
INSERT INTO `sys_log` VALUES (335, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-11 15:47:00');
INSERT INTO `sys_log` VALUES (336, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-04 04:56:13');
INSERT INTO `sys_log` VALUES (337, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-09 20:24:23');
INSERT INTO `sys_log` VALUES (338, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-02 18:30:14');
INSERT INTO `sys_log` VALUES (339, 'admin', '修改帖子', '[类名]:com.lindong.controller.PostsManageController [方法名]:changPosts', 'stair/postsManage/changPosts', '127.0.0.1', '2025-01-14 22:23:36');
INSERT INTO `sys_log` VALUES (340, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 12:55:19');
INSERT INTO `sys_log` VALUES (341, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 12:55:40');
INSERT INTO `sys_log` VALUES (342, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 12:55:55');
INSERT INTO `sys_log` VALUES (343, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 12:58:17');
INSERT INTO `sys_log` VALUES (344, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 12:58:17');
INSERT INTO `sys_log` VALUES (345, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 12:58:18');
INSERT INTO `sys_log` VALUES (346, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 12:58:18');
INSERT INTO `sys_log` VALUES (347, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 12:58:18');
INSERT INTO `sys_log` VALUES (348, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 12:58:18');
INSERT INTO `sys_log` VALUES (349, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 12:58:19');
INSERT INTO `sys_log` VALUES (350, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 12:58:19');
INSERT INTO `sys_log` VALUES (351, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 12:58:21');
INSERT INTO `sys_log` VALUES (352, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 12:58:24');
INSERT INTO `sys_log` VALUES (353, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:02:03');
INSERT INTO `sys_log` VALUES (354, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:02:08');
INSERT INTO `sys_log` VALUES (355, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:03:20');
INSERT INTO `sys_log` VALUES (356, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:addUser', 'stair/userManage/resetPassword', '127.0.0.1', '2025-01-16 13:03:23');
INSERT INTO `sys_log` VALUES (357, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:04:08');
INSERT INTO `sys_log` VALUES (358, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:05:25');
INSERT INTO `sys_log` VALUES (359, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:05:28');
INSERT INTO `sys_log` VALUES (360, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:05:31');
INSERT INTO `sys_log` VALUES (361, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:05:34');
INSERT INTO `sys_log` VALUES (362, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:05:37');
INSERT INTO `sys_log` VALUES (363, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:05:39');
INSERT INTO `sys_log` VALUES (364, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:08:38');
INSERT INTO `sys_log` VALUES (365, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:08:41');
INSERT INTO `sys_log` VALUES (366, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:08:43');
INSERT INTO `sys_log` VALUES (367, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:08:48');
INSERT INTO `sys_log` VALUES (368, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:09:17');
INSERT INTO `sys_log` VALUES (369, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:09:20');
INSERT INTO `sys_log` VALUES (370, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:09:34');
INSERT INTO `sys_log` VALUES (371, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:09:37');
INSERT INTO `sys_log` VALUES (372, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:10:21');
INSERT INTO `sys_log` VALUES (373, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:11:01');
INSERT INTO `sys_log` VALUES (374, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:11:08');
INSERT INTO `sys_log` VALUES (375, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:11:14');
INSERT INTO `sys_log` VALUES (376, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:11:14');
INSERT INTO `sys_log` VALUES (377, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:11:18');
INSERT INTO `sys_log` VALUES (378, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:11:18');
INSERT INTO `sys_log` VALUES (379, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:11:51');
INSERT INTO `sys_log` VALUES (380, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:11:51');
INSERT INTO `sys_log` VALUES (381, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:13:19');
INSERT INTO `sys_log` VALUES (382, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:13:19');
INSERT INTO `sys_log` VALUES (383, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:14:16');
INSERT INTO `sys_log` VALUES (384, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:14:21');
INSERT INTO `sys_log` VALUES (385, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:14:22');
INSERT INTO `sys_log` VALUES (386, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:14:30');
INSERT INTO `sys_log` VALUES (387, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:14:33');
INSERT INTO `sys_log` VALUES (388, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:15:59');
INSERT INTO `sys_log` VALUES (389, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:16:04');
INSERT INTO `sys_log` VALUES (390, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:17:55');
INSERT INTO `sys_log` VALUES (391, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:17:59');
INSERT INTO `sys_log` VALUES (392, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:19:00');
INSERT INTO `sys_log` VALUES (393, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:19:19');
INSERT INTO `sys_log` VALUES (394, 'admin', NULL, '[类名]:com.lindong.controller.NoticeManageController [方法名]:getNoticeInfo', 'stair/noticeManage/getNoticeInfo', '127.0.0.1', '2025-01-16 13:35:26');
INSERT INTO `sys_log` VALUES (395, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:35:41');
INSERT INTO `sys_log` VALUES (396, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:35:44');
INSERT INTO `sys_log` VALUES (397, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:35:44');
INSERT INTO `sys_log` VALUES (398, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:35:47');
INSERT INTO `sys_log` VALUES (399, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:35:47');
INSERT INTO `sys_log` VALUES (400, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:46:30');
INSERT INTO `sys_log` VALUES (401, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:46:36');
INSERT INTO `sys_log` VALUES (402, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:46:41');
INSERT INTO `sys_log` VALUES (403, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:46:44');
INSERT INTO `sys_log` VALUES (404, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:46:47');
INSERT INTO `sys_log` VALUES (405, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:46:47');
INSERT INTO `sys_log` VALUES (406, 'admin', '用户信息修改', '[类名]:com.lindong.controller.UserManageController [方法名]:updateUserState', 'stair/userManage/updateUserState', '127.0.0.1', '2025-01-16 13:46:52');
INSERT INTO `sys_log` VALUES (407, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:46:52');
INSERT INTO `sys_log` VALUES (408, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:46:57');
INSERT INTO `sys_log` VALUES (409, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:47:02');
INSERT INTO `sys_log` VALUES (410, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:47:57');
INSERT INTO `sys_log` VALUES (411, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:48:04');
INSERT INTO `sys_log` VALUES (412, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:48:08');
INSERT INTO `sys_log` VALUES (413, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:10');
INSERT INTO `sys_log` VALUES (414, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:13');
INSERT INTO `sys_log` VALUES (415, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:16');
INSERT INTO `sys_log` VALUES (416, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:17');
INSERT INTO `sys_log` VALUES (417, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:17');
INSERT INTO `sys_log` VALUES (418, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:18');
INSERT INTO `sys_log` VALUES (419, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:48:21');
INSERT INTO `sys_log` VALUES (420, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:23');
INSERT INTO `sys_log` VALUES (421, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:23');
INSERT INTO `sys_log` VALUES (422, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:37');
INSERT INTO `sys_log` VALUES (423, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:41');
INSERT INTO `sys_log` VALUES (424, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:48:44');
INSERT INTO `sys_log` VALUES (425, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:46');
INSERT INTO `sys_log` VALUES (426, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:48:47');
INSERT INTO `sys_log` VALUES (427, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:50:11');
INSERT INTO `sys_log` VALUES (428, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:50:15');
INSERT INTO `sys_log` VALUES (429, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:50:17');
INSERT INTO `sys_log` VALUES (430, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:50:21');
INSERT INTO `sys_log` VALUES (431, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:50:22');
INSERT INTO `sys_log` VALUES (432, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:50:23');
INSERT INTO `sys_log` VALUES (433, 'admin', '更新毕业状态', '[类名]:com.lindong.controller.UserManageController [方法名]:updateGraduateStatus', 'stair/userManage/updateGraduateStatus', '127.0.0.1', '2025-01-16 13:53:53');
INSERT INTO `sys_log` VALUES (434, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:53:57');
INSERT INTO `sys_log` VALUES (435, 'admin', NULL, '[类名]:com.lindong.controller.UserManageController [方法名]:getUserInfo', 'stair/userManage/getUserInfo', '127.0.0.1', '2025-01-16 13:53:57');

-- ----------------------------
-- Table structure for sys_warn
-- ----------------------------
DROP TABLE IF EXISTS `sys_warn`;
CREATE TABLE `sys_warn`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0 COMMENT '通知者id(0代表给所有人发送提醒通知)',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知内容',
  `w_time` datetime NULL DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统提醒表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_warn
-- ----------------------------
INSERT INTO `sys_warn` VALUES (4, 6, '举报结果', '内容并不属实,举报你妈?', '2025-01-04 10:21:25');
INSERT INTO `sys_warn` VALUES (9, 6, '举报结果', '不完善..', '2025-01-13 00:56:39');
INSERT INTO `sys_warn` VALUES (10, 4, '审核结果', '内容涉嫌违规,不给予通过!', '2025-01-07 08:16:23');
INSERT INTO `sys_warn` VALUES (11, 4, '审核结果', '无违规内容,给予通过!', '2025-01-12 06:09:57');
INSERT INTO `sys_warn` VALUES (12, 4, '审核结果', '内容违规!', '2025-01-09 15:21:49');
INSERT INTO `sys_warn` VALUES (17, 2, '审核结果', '审核通过', '2025-01-13 19:54:04');
INSERT INTO `sys_warn` VALUES (24, 3, '审核结果', 'swewfweg', '2025-01-04 22:47:08');
INSERT INTO `sys_warn` VALUES (25, 3, '审核结果', '审核通过!', '2025-01-08 06:24:11');
INSERT INTO `sys_warn` VALUES (27, 18, '审核结果', '1235', '2025-01-02 04:41:51');
INSERT INTO `sys_warn` VALUES (29, 3, '审核结果', 'drtfghu', '2025-01-10 16:36:01');
INSERT INTO `sys_warn` VALUES (31, 18, '举报结果', '内容描述属实,举报通过！', '2025-01-09 07:47:00');
INSERT INTO `sys_warn` VALUES (32, 18, '审核结果', 'wegerg', '2025-01-04 06:22:03');
INSERT INTO `sys_warn` VALUES (33, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-11 14:32:56');
INSERT INTO `sys_warn` VALUES (41, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-12 12:21:14');
INSERT INTO `sys_warn` VALUES (42, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-12 20:54:58');
INSERT INTO `sys_warn` VALUES (43, 20, '审核结果', '审核通过', '2025-01-11 19:40:54');
INSERT INTO `sys_warn` VALUES (44, 20, '审核结果', '(帖子) 游戏帖子 ,审核通过！', '2025-01-06 20:44:09');
INSERT INTO `sys_warn` VALUES (45, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-05 05:36:19');
INSERT INTO `sys_warn` VALUES (46, 3, '举报结果', '内容描述不属实,举报不通过！', '2025-01-02 00:36:04');
INSERT INTO `sys_warn` VALUES (47, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-06 09:24:49');
INSERT INTO `sys_warn` VALUES (48, 3, '举报结果', '内容描述属实,举报通过！', '2024-12-31 01:31:28');
INSERT INTO `sys_warn` VALUES (49, 3, '举报结果', '内容描述属实,举报通过！', '2025-01-01 15:45:52');
INSERT INTO `sys_warn` VALUES (50, 3, '审核结果', '(帖子) 测试 ,审核通过！', '2025-01-12 18:37:46');
INSERT INTO `sys_warn` VALUES (51, 4, '举报结果', '内容描述属实,举报通过！', '2025-01-13 21:16:42');
INSERT INTO `sys_warn` VALUES (52, NULL, NULL, NULL, '2025-01-03 12:22:21');
INSERT INTO `sys_warn` VALUES (53, NULL, NULL, NULL, '2025-01-03 07:34:54');
INSERT INTO `sys_warn` VALUES (54, NULL, NULL, NULL, '2025-01-02 06:56:55');
INSERT INTO `sys_warn` VALUES (55, 21, '审核结果', '(帖子) 表白墙 ,审核通过！', '2025-01-01 05:43:55');
INSERT INTO `sys_warn` VALUES (56, 21, '审核结果', '(帖子) 校园趣事发布2024-1-4 ,审核通过！', '2025-01-06 16:53:27');
INSERT INTO `sys_warn` VALUES (57, 23, '审核结果', '(帖子) www ,审核通过！', '2025-01-04 15:22:59');
INSERT INTO `sys_warn` VALUES (58, 23, '审核结果', '(帖子) 测试帖 ,审核通过！', '2025-01-02 00:45:41');
INSERT INTO `sys_warn` VALUES (59, 21, '审核结果', '(帖子) 111 ,审核通过！', '2025-01-14 22:23:36');

-- ----------------------------
-- Table structure for u_collect
-- ----------------------------
DROP TABLE IF EXISTS `u_collect`;
CREATE TABLE `u_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `all_id` int(11) NULL DEFAULT NULL COMMENT '可以是帖子id,也可以是板块id,也可以是日志id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `source_plate` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源板块',
  `collect_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收藏时间',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1.帖子,2.板块,3.日志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户所有收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_collect
-- ----------------------------
INSERT INTO `u_collect` VALUES (9, 3, 8, 'Java面试详解(2020版)：500+ 面试题和核心知识点详解', '社团专区', '2020-05-22 17:54:51', '1');
INSERT INTO `u_collect` VALUES (10, 4, 14, 'jvm的原理3', '学院专区', '2020-05-23 13:18:32', '1');
INSERT INTO `u_collect` VALUES (14, 3, 4, '游戏交流', '', '2020-05-24 8:09:43', '2');
INSERT INTO `u_collect` VALUES (16, 4, 1, '学院专区', '学院专区', '2020-06-01 22:36:42', '2');
INSERT INTO `u_collect` VALUES (18, 4, 4, '游戏交流', '游戏交流', '2020-06-04 15:28:02', '2');
INSERT INTO `u_collect` VALUES (20, 18, 27, 'fvggyhjb', '游戏交流', '2020-06-17 09:06:56', '1');
INSERT INTO `u_collect` VALUES (21, 21, 32, '表白墙', '告白墙', '2024-01-04 10:20:30', '1');
INSERT INTO `u_collect` VALUES (22, 21, 4, 'jvm的原理', '学院专区', '2024-01-04 13:36:26', '1');
INSERT INTO `u_collect` VALUES (23, 23, 5, 'java+websokect应用', '社团专区', '2025-01-10 14:51:25', '1');

-- ----------------------------
-- Table structure for u_log
-- ----------------------------
DROP TABLE IF EXISTS `u_log`;
CREATE TABLE `u_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `log_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志标题',
  `log_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `u_log_time` datetime NULL DEFAULT NULL COMMENT '日志时间',
  `reserve1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_log
-- ----------------------------
INSERT INTO `u_log` VALUES (1, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (2, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (3, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (4, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (5, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (6, 3, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (7, 4, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (8, 4, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (9, 4, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (10, 4, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);
INSERT INTO `u_log` VALUES (11, 4, '怎样才叫人生?', '曾经,我们都有一段年少的梦想,到如今...', '2020-05-10 15:21:00', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐',
  `another_name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '别名',
  `age` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `email` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` bigint(11) NULL DEFAULT NULL COMMENT '手机号码',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'statics/images/01_small.gif' COMMENT '用户头像',
  `personalized_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '填写个性签名...' COMMENT '个性签名',
  `register_time` datetime NULL DEFAULT NULL COMMENT '注册时间',
  `register_ip` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册ip',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `address` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '居住地址',
  `profession` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `online_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在线状态(0不在线,1在线)',
  `user_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '用户状态(0禁止,1正常)',
  `graduate_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '毕业状态(1未毕业,0已毕业)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'gone165', '72576bb713c723c6b0a424c66998ca63', 'JVflfefrwl==', '001-1号', NULL, '男', '', 15279515773, 'statics/images/u1.png', '天下武功,为快不破', '2025-01-10 00:24:01', '127.0.0.1', '2024-12-31 06:45:56', '223.84.180.123', '北京', '计算机专业', '0', '1', '1');
INSERT INTO `user` VALUES (2, 'hoama1234', '10ed3278a8144cf6e1f9155cc65a11cb', 'HlfliarEhJ==', '002-2号', NULL, '女', '', 15279515773, 'statics/images/u2.jpg', '天下武功,为快不破', '2025-01-06 14:32:53', '127.0.0.1', '2024-12-31 15:42:32', NULL, '北京', '计算机专业', '0', '1', '0');
INSERT INTO `user` VALUES (3, 'aini00', '3f625c5622e817b31284fbb7ae0b45b6', 'JJfGwe=liV==', '迷失者', NULL, '男', '', 15279515773, 'statics/images/u4.jpg', '天下武功,为快不破', '2025-01-04 09:06:22', '127.0.0.1', '2025-01-05 16:45:44', '127.0.0.1', '北京', '计算机专业', '0', '1', '1');
INSERT INTO `user` VALUES (4, 'admin', 'a07c844cdaef1f5de72c165991ec45f1', 'eahfefHGJH==', '管理员', NULL, '男', '123@123.qq', 15000000000, 'uploadfiles/2025/1/5ca0b0d413fc48f681b7a861c488ff9b.png', '天下武功,为快不破', '2025-01-08 17:29:15', '127.0.0.1', '2025-01-01 07:08:44', '127.0.0.1', '北京', '计算机专业', '0', '1', '1');
INSERT INTO `user` VALUES (5, 'zsan', '10ed3278a8144cf6e1f9155cc65a11cb', 'HlfliarEhJ==', '005-5号', NULL, '男', '', 13479129250, 'statics/images/01_small.gif', '天下武功,为快不破', '2025-01-09 06:29:38', '127.0.0.1', '2025-01-02 19:47:31', NULL, '北京', '计算机专业', '0', '1', '1');
INSERT INTO `user` VALUES (6, 'lis', '10ed3278a8144cf6e1f9155cc65a11cb', 'HlfliarEhJ==', '006-6号', NULL, '男', '', 13479129250, 'statics/images/u3.jpg', '天下武功,为快不破', '2025-01-10 14:23:06', '127.0.0.1', '2025-01-08 12:25:35', '127.0.0.1', '北京', '计算机专业', '0', '1', '0');
INSERT INTO `user` VALUES (7, 'wang', '10ed3278a8144cf6e1f9155cc65a11cb', 'HlfliarEhJ==', '007-7号', NULL, '男', '', 18347920132, 'statics/images/u4.jpg', '天下武功,为快不破', '2025-01-03 18:40:06', '127.0.01', '2025-01-06 04:23:25', NULL, '北京', '计算机专业', '0', '1', '1');
INSERT INTO `user` VALUES (8, 'zhaoliu', '10ed3278a8144cf6e1f9155cc65a11cb', 'HlfliarEhJ==', '008-8号', NULL, '男', '', 18024545382, 'statics/images/u5.jpg', '天下武功,为快不破', '2024-12-30 13:56:58', '127.0.0.1', '2025-01-12 11:04:57', NULL, '北京', '计算机专业', '0', '1', '0');
INSERT INTO `user` VALUES (9, '2309474', '56df00fb29d2df14c63e35cc24ce020b', 'GwffrEf=HG==', '也许!', NULL, NULL, '', NULL, 'statics/images/01_small.gif', NULL, '2025-01-04 04:05:54', '127.0.0.1', '2025-01-10 12:47:25', NULL, NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (10, 'qwer', '6081704ee2acbe9576995f8c97516231', 'H=VeVhw=Ee==', 'jf电商法', NULL, NULL, 'whfw@qq.com', NULL, 'statics/images/01_small.gif', NULL, '2025-01-03 09:50:00', '127.0.0.1', '2025-01-06 10:37:52', NULL, NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (11, '54628', 'd3d39774adc74c8bd2d8d4d7586746ea', 'JVHfrfifhw==', '哈根温柔哥', NULL, NULL, '4156514@qq.com', NULL, 'statics/images/01_small.gif', NULL, '2025-01-05 00:31:34', '127.0.0.1', '2025-01-10 13:01:28', '127.0.0.1', NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (12, '7845', '9284c33350bf7b03603f0b22ac3b8bb0', 'fGVH=liEhJ==', '回来了', NULL, '女', '16541142@qq.com', NULL, 'statics/images/01_small.gif', '个个微风违反违反&nbsp;<img src=\"http://localhost/leek_bbs/statics/layui/images/face/12.gif\" alt=\"[泪]\">', '2025-01-09 22:54:42', '127.0.0.1', '2025-01-02 19:43:10', '127.0.0.1', '江西省宜春市丰城市', '计算机软件设计师', NULL, '1', '0');
INSERT INTO `user` VALUES (13, 'ceshi00', '3e46acc0425428b715a5929e8d7a2d14', 'ilHJ=iGr=f==', '00者', NULL, NULL, 'safh@ef.com', NULL, 'statics/images/01_small.gif', NULL, '2025-01-03 20:12:32', '127.0.0.1', '2025-01-12 19:48:34', '127.0.0.1', NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (14, '007', '4e85aa6012dceabc635eab29d39ef6a2', '=waHwa=irf==', '撒个坏的很', NULL, NULL, 'dgfaf@qq.com', NULL, 'statics/images/01_small.gif', NULL, '2025-01-06 16:57:43', '127.0.0.1', '2025-01-02 18:23:43', NULL, NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (15, '008', '6c67da21dc43401d58980753eb83480b', 'wJifHwelfa==', '撒个坏的很2', NULL, NULL, 'fghf@qq.com', NULL, 'statics/images/01_small.gif', NULL, '2025-01-07 21:11:19', '127.0.0.1', '2025-01-12 08:29:27', '127.0.0.1', NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (16, '009', 'c2f3dff3fdd7e5a0bb6197a8948784e3', 'fhhEaaliGe==', '哈撒给1', NULL, NULL, 'shff@df.com', NULL, 'statics/images/01_small.gif', '填写个性签名...', '2025-01-01 16:55:35', '127.0.0.1', '2025-01-11 03:07:14', NULL, NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (17, '010', '7e8c0acee0ede6caa30b9ef6bbe35106', 'iw=Jlif=ai==', '哈撒给2', NULL, NULL, 'afhf@qq.com', NULL, 'uploadfiles/2020/6/0f985611c74d49cd939c43c8b9131120.jpg', '填写个性签名...', '2025-01-02 06:00:11', '127.0.0.1', '2024-12-30 02:43:18', '127.0.0.1', NULL, NULL, NULL, '1', '0');
INSERT INTO `user` VALUES (18, '123456', '41225c4fc64b557e6a4af9d86d2f70e6', 'GeHaJfGaei==', 'woai00', NULL, '男', '1625@gg.com', 15279515773, 'uploadfiles/2020/6/48c8c68121444b638d6a5fb965d59dd5.jpg', 'xdchgvcfthvjyubh<img src=\"http://localhost/leek_bbs/statics/layui/images/face/51.gif\" alt=\"[兔子]\">', '2025-01-08 22:37:14', '127.0.0.1', '2025-01-08 00:00:02', '127.0.0.1', '江西省宜春市丰城市', 'rzesrxdctfvgbhnjbg', NULL, '1', '0');
INSERT INTO `user` VALUES (19, 'sfd', '5b4ceabb69dc3f15a416c97b9fd08180', 'GhlJJVEfe===', 'Ye~fbew', NULL, NULL, 'fhhe@qq.com', NULL, 'statics/images/01_small.gif', '填写个性签名...', '2025-01-11 17:08:30', '127.0.0.1', '2025-01-11 04:34:15', '127.0.0.1', NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (20, '0001', '0420693b4847e78e02db499042166292', 'l=l=fHHrEf==', '也许吧', NULL, NULL, 'sdfh@qq.com', NULL, 'statics/images/01_small.gif', '填写个性签名...', '2025-01-05 22:03:27', '127.0.0.1', '2025-01-11 09:26:04', '127.0.0.1', NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (21, 'user', '43355351e2f878e60ec2f622957ad679', 'heJ=HirhhE==', '小白哥', NULL, '男', '111@qq.com', NULL, 'uploadfiles/2025/1/10308fec9d4f4e1e971c3056d9c5eb15.jpg', '好好学习，天天向上', '2025-01-12 02:18:12', '127.0.0.1', '2025-01-11 01:52:12', '127.0.0.1', '青海省海东市乐都区', 'test', NULL, '1', '1');
INSERT INTO `user` VALUES (22, 'user1', '509fbd2ee641b393537f21a5ed2be9c4', 'rrHVJrGr=i==', '小白1', NULL, NULL, '111@qq.cin', NULL, 'statics/images/01_small.gif', '填写个性签名...', '2025-01-07 10:01:47', '127.0.0.1', '2024-12-31 23:12:08', '127.0.0.1', NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (23, '111', '461f9d3af33bec7990c9c4d8f71c710c', 'arfeJfafHf==', '111', NULL, '女', '2097911254@qq.com', NULL, 'uploadfiles/2025/1/96f1ce7eee324063aded543df4f820ff.png', '填写个性签名ww...', '2025-01-12 00:55:30', '127.0.0.1', '2025-01-02 05:54:48', '127.0.0.1', '河北省石家庄市长安区', '无业游民', NULL, '1', '1');
INSERT INTO `user` VALUES (24, 'test', '07a51876309582bd9d297ccff314d668', 'iEfwGaHrH===', '这是一个用户', NULL, '男', '2097911254@qq.com', NULL, 'uploadfiles/2025/1/e3ed555cfa1d4cd4b9a8a8f038e8b5ef.png', '填写个性签名...', '2025-01-08 08:42:28', '127.0.0.1', '2025-01-16 12:51:48', '127.0.0.1', '河北省石家庄市长安区', '软件工程1', NULL, '1', '1');

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `friend_id` int(11) NOT NULL COMMENT '好友id',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '分组名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '好友申请状态(0.申请,1.同意,2.拒绝,3.不显示)',
  `apply_time` datetime NULL DEFAULT NULL COMMENT '申请时间',
  `postscript` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请附言',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户好友表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES (1, 3, 1, 1, '1', '2025-01-01 21:52:42', NULL);
INSERT INTO `user_friend` VALUES (2, 3, 2, 8, '3', '2024-12-31 11:39:51', NULL);
INSERT INTO `user_friend` VALUES (4, 3, 5, 1, '1', '2025-01-09 22:48:12', NULL);
INSERT INTO `user_friend` VALUES (5, 3, 6, 3, '0', '2025-01-04 11:31:10', NULL);
INSERT INTO `user_friend` VALUES (6, 1, 3, 2, '3', '2025-01-09 23:01:10', NULL);
INSERT INTO `user_friend` VALUES (7, 2, 3, 3, '3', '2025-01-01 12:07:05', NULL);
INSERT INTO `user_friend` VALUES (9, 5, 3, 1, '3', '2025-01-12 06:00:15', NULL);
INSERT INTO `user_friend` VALUES (10, 6, 3, 5, '3', '2025-01-10 09:16:13', NULL);
INSERT INTO `user_friend` VALUES (11, 4, 6, 7, '1', '2025-01-09 18:59:39', NULL);
INSERT INTO `user_friend` VALUES (12, 6, 4, 5, '1', '2025-01-09 14:02:22', NULL);
INSERT INTO `user_friend` VALUES (15, 3, 7, 4, '0', '2025-01-01 21:07:52', '测试');
INSERT INTO `user_friend` VALUES (16, 3, 2, 2, '1', '2025-01-13 09:54:24', '');
INSERT INTO `user_friend` VALUES (21, 3, 4, 3, '3', '2025-01-09 07:33:54', 'bgbdfedvev');
INSERT INTO `user_friend` VALUES (22, 3, 4, 5, '1', '2025-01-01 11:55:07', '(,,･∀･)ﾉ゛hello!');
INSERT INTO `user_friend` VALUES (29, 3, 17, 1, '1', '2024-12-31 00:32:34', '哈喽');
INSERT INTO `user_friend` VALUES (30, 17, 3, 20, '3', '2025-01-09 15:25:11', '');
INSERT INTO `user_friend` VALUES (31, 3, 18, 3, '1', '2025-01-04 18:45:34', '0000');
INSERT INTO `user_friend` VALUES (32, 18, 3, 24, '1', '2025-01-05 01:36:53', '');
INSERT INTO `user_friend` VALUES (33, 19, 3, 26, '1', '2025-01-04 08:59:50', '(,,･∀･)ﾉ゛hello');
INSERT INTO `user_friend` VALUES (34, 3, 19, 3, '1', '2025-01-10 18:06:12', '');
INSERT INTO `user_friend` VALUES (35, 21, 22, 33, '1', '2025-01-03 20:07:05', '');
INSERT INTO `user_friend` VALUES (36, 22, 21, 37, '1', '2025-01-12 06:05:33', '');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 4, 1);
INSERT INTO `user_role` VALUES (2, 4, 2);
INSERT INTO `user_role` VALUES (3, 4, 4);
INSERT INTO `user_role` VALUES (4, 3, 4);
INSERT INTO `user_role` VALUES (8, 6, 2);
INSERT INTO `user_role` VALUES (11, 3, 2);
INSERT INTO `user_role` VALUES (12, 3, 3);
INSERT INTO `user_role` VALUES (13, 4, 3);
INSERT INTO `user_role` VALUES (14, 21, 3);

SET FOREIGN_KEY_CHECKS = 1;
