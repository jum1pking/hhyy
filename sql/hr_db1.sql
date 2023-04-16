/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : hr_db1

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 09/03/2023 19:22:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bonus
-- ----------------------------
DROP TABLE IF EXISTS `bonus`;
CREATE TABLE `bonus`  (
  `bon_id` smallint NOT NULL AUTO_INCREMENT,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bonus_item` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bonus_worth` decimal(10, 0) NULL DEFAULT NULL,
  `bonus_degree` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`bon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bonus
-- ----------------------------

-- ----------------------------
-- Table structure for config_file_first_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_file_first_kind`;
CREATE TABLE `config_file_first_kind`  (
  `ffk_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_salary_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `first_kind_sale_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`ffk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_file_first_kind
-- ----------------------------
INSERT INTO `config_file_first_kind` VALUES (1, '01', '集团', '1', '1');

-- ----------------------------
-- Table structure for config_file_second_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_file_second_kind`;
CREATE TABLE `config_file_second_kind`  (
  `fsk_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_salary_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `second_sale_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`fsk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_file_second_kind
-- ----------------------------
INSERT INTO `config_file_second_kind` VALUES (1, '01', '集团', '01', '软件公司', '1', '1');
INSERT INTO `config_file_second_kind` VALUES (2, '01', '集团', '02', '生物科技有限公司', '1', '1');

-- ----------------------------
-- Table structure for config_file_third_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_file_third_kind`;
CREATE TABLE `config_file_third_kind`  (
  `ftk_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_sale_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `third_kind_is_retail` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ftk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_file_third_kind
-- ----------------------------
INSERT INTO `config_file_third_kind` VALUES (1, '01', '集团', '01', '软件公司', '01', '外包组', '1', '否');
INSERT INTO `config_file_third_kind` VALUES (2, '01', '集团', '02', '生物科技有限公司', '01', '药店', '1', '是');

-- ----------------------------
-- Table structure for config_major
-- ----------------------------
DROP TABLE IF EXISTS `config_major`;
CREATE TABLE `config_major`  (
  `mak_id` smallint NOT NULL AUTO_INCREMENT,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `test_amount` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`mak_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_major
-- ----------------------------
INSERT INTO `config_major` VALUES (1, '01', '销售', '01', '区域经理', 0);
INSERT INTO `config_major` VALUES (2, '01', '销售', '02', '总经理', 0);
INSERT INTO `config_major` VALUES (3, '02', '软件开发', '01', '项目经理', 0);
INSERT INTO `config_major` VALUES (4, '02', '软件开发', '02', '程序员', 0);
INSERT INTO `config_major` VALUES (5, '03', '人力资源', '01', '人事经理', 0);
INSERT INTO `config_major` VALUES (6, '03', '人力资源', '02', '专员', 0);
INSERT INTO `config_major` VALUES (7, '04', '生产部', '01', '主任', 0);
INSERT INTO `config_major` VALUES (8, '04', '生产部', '02', '技术工人', 0);

-- ----------------------------
-- Table structure for config_major_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_major_kind`;
CREATE TABLE `config_major_kind`  (
  `mfk_id` smallint NOT NULL AUTO_INCREMENT,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mfk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_major_kind
-- ----------------------------
INSERT INTO `config_major_kind` VALUES (1, '01', '销售');
INSERT INTO `config_major_kind` VALUES (2, '02', '软件开发');
INSERT INTO `config_major_kind` VALUES (3, '03', '人力资源');
INSERT INTO `config_major_kind` VALUES (4, '04', '生产部');

-- ----------------------------
-- Table structure for config_primary_key
-- ----------------------------
DROP TABLE IF EXISTS `config_primary_key`;
CREATE TABLE `config_primary_key`  (
  `prk_id` smallint NOT NULL AUTO_INCREMENT,
  `primary_key_table` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `primary_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `key_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `primary_key_status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`prk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_primary_key
-- ----------------------------
INSERT INTO `config_primary_key` VALUES (1, 'HumanFile', 'firstKindName', 'I机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (2, 'HumanFile', 'secondKindName', 'II机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (3, 'HumanFile', 'thirdKindName', 'III机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (4, 'HumanFile', 'humanId', '档案编号', b'1');
INSERT INTO `config_primary_key` VALUES (5, 'HumanFile', 'humanName', '姓名', b'1');
INSERT INTO `config_primary_key` VALUES (6, 'HumanFile', 'humanAddress', '住址', b'1');
INSERT INTO `config_primary_key` VALUES (7, 'HumanFile', 'humanPostcode', '邮编', b'1');
INSERT INTO `config_primary_key` VALUES (8, 'HumanFile', 'humanProDesignation', '职称', b'1');
INSERT INTO `config_primary_key` VALUES (9, 'HumanFile', 'humanMajorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (10, 'HumanFile', 'hunmaMajorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (11, 'HumanFile', 'humanBank', '开户银行', b'1');
INSERT INTO `config_primary_key` VALUES (12, 'HumanFile', 'humanAccount', '银行帐号', b'1');
INSERT INTO `config_primary_key` VALUES (13, 'HumanFile', 'humanTelephone', '电话', b'1');
INSERT INTO `config_primary_key` VALUES (14, 'HumanFile', 'humanMobilephone', '手机号码', b'1');
INSERT INTO `config_primary_key` VALUES (15, 'HumanFile', 'humanEmail', 'E-mail', b'1');
INSERT INTO `config_primary_key` VALUES (16, 'HumanFile', 'humanHobby', '爱好', b'1');
INSERT INTO `config_primary_key` VALUES (17, 'HumanFile', 'humanSpeciality', '特长', b'1');
INSERT INTO `config_primary_key` VALUES (18, 'HumanFile', 'humanSex', '性别', b'1');
INSERT INTO `config_primary_key` VALUES (19, 'HumanFile', 'humanReligion', '宗教信仰', b'1');
INSERT INTO `config_primary_key` VALUES (20, 'HumanFile', 'humanParty', '政治面貌', b'1');
INSERT INTO `config_primary_key` VALUES (21, 'HumanFile', 'humanNationality', '国籍', b'1');
INSERT INTO `config_primary_key` VALUES (22, 'HumanFile', 'humanRace', '民族', b'1');
INSERT INTO `config_primary_key` VALUES (23, 'HumanFile', 'humanBirthday', '生日', b'1');
INSERT INTO `config_primary_key` VALUES (24, 'HumanFile', 'humanBirthplace', '出生地', b'1');
INSERT INTO `config_primary_key` VALUES (25, 'HumanFile', 'humanAge', '年龄', b'1');
INSERT INTO `config_primary_key` VALUES (26, 'HumanFile', 'humanEducatedDegree', '学历', b'1');
INSERT INTO `config_primary_key` VALUES (27, 'HumanFile', 'humanEducatedYears', '教育年限', b'1');
INSERT INTO `config_primary_key` VALUES (28, 'HumanFile', 'humanEducatedMajor', '专业', b'1');
INSERT INTO `config_primary_key` VALUES (29, 'HumanFile', 'humanSocietySecurityId', '社会保障号码', b'1');
INSERT INTO `config_primary_key` VALUES (30, 'HumanFile', 'humanIdCard', '身份证号码', b'1');
INSERT INTO `config_primary_key` VALUES (31, 'HumanFile', 'salaryStandardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (32, 'HumanFile', 'salaryStandardName', '薪酬标准', b'1');
INSERT INTO `config_primary_key` VALUES (33, 'HumanFile', 'majorChangeAmount', '调动次数', b'1');
INSERT INTO `config_primary_key` VALUES (34, 'HumanFile', 'bonusAmount', '激励次数', b'1');
INSERT INTO `config_primary_key` VALUES (35, 'HumanFile', 'trainingAmount', '培训次数', b'1');
INSERT INTO `config_primary_key` VALUES (36, 'HumanFile', 'fileChangAmount', '档案变更次数', b'1');
INSERT INTO `config_primary_key` VALUES (37, 'HumanFile', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (38, 'HumanFile', 'humanHistroyRecords', '简历', b'1');
INSERT INTO `config_primary_key` VALUES (39, 'HumanFile', 'humanFamilyMembership', '家庭关系', b'1');
INSERT INTO `config_primary_key` VALUES (40, 'HumanFile', 'register', '登记人', b'1');
INSERT INTO `config_primary_key` VALUES (41, 'SalaryStandard', 'standardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (42, 'SalaryStandard', 'standardName', '薪酬标准名称', b'1');
INSERT INTO `config_primary_key` VALUES (43, 'SalaryStandard', 'designer', '设计人', b'1');
INSERT INTO `config_primary_key` VALUES (44, 'SalaryGrant', 'salaryStandardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (45, 'SalaryGrant', 'salaryGrantId', '薪酬发放编号', b'1');
INSERT INTO `config_primary_key` VALUES (46, 'Bonus', 'majorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (47, 'Bonus', 'majorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (48, 'Bonus', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (49, 'Bonus', 'humanName', '职员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (50, 'Bonus', 'bonusItem', '激励项目', b'1');
INSERT INTO `config_primary_key` VALUES (51, 'Bonus', 'bonusDegree', '激励等级', b'1');
INSERT INTO `config_primary_key` VALUES (52, 'Bonus', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (53, 'Training', 'majorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (54, 'Training', 'majorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (55, 'Training', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (56, 'Training', 'humanName', '职员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (57, 'Training', 'trainingItem', '培训项目', b'1');
INSERT INTO `config_primary_key` VALUES (58, 'Training', 'trainingDegree', '培训等级', b'1');
INSERT INTO `config_primary_key` VALUES (59, 'Training', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (60, 'MajorChange', 'firstKindName', 'I机机构', b'1');
INSERT INTO `config_primary_key` VALUES (61, 'MajorChange', 'secondKindName', 'II机机构', b'1');
INSERT INTO `config_primary_key` VALUES (62, 'MajorChange', 'thirdKindName', 'III机机构', b'1');
INSERT INTO `config_primary_key` VALUES (63, 'MajorChange', 'majorKindName', '职位分类', b'1');
INSERT INTO `config_primary_key` VALUES (64, 'MajorChange', 'majorName', '职位', b'1');
INSERT INTO `config_primary_key` VALUES (65, 'MajorChange', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (66, 'MajorChange', 'humanName', '员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (67, 'MajorChange', 'changeReason', '调动原因', b'1');
INSERT INTO `config_primary_key` VALUES (68, 'HumanFile', 'firstKindName', 'I机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (69, 'HumanFile', 'secondKindName', 'II机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (70, 'HumanFile', 'thirdKindName', 'III机机构名称', b'1');
INSERT INTO `config_primary_key` VALUES (71, 'HumanFile', 'humanId', '档案编号', b'1');
INSERT INTO `config_primary_key` VALUES (72, 'HumanFile', 'humanName', '姓名', b'1');
INSERT INTO `config_primary_key` VALUES (73, 'HumanFile', 'humanAddress', '住址', b'1');
INSERT INTO `config_primary_key` VALUES (74, 'HumanFile', 'humanPostcode', '邮编', b'1');
INSERT INTO `config_primary_key` VALUES (75, 'HumanFile', 'humanProDesignation', '职称', b'1');
INSERT INTO `config_primary_key` VALUES (76, 'HumanFile', 'humanMajorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (77, 'HumanFile', 'hunmaMajorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (78, 'HumanFile', 'humanBank', '开户银行', b'1');
INSERT INTO `config_primary_key` VALUES (79, 'HumanFile', 'humanAccount', '银行帐号', b'1');
INSERT INTO `config_primary_key` VALUES (80, 'HumanFile', 'humanTelephone', '电话', b'1');
INSERT INTO `config_primary_key` VALUES (81, 'HumanFile', 'humanMobilephone', '手机号码', b'1');
INSERT INTO `config_primary_key` VALUES (82, 'HumanFile', 'humanEmail', 'E-mail', b'1');
INSERT INTO `config_primary_key` VALUES (83, 'HumanFile', 'humanHobby', '爱好', b'1');
INSERT INTO `config_primary_key` VALUES (84, 'HumanFile', 'humanSpeciality', '特长', b'1');
INSERT INTO `config_primary_key` VALUES (85, 'HumanFile', 'humanSex', '性别', b'1');
INSERT INTO `config_primary_key` VALUES (86, 'HumanFile', 'humanReligion', '宗教信仰', b'1');
INSERT INTO `config_primary_key` VALUES (87, 'HumanFile', 'humanParty', '政治面貌', b'1');
INSERT INTO `config_primary_key` VALUES (88, 'HumanFile', 'humanNationality', '国籍', b'1');
INSERT INTO `config_primary_key` VALUES (89, 'HumanFile', 'humanRace', '民族', b'1');
INSERT INTO `config_primary_key` VALUES (90, 'HumanFile', 'humanBirthday', '生日', b'1');
INSERT INTO `config_primary_key` VALUES (91, 'HumanFile', 'humanBirthplace', '出生地', b'1');
INSERT INTO `config_primary_key` VALUES (92, 'HumanFile', 'humanAge', '年龄', b'1');
INSERT INTO `config_primary_key` VALUES (93, 'HumanFile', 'humanEducatedDegree', '学历', b'1');
INSERT INTO `config_primary_key` VALUES (94, 'HumanFile', 'humanEducatedYears', '教育年限', b'1');
INSERT INTO `config_primary_key` VALUES (95, 'HumanFile', 'humanEducatedMajor', '专业', b'1');
INSERT INTO `config_primary_key` VALUES (96, 'HumanFile', 'humanSocietySecurityId', '社会保障号码', b'1');
INSERT INTO `config_primary_key` VALUES (97, 'HumanFile', 'humanIdCard', '身份证号码', b'1');
INSERT INTO `config_primary_key` VALUES (98, 'HumanFile', 'salaryStandardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (99, 'HumanFile', 'salaryStandardName', '薪酬标准', b'1');
INSERT INTO `config_primary_key` VALUES (100, 'HumanFile', 'majorChangeAmount', '调动次数', b'1');
INSERT INTO `config_primary_key` VALUES (101, 'HumanFile', 'bonusAmount', '激励次数', b'1');
INSERT INTO `config_primary_key` VALUES (102, 'HumanFile', 'trainingAmount', '培训次数', b'1');
INSERT INTO `config_primary_key` VALUES (103, 'HumanFile', 'fileChangAmount', '档案变更次数', b'1');
INSERT INTO `config_primary_key` VALUES (104, 'HumanFile', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (105, 'HumanFile', 'humanHistroyRecords', '简历', b'1');
INSERT INTO `config_primary_key` VALUES (106, 'HumanFile', 'humanFamilyMembership', '家庭关系', b'1');
INSERT INTO `config_primary_key` VALUES (107, 'HumanFile', 'register', '登记人', b'1');
INSERT INTO `config_primary_key` VALUES (108, 'SalaryStandard', 'standardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (109, 'SalaryStandard', 'standardName', '薪酬标准名称', b'1');
INSERT INTO `config_primary_key` VALUES (110, 'SalaryStandard', 'designer', '设计人', b'1');
INSERT INTO `config_primary_key` VALUES (111, 'SalaryGrant', 'salaryStandardId', '薪酬标准编号', b'1');
INSERT INTO `config_primary_key` VALUES (112, 'SalaryGrant', 'salaryGrantId', '薪酬发放编号', b'1');
INSERT INTO `config_primary_key` VALUES (113, 'Bonus', 'majorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (114, 'Bonus', 'majorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (115, 'Bonus', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (116, 'Bonus', 'humanName', '职员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (117, 'Bonus', 'bonusItem', '激励项目', b'1');
INSERT INTO `config_primary_key` VALUES (118, 'Bonus', 'bonusDegree', '激励等级', b'1');
INSERT INTO `config_primary_key` VALUES (119, 'Bonus', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (120, 'Training', 'majorKindName', '职位分类名称', b'1');
INSERT INTO `config_primary_key` VALUES (121, 'Training', 'majorName', '职位名称', b'1');
INSERT INTO `config_primary_key` VALUES (122, 'Training', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (123, 'Training', 'humanName', '职员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (124, 'Training', 'trainingItem', '培训项目', b'1');
INSERT INTO `config_primary_key` VALUES (125, 'Training', 'trainingDegree', '培训等级', b'1');
INSERT INTO `config_primary_key` VALUES (126, 'Training', 'remark', '备注', b'1');
INSERT INTO `config_primary_key` VALUES (127, 'MajorChange', 'firstKindName', 'I机机构', b'1');
INSERT INTO `config_primary_key` VALUES (128, 'MajorChange', 'secondKindName', 'II机机构', b'1');
INSERT INTO `config_primary_key` VALUES (129, 'MajorChange', 'thirdKindName', 'III机机构', b'1');
INSERT INTO `config_primary_key` VALUES (130, 'MajorChange', 'majorKindName', '职位分类', b'1');
INSERT INTO `config_primary_key` VALUES (131, 'MajorChange', 'majorName', '职位', b'1');
INSERT INTO `config_primary_key` VALUES (132, 'MajorChange', 'humanId', '员工编号', b'1');
INSERT INTO `config_primary_key` VALUES (133, 'MajorChange', 'humanName', '员工姓名', b'1');
INSERT INTO `config_primary_key` VALUES (134, 'MajorChange', 'changeReason', '调动原因', b'1');

-- ----------------------------
-- Table structure for config_public_char
-- ----------------------------
DROP TABLE IF EXISTS `config_public_char`;
CREATE TABLE `config_public_char`  (
  `pbc_id` smallint NOT NULL AUTO_INCREMENT,
  `attribute_kind` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attribute_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pbc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_public_char
-- ----------------------------
INSERT INTO `config_public_char` VALUES (1, '国籍', '中国');
INSERT INTO `config_public_char` VALUES (2, '国籍', '美国');
INSERT INTO `config_public_char` VALUES (3, '民族', '汉族');
INSERT INTO `config_public_char` VALUES (4, '民族', '回族');
INSERT INTO `config_public_char` VALUES (5, '宗教信仰', '无');
INSERT INTO `config_public_char` VALUES (6, '宗教信仰', '佛教');
INSERT INTO `config_public_char` VALUES (7, '政治面貌', '党员');
INSERT INTO `config_public_char` VALUES (8, '政治面貌', '群众');
INSERT INTO `config_public_char` VALUES (9, '教育年限', '12');
INSERT INTO `config_public_char` VALUES (10, '教育年限', '16');
INSERT INTO `config_public_char` VALUES (11, '学历', '本科');
INSERT INTO `config_public_char` VALUES (12, '学历', '大专');
INSERT INTO `config_public_char` VALUES (13, '专业', '生物工程');
INSERT INTO `config_public_char` VALUES (14, '专业', '计算机');
INSERT INTO `config_public_char` VALUES (15, '特长', '数据库');
INSERT INTO `config_public_char` VALUES (16, '特长', 'java');
INSERT INTO `config_public_char` VALUES (17, '爱好', '篮球');
INSERT INTO `config_public_char` VALUES (18, '爱好', '舞蹈');
INSERT INTO `config_public_char` VALUES (19, '培训项目', '英语');
INSERT INTO `config_public_char` VALUES (20, '培训项目', '管理');
INSERT INTO `config_public_char` VALUES (21, '培训成绩', 'A');
INSERT INTO `config_public_char` VALUES (22, '培训成绩', 'B');
INSERT INTO `config_public_char` VALUES (23, '奖励项目', '技术攻关');
INSERT INTO `config_public_char` VALUES (24, '奖励项目', '销售绩效');
INSERT INTO `config_public_char` VALUES (25, '奖励等级', 'A');
INSERT INTO `config_public_char` VALUES (26, '奖励等级', 'B');
INSERT INTO `config_public_char` VALUES (27, '职称', '工程师');
INSERT INTO `config_public_char` VALUES (28, '职称', '经理');
INSERT INTO `config_public_char` VALUES (29, '职称', '助理');
INSERT INTO `config_public_char` VALUES (30, '职称', '教授');
INSERT INTO `config_public_char` VALUES (31, '职称', '讲师');
INSERT INTO `config_public_char` VALUES (32, '职称', '技术支持');
INSERT INTO `config_public_char` VALUES (33, '薪酬设置', '出差补助');
INSERT INTO `config_public_char` VALUES (34, '薪酬设置', '交通补贴');
INSERT INTO `config_public_char` VALUES (35, '薪酬设置', '住房补贴');
INSERT INTO `config_public_char` VALUES (36, '薪酬设置', '基本工资');
INSERT INTO `config_public_char` VALUES (37, '薪酬设置', '年终奖');
INSERT INTO `config_public_char` VALUES (38, '薪酬设置', '误餐补助');

-- ----------------------------
-- Table structure for config_question_first_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_question_first_kind`;
CREATE TABLE `config_question_first_kind`  (
  `qfk_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`qfk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_question_first_kind
-- ----------------------------
INSERT INTO `config_question_first_kind` VALUES (1, '01', '基础类');
INSERT INTO `config_question_first_kind` VALUES (2, '02', '技术类');

-- ----------------------------
-- Table structure for config_question_second_kind
-- ----------------------------
DROP TABLE IF EXISTS `config_question_second_kind`;
CREATE TABLE `config_question_second_kind`  (
  `qsk_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`qsk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_question_second_kind
-- ----------------------------
INSERT INTO `config_question_second_kind` VALUES (1, '01', '基础类', '01', '语言类');
INSERT INTO `config_question_second_kind` VALUES (2, '01', '基础类', '02', '管理类');
INSERT INTO `config_question_second_kind` VALUES (3, '02', '技术类', '01', '软件开发类');
INSERT INTO `config_question_second_kind` VALUES (4, '02', '技术类', '02', '生物制药类');

-- ----------------------------
-- Table structure for engage_answer
-- ----------------------------
DROP TABLE IF EXISTS `engage_answer`;
CREATE TABLE `engage_answer`  (
  `ans_id` smallint NOT NULL AUTO_INCREMENT,
  `answer_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exam_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `resume_id` smallint NULL DEFAULT NULL,
  `interview_id` smallint NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_idcard` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `test_time` datetime NULL DEFAULT NULL,
  `use_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_point` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`ans_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_answer
-- ----------------------------

-- ----------------------------
-- Table structure for engage_answer_details
-- ----------------------------
DROP TABLE IF EXISTS `engage_answer_details`;
CREATE TABLE `engage_answer_details`  (
  `and_id` smallint NOT NULL AUTO_INCREMENT,
  `answer_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subject_id` smallint NULL DEFAULT NULL,
  `answer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`and_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_answer_details
-- ----------------------------

-- ----------------------------
-- Table structure for engage_exam
-- ----------------------------
DROP TABLE IF EXISTS `engage_exam`;
CREATE TABLE `engage_exam`  (
  `exa_id` smallint NOT NULL AUTO_INCREMENT,
  `exam_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `limite_time` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`exa_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_exam
-- ----------------------------

-- ----------------------------
-- Table structure for engage_exam_details
-- ----------------------------
DROP TABLE IF EXISTS `engage_exam_details`;
CREATE TABLE `engage_exam_details`  (
  `exd_id` smallint NOT NULL AUTO_INCREMENT,
  `exam_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `question_amount` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`exd_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_exam_details
-- ----------------------------

-- ----------------------------
-- Table structure for engage_interview
-- ----------------------------
DROP TABLE IF EXISTS `engage_interview`;
CREATE TABLE `engage_interview`  (
  `ein_id` smallint NOT NULL AUTO_INCREMENT,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `interview_amount` smallint NULL DEFAULT NULL,
  `human_major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `native_language_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `foreign_language_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_speed_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `EQ_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `IQ_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `multi_quality_degree` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `registe_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `resume_id` smallint NULL DEFAULT NULL,
  `result` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `interview_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `check_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `interview_status` smallint NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`ein_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_interview
-- ----------------------------

-- ----------------------------
-- Table structure for engage_major_release
-- ----------------------------
DROP TABLE IF EXISTS `engage_major_release`;
CREATE TABLE `engage_major_release`  (
  `mre_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_amount` smallint NULL DEFAULT NULL,
  `engage_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deadline` datetime NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `change_time` datetime NULL DEFAULT NULL,
  `major_describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `engage_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`mre_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_major_release
-- ----------------------------

-- ----------------------------
-- Table structure for engage_resume
-- ----------------------------
DROP TABLE IF EXISTS `engage_resume`;
CREATE TABLE `engage_resume`  (
  `res_id` smallint NOT NULL AUTO_INCREMENT,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `engage_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_telephone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_homephone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_mobilephone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_hobby` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_specility` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_religion` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_party` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_nationality` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_race` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_birthday` datetime NULL DEFAULT NULL,
  `human_age` smallint NULL DEFAULT NULL,
  `human_educated_degree` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_educated_years` smallint NULL DEFAULT NULL,
  `human_educated_major` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_college` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_idcard` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_birthplace` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `demand_salary_standard` decimal(15, 2) NULL DEFAULT NULL,
  `human_history_records` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `recomandation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `human_picture` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attachment_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `interview_status` smallint NULL DEFAULT NULL,
  `total_points` float NULL DEFAULT NULL,
  `test_amount` smallint NULL DEFAULT NULL,
  `test_checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `test_check_time` datetime NULL DEFAULT NULL,
  `pass_register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass_regist_time` datetime NULL DEFAULT NULL,
  `pass_checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass_check_time` datetime NULL DEFAULT NULL,
  `pass_check_status` smallint NULL DEFAULT NULL,
  `pass_checkComment` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass_passComment` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`res_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_resume
-- ----------------------------

-- ----------------------------
-- Table structure for engage_subjects
-- ----------------------------
DROP TABLE IF EXISTS `engage_subjects`;
CREATE TABLE `engage_subjects`  (
  `sub_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `derivation` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `key_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `key_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `key_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `key_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `key_e` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `correct_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `change_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`sub_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engage_subjects
-- ----------------------------

-- ----------------------------
-- Table structure for human_file
-- ----------------------------
DROP TABLE IF EXISTS `human_file`;
CREATE TABLE `human_file`  (
  `huf_id` smallint NOT NULL AUTO_INCREMENT,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_pro_designation` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hunma_major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_mobilephone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_bank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_qq` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_hobby` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_speciality` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_religion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_party` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_race` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_birthday` datetime NULL DEFAULT NULL,
  `human_birthplace` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_age` smallint NULL DEFAULT NULL,
  `human_educated_degree` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_educated_years` smallint NULL DEFAULT NULL,
  `human_educated_major` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_society_security_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `salary_standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `demand_salaray_sum` decimal(10, 0) NULL DEFAULT NULL,
  `paid_salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `major_change_amount` smallint NULL DEFAULT NULL,
  `bonus_amount` smallint NULL DEFAULT NULL,
  `training_amount` smallint NULL DEFAULT NULL,
  `file_chang_amount` smallint NULL DEFAULT NULL,
  `human_histroy_records` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `human_family_membership` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `human_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `change_time` datetime NULL DEFAULT NULL,
  `lastly_change_time` datetime NULL DEFAULT NULL,
  `delete_time` datetime NULL DEFAULT NULL,
  `recovery_time` datetime NULL DEFAULT NULL,
  `human_file_status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`huf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of human_file
-- ----------------------------
INSERT INTO `human_file` VALUES (1, 'bt0101010001', '01', 'Better集团', '01', 'Better软件公司', '01', '外包组', 'fantia', '北京海淀', '100091', '经理', '02', '软件开发', '01', '项目经理', '', '13699175041', '建设银行', '123456879586584', '26284795', '26284795@qq.com', '舞蹈', 'java', '女', '无', '党员', '中国', '汉族', '1983-07-01 00:00:00', '太原', 24, '本科', 16, '生物工程', '', '140105198307010065', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 'admin', '', '', '2007-05-31 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1');

-- ----------------------------
-- Table structure for human_file_dig
-- ----------------------------
DROP TABLE IF EXISTS `human_file_dig`;
CREATE TABLE `human_file_dig`  (
  `hfd_id` smallint NOT NULL AUTO_INCREMENT,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_pro_designation` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hunma_major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_mobilephone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_bank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_qq` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_hobby` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_speciality` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_religion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_party` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_race` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_birthday` datetime NULL DEFAULT NULL,
  `human_birthplace` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_age` smallint NULL DEFAULT NULL,
  `human_educated_degree` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_educated_years` smallint NULL DEFAULT NULL,
  `human_educated_major` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_society_security_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `salary_standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `demand_salaray_sum` decimal(10, 0) NULL DEFAULT NULL,
  `paid_salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `major_change_amount` smallint NULL DEFAULT NULL,
  `bonus_amount` smallint NULL DEFAULT NULL,
  `training_amount` smallint NULL DEFAULT NULL,
  `file_chang_amount` smallint NULL DEFAULT NULL,
  `human_histroy_records` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `human_family_membership` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `human_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `change_time` datetime NULL DEFAULT NULL,
  `lastly_change_time` datetime NULL DEFAULT NULL,
  `delete_time` datetime NULL DEFAULT NULL,
  `recovery_time` datetime NULL DEFAULT NULL,
  `human_file_status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`hfd_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of human_file_dig
-- ----------------------------

-- ----------------------------
-- Table structure for major_change
-- ----------------------------
DROP TABLE IF EXISTS `major_change`;
CREATE TABLE `major_change`  (
  `mch_id` smallint NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `new_salary_standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_salary_standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `change_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `check_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `check_status` smallint NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`mch_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major_change
-- ----------------------------

-- ----------------------------
-- Table structure for salary_grant
-- ----------------------------
DROP TABLE IF EXISTS `salary_grant`;
CREATE TABLE `salary_grant`  (
  `sgr_id` smallint NOT NULL AUTO_INCREMENT,
  `salary_grant_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary_standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `second_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `third_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_amount` smallint NULL DEFAULT NULL,
  `salary_standard_sum` decimal(10, 0) NULL DEFAULT NULL,
  `salary_paid_sum` decimal(10, 0) NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`sgr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary_grant
-- ----------------------------

-- ----------------------------
-- Table structure for salary_grant_details
-- ----------------------------
DROP TABLE IF EXISTS `salary_grant_details`;
CREATE TABLE `salary_grant_details`  (
  `grd_id` smallint NOT NULL AUTO_INCREMENT,
  `salary_grant_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bouns_sum` decimal(10, 0) NULL DEFAULT NULL,
  `sale_sum` decimal(10, 0) NULL DEFAULT NULL,
  `deduct_sum` decimal(10, 0) NULL DEFAULT NULL,
  `salary_standard_sum` decimal(10, 0) NULL DEFAULT NULL,
  `salary_paid_sum` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`grd_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary_grant_details
-- ----------------------------

-- ----------------------------
-- Table structure for salary_standard
-- ----------------------------
DROP TABLE IF EXISTS `salary_standard`;
CREATE TABLE `salary_standard`  (
  `ssd_id` smallint NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `designer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `change_time` datetime NULL DEFAULT NULL,
  `salary_sum` decimal(10, 0) NULL DEFAULT NULL,
  `check_status` smallint NULL DEFAULT NULL,
  `change_status` smallint NULL DEFAULT NULL,
  `check_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`ssd_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary_standard
-- ----------------------------

-- ----------------------------
-- Table structure for salary_standard_details
-- ----------------------------
DROP TABLE IF EXISTS `salary_standard_details`;
CREATE TABLE `salary_standard_details`  (
  `sdt_id` smallint NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `standard_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `item_id` smallint NULL DEFAULT NULL,
  `item_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`sdt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary_standard_details
-- ----------------------------

-- ----------------------------
-- Table structure for training
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training`  (
  `tra_id` smallint NOT NULL AUTO_INCREMENT,
  `major_kind_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_kind_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `human_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `training_item` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `training_time` datetime NULL DEFAULT NULL,
  `training_hour` int NULL DEFAULT NULL,
  `training_degree` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checker` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `regist_time` datetime NULL DEFAULT NULL,
  `check_time` datetime NULL DEFAULT NULL,
  `checkstatus` smallint NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`tra_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of training
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `u_id` smallint NOT NULL AUTO_INCREMENT,
  `u_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_true_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'better_admin', 'zhangsan', '123456');

SET FOREIGN_KEY_CHECKS = 1;
