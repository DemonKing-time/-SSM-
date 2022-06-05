/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-06-05 19:26:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(64) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(64) NOT NULL COMMENT '数据字典项目名称',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '专业', '体育教育', '1', '1');
INSERT INTO `base_dict` VALUES ('10', '001', '专业', '音乐学(本)', '6', '1');
INSERT INTO `base_dict` VALUES ('12', '001', '专业', '环境设计(本)', '7', '1');
INSERT INTO `base_dict` VALUES ('13', '001', '专业', '美术学(本)', '8', '1');
INSERT INTO `base_dict` VALUES ('14', '001', '专业', '会计', '9', '1');
INSERT INTO `base_dict` VALUES ('15', '001', '专业', '电子商务', '10', '1');
INSERT INTO `base_dict` VALUES ('16', '001', '专业', '舞蹈表演', '11', '1');
INSERT INTO `base_dict` VALUES ('17', '001', '专业', '音乐表演', '12', '1');
INSERT INTO `base_dict` VALUES ('18', '001', '专业', '小学教育', '13', '1');
INSERT INTO `base_dict` VALUES ('19', '001', '专业', '英语(本)', '14', '1');
INSERT INTO `base_dict` VALUES ('2', '001', '专业', '音乐学(本)', '15', '1');
INSERT INTO `base_dict` VALUES ('20', '001', '专业', '学前教育(本)', '16', '1');
INSERT INTO `base_dict` VALUES ('21', '001', '专业', '化学(本)', '17', '1');
INSERT INTO `base_dict` VALUES ('22', '001', '专业', '思想政治教育(本)', '18', '1');
INSERT INTO `base_dict` VALUES ('23', '001', '专业', '数学与应用数学(本)', '19', '1');
INSERT INTO `base_dict` VALUES ('24', '001', '专业', '社会体育指导与管理(本)', '20', '1');
INSERT INTO `base_dict` VALUES ('3', '001', '专业', '计算机科学与技术(本)', '3', '1');
INSERT INTO `base_dict` VALUES ('4', '001', '专业', '数学与应用数学(本)', '4', '1');
INSERT INTO `base_dict` VALUES ('5', '001', '专业', '电子信息工程(本)', '5', '1');
INSERT INTO `base_dict` VALUES ('6', '002', '学生政治面貌', '共青团员', '1', '1');
INSERT INTO `base_dict` VALUES ('7', '002', '学生政治面貌', '中共党员', '2', '1');
INSERT INTO `base_dict` VALUES ('8', '002', '学生政治面貌', '中共预备党员', '3', '1');
INSERT INTO `base_dict` VALUES ('9', '002', '学生政治面貌', '群众', '4', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(32) NOT NULL,
  `stu_politic` varchar(32) DEFAULT NULL,
  `stu_major` varchar(32) DEFAULT NULL,
  `stu_num` varchar(64) DEFAULT NULL,
  `stu_sex` varchar(32) DEFAULT NULL,
  `stu_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小明', '6', '23', '20190011', '男', '2013');
INSERT INTO `student` VALUES ('2', '小红', '8', '17', '20192233', '女', '2019');
INSERT INTO `student` VALUES ('3', '小刚', '9', '3', '20209999', '男', '2020');
INSERT INTO `student` VALUES ('6', '张三', '7', '10', '20190012', '男', '2018');
INSERT INTO `student` VALUES ('7', '李四', '7', '18', '20201000', '女', '2013');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(64) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` char(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('5', 'm0003', 'admin', '123', '1');
INSERT INTO `sys_user` VALUES ('6', 'm0001', 'admin1', '123', '1');
INSERT INTO `sys_user` VALUES ('7', 'm0002', 'admin2', '123', '1');
