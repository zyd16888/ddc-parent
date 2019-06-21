/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : ddc

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/06/2019 09:24:13
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dcc_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `dcc_role_auth`;
CREATE TABLE `dcc_role_auth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `auth_id` bigint(20) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1139943693940281346 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dcc_role_auth
-- ----------------------------
INSERT INTO `dcc_role_auth` VALUES (1139943690635169794, 1, 1139936537677512705);
INSERT INTO `dcc_role_auth` VALUES (1139943691188817922, 1, 1139936538944192514);
INSERT INTO `dcc_role_auth` VALUES (1139943691331424257, 1, 1139936539090993153);
INSERT INTO `dcc_role_auth` VALUES (1139943691616636929, 1, 1139936539376205826);
INSERT INTO `dcc_role_auth` VALUES (1139943691897655298, 1, 1139936539653029890);
INSERT INTO `dcc_role_auth` VALUES (1139943692023484418, 1, 1139936539791441922);
INSERT INTO `dcc_role_auth` VALUES (1139943692254171137, 1, 1139941078108061698);
INSERT INTO `dcc_role_auth` VALUES (1139943692405166082, 1, 1139941079345381377);
INSERT INTO `dcc_role_auth` VALUES (1139943692535189506, 1, 1139941079458627585);
INSERT INTO `dcc_role_auth` VALUES (1139943692686184449, 1, 1139941079752228866);
INSERT INTO `dcc_role_auth` VALUES (1139943692812013569, 1, 1139941080033247234);
INSERT INTO `dcc_role_auth` VALUES (1139943692958814210, 1, 1139941080171659266);
INSERT INTO `dcc_role_auth` VALUES (1139943693088837634, 1, 1139941080310071298);
INSERT INTO `dcc_role_auth` VALUES (1139943693239832577, 1, 1139941080435900417);
INSERT INTO `dcc_role_auth` VALUES (1139943693365661698, 1, 1139941080591089666);
INSERT INTO `dcc_role_auth` VALUES (1139943693525045249, 1, 1139941080721113089);
INSERT INTO `dcc_role_auth` VALUES (1139943693650874369, 1, 1139941080872108033);
INSERT INTO `dcc_role_auth` VALUES (1139943693793480706, 1, 1139941080997937154);
INSERT INTO `dcc_role_auth` VALUES (1139943693940281345, 1, 1139941081274761217);



create table Diary
(
   id                   bigint(20) not null,
   type                 int(11),
   content              varchar(255),
   admin                varchar(255),
   IP                   varchar(255),
   Time                 datetime,
   primary key (id)
);
-- ----------------------------
-- Table structure for ddc_admin
-- ----------------------------




DROP TABLE IF EXISTS `ddc_admin`;
CREATE TABLE `ddc_admin`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码 密文',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '加密盐值',
  `sex` tinyint(2) DEFAULT 0 COMMENT '性别 0 男 1 女 默认 0',
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码 ',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(2) DEFAULT NULL COMMENT '启用、禁用  1 启用 2 禁用',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标志 0 未删除 1 已删除 默认 0',
  PRIMARY KEY (`id`) 
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ddc_admin
-- ----------------------------
INSERT INTO `ddc_admin` VALUES (1139946923277545474, 'root', 'f2f337ace5db36a0f83d726f31eb66ff', 'root_0ba80d42-8f92-4374-85be-fef484195bcc', 0, '13812341234', 'hello@qq.com', 1, NULL, 0, 1560619499537, 0, 1560619499537, 0, 0);

-- ----------------------------
-- Table structure for ddc_authority
-- ----------------------------
DROP TABLE IF EXISTS `ddc_authority`;
CREATE TABLE `ddc_authority`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '权限标识',
  `p_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '上级权限 顶级权限的上级权限是 0',
  `level` tinyint(2) NOT NULL DEFAULT 2 COMMENT '权限级别 0 模块权限 1 菜单权限 2 操作权限 默认是2',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` bigint(20) DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标志 0 未删除 1 已删除 默认 0',
  PRIMARY KEY (`id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1139941081274761218 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ddc_authority
-- ----------------------------
INSERT INTO `ddc_authority` VALUES (1139936537677512705, '资讯管理', 'ZXGL', 0, 1, 0, 1560617023429, 0, 1560617023429, 0);
INSERT INTO `ddc_authority` VALUES (1139936538944192514, '评论管理', 'PLGL', 0, 1, 0, 1560617024539, 0, 1560617024539, 0);
INSERT INTO `ddc_authority` VALUES (1139936539090993153, '会员管理', 'HYGL', 0, 1, 0, 1560617024573, 0, 1560617024573, 0);
INSERT INTO `ddc_authority` VALUES (1139936539376205826, '管理员管理', 'GLYGL', 0, 1, 0, 1560617024640, 0, 1560617024640, 0);
INSERT INTO `ddc_authority` VALUES (1139936539653029890, '数据统计', 'SJTJ', 0, 1, 0, 1560617024707, 0, 1560617024707, 0);
INSERT INTO `ddc_authority` VALUES (1139936539791441922, '系统管理', 'XTGL', 0, 1, 0, 1560617024738, 0, 1560617024738, 0);
INSERT INTO `ddc_authority` VALUES (1139941078108061698, '资讯列表', 'ZXGL-ZXLB', 1139936537677512705, 2, 0, 1560618105944, 0, 1560618105944, 0);
INSERT INTO `ddc_authority` VALUES (1139941079345381377, '图片管理', 'ZXGL-TPGL', 1139936537677512705, 2, 0, 1560618107053, 0, 1560618107053, 0);
INSERT INTO `ddc_authority` VALUES (1139941079458627585, '栏目管理', 'ZXGL-LMGL', 1139936537677512705, 2, 0, 1560618107082, 0, 1560618107082, 0);
INSERT INTO `ddc_authority` VALUES (1139941079752228866, '分类管理', 'ZXGL-FLGL', 1139936537677512705, 2, 0, 1560618107152, 0, 1560618107152, 0);
INSERT INTO `ddc_authority` VALUES (1139941080033247234, '意见反馈', 'PLGL-YJFK', 1139936538944192514, 2, 0, 1560618107219, 0, 1560618107219, 0);
INSERT INTO `ddc_authority` VALUES (1139941080171659266, '会员列表', 'PLGL-HYLB', 1139936539090993153, 2, 0, 1560618107249, 0, 1560618107249, 0);
INSERT INTO `ddc_authority` VALUES (1139941080310071298, '浏览记录', 'PLGL-LLJL', 1139936539090993153, 2, 0, 1560618107285, 0, 1560618107285, 0);
INSERT INTO `ddc_authority` VALUES (1139941080435900417, '管理员列表', 'GLYGL-GLYLB', 1139936539376205826, 2, 0, 1560618107314, 0, 1560618107314, 0);
INSERT INTO `ddc_authority` VALUES (1139941080591089666, '角色列表', 'GLYGL-JSLB', 1139936539376205826, 2, 0, 1560618107350, 0, 1560618107350, 0);
INSERT INTO `ddc_authority` VALUES (1139941080721113089, '权限列表', 'GLYGL-QXLB', 1139936539376205826, 2, 0, 1560618107381, 0, 1560618107381, 0);
INSERT INTO `ddc_authority` VALUES (1139941080872108033, '活跃用户统计', 'SJTJ-HYYH', 1139936539653029890, 2, 0, 1560618107417, 0, 1560618107417, 0);
INSERT INTO `ddc_authority` VALUES (1139941080997937154, '浏览记录统计', 'SJTJ-LJL', 1139936539653029890, 2, 0, 1560618107447, 0, 1560618107447, 0);
INSERT INTO `ddc_authority` VALUES (1139941081274761217, '系统日志', 'XTGL-XTRZ', 1139936539791441922, 2, 0, 1560618107515, 0, 1560618107515, 0);

-- ----------------------------
-- Table structure for ddc_role
-- ----------------------------
DROP TABLE IF EXISTS `ddc_role`;
CREATE TABLE `ddc_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) NOT NULL COMMENT '创建人',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除标志 0 未删除 1 已删除 默认 0',
  PRIMARY KEY (`id`) 
)  AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ddc_role
-- ----------------------------
INSERT INTO `ddc_role` VALUES (1, '超级管理员', '所有权限', 0, 1560617023429, 0, 1560617023429, 0);

SET FOREIGN_KEY_CHECKS = 1;
/*==============================================================*/
/* Table: Consulting                                            */
/*==============================================================*/
drop table if exists Consulting;
create table Consulting
(
   C_id                 bigint(20) not null auto_increment,
   C_title              varchar(30) not null,
   C_class              varchar(10),
   C_from               varchar(20),
   C_keywords           varchar(50),
   C_paixu              bigint,
   C_upTime             datetime,
   C_seeTimes           int,
   C_state              boolean,
   C_note               varchar(500),
   C_create_man         varchar(30),
   C_create_time        datetime,
   C_update_man         varchar(30),
   C_update_time        datetime,
   C_delete_state       char(2),
   primary key (C_id)
);
/*==============================================================*/
/* Table: Picture                                               */
/*==============================================================*/
drop table if exists Picture;
create table Picture
(
   P_id                 bigint(20) not null auto_increment,
   P_class              varchar(10),
   P_frist              varchar(30),
   p_name               varchar(20),
   P_tags               varchar(20),
   P_uptime             datetime,
   P_state              boolean,
   P_picture            varchar(50),
   P_create_man         varchar(30),
   P_create_time        datetime,
   P_update_man         varchar(30),
   P_update_time        datetime,
   P_delete_state       char(2),
   primary key (P_id)
);
/*==============================================================*/
/* Table: pictureList                                           */
/*==============================================================*/
drop table if exists pictureList;
create table pictureList
(
   PL_id                integer(20) not null auto_increment,
   P_id                 bigint(20),
   PL_note              varchar(100),
   primary key (PL_id)
);
alter table pictureList add constraint FK_Reference_pl foreign key (P_id)
      references Picture (P_id) on delete restrict on update restrict;


CREATE TABLE `categories` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`level` INT(11) NULL DEFAULT NULL,
	`from` INT(11) NULL DEFAULT NULL,
	`append` VARCHAR(50) NULL DEFAULT NULL,
	`create_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`create time` DATE NULL DEFAULT NULL,
	`update_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`update_time` DATE NULL DEFAULT NULL,
	`delete_fliag` TINYINT(4) NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	INDEX `FK_categories_categories` (`from`),
	CONSTRAINT `FK_categories_categories` FOREIGN KEY (`from`) REFERENCES `categories` (`id`)
)
;

CREATE TABLE `columns` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`level` INT(11) NULL DEFAULT NULL,
	`from` INT(11) NULL DEFAULT NULL,
	`create_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`create time` DATE NULL DEFAULT NULL,
	`update_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`update_time` DATE NULL DEFAULT NULL,
	`delete_fliag` TINYINT(4) NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	INDEX `FK_columns_columns` (`from`),
	CONSTRAINT `FK_columns_columns` FOREIGN KEY (`from`) REFERENCES `columns` (`id`)
)
;
CREATE TABLE `column_meta` (
	`column_meta_id` INT(11) NOT NULL,
	`column_id` INT(11) NULL DEFAULT NULL,
	`meta_key` INT(11) NOT NULL,
	`meta_value` INT(11) NOT NULL,
	`create_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`create time` DATE NULL DEFAULT NULL,
	`update_by_bight` VARCHAR(50) NULL DEFAULT NULL,
	`update_time` DATE NULL DEFAULT NULL,
	`delete_fliag` TINYINT(4) NULL DEFAULT '0',
	PRIMARY KEY (`column_meta_id`),
	INDEX `FK_column_meta_columns` (`column_id`),
	CONSTRAINT `FK_column_meta_columns` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`)
)
;

/*==============================================================*/
/* Table: UserComment                                           */
/*==============================================================*/
create table UserComment
(
   ID                   bigint(20) not null auto_increment,
   m_id                 bigint(20),
   C_Comments           varchar(100),
   C_Html               varchar(50),
   C_Time               datetime,
   primary key (ID)
);

alter table UserComment add constraint FK_Reference_8 foreign key (m_id)
      references member (m_id) on delete restrict on update restrict;



-- ----------------------------
-- Table structure for ddc_suggestings
-- ----------------------------
DROP TABLE IF EXISTS `ddc_suggestings`;
CREATE TABLE `ddc_suggestings`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `sex` tinyint(2) NOT NULL DEFAULT 2 COMMENT '性别 0 男 1 女 2 保密 默认保密',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '附件地址 ',
  `city` tinyint(4) DEFAULT NULL COMMENT '城市ID',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '留言内容',
  `create_time` bigint(20) NOT NULL,
  `create_by` bigint(20) NOT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `del_flag` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ddc_suggestings
-- ----------------------------
INSERT INTO `ddc_suggestings` VALUES (14, 'user13', 1, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc123123', 1560954599870, 0, 1561035983423, 1139946923277545474, 0);
INSERT INTO `ddc_suggestings` VALUES (15, 'user14', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954599896, 0, 1560954599896, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (16, 'user15', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954599925, 0, 1560954599925, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (17, 'user16', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954599952, 0, 1560954599952, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (18, 'user17', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954599981, 0, 1560954599981, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (19, 'user18', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600007, 0, 1560954600007, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (20, 'user19', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600036, 0, 1560954600036, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (21, 'user20', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600095, 0, 1560954600095, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (22, 'user21', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600150, 0, 1560954600150, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (23, 'user22', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600181, 0, 1560954600181, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (24, 'user23', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600205, 0, 1560954600205, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (25, 'user24', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600236, 0, 1560954600236, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (26, 'user25', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600261, 0, 1560954600261, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (27, 'user26', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600291, 0, 1560954600291, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (28, 'user27', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600327, 0, 1560954600327, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (29, 'user28', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600357, 0, 1560954600357, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (30, 'user29', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600383, 0, 1560954600383, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (31, 'user30', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600413, 0, 1560954600413, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (32, 'user31', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600438, 0, 1560954600438, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (33, 'user32', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600469, 0, 1560954600469, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (34, 'user33', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600494, 0, 1560954600494, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (35, 'user34', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600524, 0, 1561035844084, 1139946923277545474, 0);
INSERT INTO `ddc_suggestings` VALUES (36, 'user35', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600549, 0, 1560954600549, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (37, 'user36', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600601, 0, 1560954600601, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (38, 'user37', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600646, 0, 1560954600646, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (39, 'user38', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600671, 0, 1560954600671, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (40, 'user39', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600701, 0, 1560954600701, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (41, 'user40', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600726, 0, 1560954600726, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (42, 'user41', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600756, 0, 1560954600756, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (43, 'user42', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600781, 0, 1560954600781, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (44, 'user43', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600813, 0, 1560954600813, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (45, 'user44', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600837, 0, 1560954600837, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (46, 'user45', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600859, 0, 1560954600859, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (47, 'user46', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600889, 0, 1560954600889, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (48, 'user47', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600914, 0, 1560954600914, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (49, 'user48', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600943, 0, 1560954600943, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (50, 'user49', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600969, 0, 1560954600969, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (51, 'user50', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954600999, 0, 1560954600999, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (52, 'user51', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601025, 0, 1560954601025, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (53, 'user52', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601055, 0, 1560954601055, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (54, 'user53', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601080, 0, 1560954601080, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (55, 'user54', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601110, 0, 1560954601110, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (56, 'user55', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601137, 0, 1560954601137, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (57, 'user56', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601169, 0, 1560954601169, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (58, 'user57', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601200, 0, 1560954601200, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (59, 'user58', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601224, 0, 1560954601224, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (60, 'user59', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601254, 0, 1560954601254, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (61, 'user60', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601280, 0, 1560954601280, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (62, 'user61', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601309, 0, 1560954601309, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (63, 'user62', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601334, 0, 1560954601334, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (64, 'user63', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601356, 0, 1560954601356, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (65, 'user64', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601387, 0, 1560954601387, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (66, 'user65', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601412, 0, 1560954601412, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (67, 'user66', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601442, 0, 1560954601442, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (68, 'user67', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601467, 0, 1560954601467, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (69, 'user68', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601497, 0, 1560954601497, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (70, 'user69', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601523, 0, 1560954601523, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (71, 'user70', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601553, 0, 1560954601553, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (72, 'user71', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601579, 0, 1560954601579, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (73, 'user72', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601608, 0, 1560954601608, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (74, 'user73', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601634, 0, 1560954601634, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (75, 'user74', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601664, 0, 1560954601664, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (76, 'user75', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601688, 0, 1560954601688, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (77, 'user76', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601711, 0, 1560954601711, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (78, 'user77', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601741, 0, 1560954601741, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (79, 'user78', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601766, 0, 1560954601766, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (80, 'user79', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601796, 0, 1560954601796, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (81, 'user80', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601822, 0, 1560954601822, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (82, 'user81', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601852, 0, 1560954601852, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (83, 'user82', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601877, 0, 1560954601877, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (84, 'user83', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601907, 0, 1560954601907, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (85, 'user84', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601933, 0, 1560954601933, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (86, 'user85', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601963, 0, 1560954601963, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (87, 'user86', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954601988, 0, 1560954601988, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (88, 'user87', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602018, 0, 1560954602018, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (89, 'user88', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602043, 0, 1560954602043, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (90, 'user89', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602065, 0, 1560954602065, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (91, 'user90', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602095, 0, 1560954602095, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (92, 'user91', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602120, 0, 1560954602120, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (93, 'user92', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602150, 0, 1560954602150, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (94, 'user93', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602176, 0, 1560954602176, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (95, 'user94', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602206, 0, 1560954602206, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (96, 'user95', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602231, 0, 1560954602231, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (97, 'user96', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602261, 0, 1560954602261, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (98, 'user97', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602287, 0, 1560954602287, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (99, 'user98', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602317, 0, 1560954602317, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (100, 'user99', 2, '13412341234', 'hello@qq.cm', '', 1, 'hello ddc', 1560954602342, 0, 1560954602342, 0, 0);
INSERT INTO `ddc_suggestings` VALUES (101, 'admin', 0, '15112341234', '123@qq.com', '', NULL, 'come on ', 1561036210116, 1139946923277545474, 1561036210116, 1139946923277545474, 0);

SET FOREIGN_KEY_CHECKS = 1;
