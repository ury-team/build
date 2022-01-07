/*
 Navicat Premium Data Transfer

 Source Server         : gdkj-001
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-bp19d4144l62kclo9io.mysql.rds.aliyuncs.com:3306
 Source Schema         : billing

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 28/12/2021 17:31:56
*/
CREATE database if NOT EXISTS `billing` default character set utf8mb4 collate utf8mb4_unicode_ci;
use `billing`;
/*
 Navicat Premium Data Transfer

 Source Server         : gdkj-001
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-bp19d4144l62kclo9io.mysql.rds.aliyuncs.com:3306
 Source Schema         : billint-tmp

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 31/12/2021 11:06:18
*/
SET
  NAMES utf8mb4;
SET
  FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
  -- Table structure for sys_dict_data
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
    `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
    `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
    `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典标签',
    `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典键值',
    `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
    `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
    `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '表格回显样式',
    `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`dict_code`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 95 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC COMMENT = '字典数据表';
-- ----------------------------
  -- Records of sys_dict_data
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_dict_data`
VALUES
  (
    1,
    1,
    '男',
    '0',
    'sys_user_sex',
    '',
    '',
    'Y',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '性别男'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    2,
    2,
    '女',
    '1',
    'sys_user_sex',
    '',
    '',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '性别女'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    3,
    3,
    '未知',
    '2',
    'sys_user_sex',
    '',
    '',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '性别未知'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    4,
    1,
    '隐藏',
    '0',
    'sys_show_hide',
    '',
    'danger',
    'Y',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    'admin',
    '2021-09-12 16:45:33',
    '显示菜单'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    5,
    2,
    '显示',
    '1',
    'sys_show_hide',
    '',
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    'admin',
    '2021-09-12 16:45:39',
    '隐藏菜单'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    6,
    1,
    '正常',
    '0',
    'sys_normal_disable',
    '',
    'primary',
    'Y',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '正常状态'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    7,
    2,
    '停用',
    '1',
    'sys_normal_disable',
    '',
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '停用状态'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    12,
    1,
    '是',
    'Y',
    'sys_yes_no',
    '',
    'primary',
    'Y',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '系统默认是'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    13,
    2,
    '否',
    'N',
    'sys_yes_no',
    '',
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '系统默认否'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    18,
    1,
    '新增',
    '1',
    'sys_oper_type',
    '',
    'info',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '新增操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    19,
    2,
    '修改',
    '2',
    'sys_oper_type',
    '',
    'info',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '修改操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    20,
    3,
    '删除',
    '3',
    'sys_oper_type',
    '',
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '删除操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    21,
    4,
    '授权',
    '4',
    'sys_oper_type',
    '',
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '授权操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    22,
    5,
    '导出',
    '5',
    'sys_oper_type',
    '',
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '导出操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    23,
    6,
    '导入',
    '6',
    'sys_oper_type',
    '',
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '导入操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    24,
    7,
    '强退',
    '7',
    'sys_oper_type',
    '',
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '强退操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    25,
    8,
    '生成代码',
    '8',
    'sys_oper_type',
    '',
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '生成操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    26,
    9,
    '清空数据',
    '9',
    'sys_oper_type',
    '',
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-06 15:22:26',
    '',
    NULL,
    '清空操作'
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    33,
    1,
    '正常',
    '1',
    'member_discount_type',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 16:25:26',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    34,
    2,
    '自定义',
    '2',
    'member_discount_type',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 16:25:34',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    35,
    1,
    'QQ',
    '1',
    'member_source',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 16:26:24',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    36,
    2,
    '微信',
    '2',
    'member_source',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 16:26:32',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    37,
    3,
    '淘宝',
    '3',
    'member_source',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 16:26:39',
    'admin',
    '2021-09-16 23:38:45',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    40,
    0,
    '停用',
    '0',
    'member_level_status',
    NULL,
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-12 17:40:42',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    41,
    1,
    '启用',
    '1',
    'member_level_status',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-12 17:40:58',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    42,
    0,
    '未读协议',
    '0',
    'member_isReadUserAgreement',
    NULL,
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-12 18:03:47',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    43,
    1,
    '已读协议',
    '1',
    'member_isReadUserAgreement',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-12 18:04:02',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    44,
    0,
    '未认证',
    '0',
    'member_isVerified',
    NULL,
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-12 18:04:20',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    45,
    1,
    '手机认证',
    '1',
    'member_isVerified',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-12 18:04:28',
    'admin',
    '2021-09-23 15:40:04',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    46,
    0,
    '时',
    'HOUR',
    'combo_dateType',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 20:49:19',
    'admin',
    '2021-09-22 20:35:25',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    47,
    1,
    '日',
    'DAY',
    'combo_dateType',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 20:49:44',
    'admin',
    '2021-10-13 20:50:30',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    48,
    2,
    '月',
    'MONTH',
    'combo_dateType',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 20:49:59',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    49,
    3,
    '年',
    'YEAR',
    'combo_dateType',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-12 20:50:12',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    50,
    0,
    '正常',
    '0',
    'host_fault_status',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-12 21:40:26',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    51,
    1,
    '故障',
    '1',
    'host_fault_status',
    NULL,
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-12 21:40:38',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    54,
    0,
    '未出租',
    '0',
    'host_rental_status',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-13 09:34:25',
    'admin',
    '2021-10-14 19:12:42',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    55,
    0,
    '出租锁定',
    '1',
    'host_rental_status',
    NULL,
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-13 09:34:33',
    'admin',
    '2021-10-14 19:12:48',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    56,
    0,
    '未连接',
    '0',
    'host_connect_status',
    NULL,
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-13 09:34:46',
    'admin',
    '2021-10-14 19:13:11',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    57,
    0,
    '已连接',
    '1',
    'host_connect_status',
    NULL,
    'success',
    'N',
    '0',
    'admin',
    '2021-09-13 09:34:55',
    'admin',
    '2021-10-14 19:13:15',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    58,
    0,
    '其他',
    '0',
    'member_source',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-16 23:38:54',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    60,
    1,
    '关机',
    '1',
    'host_status',
    NULL,
    'danger',
    'N',
    '0',
    'admin',
    '2021-09-22 02:59:31',
    'admin',
    '2021-09-22 13:32:24',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    61,
    2,
    '待租',
    '2',
    'host_status',
    NULL,
    'warning',
    'N',
    '0',
    'admin',
    '2021-09-22 02:59:48',
    'admin',
    '2021-09-22 13:32:32',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    62,
    4,
    '离线',
    '4',
    'host_status',
    NULL,
    'info',
    'N',
    '0',
    'admin',
    '2021-09-22 03:00:08',
    'admin',
    '2021-10-13 20:44:52',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    63,
    5,
    '在线',
    '5',
    'host_status',
    NULL,
    'success',
    'N',
    '0',
    'admin',
    '2021-09-22 03:00:33',
    'admin',
    '2021-10-13 20:44:45',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    64,
    1,
    '线下付款',
    '1',
    'pay_way',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-22 23:10:39',
    'admin',
    '2021-10-18 14:30:53',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    65,
    2,
    '余额付款',
    '2',
    'pay_way',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-09-22 23:10:48',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    67,
    3,
    '人脸识别',
    '2',
    'member_isVerified',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-09-23 15:40:18',
    'admin',
    '2021-10-14 11:18:20',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    68,
    3,
    '锁定',
    '3',
    'host_status',
    NULL,
    'info',
    'N',
    '0',
    'admin',
    '2021-10-13 20:44:26',
    'admin',
    '2021-10-13 20:45:26',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    69,
    1,
    '抵扣购买',
    '1',
    'buy_way',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-13 21:07:44',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    70,
    2,
    '叠加购买',
    '2',
    'buy_way',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-13 21:07:55',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    71,
    0,
    '余额充值',
    'RECHARGE',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:04:02',
    'admin',
    '2021-10-14 11:31:56',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    72,
    0,
    '套餐购买',
    'COMBO',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:29:05',
    'admin',
    '2021-10-14 11:32:04',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    73,
    0,
    '续费',
    'RENEWAL',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:29:30',
    'admin',
    '2021-10-14 11:32:11',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    74,
    0,
    '提现',
    'WITHDRAW',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:29:47',
    'admin',
    '2021-10-14 11:32:17',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    75,
    0,
    '退机',
    'REFUND',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:30:06',
    'admin',
    '2021-10-14 11:32:25',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    76,
    0,
    '收入',
    '1',
    'PAY_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:31:01',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    77,
    0,
    '支出',
    '2',
    'PAY_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-14 11:31:40',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    78,
    0,
    '待支付',
    '0',
    'PAY_STATUS',
    NULL,
    'info',
    'N',
    '0',
    'admin',
    '2021-10-14 19:00:01',
    'admin',
    '2021-10-14 19:00:41',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    79,
    0,
    '交易关闭',
    '1',
    'PAY_STATUS',
    NULL,
    'warning',
    'N',
    '0',
    'admin',
    '2021-10-14 19:00:10',
    'admin',
    '2021-10-14 19:00:48',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    80,
    0,
    '支付成功',
    '2',
    'PAY_STATUS',
    NULL,
    'success',
    'N',
    '0',
    'admin',
    '2021-10-14 19:00:16',
    'admin',
    '2021-10-14 19:00:53',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    81,
    0,
    '交易成功',
    '3',
    'PAY_STATUS',
    NULL,
    'primary',
    'N',
    '0',
    'admin',
    '2021-10-14 19:00:30',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    82,
    0,
    '已出租',
    '2',
    'host_rental_status',
    NULL,
    'success',
    'N',
    '0',
    'admin',
    '2021-10-14 19:10:34',
    'admin',
    '2021-10-14 19:12:54',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    83,
    1,
    '上机',
    '1',
    'history_status',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-15 12:33:38',
    'admin',
    '2021-12-17 23:33:35',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    84,
    2,
    '下机',
    '2',
    'history_status',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-15 12:33:46',
    'admin',
    '2021-12-17 23:33:26',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    85,
    3,
    '换机',
    '3',
    'history_status',
    NULL,
    'default',
    'N',
    '1',
    'admin',
    '2021-10-15 12:33:56',
    'admin',
    '2021-12-19 20:49:46',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    86,
    4,
    '到期',
    '4',
    'history_status',
    NULL,
    'default',
    'N',
    '1',
    'admin',
    '2021-10-15 12:34:05',
    'admin',
    '2021-12-19 20:49:51',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    87,
    0,
    '自助',
    '0',
    'TRADE_PAY_WAY',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-16 15:24:48',
    'admin',
    '2021-10-16 15:25:02',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    88,
    0,
    '客服',
    '1',
    'TRADE_PAY_WAY',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-16 15:25:08',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    90,
    0,
    '更换套餐',
    'CHANGE_COMBO',
    'TRADE_TYPE',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-10-21 13:38:29',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    91,
    1,
    '是',
    '1',
    'force_update',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-11-29 23:08:37',
    'admin',
    '2021-11-29 23:08:55',
    NULL
  );
INSERT INTO
  `sys_dict_data`
VALUES
  (
    92,
    0,
    '否',
    '0',
    'force_update',
    NULL,
    'default',
    'N',
    '0',
    'admin',
    '2021-11-29 23:08:49',
    '',
    NULL,
    NULL
  );
COMMIT;
-- ----------------------------
  -- Table structure for sys_dict_type
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
    `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
    `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典名称',
    `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`dict_id`) USING BTREE,
    UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 36 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC COMMENT = '字典类型表';
-- ----------------------------
  -- Records of sys_dict_type
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_dict_type`
VALUES
  (
    1,
    '用户性别',
    'sys_user_sex',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    'admin',
    '2021-09-10 10:11:43',
    '用户性别列表'
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    2,
    '菜单状态',
    'sys_show_hide',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '菜单状态列表'
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    3,
    '系统开关',
    'sys_normal_disable',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '系统开关列表'
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    6,
    '系统是否',
    'sys_yes_no',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '系统是否列表'
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    9,
    '操作类型',
    'sys_oper_type',
    '0',
    'admin',
    '2021-09-06 15:22:25',
    '',
    NULL,
    '操作类型列表'
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    14,
    '折扣类型',
    'member_discount_type',
    '0',
    'admin',
    '2021-09-12 16:24:46',
    'admin',
    '2021-09-12 16:25:01',
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    15,
    '来源',
    'member_source',
    '0',
    'admin',
    '2021-09-12 16:26:11',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    17,
    '等级状态',
    'member_level_status',
    '0',
    'admin',
    '2021-09-12 17:40:20',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    18,
    '是否读取用户协议',
    'member_isReadUserAgreement',
    '0',
    'admin',
    '2021-09-12 18:02:57',
    'admin',
    '2021-09-12 18:05:24',
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    19,
    '是否实名认证',
    'member_isVerified',
    '0',
    'admin',
    '2021-09-12 18:03:18',
    'admin',
    '2021-09-12 18:05:29',
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    20,
    '套餐类型',
    'combo_dateType',
    '0',
    'admin',
    '2021-09-12 20:48:45',
    'admin',
    '2021-09-12 20:54:46',
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    21,
    '故障状态',
    'host_fault_status',
    '0',
    'admin',
    '2021-09-12 21:39:10',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    22,
    '连接状态',
    'host_connect_status',
    '0',
    'admin',
    '2021-09-12 21:39:50',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    23,
    '出租状态',
    'host_rental_status',
    '0',
    'admin',
    '2021-09-12 21:40:08',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    26,
    '主机状态',
    'host_status',
    '0',
    'admin',
    '2021-09-22 02:58:20',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    27,
    '付款方式',
    'pay_way',
    '0',
    'admin',
    '2021-09-22 23:09:46',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    28,
    '购买方式',
    'buy_way',
    '0',
    'admin',
    '2021-10-13 21:07:23',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    29,
    '交易类型',
    'TRADE_TYPE',
    '0',
    'admin',
    '2021-10-14 11:03:23',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    30,
    '付款类型',
    'PAY_TYPE',
    '0',
    'admin',
    '2021-10-14 11:30:38',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    31,
    '付款状态',
    'PAY_STATUS',
    '0',
    'admin',
    '2021-10-14 18:52:42',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    32,
    '出租记录状态',
    'history_status',
    '0',
    'admin',
    '2021-10-15 12:33:23',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    33,
    '订单支付方式',
    'TRADE_PAY_WAY',
    '0',
    'admin',
    '2021-10-16 15:24:34',
    '',
    NULL,
    NULL
  );
INSERT INTO
  `sys_dict_type`
VALUES
  (
    34,
    '是否强制更新',
    'force_update',
    '0',
    'admin',
    '2021-11-29 23:07:42',
    'admin',
    '2021-11-29 23:08:10',
    NULL
  );
COMMIT;
-- ----------------------------
  -- Table structure for sys_menu
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
    `menu_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单ID',
    `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
    `parent_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '父菜单ID',
    `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
    `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '#' COMMENT '请求地址',
    `target` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
    `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
    `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
    `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
    `is_frame` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '权限标识',
    `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '#' COMMENT '菜单图标',
    `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `create` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '备注',
    PRIMARY KEY (`menu_id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '菜单权限表';
-- ----------------------------
  -- Records of sys_menu
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_menu`
VALUES
  (
    '1001',
    '用户查询',
    '1356213057017221120',
    1,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:user:query',
    'system:user:query',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1002',
    '用户新增',
    '1356213057017221120',
    2,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:user:add',
    'system:user:add',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1003',
    '用户修改',
    '1356213057017221120',
    3,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:user:edit',
    'system:user:edit',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1004',
    '用户删除',
    '1356213057017221120',
    4,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:user:remove',
    'system:user:remove',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1007',
    '重置密码',
    '1356213057017221120',
    7,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:user:resetPwd',
    'system:user:resetPwd',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1008',
    '角色查询',
    '1356213243160432640',
    1,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:role:query',
    'system:role:query',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1009',
    '角色新增',
    '1356213243160432640',
    2,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:role:add',
    'system:role:add',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1010',
    '角色修改',
    '1356213243160432640',
    3,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:role:edit',
    'system:role:edit',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1011',
    '角色删除',
    '1356213243160432640',
    4,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:role:remove',
    'system:role:remove',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1012',
    '角色导出',
    '1356213243160432640',
    5,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:role:export',
    'system:role:export',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1013',
    '菜单查询',
    '1356213404892794880',
    1,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:menu:query',
    'system:menu:query',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1014',
    '菜单新增',
    '1356213404892794880',
    2,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:menu:add',
    'system:menu:add',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1015',
    '菜单修改',
    '1356213404892794880',
    3,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:menu:edit',
    'system:menu:edit',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1016',
    '菜单删除',
    '1356213404892794880',
    4,
    '',
    '',
    'F',
    '0',
    'F',
    '0',
    'system:menu:remove',
    'system:menu:remove',
    '#',
    'admin',
    '2021-09-05 13:42:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1026',
    '字典查询',
    '105',
    1,
    '#',
    '',
    '1',
    '0',
    'F',
    '0',
    '0',
    'system:dict:query',
    '#',
    'admin',
    '2021-09-06 16:24:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1027',
    '字典新增',
    '105',
    2,
    '#',
    '',
    '1',
    '0',
    'F',
    '0',
    '0',
    'system:dict:add',
    '#',
    'admin',
    '2021-09-06 16:24:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1028',
    '字典修改',
    '105',
    3,
    '#',
    '',
    '1',
    '0',
    'F',
    '0',
    '0',
    'system:dict:edit',
    '#',
    'admin',
    '2021-09-06 16:24:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1029',
    '字典删除',
    '105',
    4,
    '#',
    '',
    '1',
    '0',
    'F',
    '0',
    '0',
    'system:dict:remove',
    '#',
    'admin',
    '2021-09-06 16:24:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1030',
    '字典导出',
    '105',
    5,
    '#',
    '',
    '1',
    '0',
    'F',
    '0',
    '0',
    'system:dict:export',
    '#',
    'admin',
    '2021-09-06 16:24:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '105',
    '字典管理',
    '1',
    6,
    'dict',
    'system/dict/index',
    '1',
    '0',
    'C',
    '0',
    '0',
    'system:dict:list',
    'dict',
    'admin',
    '2021-09-06 16:23:44',
    '',
    NULL,
    '字典管理菜单'
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1356212749667012608',
    '系统管理',
    '0',
    2,
    'sys',
    '',
    'M',
    '1',
    '1',
    '1',
    '',
    'system',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-19 23:02:33',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1356213057017221120',
    '管理员管理',
    '1356212749667012608',
    1,
    'administrator',
    '',
    'C',
    '1',
    '1',
    '1',
    '',
    'user',
    'sys/user/User',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-09 20:25:34',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1356213243160432640',
    '角色管理',
    '1356212749667012608',
    2,
    'role',
    '',
    'C',
    '1',
    '1',
    '1',
    '',
    'tree',
    'sys/role/Role',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-09 20:25:24',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1356213404892794880',
    '菜单管理',
    '1356212749667012608',
    3,
    'menu',
    '',
    'C',
    '1',
    '1',
    '1',
    '',
    'table',
    'sys/menu/Menu',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-09 20:24:19',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1370200363281551360',
    '设备管理',
    '0',
    1,
    'weManage',
    '',
    'M',
    '1',
    '1',
    '1',
    '',
    'dashboard',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-09 20:13:58',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1370201665835241472',
    '主机管理',
    '1370200363281551360',
    2,
    'host',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:host:list',
    'table',
    'equipment/host/index',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-09 20:25:54',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1370201842667098112',
    '主机出租',
    '1370200363281551360',
    5,
    'home',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:home:list',
    'guide',
    'equipment/home/index',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:15:56',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434389828174221312',
    '用户中心',
    '0',
    0,
    'center',
    '',
    'M',
    '1',
    '1',
    '1',
    '',
    'peoples',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:09:43',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434389960332546048',
    '会员管理',
    '1434389828174221312',
    1,
    'member',
    '',
    'C',
    '1',
    '1',
    '1',
    'center:member:list',
    'account',
    'center/member/index',
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:10:03',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434395752657981440',
    '列表',
    '1434389960332546048',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:query',
    'button',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:11:06',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434395864314548224',
    '新增',
    '1434389960332546048',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:create',
    'button',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:11:13',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434396037052764160',
    '导出',
    '1434389960332546048',
    5,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:export',
    'button',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:11:34',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434396120959815680',
    '修改',
    '1434389960332546048',
    3,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:update',
    'button',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:11:21',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1434396185824727040',
    '删除',
    '1434389960332546048',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:remove',
    'button',
    NULL,
    '',
    '2021-09-02 09:00:22',
    'admin',
    '2021-12-13 05:11:29',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1435991189491945472',
    '字典管理',
    '1356212749667012608',
    4,
    'dict',
    '',
    'C',
    '1',
    '1',
    '1',
    'system:dict:list',
    'dict',
    'sys/dict/index',
    '',
    '2021-09-09 23:39:13',
    'admin',
    '2021-12-09 20:25:17',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1435993799749931008',
    '字典查询',
    '1435991189491945472',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:dict:query',
    '#',
    NULL,
    '',
    '2021-09-09 23:49:36',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1435993900652302336',
    '字典新增',
    '1435991189491945472',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:dict:add',
    '#',
    NULL,
    '',
    '2021-09-09 23:50:00',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1435993985758924800',
    '字典修改',
    '1435991189491945472',
    3,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:dict:edit',
    '#',
    NULL,
    '',
    '2021-09-09 23:50:20',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1435994056676216832',
    '字典删除',
    '1435991189491945472',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:dict:remove',
    '#',
    NULL,
    '',
    '2021-09-09 23:50:37',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436015826514874368',
    '操作日志',
    '1356212749667012608',
    5,
    'operlog',
    '',
    'C',
    '1',
    '1',
    '1',
    'system:operlog:list',
    'log',
    'sys/operlog/index',
    '',
    '2021-09-10 01:17:07',
    'admin',
    '2021-12-09 20:25:12',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436972592278933504',
    '分组管理',
    '1370200363281551360',
    1,
    'grouping',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:grouping:list',
    'swagger',
    'equipment/grouping/index',
    '',
    '2021-09-12 16:38:58',
    'admin',
    '2021-12-09 20:26:09',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436985171164401664',
    '等级管理',
    '1434389828174221312',
    2,
    'level',
    '',
    'C',
    '1',
    '1',
    '1',
    'center:level:list',
    'cascader',
    'center/level/index',
    '',
    '2021-09-12 17:28:57',
    'admin',
    '2021-12-13 05:10:13',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436985679753121792',
    '列表',
    '1436972592278933504',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:grouping:query',
    '#',
    NULL,
    '',
    '2021-09-12 17:30:58',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436985828197928960',
    '新增',
    '1436972592278933504',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:grouping:create',
    '#',
    NULL,
    '',
    '2021-09-12 17:31:34',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436985904177745920',
    '修改',
    '1436972592278933504',
    3,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:grouping:update',
    '#',
    NULL,
    '',
    '2021-09-12 17:31:52',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436985973568311296',
    '删除',
    '1436972592278933504',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:grouping:remove',
    '#',
    NULL,
    '',
    '2021-09-12 17:32:08',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436986131639046144',
    '列表',
    '1436985171164401664',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:level:query',
    '#',
    NULL,
    '',
    '2021-09-12 17:32:46',
    'admin',
    '2021-12-13 05:11:46',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436986241131352064',
    '新增',
    '1436985171164401664',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:level:create',
    '#',
    NULL,
    '',
    '2021-09-12 17:33:12',
    'admin',
    '2021-12-13 05:11:51',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436986311545327616',
    '修改',
    '1436985171164401664',
    3,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:level:update',
    '#',
    NULL,
    '',
    '2021-09-12 17:33:29',
    'admin',
    '2021-12-13 05:11:56',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1436986403933261824',
    '删除',
    '1436985171164401664',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:level:remove',
    '#',
    NULL,
    '',
    '2021-09-12 17:33:51',
    'admin',
    '2021-12-13 05:12:02',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437006328877944832',
    '套餐设置',
    '1370200363281551360',
    1,
    'combo',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:combo:list',
    'dict',
    'equipment/combo/index',
    '',
    '2021-09-12 18:53:01',
    'admin',
    '2021-12-24 21:55:17',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068235743825920',
    '列表',
    '1437006328877944832',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:combo:query',
    '#',
    NULL,
    '',
    '2021-09-12 22:59:01',
    'admin',
    '2021-12-24 21:55:22',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068296921944064',
    '新增',
    '1437006328877944832',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:combo:create',
    '#',
    NULL,
    '',
    '2021-09-12 22:59:16',
    'admin',
    '2021-12-24 21:55:30',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068485489463296',
    '修改',
    '1437006328877944832',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:combo:update',
    '#',
    NULL,
    '',
    '2021-09-12 23:00:01',
    'admin',
    '2021-12-24 21:55:38',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068616146227200',
    '删除',
    '1437006328877944832',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:combo:remove',
    '#',
    NULL,
    '',
    '2021-09-12 23:00:32',
    'admin',
    '2021-12-24 21:55:42',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068751873904640',
    '列表',
    '1370201665835241472',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:query',
    '#',
    NULL,
    '',
    '2021-09-12 23:01:04',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068834518470656',
    '新增',
    '1370201665835241472',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:create',
    '#',
    NULL,
    '',
    '2021-09-12 23:01:24',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068932266725376',
    '修改',
    '1370201665835241472',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:update',
    '#',
    NULL,
    '',
    '2021-09-12 23:01:47',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437068996850618368',
    '删除',
    '1370201665835241472',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:remove',
    '#',
    NULL,
    '',
    '2021-09-12 23:02:02',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437069054513909760',
    '导出',
    '1370201665835241472',
    5,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:export',
    '#',
    NULL,
    '',
    '2021-09-12 23:02:16',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437069141872873472',
    '导入',
    '1370201665835241472',
    6,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:import',
    '#',
    NULL,
    '',
    '2021-09-12 23:02:37',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1437069212710473728',
    '移动分组',
    '1370201665835241472',
    7,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:host:move',
    '#',
    NULL,
    '',
    '2021-09-12 23:02:54',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1440324245367427072',
    '充值',
    '1434389960332546048',
    6,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:member:recharge',
    '#',
    NULL,
    '',
    '2021-09-21 22:37:14',
    'admin',
    '2021-12-13 05:11:40',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1440557256797196288',
    '积分换算规则',
    '1436985171164401664',
    5,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:level:config',
    '#',
    NULL,
    '',
    '2021-09-22 14:03:08',
    'admin',
    '2021-12-13 05:12:08',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1448260849427943424',
    '交易记录',
    '1434389828174221312',
    3,
    'record',
    '',
    'C',
    '1',
    '1',
    '1',
    'center:record:list',
    'money',
    'center/record/index',
    '',
    '2021-10-13 20:14:28',
    'admin',
    '2021-12-13 05:13:17',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1448496753916645376',
    '出租记录',
    '1370200363281551360',
    6,
    'history',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:history:list',
    'documentation',
    'equipment/history',
    '',
    '2021-10-14 11:51:52',
    'admin',
    '2021-12-19 20:23:15',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465331350583250944',
    '客户端升级',
    '1370200363281551360',
    4,
    'version',
    '',
    'C',
    '1',
    '1',
    '1',
    'equipment:version:list',
    'job',
    'equipment/version/index',
    '',
    '2021-11-29 22:46:33',
    'admin',
    '2021-12-14 15:55:25',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465349010578608128',
    '新增',
    '1465331350583250944',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:version:create',
    '#',
    NULL,
    '',
    '2021-11-29 23:56:43',
    'admin',
    '2021-11-29 23:58:27',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465349120452595712',
    '修改',
    '1465331350583250944',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:version:update',
    '#',
    NULL,
    '',
    '2021-11-29 23:57:09',
    'admin',
    '2021-11-29 23:58:23',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465349378557480960',
    '列表',
    '1465331350583250944',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:version:query',
    '#',
    NULL,
    '',
    '2021-11-29 23:58:11',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465349644111450112',
    '列表',
    '1436015826514874368',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:operlog:query',
    '#',
    NULL,
    '',
    '2021-11-29 23:59:14',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465349730832879616',
    '删除',
    '1436015826514874368',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'system:operlog:remove',
    '#',
    NULL,
    '',
    '2021-11-29 23:59:35',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465350066897293312',
    '列表',
    '1448260849427943424',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'center:record:query',
    '#',
    NULL,
    '',
    '2021-11-30 00:00:55',
    'admin',
    '2021-12-13 05:12:16',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465350181473095680',
    '列表',
    '1448496753916645376',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:history:query',
    '#',
    NULL,
    '',
    '2021-11-30 00:01:22',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465350276079816704',
    '列表',
    '1370201842667098112',
    0,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:query',
    '#',
    NULL,
    '',
    '2021-11-30 00:01:45',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465350559442800640',
    '配置表头',
    '1370201842667098112',
    1,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:sethead',
    '#',
    NULL,
    '',
    '2021-11-30 00:02:52',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465350991686799360',
    '主机出租',
    '1370201842667098112',
    2,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:rent',
    '#',
    NULL,
    '',
    '2021-11-30 00:04:35',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465351400094568448',
    '续费',
    '1370201842667098112',
    3,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:renewal',
    '#',
    NULL,
    '',
    '2021-11-30 00:06:13',
    'admin',
    '2021-11-30 00:06:18',
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465351558832197632',
    '升级',
    '1370201842667098112',
    4,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:upgrade',
    '#',
    NULL,
    '',
    '2021-11-30 00:06:51',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465351754488090624',
    '换机',
    '1370201842667098112',
    5,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:change',
    '#',
    NULL,
    '',
    '2021-11-30 00:07:37',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465352044872339456',
    '退机',
    '1370201842667098112',
    6,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:refund',
    '#',
    NULL,
    '',
    '2021-11-30 00:08:47',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465352215681175552',
    '更新地址',
    '1370201842667098112',
    7,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:updateurl',
    '#',
    NULL,
    '',
    '2021-11-30 00:09:27',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465352420522594304',
    '重启',
    '1370201842667098112',
    8,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:restart',
    '#',
    NULL,
    '',
    '2021-11-30 00:10:16',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465352578765295616',
    '关机',
    '1370201842667098112',
    9,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:shutdown',
    '#',
    NULL,
    '',
    '2021-11-30 00:10:54',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465352998610931712',
    '唤醒',
    '1370201842667098112',
    10,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:wakeup',
    '#',
    NULL,
    '',
    '2021-11-30 00:12:34',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465353189913137152',
    '锁屏',
    '1370201842667098112',
    11,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:lock',
    '#',
    NULL,
    '',
    '2021-11-30 00:13:20',
    '',
    NULL,
    ''
  );
INSERT INTO
  `sys_menu`
VALUES
  (
    '1465353256422215680',
    '解锁',
    '1370201842667098112',
    12,
    '#',
    '',
    'F',
    '0',
    '1',
    '1',
    'equipment:home:unlock',
    '#',
    NULL,
    '',
    '2021-11-30 00:13:35',
    '',
    NULL,
    ''
  );
COMMIT;
-- ----------------------------
  -- Table structure for sys_oper_log
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
    `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
    `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '模块标题',
    `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
    `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '方法名称',
    `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求方式',
    `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
    `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作人员',
    `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
    `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求URL',
    `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '主机地址',
    `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作地点',
    `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求参数',
    `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '返回参数',
    `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
    `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '错误消息',
    `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
    PRIMARY KEY (`oper_id`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 1587 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC COMMENT = '操作日志记录';
-- ----------------------------
  -- Records of sys_oper_log
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for sys_role
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
    `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
    `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '角色权限字符串',
    `role_sort` int(11) NOT NULL COMMENT '显示顺序',
    `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '1' COMMENT '删除标志（0代表存在 2代表删除）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`role_id`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 1434130997846347777 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '角色信息表';
-- ----------------------------
  -- Records of sys_role
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_role`
VALUES
  (
    1,
    '超级管理员',
    'admin',
    1,
    '1',
    '1',
    '1',
    'admin',
    '2021-09-03 23:37:28',
    '',
    NULL,
    '超级管理员'
  );
COMMIT;
-- ----------------------------
  -- Table structure for sys_role_menu
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
    `role_id` bigint(20) NOT NULL COMMENT '角色ID',
    `menu_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单ID',
    PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '角色和菜单关联表';
-- ----------------------------
  -- Records of sys_role_menu
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for sys_user
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
    `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '用户昵称',
    `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
    `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '用户邮箱',
    `phone_num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '手机号码',
    `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
    `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '头像路径',
    `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '密码',
    `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '盐加密',
    `uuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '1' COMMENT '删除标志（0代表存在 2代表删除）',
    `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '最后登录IP',
    `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
    `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
    `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 1469680954602688515 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '用户信息表';
-- ----------------------------
  -- Records of sys_user
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_user`
VALUES
  (
    1,
    NULL,
    'admin',
    '00',
    '',
    'string',
    '0',
    '',
    '21232f297a57a5a743894a0e4a801fc3',
    '',
    '3aeec238-c31f-4892-a0d1-fccee6986538',
    '1',
    '1',
    '112.117.138.73',
    '2021-12-31 09:55:41',
    NULL,
    '',
    '2021-09-05 15:21:33',
    '',
    NULL,
    NULL
  );
COMMIT;
-- ----------------------------
  -- Table structure for sys_user_role
  -- ----------------------------
  DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
    `user_id` bigint(20) NOT NULL COMMENT '用户ID',
    `role_id` bigint(20) NOT NULL COMMENT '角色ID',
    PRIMARY KEY (`user_id`, `role_id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '用户和角色关联表';
-- ----------------------------
  -- Records of sys_user_role
  -- ----------------------------
  BEGIN;
INSERT INTO
  `sys_user_role`
VALUES
  (1, 1);
COMMIT;
-- ----------------------------
  -- Table structure for t_cmd_log
  -- ----------------------------
  DROP TABLE IF EXISTS `t_cmd_log`;
CREATE TABLE `t_cmd_log` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '指令类型',
    `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '指令状态 0 下发中 1 完成',
    `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'MAC地址',
    `param` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '指令参数',
    `job_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务ID',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_cmd_log
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_combo
  -- ----------------------------
  DROP TABLE IF EXISTS `t_combo`;
CREATE TABLE `t_combo` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
    `date_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日期类型',
    `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组ID',
    `multiple` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '倍数',
    `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
    `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
    `del_flag` tinyint(2) NOT NULL DEFAULT '1',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `idx_` (`date_type`, `group_id`, `del_flag`, `multiple`) USING BTREE COMMENT '唯一索引'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_combo
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_custom_field
  -- ----------------------------
  DROP TABLE IF EXISTS `t_custom_field`;
CREATE TABLE `t_custom_field` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `Is_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '是否默认',
    `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 出租页面',
    `fields` json NOT NULL COMMENT '字段',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_custom_field
  -- ----------------------------
  BEGIN;
INSERT INTO
  `t_custom_field`
VALUES
  (
    '1451893339538018305',
    '1',
    1,
    '[\"{\\\"children\\\":[],\\\"key\\\":\\\"status\\\",\\\"desc\\\":\\\"状态\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"groupName\\\",\\\"desc\\\":\\\"分区\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"name\\\",\\\"desc\\\":\\\"计算机名\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"ip\\\",\\\"desc\\\":\\\"ip地址\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"mac\\\",\\\"desc\\\":\\\"MAC地址\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"rentalTime\\\",\\\"desc\\\":\\\"出租时间\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"bootUpTime\\\",\\\"desc\\\":\\\"上机时间\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"endTime\\\",\\\"desc\\\":\\\"到期时间\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"useTimeLong\\\",\\\"desc\\\":\\\"使用时长\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"quantity\\\",\\\"desc\\\":\\\"数量\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"discountPrice\\\",\\\"desc\\\":\\\"折扣价格\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"payMoney\\\",\\\"desc\\\":\\\"实际付款\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"giveMoney\\\",\\\"desc\\\":\\\"本机赠送\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"memberName\\\",\\\"desc\\\":\\\"用户名\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"discount\\\",\\\"desc\\\":\\\"折扣\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"balanceMoney\\\",\\\"desc\\\":\\\"余额\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"memberLevelName\\\",\\\"desc\\\":\\\"会员等级\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"dateType\\\",\\\"desc\\\":\\\"套餐\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"price\\\",\\\"desc\\\":\\\"价格\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"gateway\\\",\\\"desc\\\":\\\"网关\\\",\\\"status\\\":\\\"1\\\"}\", \"{\\\"children\\\":[],\\\"key\\\":\\\"remark\\\",\\\"desc\\\":\\\"备注\\\",\\\"status\\\":\\\"1\\\"}\"]',
    '',
    '2021-10-23 20:48:43'
  );
COMMIT;
-- ----------------------------
  -- Table structure for t_main_frame
  -- ----------------------------
  DROP TABLE IF EXISTS `t_main_frame`;
CREATE TABLE `t_main_frame` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
    `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '分组ID',
    `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '网关',
    `rental_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 0 未 1 锁定 2 使用',
    `connect_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 0 未 1 已',
    `fault_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 0 未 1 已',
    `fault_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '故障原因',
    `first_dns` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `two_dns` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `subnet_mask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `del_flag` tinyint(2) NOT NULL DEFAULT '1',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_main_frame
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_main_frame_group
  -- ----------------------------
  DROP TABLE IF EXISTS `t_main_frame_group`;
CREATE TABLE `t_main_frame_group` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
    `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'cpu',
    `kernel_num` int(11) DEFAULT NULL COMMENT '内核',
    `thread_num` int(11) DEFAULT NULL COMMENT '线程数',
    `main_frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '主频',
    `memory` int(11) DEFAULT NULL COMMENT '内存 G',
    `graphics_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '显卡',
    `video_memory` int(255) DEFAULT NULL COMMENT '显存 G',
    `ssd` int(11) DEFAULT NULL COMMENT '固态硬盘',
    `hdd` int(11) DEFAULT NULL COMMENT '机械硬盘',
    `up_bandwidth` int(11) DEFAULT NULL COMMENT '上行带宽',
    `down_bandwidth` int(11) DEFAULT NULL COMMENT '下行带宽',
    `del_flag` tinyint(255) NOT NULL DEFAULT '1',
    `sort` int(11) NOT NULL DEFAULT '0',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_main_frame_group
  -- ----------------------------
  BEGIN;
INSERT INTO
  `t_main_frame_group` (
    `id`,
    `name`,
    `cpu`,
    `kernel_num`,
    `thread_num`,
    `main_frequency`,
    `memory`,
    `graphics_card`,
    `video_memory`,
    `ssd`,
    `hdd`,
    `up_bandwidth`,
    `down_bandwidth`,
    `del_flag`,
    `sort`,
    `remark`,
    `create_time`,
    `creator`,
    `update_time`,
    `updater`
  )
VALUES
  (
    '1',
    '默认分组',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    NULL,
    '2021-10-14 19:17:58',
    NULL,
    NULL,
    NULL
  );
COMMIT;
-- ----------------------------
  -- Table structure for t_main_frame_rental
  -- ----------------------------
  DROP TABLE IF EXISTS `t_main_frame_rental`;
CREATE TABLE `t_main_frame_rental` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `orderly_id` int(11) NOT NULL AUTO_INCREMENT,
    `main_frame_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主机ID',
    `trade_record_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '订单ID',
    `member_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '帐号ID',
    `multiple` int(11) DEFAULT NULL COMMENT '倍数',
    `date_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '套餐类型',
    `price` int(11) NOT NULL COMMENT '价格 /分',
    `discount` decimal(11, 2) NOT NULL DEFAULT '1.00' COMMENT '折扣',
    `discount_price` int(11) NOT NULL DEFAULT '0' COMMENT '折扣完需要支付的价格',
    `boot_up_time` datetime DEFAULT NULL COMMENT '上机时间',
    `end_time` datetime DEFAULT NULL COMMENT '到期时间',
    `pay_way` tinyint(2) NOT NULL COMMENT '付款方式 1 线下付款 2余额付款 3 混合',
    `pay_money` int(11) NOT NULL COMMENT '支付金额',
    `give_money` int(11) NOT NULL DEFAULT '0' COMMENT '赠送金额',
    `quantity` int(1) NOT NULL DEFAULT '1' COMMENT '数量',
    `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 上机 2 退机 3 换机 4 到期',
    `is_history` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 正常 1 历史',
    `down_time` datetime DEFAULT NULL COMMENT '下机时间',
    `use_money` int(11) DEFAULT NULL COMMENT '使用金额',
    `del_flag` tinyint(1) NOT NULL DEFAULT '1',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `orderly_id` (`orderly_id`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 580 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_main_frame_rental
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_member
  -- ----------------------------
  DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '来源',
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '会员名称',
    `id_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '证件名称',
    `id_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '证件编号',
    `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
    `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
    `recharge_way` tinyint(2) NOT NULL DEFAULT '0' COMMENT '充值方式 0 客服 1 自助',
    `recharge_money` int(11) NOT NULL DEFAULT '0' COMMENT '充值金额',
    `withdraw_money` int(11) NOT NULL DEFAULT '0' COMMENT '提现金额',
    `give_money` int(11) NOT NULL DEFAULT '0' COMMENT '赠送金额',
    `consumption_money` int(11) NOT NULL DEFAULT '0' COMMENT '消费金额',
    `balance_money` int(11) NOT NULL DEFAULT '0' COMMENT '余额',
    `level` tinyint(2) NOT NULL DEFAULT '0' COMMENT '会员等级',
    `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
    `discount_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '折扣类型 1 正常 2 自定义',
    `discount` decimal(11, 2) NOT NULL DEFAULT '1.00' COMMENT '折扣',
    `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'qq',
    `wx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '微信',
    `is_verified` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 是否实名认证 0 未 1 手机 2 身份证',
    `is_read_user_agreement` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否阅读用户协议0 未 1 有',
    `init` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否初始化数据 0 不是 1 是',
    `certify_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '实名认证的ID，授权系统返回',
    `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
    `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 正常 0 禁用',
    `del_flag` tinyint(2) NOT NULL DEFAULT '1' COMMENT '逻辑删除 1 正常 0 删除',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_member
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_member_level
  -- ----------------------------
  DROP TABLE IF EXISTS `t_member_level`;
CREATE TABLE `t_member_level` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
    `status` tinyint(1) NOT NULL COMMENT ' 0 停用 1 启用',
    `level` tinyint(2) NOT NULL DEFAULT '1' COMMENT '会员等级',
    `integral_min` int(11) NOT NULL DEFAULT '0' COMMENT '积分小值',
    `integral_max` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
    `discount` decimal(11, 2) NOT NULL COMMENT '折扣',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1.0' COMMENT '备注',
    `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
    `del_flag` tinyint(2) NOT NULL DEFAULT '1' COMMENT '逻辑删除 1 正常 0 删除',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_member_level
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_message
  -- ----------------------------
  DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
    `id` bigint(20) NOT NULL,
    `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'OPERATION',
    `source` tinyint(2) NOT NULL DEFAULT '1' COMMENT '来源 1 操作主机记录 2 客户端系统回调',
    `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息内容',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息时间',
    `data` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '结构化数据',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_message
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_sys_config
  -- ----------------------------
  DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数key',
    `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数值',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_sys_config
  -- ----------------------------
  BEGIN;
INSERT INTO
  `t_sys_config`
VALUES
  (
    '1437720200302112770',
    '积分换算规则',
    NULL,
    'MEMBER_INTEGRAL',
    '10'
  );
INSERT INTO
  `t_sys_config`
VALUES
  (
    '1440552118439141378',
    NULL,
    NULL,
    'RENTAL_FIELD',
    '[{\"key\":\"\",\n\"desc\":\"设备信息\",\n\"status\":\"1\",\n\"children\":[\n{\"key\":\"\",\n\"desc\":\"计算机信息\",\n\"status\":\"1\",\n\"children\":[\n{\"key\":\"name\",\n\"desc\":\"计算机名\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"ip\",\n\"desc\":\"ip地址\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"subnetMask\",\n\"desc\":\"子网掩码\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"gateway\",\n\"desc\":\"网关\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"firstDns\",\n\"desc\":\"首选DNS\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"twoDns\",\n\"desc\":\"备选DNS\",\n\"status\":\"1\",\n\"children\":[]}]},\n\n{\"key\":\"\",\n\"desc\":\"硬件信息\",\n\"status\":\"1\",\n\"children\":[\n{\"key\":\"mac\",\n\"desc\":\"MAC地址\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"cpu\",\n\"desc\":\"CPU型号\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"mainFrequency\",\n\"desc\":\"主板型号\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"memory\",\n\"desc\":\"内存大小\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"graphicsCard\",\n\"desc\":\"显卡型号\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"mainNetworkCard\",\n\"desc\":\"主网卡型号\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"ssdModel\",\n\"desc\":\"SSD型号\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"hddModel\",\n\"desc\":\"HDD型号\",\n\"status\":\"0\",\n\"children\":[]}]},\n\n{\"key\":\"\",\n\"desc\":\"系统状态信息\",\n\"status\":\"1\",\n\"children\":[{\"key\":\"cpuTemperature\",\n\"desc\":\"CPU温度\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"cpuUsage\",\n\"desc\":\"CPU使用率\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"graphicsCardTemperature\",\n\"desc\":\"显卡温度\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"graphicsCardUsage\",\n\"desc\":\"显卡使用率\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"chipsetTemperature\",\n\"desc\":\"芯片组温度\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"memoryUsage\",\n\"desc\":\"已用内存\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"diskUsage\",\n\"desc\":\"磁盘使用率\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"diskSpeed\",\n\"desc\":\"磁盘读写速度\",\n\"status\":\"0\",\n\"children\":[]}\n]},\n\n{\"key\":\"\",\n\"desc\":\"其它状态信息\",\n\"status\":\"1\",\n\"children\":[\n\n{\"key\":\"autoSystem\",\n\"desc\":\"自动重装系统\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"manageName\",\n\"desc\":\"管理主机名\",\n\"status\":\"0\",\n\"children\":[]},\n\n{\"key\":\"manageNetwork\",\n\"desc\":\"管理网络信息\",\n\"status\":\"0\",\n\"children\":[]}\n]}\n]},\n{\"key\":\"\",\n\"desc\":\"出租信息\",\n\"status\":\"1\",\n\"children\":[{\"key\":\"\",\n\"desc\":\"主机信息\",\n\"status\":\"1\",\n\"children\":[{\"key\":\"status\",\n\"desc\":\"状态\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"groupName\",\n\"desc\":\"分区\",\n\"status\":\"1\",\n\"children\":[]\n}\n]},\n\n{\"key\":\"\",\n\"desc\":\"出租信息\",\n\"status\":\"1\",\n\"children\":[\n\n{\"key\":\"rentalTime\",\n\"desc\":\"出租时间\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"bootUpTime\",\n\"desc\":\"上机时间\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"endTime\",\n\"desc\":\"到期时间\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"useTimeLong\",\n\"desc\":\"使用时长\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"dateType\",\n\"desc\":\"套餐\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"price\",\n\"desc\":\"价格\",\n\"status\":\"1\",\n\"children\":[]\n},\n\n{\"key\":\"quantity\",\n\"desc\":\"数量\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"discountPrice\",\n\"desc\":\"折扣价格\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"payMoney\",\n\"desc\":\"实际付款\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"giveMoney\",\n\"desc\":\"本机赠送\",\n\"status\":\"1\",\n\"children\":[]},\n{\"key\":\"remark\",\n\"desc\":\"备注\",\n\"status\":\"1\",\n\"children\":[]}\n]},\n\n{\"key\":\"\",\n\"desc\":\"账户信息\",\n\"status\":\"1\",\n\"children\":[\n\n{\"key\":\"memberName\",\n\"desc\":\"用户名\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"discount\",\n\"desc\":\"折扣\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"balanceMoney\",\n\"desc\":\"余额\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"consumptionMoney\",\n\"desc\":\"消费金额\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"totalGiveMoney\",\n\"desc\":\"累计赠送\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"registrationTime\",\n\"desc\":\"开户时间\",\n\"status\":\"1\",\n\"children\":[]\n},\n\n{\"key\":\"memberLevelName\",\n\"desc\":\"会员等级\",\n\"status\":\"1\",\n\"children\":[]\n},\n{\"key\":\"isVerified\",\n\"desc\":\"实名状态\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"isReadUserAgreement\",\n\"desc\":\"用户协议\",\n\"status\":\"1\",\n\"children\":[]\n}\n\n\n]},\n\n{\"key\":\"\",\n\"desc\":\"其它信息\",\n\"status\":\"1\",\n\"children\":[\n{\"key\":\"payWay\",\n\"desc\":\"付款方式\",\n\"status\":\"1\",\n\"children\":[]},\n\n{\"key\":\"rentalUserName\",\n\"desc\":\"出租员\",\n\"status\":\"1\",\n\"children\":[]\n}\n\n]}]}\n]'
  );
INSERT INTO
  `t_sys_config`
VALUES
  (
    '1475190087451971586',
    NULL,
    NULL,
    'PAGE_SIZES',
    '[10,20,30,50,100,200,500,1000,1500,2000]'
  );
COMMIT;
-- ----------------------------
  -- Table structure for t_system_version
  -- ----------------------------
  DROP TABLE IF EXISTS `t_system_version`;
CREATE TABLE `t_system_version` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '下载url',
    `md5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文件md5值',
    `sys_version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '系统版本号',
    `force_update` tinyint(2) NOT NULL COMMENT '0 不强制更新 1 强制更新',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_system_version
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_trade_record
  -- ----------------------------
  DROP TABLE IF EXISTS `t_trade_record`;
CREATE TABLE `t_trade_record` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `member_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '会员ID',
    `combo_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '套餐ID',
    `date_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '套餐类型',
    `multiple` int(2) DEFAULT NULL COMMENT '倍数',
    `main_frame_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '主机ID',
    `quantity` int(11) NOT NULL DEFAULT '1' COMMENT '数量1',
    `buy_way` tinyint(2) NOT NULL DEFAULT '2' COMMENT '1 抵扣购买 2 叠加购买',
    `pay_way` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 客服 1 自助',
    `pay_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 收入 2 支出',
    `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交易类型',
    `amount` int(11) NOT NULL DEFAULT '0' COMMENT '支付金额',
    `give_amount` int(11) NOT NULL DEFAULT '0' COMMENT '赠送金额',
    `before_balance_money` int(11) NOT NULL DEFAULT '0',
    `after_balance_money` int(11) NOT NULL DEFAULT '0',
    `balance_amount` int(11) NOT NULL DEFAULT '0' COMMENT '混合时余额支付金额',
    `pay_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 待支付 1 交易关闭 2 已经支付 3 交易成功',
    `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `updater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_trade_record
  -- ----------------------------
  BEGIN;
COMMIT;
-- ----------------------------
  -- Table structure for t_trade_record_info
  -- ----------------------------
  DROP TABLE IF EXISTS `t_trade_record_info`;
CREATE TABLE `t_trade_record_info` (
    `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `trade_record_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单ID',
    `main_frame_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主机ID',
    `amount` int(11) NOT NULL DEFAULT '0' COMMENT '支付金额',
    `give_amount` int(11) NOT NULL DEFAULT '0' COMMENT '赠送金额',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
  -- Records of t_trade_record_info
  -- ----------------------------
  BEGIN;
COMMIT;
SET
  FOREIGN_KEY_CHECKS = 1;