/*
Navicat MySQL Data Transfer

Source Server         : aaa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : aaa

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-28 17:10:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `url` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `open_mode` varchar(32) DEFAULT NULL COMMENT '打开方式 ajax,iframe',
  `description` varchar(255) DEFAULT NULL COMMENT '资源介绍',
  `icon` varchar(32) DEFAULT NULL COMMENT '资源图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级资源id',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `opened` tinyint(2) NOT NULL DEFAULT '1' COMMENT '打开状态',
  `resource_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '资源类别',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', null, null, null, 'el-icon-setting', null, '0', '0', '0', '0', '2018-12-27 11:22:32');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/toShowAllResourcesList', 'ajax', '资源管理', 'fi-database icon-red', '1', '1', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/toShowAllRole', 'ajax', '角色管理', 'fi-torso-business  icon-red', '1', '2', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('13', '用户管理', '/userinfo/toShowUserEU', 'ajax', '用户管理', 'fi-torsos-all icon-red', '1', '3', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('14', '部门管理', '/organization/manager', 'ajax', '部门管理', 'fi-social-joomla icon-red', '1', '4', '0', '1', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('73', '心理健康', '', '', '心理健康', 'fi-heart icon-red', null, '4', '0', '0', '0', '2017-11-29 11:39:00');
INSERT INTO `resource` VALUES ('74', '测试题管理', '/tblScl/manager', 'ajax', '测试题管理', 'fi-page icon-yellow', '73', '1', '0', '1', '0', '2017-11-29 11:39:34');
INSERT INTO `resource` VALUES ('75', '健康自评统计', '/tblSclRecord/manager', 'ajax', '健康自评统计', 'fi-graph-bar icon-purple', '73', '0', '0', '1', '0', '2017-11-29 11:40:02');
INSERT INTO `resource` VALUES ('76', '问题学员跟踪', '/tblSclRecordProb/manager', 'ajax', '问题学员跟踪', 'fi-flag icon-green', '73', '3', '0', '1', '0', '2017-11-29 11:40:29');
INSERT INTO `resource` VALUES ('82', '列表', '', 'ajax', '测试题列表', 'fi-list', '74', '0', '0', '1', '1', '2017-11-29 15:28:20');
INSERT INTO `resource` VALUES ('83', '添加', '/tblScl/add', 'ajax', '测试题添加', 'fi-plus', '74', '0', '0', '1', '1', '2017-11-29 15:29:12');
INSERT INTO `resource` VALUES ('84', '编辑', '/tblScl/edit', 'ajax', '测试题编辑', 'fi-page-edit', '74', '0', '0', '1', '1', '2017-11-29 15:29:36');
INSERT INTO `resource` VALUES ('85', '删除', '/tblScl/delete', 'ajax', '测试题删除', 'fi-page-delete', '74', '0', '0', '1', '1', '2017-11-29 15:29:49');
INSERT INTO `resource` VALUES ('91', '查看详情', '/tblSclRecord/showDetail', 'ajax', '', 'fi-results icon-green', '75', '0', '0', '1', '1', '2017-11-29 22:17:51');
INSERT INTO `resource` VALUES ('92', '统计分析', '/tblSclRecord/showCount', 'ajax', '', 'fi-graph-pie icon-red', '75', '0', '0', '1', '1', '2017-11-29 22:18:25');
INSERT INTO `resource` VALUES ('93', '查看详情', '/tblSclRecordProb/showDetail', 'ajax', '', 'fi-list', '76', '0', '0', '1', '1', '2017-11-30 20:10:49');
INSERT INTO `resource` VALUES ('94', '导出excel', '/tblSclRecordProb/exportProb', 'ajax', '', 'fi-download icon-green', '76', '0', '0', '1', '1', '2017-12-02 14:23:51');
INSERT INTO `resource` VALUES ('96', '访谈记录', '/tblSclRecordProb/showInterView', 'ajax', '', 'fi-list', '76', '1', '0', '1', '1', '2017-12-09 15:47:37');
INSERT INTO `resource` VALUES ('111', '列表', '/resource/treeGrid', 'ajax', '资源列表', 'fi-list', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('112', '添加', '/resource/add', 'ajax', '资源添加', 'fi-page-add', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('113', '编辑', '/resource/edit', 'ajax', '资源编辑', 'fi-page-edit', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('114', '删除', '/resource/delete', 'ajax', '资源删除', 'fi-page-delete', '11', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('121', '列表', '/role/dataGrid', 'ajax', '角色列表', 'fi-list', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('122', '添加', '/role/add', 'ajax', '角色添加', 'fi-page-add', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('124', '删除', '/role/delete', 'ajax', '角色删除', 'fi-page-delete', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('125', '授权', '/role/grant', 'ajax', '角色授权', 'fi-check', '12', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('131', '列表', '/user/dataGrid', 'ajax', '用户列表', 'fi-list', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('132', '添加', '/user/add', 'ajax', '用户添加', 'fi-page-add', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('133', '编辑', '/user/edit', 'ajax', '用户编辑', 'fi-page-edit', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('134', '删除', '/user/delete', 'ajax', '用户删除', 'fi-page-delete', '13', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('141', '列表', '/organization/treeGrid', 'ajax', '用户列表', 'fi-list', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('142', '添加', '/organization/add', 'ajax', '部门添加', 'fi-page-add', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('143', '编辑', '/organization/edit', 'ajax', '部门编辑', 'fi-page-edit', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('144', '删除', '/organization/delete', 'ajax', '部门删除', 'fi-page-delete', '14', '0', '0', '1', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('221', '日志监控', '', null, null, 'fi-folder', null, '4', '0', '0', '0', '2015-12-01 11:44:20');
INSERT INTO `resource` VALUES ('226', '修改密码', '/user/editPwdPage', 'ajax', null, 'fi-unlock', null, '4', '0', '1', '1', '2015-12-07 20:23:06');
INSERT INTO `resource` VALUES ('227', '登录日志', '/sysLog/manager', 'ajax', null, 'fi-info', '221', '0', '0', '1', '0', '2016-09-30 22:10:53');
INSERT INTO `resource` VALUES ('228', 'Druid监控', '/druid', 'iframe', null, 'fi-monitor', '221', '0', '0', '1', '0', '2016-09-30 22:12:50');
INSERT INTO `resource` VALUES ('229', '系统图标', '/icons.html', 'ajax', null, 'fi-photo', '221', '0', '0', '1', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('230', '新闻管理', '', 'ajax', null, 'fi-page-multiple', null, '3', '0', '0', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('231', '新建文章', '/article/create', 'ajax', null, 'fi-page-edit', '230', '0', '0', '1', '0', '2016-12-24 15:53:47');
INSERT INTO `resource` VALUES ('232', '学生管理', '', '', null, 'fi-torsos-all icon-red', null, '2', '0', '1', '0', '2017-09-09 16:42:41');
INSERT INTO `resource` VALUES ('233', '在校学生管理', '/student/manager', 'ajax', null, 'fi-torsos-all icon-red', '232', '0', '0', '1', '0', '2017-09-09 16:44:36');
INSERT INTO `resource` VALUES ('235', '课程管理', '', '', null, 'fi-book icon-blue', null, '0', '0', '0', '0', '2017-09-11 14:36:05');
INSERT INTO `resource` VALUES ('236', '课表管理', '/course/manager', 'ajax', null, 'fi-book-bookmark icon-blue', '235', '0', '0', '1', '0', '2017-09-11 14:37:54');
INSERT INTO `resource` VALUES ('237', '列表', '/course/dataGrid', 'ajax', null, 'fi-list', '236', '0', '0', '1', '1', '2017-09-11 15:50:46');
INSERT INTO `resource` VALUES ('238', '编辑', '/course/edit', 'ajax', null, 'fi-page-edit', '236', '1', '0', '1', '1', '2017-09-12 01:00:43');
INSERT INTO `resource` VALUES ('239', '删除', '/course/delete', 'ajax', null, 'fi-page-delete', '236', '3', '0', '1', '1', '2017-09-12 01:08:05');
INSERT INTO `resource` VALUES ('240', '添加', '/course/add', 'ajax', null, 'fi-page-add', '236', '-1', '0', '1', '1', '2017-09-12 10:05:50');
INSERT INTO `resource` VALUES ('241', '教评管理', '/te/manager', 'ajax', null, 'fi-comments icon-purple', null, '0', '0', '1', '0', '2017-09-13 10:37:59');
INSERT INTO `resource` VALUES ('242', '评价老师', '/teacherPlan/manager', 'ajax', null, 'fi-like icon-purple', '241', '0', '0', '1', '0', '2017-09-13 10:41:08');
INSERT INTO `resource` VALUES ('243', '学生自评', '/stuPlan/manager', 'ajax', null, 'fi-dislike icon-purple', '241', '1', '0', '1', '0', '2017-09-13 10:44:54');
INSERT INTO `resource` VALUES ('244', '班级管理', '', '', null, 'fi-torsos-female-male icon-green', null, '0', '0', '1', '0', '2017-09-13 14:09:46');
INSERT INTO `resource` VALUES ('245', '在校班级管理', '/tblClass/manager', 'ajax', null, 'fi-torsos-female-male icon-green', '244', '0', '0', '1', '0', '2017-09-13 14:17:11');
INSERT INTO `resource` VALUES ('246', '添加', '/tblClass/add', 'ajax', null, 'fi-page-add', '245', '0', '0', '1', '1', '2017-09-13 14:18:27');
INSERT INTO `resource` VALUES ('247', '列表', '/tblClass/treeGrid', 'ajax', null, 'fi-list', '245', '1', '0', '1', '1', '2017-09-13 14:19:15');
INSERT INTO `resource` VALUES ('248', '编辑', '/tblClass/edit', 'ajax', null, 'fi-page-edit', '245', '2', '0', '1', '1', '2017-09-13 14:20:27');
INSERT INTO `resource` VALUES ('249', '删除', '/tblClass/delete', 'ajax', null, 'fi-page-delete', '245', '3', '0', '1', '1', '2017-09-13 14:21:16');
INSERT INTO `resource` VALUES ('250', '添加', '/student/add', 'ajax', null, 'fi-page-add', '233', '0', '0', '1', '1', '2017-09-17 15:19:02');
INSERT INTO `resource` VALUES ('251', '编辑', '/student/edit', 'ajax', null, 'fi-page-edit', '233', '1', '0', '1', '1', '2017-09-17 15:20:03');
INSERT INTO `resource` VALUES ('252', '删除', '/student/delete', 'ajax', null, 'fi-page-delete', '233', '2', '0', '1', '1', '2017-09-17 15:20:56');
INSERT INTO `resource` VALUES ('253', '列表', '/student/dataGrid', 'ajax', null, 'fi-list', '233', '0', '0', '1', '1', '2017-09-17 15:22:25');
INSERT INTO `resource` VALUES ('254', '添加', '/stuPlan/add', 'ajax', null, 'fi-page-add', '243', '0', '0', '1', '1', '2017-09-17 20:25:21');
INSERT INTO `resource` VALUES ('255', '列表', '/stuPlan/dataGrid', 'ajax', null, 'fi-list', '243', '0', '0', '1', '1', '2017-09-17 20:27:07');
INSERT INTO `resource` VALUES ('256', '编辑', '/stuPlan/edit', 'ajax', null, 'fi-page-edit', '243', '1', '0', '1', '1', '2017-09-17 20:28:17');
INSERT INTO `resource` VALUES ('257', '删除', '/stuPlan/delete', 'ajax', null, 'fi-page-delete', '243', '2', '0', '1', '1', '2017-09-17 20:29:00');
INSERT INTO `resource` VALUES ('258', '自评统计', '/stuEvaluate/manager', '', null, 'fi-graph-bar icon-purple', '241', '2', '0', '1', '0', '2017-09-20 15:04:49');
INSERT INTO `resource` VALUES ('259', '教评统计', '/teaEvaluate/manager', '', null, 'fi-graph-horizontal icon-purple', '241', '4', '0', '1', '0', '2017-09-20 15:12:22');
INSERT INTO `resource` VALUES ('260', '查看详情', '/stuEvaluate/showDetail', 'ajax', null, 'fi-results icon-purple', '258', '0', '0', '1', '1', '2017-09-20 16:21:11');
INSERT INTO `resource` VALUES ('261', '统计分析', '/stuEvaluate/showCount', 'ajax', null, 'fi-graph-pie icon-purple', '258', '1', '0', '1', '1', '2017-09-20 16:22:10');
INSERT INTO `resource` VALUES ('262', '添加', '/teacherPlan/add', 'ajax', null, 'fi-page-add', '242', '0', '0', '1', '1', '2017-09-21 11:08:56');
INSERT INTO `resource` VALUES ('263', '列表', '/teacherplan/dataGrid', 'ajax', null, 'fi-list', '242', '0', '0', '1', '1', '2017-09-21 11:09:38');
INSERT INTO `resource` VALUES ('264', '编辑', '/teacherPlan/edit', 'ajax', null, 'fi-page-edit', '242', '0', '0', '1', '1', '2017-09-21 11:10:04');
INSERT INTO `resource` VALUES ('265', '删除', '/teacherPlan/delete', 'ajax', null, 'fi-page-delete', '242', '0', '0', '1', '1', '2017-09-21 11:10:28');
INSERT INTO `resource` VALUES ('266', '教师考核点', '/teacherQuestion/manager', '', null, 'fi-background-color icon-purple', '241', '0', '0', '1', '0', '2017-09-21 11:12:03');
INSERT INTO `resource` VALUES ('267', '添加', '/teacherQuestion/add', 'ajax', null, 'fi-page-add', '266', '0', '0', '1', '1', '2017-09-21 11:12:51');
INSERT INTO `resource` VALUES ('268', '列表', '/teacherQuestion/dataGrid', 'ajax', null, 'fi-list', '266', '0', '0', '1', '1', '2017-09-21 11:13:25');
INSERT INTO `resource` VALUES ('269', '编辑', '/teacherQuestion/edit', 'ajax', null, 'fi-page-edit', '266', '0', '0', '1', '1', '2017-09-21 11:13:48');
INSERT INTO `resource` VALUES ('270', '删除', '/teacherQuestion/delete', 'ajax', null, 'fi-page-delete', '266', '0', '0', '1', '1', '2017-09-21 11:14:17');
INSERT INTO `resource` VALUES ('271', '自评率', '/stuEvaluate/showRate', 'ajax', null, 'fi-web icon-purple', '258', '0', '0', '1', '1', '2017-09-21 19:27:03');
INSERT INTO `resource` VALUES ('272', '查看详情', '/teaEvaluate/showDetail', 'ajax', null, 'fi-results icon-purple', '259', '0', '0', '1', '1', '2017-09-22 10:40:33');
INSERT INTO `resource` VALUES ('273', '教评率', '/teaEvaluate/showRate', 'ajax', null, 'fi-graph-pie icon-purple', '259', '1', '0', '1', '1', '2017-09-22 10:42:11');
INSERT INTO `resource` VALUES ('274', '统计分析', '/teaEvaluate/showCount', 'ajax', null, 'fi-graph-pie icon-purple', '259', '2', '0', '1', '1', '2017-09-22 10:43:11');
INSERT INTO `resource` VALUES ('275', '导出学生', '/student/export', 'ajax', null, 'fi-download icon-green', '233', '0', '0', '1', '1', '2017-09-22 22:10:03');
INSERT INTO `resource` VALUES ('276', '变更记录', '/tblClassRecord/manager', 'ajax', null, 'fi-flag icon-green', '244', '2', '0', '1', '0', '2017-10-17 18:45:22');
INSERT INTO `resource` VALUES ('277', '转班记录', '/studentRecord/manager', 'ajax', null, 'fi-social-drive icon-red', '232', '2', '0', '1', '0', '2017-10-18 13:49:23');
INSERT INTO `resource` VALUES ('278', '毕业班级管理', '/tblClass/manager?flag=1', 'ajax', null, 'fi-torsos-female-male', '244', '1', '0', '1', '0', '2017-11-08 14:47:13');
INSERT INTO `resource` VALUES ('279', '毕业学生管理', '/student/manager?flag=1', 'ajax', null, 'fi-torsos-all icon-blue', '232', '1', '0', '1', '0', '2017-11-08 14:48:09');
INSERT INTO `resource` VALUES ('280', '阶段自评管理', '/stage/manager', '', '', 'fi-book-bookmark icon-blue', '235', '1', '0', '1', '0', '2017-11-17 18:51:14');
INSERT INTO `resource` VALUES ('281', '添加', '/stage/add', 'ajax', '', 'fi-page-add', '280', '0', '0', '1', '1', '2017-11-17 18:52:16');
INSERT INTO `resource` VALUES ('282', '列表', '/stage/dataGrid', 'ajax', '', 'fi-list', '280', '1', '0', '1', '1', '2017-11-17 18:53:17');
INSERT INTO `resource` VALUES ('283', '删除', '/tblSclRecord/delete', 'ajax', null, 'fi-page-delete', '75', '3', '0', '1', '1', '2017-12-08 19:32:36');
INSERT INTO `resource` VALUES ('284', '编辑', '/stage/edit', 'ajax', null, 'fi-page-edit', '280', '0', '0', '1', '1', '2017-12-12 13:02:58');
INSERT INTO `resource` VALUES ('285', '删除', '/stage/delete', 'ajax', null, 'fi-page-delete', '280', '0', '0', '1', '1', '2017-12-12 13:03:44');
INSERT INTO `resource` VALUES ('286', '口碑管理', '', '', null, 'fi-page-multiple', null, '4', '0', '0', '0', '2018-01-11 15:32:14');
INSERT INTO `resource` VALUES ('287', '口碑列表', '/wordofmouth/manager', 'ajax', null, 'fi-list', '286', '0', '0', '1', '0', '2018-01-11 15:34:21');
INSERT INTO `resource` VALUES ('288', '添加', '/wordofmouth/add', 'ajax', null, 'fi-page-add', '287', '0', '0', '1', '1', '2018-01-12 15:48:19');
INSERT INTO `resource` VALUES ('289', '编辑', '/wordofmouth/edit', 'ajax', null, 'fi-page-edit', '287', '1', '0', '1', '1', '2018-01-12 15:49:28');
INSERT INTO `resource` VALUES ('290', '删除', '/wordofmouth/delete', 'ajax', null, 'fi-page-delete', '287', '2', '0', '1', '1', '2018-01-12 15:50:59');
INSERT INTO `resource` VALUES ('291', '口碑统计', '/wordofmouth/showCountPage', 'ajax', null, 'fi-graph-bar icon-purple', '286', '1', '0', '1', '0', '2018-01-12 22:20:54');
INSERT INTO `resource` VALUES ('292', '帮扶计划', '/assistPlan/manager', 'ajax', '', 'fi-torsos-female-male', '244', '3', '0', '1', '0', '2018-02-01 09:25:59');
INSERT INTO `resource` VALUES ('293', '添加', '/assistPlan/add', 'ajax', '', 'fi-page-add', '292', '0', '0', '1', '1', '2018-02-01 09:29:14');
INSERT INTO `resource` VALUES ('294', '列表', '/assistPlan/dataGrid', 'ajax', '', 'fi-list', '292', '1', '0', '1', '1', '2018-02-01 09:30:45');
INSERT INTO `resource` VALUES ('295', '编辑', '/assistPlan/edit', 'ajax', '', 'fi-page-edit', '292', '2', '0', '1', '1', '2018-02-01 09:31:26');
INSERT INTO `resource` VALUES ('296', '删除', '/assistPlan/delete', 'ajax', '', 'fi-page-delete', '292', '3', '0', '1', '1', '2018-02-01 09:32:36');
INSERT INTO `resource` VALUES ('297', '帮扶统计', '/assistEvaluate/manager', 'ajax', '', 'fi-graph-horizontal icon-purple', '244', '4', '0', '1', '0', '2018-02-02 15:03:17');
INSERT INTO `resource` VALUES ('298', '查看详情', '/assistEvaluate/showDetail', 'ajax', '', 'fi-results icon-purple', '297', '0', '0', '1', '1', '2018-02-02 15:08:03');
INSERT INTO `resource` VALUES ('299', '查看详情', '/student/returnrecord', 'ajax', null, 'fi-results icon-purple', '279', '0', '0', '1', '1', '2018-03-02 13:33:49');
INSERT INTO `resource` VALUES ('300', '添加', '/student/returncordadd', 'ajax', null, 'fi-page-add', '279', '1', '0', '1', '1', '2018-03-02 14:43:48');
INSERT INTO `resource` VALUES ('301', '编辑回访', '/student/returncordedit', 'ajax', null, 'fi-page-edit', '279', '2', '0', '1', '1', '2018-03-02 14:44:20');
INSERT INTO `resource` VALUES ('302', '删除', '/student/returncorddelete', 'ajax', null, 'fi-page-delete', '279', '2', '0', '1', '1', '2018-03-02 14:44:59');
INSERT INTO `resource` VALUES ('303', '回访记录统计', '/returnRecordEva/manager', 'ajax', null, 'fi-graph-pie icon-purple', '232', '2', '0', '1', '0', '2018-03-19 13:45:55');
INSERT INTO `resource` VALUES ('304', '编辑', '/student/byEdit', 'ajax', '', 'fi-page-edit', '279', '0', '0', '1', '1', '2018-04-12 13:01:17');
INSERT INTO `resource` VALUES ('305', '入学考试管理', '', null, null, 'fi-page-multiple', null, '5', '0', '0', '0', '2018-05-11 14:51:47');
INSERT INTO `resource` VALUES ('306', '试题管理', '/testQues/manager', '', null, 'fi-list', '305', '0', '0', '1', '0', '2018-05-11 15:02:52');
INSERT INTO `resource` VALUES ('307', '添加', '/testQues/add', 'ajax', null, 'fi-page-add', '306', '0', '0', '1', '1', '2018-05-11 16:39:14');
INSERT INTO `resource` VALUES ('308', '编辑', '/testQues/edit', 'ajax', null, 'fi-page-edit', '306', '1', '0', '1', '1', '2018-05-11 16:40:02');
INSERT INTO `resource` VALUES ('311', '查看', '/student/byShow', 'ajax', null, 'fi-results icon-purple', '279', '0', '0', '1', '1', '2018-06-21 16:51:51');
INSERT INTO `resource` VALUES ('312', '详情', '/tblClass/showDetail', 'ajax', null, 'fi-results icon-purple', '278', '0', '0', '1', '1', '2018-07-23 14:28:18');
INSERT INTO `resource` VALUES ('328', '开心就好', '/resource/show', null, null, '', '305', '0', '0', '0', '0', '2018-12-26 12:32:44');
INSERT INTO `resource` VALUES ('329', '添加', '/resource/add', null, null, 'add', '136', '1', '0', '0', '1', '2018-12-26 12:34:36');
INSERT INTO `resource` VALUES ('333', '数据字典', '/dsaf', null, null, 'fdsaf', null, '2', '0', '0', '0', '2018-12-27 08:03:38');
INSERT INTO `resource` VALUES ('334', '一级菜单', '/aaa/bbb', null, null, 'erwqrewr', null, '12', '0', '0', '0', '2018-12-28 07:59:34');
INSERT INTO `resource` VALUES ('335', '二级菜单', '/aaa/ccc', null, null, '4535432', null, '32', '0', '0', '0', '2018-12-28 08:00:44');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序号',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '0', '系统管理员', '0');
INSERT INTO `role` VALUES ('2', '学术带头人', '1', '学术带头人', '0');
INSERT INTO `role` VALUES ('7', '教员', '2', '教员', '0');
INSERT INTO `role` VALUES ('8', '班主任', '3', '班主任', '0');
INSERT INTO `role` VALUES ('9', '学术总监', '0', '学术总监', '0');
INSERT INTO `role` VALUES ('10', '教质经理', '4', '教质经理', '0');
INSERT INTO `role` VALUES ('12', '校长', '-1', '蒋校长', '0');
INSERT INTO `role` VALUES ('13', '董事长', '0', '董事会主席', '0');

-- ----------------------------
-- Table structure for `role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `resource_id` bigint(19) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_role_resource_ids` (`role_id`,`resource_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5989 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('5316', '1', '1');
INSERT INTO `role_resource` VALUES ('5317', '1', '11');
INSERT INTO `role_resource` VALUES ('5322', '1', '12');
INSERT INTO `role_resource` VALUES ('5327', '1', '13');
INSERT INTO `role_resource` VALUES ('5332', '1', '14');
INSERT INTO `role_resource` VALUES ('5412', '1', '73');
INSERT INTO `role_resource` VALUES ('5417', '1', '74');
INSERT INTO `role_resource` VALUES ('5413', '1', '75');
INSERT INTO `role_resource` VALUES ('5422', '1', '76');
INSERT INTO `role_resource` VALUES ('5418', '1', '82');
INSERT INTO `role_resource` VALUES ('5419', '1', '83');
INSERT INTO `role_resource` VALUES ('5420', '1', '84');
INSERT INTO `role_resource` VALUES ('5421', '1', '85');
INSERT INTO `role_resource` VALUES ('5414', '1', '91');
INSERT INTO `role_resource` VALUES ('5415', '1', '92');
INSERT INTO `role_resource` VALUES ('5423', '1', '93');
INSERT INTO `role_resource` VALUES ('5424', '1', '94');
INSERT INTO `role_resource` VALUES ('5425', '1', '96');
INSERT INTO `role_resource` VALUES ('5318', '1', '111');
INSERT INTO `role_resource` VALUES ('5319', '1', '112');
INSERT INTO `role_resource` VALUES ('5320', '1', '113');
INSERT INTO `role_resource` VALUES ('5321', '1', '114');
INSERT INTO `role_resource` VALUES ('5323', '1', '121');
INSERT INTO `role_resource` VALUES ('5324', '1', '122');
INSERT INTO `role_resource` VALUES ('5325', '1', '124');
INSERT INTO `role_resource` VALUES ('5326', '1', '125');
INSERT INTO `role_resource` VALUES ('5328', '1', '131');
INSERT INTO `role_resource` VALUES ('5329', '1', '132');
INSERT INTO `role_resource` VALUES ('5330', '1', '133');
INSERT INTO `role_resource` VALUES ('5331', '1', '134');
INSERT INTO `role_resource` VALUES ('5333', '1', '141');
INSERT INTO `role_resource` VALUES ('5334', '1', '142');
INSERT INTO `role_resource` VALUES ('5335', '1', '143');
INSERT INTO `role_resource` VALUES ('5336', '1', '144');
INSERT INTO `role_resource` VALUES ('5426', '1', '221');
INSERT INTO `role_resource` VALUES ('5430', '1', '226');
INSERT INTO `role_resource` VALUES ('5427', '1', '227');
INSERT INTO `role_resource` VALUES ('5428', '1', '228');
INSERT INTO `role_resource` VALUES ('5429', '1', '229');
INSERT INTO `role_resource` VALUES ('5404', '1', '230');
INSERT INTO `role_resource` VALUES ('5405', '1', '231');
INSERT INTO `role_resource` VALUES ('5388', '1', '232');
INSERT INTO `role_resource` VALUES ('5389', '1', '233');
INSERT INTO `role_resource` VALUES ('5337', '1', '235');
INSERT INTO `role_resource` VALUES ('5338', '1', '236');
INSERT INTO `role_resource` VALUES ('5340', '1', '237');
INSERT INTO `role_resource` VALUES ('5341', '1', '238');
INSERT INTO `role_resource` VALUES ('5342', '1', '239');
INSERT INTO `role_resource` VALUES ('5339', '1', '240');
INSERT INTO `role_resource` VALUES ('5348', '1', '241');
INSERT INTO `role_resource` VALUES ('5354', '1', '242');
INSERT INTO `role_resource` VALUES ('5359', '1', '243');
INSERT INTO `role_resource` VALUES ('5372', '1', '244');
INSERT INTO `role_resource` VALUES ('5373', '1', '245');
INSERT INTO `role_resource` VALUES ('5374', '1', '246');
INSERT INTO `role_resource` VALUES ('5375', '1', '247');
INSERT INTO `role_resource` VALUES ('5376', '1', '248');
INSERT INTO `role_resource` VALUES ('5377', '1', '249');
INSERT INTO `role_resource` VALUES ('5391', '1', '250');
INSERT INTO `role_resource` VALUES ('5393', '1', '251');
INSERT INTO `role_resource` VALUES ('5394', '1', '252');
INSERT INTO `role_resource` VALUES ('5392', '1', '253');
INSERT INTO `role_resource` VALUES ('5360', '1', '254');
INSERT INTO `role_resource` VALUES ('5361', '1', '255');
INSERT INTO `role_resource` VALUES ('5362', '1', '256');
INSERT INTO `role_resource` VALUES ('5363', '1', '257');
INSERT INTO `role_resource` VALUES ('5364', '1', '258');
INSERT INTO `role_resource` VALUES ('5368', '1', '259');
INSERT INTO `role_resource` VALUES ('5365', '1', '260');
INSERT INTO `role_resource` VALUES ('5367', '1', '261');
INSERT INTO `role_resource` VALUES ('5355', '1', '262');
INSERT INTO `role_resource` VALUES ('5356', '1', '263');
INSERT INTO `role_resource` VALUES ('5357', '1', '264');
INSERT INTO `role_resource` VALUES ('5358', '1', '265');
INSERT INTO `role_resource` VALUES ('5349', '1', '266');
INSERT INTO `role_resource` VALUES ('5350', '1', '267');
INSERT INTO `role_resource` VALUES ('5351', '1', '268');
INSERT INTO `role_resource` VALUES ('5352', '1', '269');
INSERT INTO `role_resource` VALUES ('5353', '1', '270');
INSERT INTO `role_resource` VALUES ('5366', '1', '271');
INSERT INTO `role_resource` VALUES ('5369', '1', '272');
INSERT INTO `role_resource` VALUES ('5370', '1', '273');
INSERT INTO `role_resource` VALUES ('5371', '1', '274');
INSERT INTO `role_resource` VALUES ('5390', '1', '275');
INSERT INTO `role_resource` VALUES ('5380', '1', '276');
INSERT INTO `role_resource` VALUES ('5402', '1', '277');
INSERT INTO `role_resource` VALUES ('5378', '1', '278');
INSERT INTO `role_resource` VALUES ('5395', '1', '279');
INSERT INTO `role_resource` VALUES ('5343', '1', '280');
INSERT INTO `role_resource` VALUES ('5344', '1', '281');
INSERT INTO `role_resource` VALUES ('5347', '1', '282');
INSERT INTO `role_resource` VALUES ('5416', '1', '283');
INSERT INTO `role_resource` VALUES ('5345', '1', '284');
INSERT INTO `role_resource` VALUES ('5346', '1', '285');
INSERT INTO `role_resource` VALUES ('5406', '1', '286');
INSERT INTO `role_resource` VALUES ('5407', '1', '287');
INSERT INTO `role_resource` VALUES ('5408', '1', '288');
INSERT INTO `role_resource` VALUES ('5409', '1', '289');
INSERT INTO `role_resource` VALUES ('5410', '1', '290');
INSERT INTO `role_resource` VALUES ('5411', '1', '291');
INSERT INTO `role_resource` VALUES ('5381', '1', '292');
INSERT INTO `role_resource` VALUES ('5382', '1', '293');
INSERT INTO `role_resource` VALUES ('5383', '1', '294');
INSERT INTO `role_resource` VALUES ('5384', '1', '295');
INSERT INTO `role_resource` VALUES ('5385', '1', '296');
INSERT INTO `role_resource` VALUES ('5386', '1', '297');
INSERT INTO `role_resource` VALUES ('5387', '1', '298');
INSERT INTO `role_resource` VALUES ('5396', '1', '299');
INSERT INTO `role_resource` VALUES ('5399', '1', '300');
INSERT INTO `role_resource` VALUES ('5400', '1', '301');
INSERT INTO `role_resource` VALUES ('5401', '1', '302');
INSERT INTO `role_resource` VALUES ('5403', '1', '303');
INSERT INTO `role_resource` VALUES ('5397', '1', '304');
INSERT INTO `role_resource` VALUES ('5431', '1', '305');
INSERT INTO `role_resource` VALUES ('5432', '1', '306');
INSERT INTO `role_resource` VALUES ('5433', '1', '307');
INSERT INTO `role_resource` VALUES ('5434', '1', '308');
INSERT INTO `role_resource` VALUES ('5435', '1', '309');
INSERT INTO `role_resource` VALUES ('5436', '1', '310');
INSERT INTO `role_resource` VALUES ('5398', '1', '311');
INSERT INTO `role_resource` VALUES ('5379', '1', '312');
INSERT INTO `role_resource` VALUES ('5437', '1', '313');
INSERT INTO `role_resource` VALUES ('5438', '1', '314');
INSERT INTO `role_resource` VALUES ('5439', '1', '315');
INSERT INTO `role_resource` VALUES ('5440', '1', '316');
INSERT INTO `role_resource` VALUES ('5441', '1', '317');
INSERT INTO `role_resource` VALUES ('5442', '1', '318');
INSERT INTO `role_resource` VALUES ('5443', '1', '319');
INSERT INTO `role_resource` VALUES ('5444', '1', '320');
INSERT INTO `role_resource` VALUES ('5445', '1', '321');
INSERT INTO `role_resource` VALUES ('5446', '1', '322');
INSERT INTO `role_resource` VALUES ('5447', '1', '323');
INSERT INTO `role_resource` VALUES ('5448', '1', '324');
INSERT INTO `role_resource` VALUES ('5449', '1', '325');
INSERT INTO `role_resource` VALUES ('5450', '1', '326');
INSERT INTO `role_resource` VALUES ('5451', '1', '327');
INSERT INTO `role_resource` VALUES ('5630', '2', '73');
INSERT INTO `role_resource` VALUES ('5635', '2', '74');
INSERT INTO `role_resource` VALUES ('5631', '2', '75');
INSERT INTO `role_resource` VALUES ('5640', '2', '76');
INSERT INTO `role_resource` VALUES ('5636', '2', '82');
INSERT INTO `role_resource` VALUES ('5637', '2', '83');
INSERT INTO `role_resource` VALUES ('5638', '2', '84');
INSERT INTO `role_resource` VALUES ('5639', '2', '85');
INSERT INTO `role_resource` VALUES ('5632', '2', '91');
INSERT INTO `role_resource` VALUES ('5633', '2', '92');
INSERT INTO `role_resource` VALUES ('5641', '2', '93');
INSERT INTO `role_resource` VALUES ('5642', '2', '94');
INSERT INTO `role_resource` VALUES ('5643', '2', '96');
INSERT INTO `role_resource` VALUES ('5644', '2', '226');
INSERT INTO `role_resource` VALUES ('5621', '2', '232');
INSERT INTO `role_resource` VALUES ('5622', '2', '233');
INSERT INTO `role_resource` VALUES ('5573', '2', '235');
INSERT INTO `role_resource` VALUES ('5574', '2', '236');
INSERT INTO `role_resource` VALUES ('5576', '2', '237');
INSERT INTO `role_resource` VALUES ('5577', '2', '238');
INSERT INTO `role_resource` VALUES ('5578', '2', '239');
INSERT INTO `role_resource` VALUES ('5575', '2', '240');
INSERT INTO `role_resource` VALUES ('5584', '2', '241');
INSERT INTO `role_resource` VALUES ('5590', '2', '242');
INSERT INTO `role_resource` VALUES ('5594', '2', '243');
INSERT INTO `role_resource` VALUES ('5606', '2', '244');
INSERT INTO `role_resource` VALUES ('5607', '2', '245');
INSERT INTO `role_resource` VALUES ('5608', '2', '246');
INSERT INTO `role_resource` VALUES ('5609', '2', '247');
INSERT INTO `role_resource` VALUES ('5610', '2', '248');
INSERT INTO `role_resource` VALUES ('5611', '2', '249');
INSERT INTO `role_resource` VALUES ('5624', '2', '250');
INSERT INTO `role_resource` VALUES ('5626', '2', '251');
INSERT INTO `role_resource` VALUES ('5627', '2', '252');
INSERT INTO `role_resource` VALUES ('5625', '2', '253');
INSERT INTO `role_resource` VALUES ('5595', '2', '254');
INSERT INTO `role_resource` VALUES ('5596', '2', '255');
INSERT INTO `role_resource` VALUES ('5597', '2', '256');
INSERT INTO `role_resource` VALUES ('5598', '2', '258');
INSERT INTO `role_resource` VALUES ('5602', '2', '259');
INSERT INTO `role_resource` VALUES ('5599', '2', '260');
INSERT INTO `role_resource` VALUES ('5601', '2', '261');
INSERT INTO `role_resource` VALUES ('5591', '2', '262');
INSERT INTO `role_resource` VALUES ('5592', '2', '263');
INSERT INTO `role_resource` VALUES ('5593', '2', '264');
INSERT INTO `role_resource` VALUES ('5585', '2', '266');
INSERT INTO `role_resource` VALUES ('5586', '2', '267');
INSERT INTO `role_resource` VALUES ('5587', '2', '268');
INSERT INTO `role_resource` VALUES ('5588', '2', '269');
INSERT INTO `role_resource` VALUES ('5589', '2', '270');
INSERT INTO `role_resource` VALUES ('5600', '2', '271');
INSERT INTO `role_resource` VALUES ('5603', '2', '272');
INSERT INTO `role_resource` VALUES ('5604', '2', '273');
INSERT INTO `role_resource` VALUES ('5605', '2', '274');
INSERT INTO `role_resource` VALUES ('5623', '2', '275');
INSERT INTO `role_resource` VALUES ('5613', '2', '276');
INSERT INTO `role_resource` VALUES ('5629', '2', '277');
INSERT INTO `role_resource` VALUES ('5612', '2', '278');
INSERT INTO `role_resource` VALUES ('5628', '2', '279');
INSERT INTO `role_resource` VALUES ('5579', '2', '280');
INSERT INTO `role_resource` VALUES ('5580', '2', '281');
INSERT INTO `role_resource` VALUES ('5583', '2', '282');
INSERT INTO `role_resource` VALUES ('5634', '2', '283');
INSERT INTO `role_resource` VALUES ('5581', '2', '284');
INSERT INTO `role_resource` VALUES ('5582', '2', '285');
INSERT INTO `role_resource` VALUES ('5614', '2', '292');
INSERT INTO `role_resource` VALUES ('5615', '2', '293');
INSERT INTO `role_resource` VALUES ('5616', '2', '294');
INSERT INTO `role_resource` VALUES ('5617', '2', '295');
INSERT INTO `role_resource` VALUES ('5618', '2', '296');
INSERT INTO `role_resource` VALUES ('5619', '2', '297');
INSERT INTO `role_resource` VALUES ('5620', '2', '298');
INSERT INTO `role_resource` VALUES ('5645', '2', '313');
INSERT INTO `role_resource` VALUES ('5646', '2', '314');
INSERT INTO `role_resource` VALUES ('5647', '2', '315');
INSERT INTO `role_resource` VALUES ('5648', '2', '316');
INSERT INTO `role_resource` VALUES ('5649', '2', '317');
INSERT INTO `role_resource` VALUES ('5650', '2', '318');
INSERT INTO `role_resource` VALUES ('5651', '2', '319');
INSERT INTO `role_resource` VALUES ('5652', '2', '320');
INSERT INTO `role_resource` VALUES ('5653', '2', '321');
INSERT INTO `role_resource` VALUES ('5654', '2', '322');
INSERT INTO `role_resource` VALUES ('5655', '2', '323');
INSERT INTO `role_resource` VALUES ('5656', '2', '324');
INSERT INTO `role_resource` VALUES ('5657', '2', '325');
INSERT INTO `role_resource` VALUES ('5658', '2', '326');
INSERT INTO `role_resource` VALUES ('5659', '2', '327');
INSERT INTO `role_resource` VALUES ('158', '3', '1');
INSERT INTO `role_resource` VALUES ('159', '3', '11');
INSERT INTO `role_resource` VALUES ('170', '3', '13');
INSERT INTO `role_resource` VALUES ('175', '3', '14');
INSERT INTO `role_resource` VALUES ('160', '3', '111');
INSERT INTO `role_resource` VALUES ('161', '3', '112');
INSERT INTO `role_resource` VALUES ('162', '3', '113');
INSERT INTO `role_resource` VALUES ('163', '3', '114');
INSERT INTO `role_resource` VALUES ('165', '3', '121');
INSERT INTO `role_resource` VALUES ('166', '3', '122');
INSERT INTO `role_resource` VALUES ('167', '3', '123');
INSERT INTO `role_resource` VALUES ('168', '3', '124');
INSERT INTO `role_resource` VALUES ('169', '3', '125');
INSERT INTO `role_resource` VALUES ('171', '3', '131');
INSERT INTO `role_resource` VALUES ('172', '3', '132');
INSERT INTO `role_resource` VALUES ('173', '3', '133');
INSERT INTO `role_resource` VALUES ('174', '3', '134');
INSERT INTO `role_resource` VALUES ('176', '3', '141');
INSERT INTO `role_resource` VALUES ('177', '3', '142');
INSERT INTO `role_resource` VALUES ('178', '3', '143');
INSERT INTO `role_resource` VALUES ('179', '3', '144');
INSERT INTO `role_resource` VALUES ('5702', '7', '226');
INSERT INTO `role_resource` VALUES ('5695', '7', '232');
INSERT INTO `role_resource` VALUES ('5696', '7', '233');
INSERT INTO `role_resource` VALUES ('5660', '7', '235');
INSERT INTO `role_resource` VALUES ('5661', '7', '236');
INSERT INTO `role_resource` VALUES ('5662', '7', '237');
INSERT INTO `role_resource` VALUES ('5665', '7', '241');
INSERT INTO `role_resource` VALUES ('5668', '7', '242');
INSERT INTO `role_resource` VALUES ('5670', '7', '243');
INSERT INTO `role_resource` VALUES ('5683', '7', '244');
INSERT INTO `role_resource` VALUES ('5684', '7', '245');
INSERT INTO `role_resource` VALUES ('5685', '7', '246');
INSERT INTO `role_resource` VALUES ('5686', '7', '247');
INSERT INTO `role_resource` VALUES ('5687', '7', '248');
INSERT INTO `role_resource` VALUES ('5688', '7', '249');
INSERT INTO `role_resource` VALUES ('5698', '7', '250');
INSERT INTO `role_resource` VALUES ('5700', '7', '251');
INSERT INTO `role_resource` VALUES ('5701', '7', '252');
INSERT INTO `role_resource` VALUES ('5699', '7', '253');
INSERT INTO `role_resource` VALUES ('5671', '7', '254');
INSERT INTO `role_resource` VALUES ('5672', '7', '255');
INSERT INTO `role_resource` VALUES ('5673', '7', '256');
INSERT INTO `role_resource` VALUES ('5674', '7', '257');
INSERT INTO `role_resource` VALUES ('5675', '7', '258');
INSERT INTO `role_resource` VALUES ('5679', '7', '259');
INSERT INTO `role_resource` VALUES ('5676', '7', '260');
INSERT INTO `role_resource` VALUES ('5678', '7', '261');
INSERT INTO `role_resource` VALUES ('5669', '7', '263');
INSERT INTO `role_resource` VALUES ('5666', '7', '266');
INSERT INTO `role_resource` VALUES ('5667', '7', '268');
INSERT INTO `role_resource` VALUES ('5677', '7', '271');
INSERT INTO `role_resource` VALUES ('5680', '7', '272');
INSERT INTO `role_resource` VALUES ('5681', '7', '273');
INSERT INTO `role_resource` VALUES ('5682', '7', '274');
INSERT INTO `role_resource` VALUES ('5697', '7', '275');
INSERT INTO `role_resource` VALUES ('5663', '7', '280');
INSERT INTO `role_resource` VALUES ('5664', '7', '282');
INSERT INTO `role_resource` VALUES ('5689', '7', '292');
INSERT INTO `role_resource` VALUES ('5690', '7', '293');
INSERT INTO `role_resource` VALUES ('5691', '7', '294');
INSERT INTO `role_resource` VALUES ('5692', '7', '295');
INSERT INTO `role_resource` VALUES ('5693', '7', '297');
INSERT INTO `role_resource` VALUES ('5694', '7', '298');
INSERT INTO `role_resource` VALUES ('5703', '7', '313');
INSERT INTO `role_resource` VALUES ('5704', '7', '314');
INSERT INTO `role_resource` VALUES ('5705', '7', '315');
INSERT INTO `role_resource` VALUES ('5706', '7', '316');
INSERT INTO `role_resource` VALUES ('5707', '7', '317');
INSERT INTO `role_resource` VALUES ('5708', '7', '318');
INSERT INTO `role_resource` VALUES ('5709', '7', '319');
INSERT INTO `role_resource` VALUES ('5710', '7', '320');
INSERT INTO `role_resource` VALUES ('5711', '7', '321');
INSERT INTO `role_resource` VALUES ('5712', '7', '322');
INSERT INTO `role_resource` VALUES ('5713', '7', '323');
INSERT INTO `role_resource` VALUES ('5714', '7', '324');
INSERT INTO `role_resource` VALUES ('5715', '7', '325');
INSERT INTO `role_resource` VALUES ('5716', '7', '326');
INSERT INTO `role_resource` VALUES ('5766', '8', '73');
INSERT INTO `role_resource` VALUES ('5771', '8', '74');
INSERT INTO `role_resource` VALUES ('5767', '8', '75');
INSERT INTO `role_resource` VALUES ('5776', '8', '76');
INSERT INTO `role_resource` VALUES ('5772', '8', '82');
INSERT INTO `role_resource` VALUES ('5773', '8', '83');
INSERT INTO `role_resource` VALUES ('5774', '8', '84');
INSERT INTO `role_resource` VALUES ('5775', '8', '85');
INSERT INTO `role_resource` VALUES ('5768', '8', '91');
INSERT INTO `role_resource` VALUES ('5769', '8', '92');
INSERT INTO `role_resource` VALUES ('5777', '8', '93');
INSERT INTO `role_resource` VALUES ('5778', '8', '94');
INSERT INTO `role_resource` VALUES ('5779', '8', '96');
INSERT INTO `role_resource` VALUES ('5780', '8', '226');
INSERT INTO `role_resource` VALUES ('5751', '8', '232');
INSERT INTO `role_resource` VALUES ('5752', '8', '233');
INSERT INTO `role_resource` VALUES ('5717', '8', '235');
INSERT INTO `role_resource` VALUES ('5718', '8', '236');
INSERT INTO `role_resource` VALUES ('5719', '8', '237');
INSERT INTO `role_resource` VALUES ('5722', '8', '241');
INSERT INTO `role_resource` VALUES ('5725', '8', '242');
INSERT INTO `role_resource` VALUES ('5727', '8', '243');
INSERT INTO `role_resource` VALUES ('5737', '8', '244');
INSERT INTO `role_resource` VALUES ('5738', '8', '245');
INSERT INTO `role_resource` VALUES ('5739', '8', '246');
INSERT INTO `role_resource` VALUES ('5740', '8', '247');
INSERT INTO `role_resource` VALUES ('5741', '8', '248');
INSERT INTO `role_resource` VALUES ('5742', '8', '249');
INSERT INTO `role_resource` VALUES ('5754', '8', '250');
INSERT INTO `role_resource` VALUES ('5756', '8', '251');
INSERT INTO `role_resource` VALUES ('5757', '8', '252');
INSERT INTO `role_resource` VALUES ('5755', '8', '253');
INSERT INTO `role_resource` VALUES ('5728', '8', '255');
INSERT INTO `role_resource` VALUES ('5729', '8', '258');
INSERT INTO `role_resource` VALUES ('5733', '8', '259');
INSERT INTO `role_resource` VALUES ('5730', '8', '260');
INSERT INTO `role_resource` VALUES ('5732', '8', '261');
INSERT INTO `role_resource` VALUES ('5726', '8', '263');
INSERT INTO `role_resource` VALUES ('5723', '8', '266');
INSERT INTO `role_resource` VALUES ('5724', '8', '268');
INSERT INTO `role_resource` VALUES ('5731', '8', '271');
INSERT INTO `role_resource` VALUES ('5734', '8', '272');
INSERT INTO `role_resource` VALUES ('5735', '8', '273');
INSERT INTO `role_resource` VALUES ('5736', '8', '274');
INSERT INTO `role_resource` VALUES ('5753', '8', '275');
INSERT INTO `role_resource` VALUES ('5744', '8', '276');
INSERT INTO `role_resource` VALUES ('5763', '8', '277');
INSERT INTO `role_resource` VALUES ('5743', '8', '278');
INSERT INTO `role_resource` VALUES ('5758', '8', '279');
INSERT INTO `role_resource` VALUES ('5720', '8', '280');
INSERT INTO `role_resource` VALUES ('5721', '8', '282');
INSERT INTO `role_resource` VALUES ('5770', '8', '283');
INSERT INTO `role_resource` VALUES ('5765', '8', '288');
INSERT INTO `role_resource` VALUES ('5745', '8', '292');
INSERT INTO `role_resource` VALUES ('5746', '8', '293');
INSERT INTO `role_resource` VALUES ('5747', '8', '294');
INSERT INTO `role_resource` VALUES ('5748', '8', '295');
INSERT INTO `role_resource` VALUES ('5749', '8', '297');
INSERT INTO `role_resource` VALUES ('5750', '8', '298');
INSERT INTO `role_resource` VALUES ('5759', '8', '299');
INSERT INTO `role_resource` VALUES ('5761', '8', '300');
INSERT INTO `role_resource` VALUES ('5762', '8', '301');
INSERT INTO `role_resource` VALUES ('5764', '8', '303');
INSERT INTO `role_resource` VALUES ('5760', '8', '304');
INSERT INTO `role_resource` VALUES ('5781', '8', '313');
INSERT INTO `role_resource` VALUES ('5782', '8', '326');
INSERT INTO `role_resource` VALUES ('2391', '9', '1');
INSERT INTO `role_resource` VALUES ('2392', '9', '11');
INSERT INTO `role_resource` VALUES ('2397', '9', '12');
INSERT INTO `role_resource` VALUES ('2403', '9', '13');
INSERT INTO `role_resource` VALUES ('2408', '9', '14');
INSERT INTO `role_resource` VALUES ('2393', '9', '111');
INSERT INTO `role_resource` VALUES ('2394', '9', '112');
INSERT INTO `role_resource` VALUES ('2395', '9', '113');
INSERT INTO `role_resource` VALUES ('2396', '9', '114');
INSERT INTO `role_resource` VALUES ('2398', '9', '121');
INSERT INTO `role_resource` VALUES ('2399', '9', '122');
INSERT INTO `role_resource` VALUES ('2400', '9', '123');
INSERT INTO `role_resource` VALUES ('2401', '9', '124');
INSERT INTO `role_resource` VALUES ('2402', '9', '125');
INSERT INTO `role_resource` VALUES ('2404', '9', '131');
INSERT INTO `role_resource` VALUES ('2405', '9', '132');
INSERT INTO `role_resource` VALUES ('2406', '9', '133');
INSERT INTO `role_resource` VALUES ('2407', '9', '134');
INSERT INTO `role_resource` VALUES ('2409', '9', '141');
INSERT INTO `role_resource` VALUES ('2410', '9', '142');
INSERT INTO `role_resource` VALUES ('2411', '9', '143');
INSERT INTO `role_resource` VALUES ('2412', '9', '144');
INSERT INTO `role_resource` VALUES ('2455', '9', '232');
INSERT INTO `role_resource` VALUES ('2456', '9', '233');
INSERT INTO `role_resource` VALUES ('2413', '9', '235');
INSERT INTO `role_resource` VALUES ('2414', '9', '236');
INSERT INTO `role_resource` VALUES ('2416', '9', '237');
INSERT INTO `role_resource` VALUES ('2417', '9', '238');
INSERT INTO `role_resource` VALUES ('2418', '9', '239');
INSERT INTO `role_resource` VALUES ('2415', '9', '240');
INSERT INTO `role_resource` VALUES ('2424', '9', '241');
INSERT INTO `role_resource` VALUES ('2430', '9', '242');
INSERT INTO `role_resource` VALUES ('2435', '9', '243');
INSERT INTO `role_resource` VALUES ('2448', '9', '244');
INSERT INTO `role_resource` VALUES ('2449', '9', '245');
INSERT INTO `role_resource` VALUES ('2450', '9', '246');
INSERT INTO `role_resource` VALUES ('2451', '9', '247');
INSERT INTO `role_resource` VALUES ('2452', '9', '248');
INSERT INTO `role_resource` VALUES ('2453', '9', '249');
INSERT INTO `role_resource` VALUES ('2458', '9', '250');
INSERT INTO `role_resource` VALUES ('2460', '9', '251');
INSERT INTO `role_resource` VALUES ('2461', '9', '252');
INSERT INTO `role_resource` VALUES ('2459', '9', '253');
INSERT INTO `role_resource` VALUES ('2436', '9', '254');
INSERT INTO `role_resource` VALUES ('2437', '9', '255');
INSERT INTO `role_resource` VALUES ('2438', '9', '256');
INSERT INTO `role_resource` VALUES ('2439', '9', '257');
INSERT INTO `role_resource` VALUES ('2440', '9', '258');
INSERT INTO `role_resource` VALUES ('2444', '9', '259');
INSERT INTO `role_resource` VALUES ('2441', '9', '260');
INSERT INTO `role_resource` VALUES ('2443', '9', '261');
INSERT INTO `role_resource` VALUES ('2431', '9', '262');
INSERT INTO `role_resource` VALUES ('2432', '9', '263');
INSERT INTO `role_resource` VALUES ('2433', '9', '264');
INSERT INTO `role_resource` VALUES ('2434', '9', '265');
INSERT INTO `role_resource` VALUES ('2425', '9', '266');
INSERT INTO `role_resource` VALUES ('2426', '9', '267');
INSERT INTO `role_resource` VALUES ('2427', '9', '268');
INSERT INTO `role_resource` VALUES ('2428', '9', '269');
INSERT INTO `role_resource` VALUES ('2429', '9', '270');
INSERT INTO `role_resource` VALUES ('2442', '9', '271');
INSERT INTO `role_resource` VALUES ('2445', '9', '272');
INSERT INTO `role_resource` VALUES ('2446', '9', '273');
INSERT INTO `role_resource` VALUES ('2447', '9', '274');
INSERT INTO `role_resource` VALUES ('2457', '9', '275');
INSERT INTO `role_resource` VALUES ('2454', '9', '276');
INSERT INTO `role_resource` VALUES ('2462', '9', '277');
INSERT INTO `role_resource` VALUES ('2419', '9', '280');
INSERT INTO `role_resource` VALUES ('2420', '9', '281');
INSERT INTO `role_resource` VALUES ('2421', '9', '282');
INSERT INTO `role_resource` VALUES ('2422', '9', '283');
INSERT INTO `role_resource` VALUES ('2423', '9', '284');
INSERT INTO `role_resource` VALUES ('5060', '10', '73');
INSERT INTO `role_resource` VALUES ('5065', '10', '74');
INSERT INTO `role_resource` VALUES ('5061', '10', '75');
INSERT INTO `role_resource` VALUES ('5070', '10', '76');
INSERT INTO `role_resource` VALUES ('5066', '10', '82');
INSERT INTO `role_resource` VALUES ('5067', '10', '83');
INSERT INTO `role_resource` VALUES ('5068', '10', '84');
INSERT INTO `role_resource` VALUES ('5069', '10', '85');
INSERT INTO `role_resource` VALUES ('5062', '10', '91');
INSERT INTO `role_resource` VALUES ('5063', '10', '92');
INSERT INTO `role_resource` VALUES ('5071', '10', '93');
INSERT INTO `role_resource` VALUES ('5072', '10', '94');
INSERT INTO `role_resource` VALUES ('5073', '10', '96');
INSERT INTO `role_resource` VALUES ('5074', '10', '226');
INSERT INTO `role_resource` VALUES ('5046', '10', '232');
INSERT INTO `role_resource` VALUES ('5047', '10', '233');
INSERT INTO `role_resource` VALUES ('5008', '10', '235');
INSERT INTO `role_resource` VALUES ('5009', '10', '236');
INSERT INTO `role_resource` VALUES ('5011', '10', '237');
INSERT INTO `role_resource` VALUES ('5012', '10', '238');
INSERT INTO `role_resource` VALUES ('5010', '10', '240');
INSERT INTO `role_resource` VALUES ('5017', '10', '241');
INSERT INTO `role_resource` VALUES ('5022', '10', '242');
INSERT INTO `role_resource` VALUES ('5026', '10', '243');
INSERT INTO `role_resource` VALUES ('5038', '10', '244');
INSERT INTO `role_resource` VALUES ('5039', '10', '245');
INSERT INTO `role_resource` VALUES ('5040', '10', '246');
INSERT INTO `role_resource` VALUES ('5041', '10', '247');
INSERT INTO `role_resource` VALUES ('5042', '10', '248');
INSERT INTO `role_resource` VALUES ('5043', '10', '249');
INSERT INTO `role_resource` VALUES ('5049', '10', '250');
INSERT INTO `role_resource` VALUES ('5051', '10', '251');
INSERT INTO `role_resource` VALUES ('5052', '10', '252');
INSERT INTO `role_resource` VALUES ('5050', '10', '253');
INSERT INTO `role_resource` VALUES ('5027', '10', '254');
INSERT INTO `role_resource` VALUES ('5028', '10', '255');
INSERT INTO `role_resource` VALUES ('5029', '10', '256');
INSERT INTO `role_resource` VALUES ('5030', '10', '258');
INSERT INTO `role_resource` VALUES ('5034', '10', '259');
INSERT INTO `role_resource` VALUES ('5031', '10', '260');
INSERT INTO `role_resource` VALUES ('5033', '10', '261');
INSERT INTO `role_resource` VALUES ('5023', '10', '262');
INSERT INTO `role_resource` VALUES ('5024', '10', '263');
INSERT INTO `role_resource` VALUES ('5025', '10', '264');
INSERT INTO `role_resource` VALUES ('5018', '10', '266');
INSERT INTO `role_resource` VALUES ('5019', '10', '267');
INSERT INTO `role_resource` VALUES ('5020', '10', '268');
INSERT INTO `role_resource` VALUES ('5021', '10', '269');
INSERT INTO `role_resource` VALUES ('5032', '10', '271');
INSERT INTO `role_resource` VALUES ('5035', '10', '272');
INSERT INTO `role_resource` VALUES ('5036', '10', '273');
INSERT INTO `role_resource` VALUES ('5037', '10', '274');
INSERT INTO `role_resource` VALUES ('5048', '10', '275');
INSERT INTO `role_resource` VALUES ('5045', '10', '276');
INSERT INTO `role_resource` VALUES ('5058', '10', '277');
INSERT INTO `role_resource` VALUES ('5044', '10', '278');
INSERT INTO `role_resource` VALUES ('5053', '10', '279');
INSERT INTO `role_resource` VALUES ('5013', '10', '280');
INSERT INTO `role_resource` VALUES ('5014', '10', '281');
INSERT INTO `role_resource` VALUES ('5016', '10', '282');
INSERT INTO `role_resource` VALUES ('5064', '10', '283');
INSERT INTO `role_resource` VALUES ('5015', '10', '284');
INSERT INTO `role_resource` VALUES ('5054', '10', '299');
INSERT INTO `role_resource` VALUES ('5056', '10', '300');
INSERT INTO `role_resource` VALUES ('5057', '10', '301');
INSERT INTO `role_resource` VALUES ('5059', '10', '303');
INSERT INTO `role_resource` VALUES ('5055', '10', '304');
INSERT INTO `role_resource` VALUES ('4518', '11', '292');
INSERT INTO `role_resource` VALUES ('4519', '11', '293');
INSERT INTO `role_resource` VALUES ('4520', '11', '294');
INSERT INTO `role_resource` VALUES ('4521', '11', '295');
INSERT INTO `role_resource` VALUES ('4522', '11', '297');
INSERT INTO `role_resource` VALUES ('4523', '11', '298');
INSERT INTO `role_resource` VALUES ('5987', '12', '1');
INSERT INTO `role_resource` VALUES ('5988', '12', '14');
INSERT INTO `role_resource` VALUES ('5986', '12', '141');
INSERT INTO `role_resource` VALUES ('5789', '13', '306');
INSERT INTO `role_resource` VALUES ('5790', '13', '307');
INSERT INTO `role_resource` VALUES ('5791', '13', '308');
INSERT INTO `role_resource` VALUES ('5792', '13', '333');

-- ----------------------------
-- Table structure for `tbl_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userinfo`;
CREATE TABLE `tbl_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `imageurls` varchar(500) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_userinfo
-- ----------------------------
INSERT INTO `tbl_userinfo` VALUES ('1', 'admin', '1c785d41e01fd541557c47a0642934cd', '2018-11-19 15:54:44', null, 'test');
INSERT INTO `tbl_userinfo` VALUES ('67', 'chenjian', '19531b120822a424c1eca9de565a9bf6', '2018-12-28 07:11:45', '', '1304efc2-4850-484b-8cfe-c6e0bc26488f');
INSERT INTO `tbl_userinfo` VALUES ('68', '张三', 'f7cd4d80c8863d2887404ce05ebdc442', '2018-12-28 07:14:00', '/0a7d38f1-595b-4606-ae83-07575ed7baf4.JPG', '6823af7f-dabc-4f2d-9a28-8e2d354b0a76');
INSERT INTO `tbl_userinfo` VALUES ('69', '李四', '67c6c0cbc6bcda6b6f5688e1868a873e', '2018-12-28 07:45:02', '/59a15f86-4a31-4dba-987c-a7f563e579a5.JPG', '75aa5edf-4d07-497c-b625-a794d1a9d3c9');
INSERT INTO `tbl_userinfo` VALUES ('70', '王五', '17ac923700104d470a5f31a0d09543b9', '2018-12-28 07:49:56', '/a9b5de5e-caf0-4090-bd8a-283616aecfa4.JPG', 'feb7fa6c-ac34-4d2a-85ec-aabc757d81fc');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(19) NOT NULL COMMENT '用户id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_role_ids` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('147', '1', '1');
INSERT INTO `user_role` VALUES ('299', '67', '1');
INSERT INTO `user_role` VALUES ('301', '68', '7');
INSERT INTO `user_role` VALUES ('300', '68', '8');
INSERT INTO `user_role` VALUES ('302', '69', '7');
INSERT INTO `user_role` VALUES ('303', '70', '12');
