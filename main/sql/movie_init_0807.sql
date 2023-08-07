/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.7.30-0ubuntu0.16.04.1 : Database - movie_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `movie_test`;

/*Table structure for table `QRTZ_BLOB_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

/*Data for the table `QRTZ_BLOB_TRIGGERS` */

/*Table structure for table `QRTZ_CALENDARS` */

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;

CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

/*Data for the table `QRTZ_CALENDARS` */

/*Table structure for table `QRTZ_CRON_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

/*Data for the table `QRTZ_CRON_TRIGGERS` */

/*Table structure for table `QRTZ_FIRED_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

/*Data for the table `QRTZ_FIRED_TRIGGERS` */

/*Table structure for table `QRTZ_JOB_DETAILS` */

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

/*Data for the table `QRTZ_JOB_DETAILS` */

/*Table structure for table `QRTZ_LOCKS` */

DROP TABLE IF EXISTS `QRTZ_LOCKS`;

CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

/*Data for the table `QRTZ_LOCKS` */

/*Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS` */

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

/*Data for the table `QRTZ_PAUSED_TRIGGER_GRPS` */

/*Table structure for table `QRTZ_SCHEDULER_STATE` */

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

/*Data for the table `QRTZ_SCHEDULER_STATE` */

/*Table structure for table `QRTZ_SIMPLE_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

/*Data for the table `QRTZ_SIMPLE_TRIGGERS` */

/*Table structure for table `QRTZ_SIMPROP_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

/*Data for the table `QRTZ_SIMPROP_TRIGGERS` */

/*Table structure for table `QRTZ_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;

CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

/*Data for the table `QRTZ_TRIGGERS` */

/*Table structure for table `be_banner` */

DROP TABLE IF EXISTS `be_banner`;

CREATE TABLE `be_banner` (
  `banner_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `image_url` varchar(128) DEFAULT NULL COMMENT '图片地址',
  `page` varchar(32) DEFAULT NULL COMMENT '页面open 开屏 index 首页 list 列表  detail  详情页 my 我的',
  `areas` varchar(32) DEFAULT NULL COMMENT '区域',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `show_num` tinyint(4) DEFAULT NULL COMMENT '展示几秒',
  `stint` tinyint(4) DEFAULT NULL COMMENT '是否限制 0否 1是',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `url` varchar(256) DEFAULT NULL COMMENT '跳转url',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0关闭 1开启',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

/*Data for the table `be_banner` */

/*Table structure for table `be_contact` */

DROP TABLE IF EXISTS `be_contact`;

CREATE TABLE `be_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `exchange_group` varchar(32) DEFAULT NULL COMMENT '交流群',
  `group_type` varchar(16) DEFAULT NULL COMMENT '群类别',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='联系我们';

/*Data for the table `be_contact` */

/*Table structure for table `be_domain` */

DROP TABLE IF EXISTS `be_domain`;

CREATE TABLE `be_domain` (
  `domain_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'domain_id',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `domain` varchar(64) DEFAULT NULL COMMENT '域名',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`domain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='域名列表';

/*Data for the table `be_domain` */

/*Table structure for table `be_version` */

DROP TABLE IF EXISTS `be_version`;

CREATE TABLE `be_version` (
  `version_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '版本id',
  `version_type` varchar(16) DEFAULT NULL COMMENT '版本类型',
  `version_name` varchar(32) DEFAULT NULL COMMENT '版本名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `version_url` varchar(256) DEFAULT NULL COMMENT '下载地址',
  `version_desc` varchar(512) DEFAULT NULL COMMENT '更新描述',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='版本';

/*Data for the table `be_version` */

/*Table structure for table `be_web_site` */

DROP TABLE IF EXISTS `be_web_site`;

CREATE TABLE `be_web_site` (
  `web_site_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'web_site_id',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `logo` varchar(256) DEFAULT NULL COMMENT 'logo',
  `intro` varchar(128) DEFAULT NULL COMMENT '简介',
  `domain` varchar(128) DEFAULT NULL COMMENT '域名',
  `share_text` varchar(128) DEFAULT NULL COMMENT '分享文字',
  `email` varchar(64) DEFAULT NULL COMMENT '联系邮箱',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`web_site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='站点设置';

/*Data for the table `be_web_site` */

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

/*Table structure for table `mr_collect` */

DROP TABLE IF EXISTS `mr_collect`;

CREATE TABLE `mr_collect` (
  `collect_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'collect_id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `titles` varchar(64) DEFAULT NULL COMMENT '影片名称-冗余',
  `img` varchar(512) DEFAULT NULL COMMENT '影片图片-冗余',
  `movie_resource_id` bigint(20) DEFAULT NULL COMMENT 'movie_resource_id',
  `extra2_id` bigint(20) DEFAULT NULL COMMENT '扩展(其他2)id',
  `extra1_id` bigint(20) DEFAULT NULL COMMENT '扩展(其他)id',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`collect_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='我的收藏';

/*Data for the table `mr_collect` */

/*Table structure for table `mr_down` */

DROP TABLE IF EXISTS `mr_down`;

CREATE TABLE `mr_down` (
  `down_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'down_id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `img` varchar(256) DEFAULT NULL COMMENT '封面-冗余',
  `titles` varchar(64) DEFAULT NULL COMMENT '影片名称',
  `movie_resource_id` bigint(20) DEFAULT NULL COMMENT 'movie_resource_id',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`down_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='我的下载';

/*Data for the table `mr_down` */

/*Table structure for table `mr_feedback` */

DROP TABLE IF EXISTS `mr_feedback`;

CREATE TABLE `mr_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `types` tinyint(4) DEFAULT NULL COMMENT '类型',
  `content` varchar(512) DEFAULT NULL COMMENT '内容',
  `attachment` varchar(256) DEFAULT NULL COMMENT '附件',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='反馈信息';

/*Data for the table `mr_feedback` */

/*Table structure for table `mr_member` */

DROP TABLE IF EXISTS `mr_member`;

CREATE TABLE `mr_member` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'member_id',
  `parent_id` varchar(128) DEFAULT NULL COMMENT '所有上级id',
  `no` varchar(32) DEFAULT NULL COMMENT '编号',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '昵称',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `phone_num` varchar(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `security_code` varchar(32) DEFAULT NULL COMMENT '安全码',
  `share_code` varchar(32) DEFAULT NULL COMMENT '分享码',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='会员';

/*Data for the table `mr_member` */

/*Table structure for table `mr_member_num` */

DROP TABLE IF EXISTS `mr_member_num`;

CREATE TABLE `mr_member_num` (
  `num_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `member_id` varchar(128) DEFAULT NULL COMMENT '会员id',
  `total_num` int(11) DEFAULT '0' COMMENT '总次数',
  `play_num` int(11) DEFAULT '0' COMMENT '已使用次数',
  `last_share` datetime DEFAULT NULL COMMENT '最后一次分享时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`num_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='会员';

/*Data for the table `mr_member_num` */

/*Table structure for table `mr_member_vip` */

DROP TABLE IF EXISTS `mr_member_vip`;

CREATE TABLE `mr_member_vip` (
  `member_vip_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'member_vip_id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `vip_level` tinyint(4) DEFAULT NULL COMMENT 'vip 等级',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`member_vip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='会员vip';

/*Data for the table `mr_member_vip` */

/*Table structure for table `mr_play` */

DROP TABLE IF EXISTS `mr_play`;

CREATE TABLE `mr_play` (
  `play_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'play_id',
  `category_id` bigint(20) DEFAULT NULL COMMENT '类目id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `img` varchar(256) DEFAULT NULL COMMENT '影片封面',
  `titles` varchar(64) DEFAULT NULL COMMENT '影片名称',
  `movie_resource_id` bigint(20) DEFAULT NULL COMMENT 'movie_resource_id',
  `play_time` int(11) DEFAULT NULL COMMENT '播放时长',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`play_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='播放记录';

/*Data for the table `mr_play` */

/*Table structure for table `mr_search_history` */

DROP TABLE IF EXISTS `mr_search_history`;

CREATE TABLE `mr_search_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `member_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `search` varchar(64) DEFAULT NULL COMMENT '搜索词',
  `num` int(11) DEFAULT '0' COMMENT '次数',
  `fire` tinyint(4) DEFAULT '0' COMMENT '是否热搜',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `Refmr_member301` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='搜索历史';

/*Data for the table `mr_search_history` */

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-06-14 15:47:59','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-06-14 15:47:59','',NULL,'初始化密码 123456'),
(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-06-14 15:47:59','',NULL,'深色主题theme-dark，浅色主题theme-light'),
(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2023-06-14 15:47:59','',NULL,'是否开启验证码功能（true开启，false关闭）'),
(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-06-14 15:47:59','',NULL,'是否开启注册用户功能（true开启，false关闭）'),
(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-06-14 15:47:59','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'),
(100,'是否发送验证码','sys.send.verifyCode','0','Y','admin','2023-07-12 19:35:50','',NULL,'0 否 1 是'),
(101,'分享注册添加数','biz_share_num','3','N','admin','2023-07-30 15:39:57','',NULL,NULL),
(102,'每日免费次数','biz_free_num','1','N','admin','2023-07-31 14:13:54','',NULL,NULL),
(103,'短视频显示','biz_video_show','0','N','admin','2023-07-31 14:13:54','admin','2023-08-07 18:51:54','0 不显示 1 显示'),
(104,'探剧显示','biz_explore_show','1','N','admin','2023-07-31 19:35:50','',NULL,'0 不显示 1 显示 默认是需要显示的'),
(105,'探索显示内容','biz_explore_id','9','N','admin','2023-07-31 14:13:54','',NULL,'探索显示内容，填写categoryId,空则按顺序显示 多个请用,分割');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-06-14 15:47:50','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-06-14 15:47:58','',NULL,'性别男'),
(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-06-14 15:47:58','',NULL,'性别女'),
(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-06-14 15:47:58','',NULL,'性别未知'),
(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-06-14 15:47:58','',NULL,'显示菜单'),
(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'隐藏菜单'),
(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-06-14 15:47:58','',NULL,'正常状态'),
(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'停用状态'),
(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-06-14 15:47:58','',NULL,'正常状态'),
(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'停用状态'),
(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-06-14 15:47:58','',NULL,'默认分组'),
(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-06-14 15:47:58','',NULL,'系统分组'),
(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-06-14 15:47:58','',NULL,'系统默认是'),
(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'系统默认否'),
(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-06-14 15:47:58','',NULL,'通知'),
(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-06-14 15:47:58','',NULL,'公告'),
(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-06-14 15:47:58','',NULL,'正常状态'),
(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'关闭状态'),
(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-06-14 15:47:58','',NULL,'其他操作'),
(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-06-14 15:47:58','',NULL,'新增操作'),
(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-06-14 15:47:58','',NULL,'修改操作'),
(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'删除操作'),
(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-06-14 15:47:58','',NULL,'授权操作'),
(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-06-14 15:47:58','',NULL,'导出操作'),
(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-06-14 15:47:58','',NULL,'导入操作'),
(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'强退操作'),
(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-06-14 15:47:58','',NULL,'生成操作'),
(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'清空操作'),
(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-06-14 15:47:58','',NULL,'正常状态'),
(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-06-14 15:47:58','',NULL,'停用状态'),
(100,1,'启用','1','base_status',NULL,'success','N','0','admin','2023-06-15 14:49:41','',NULL,NULL),
(101,2,'停用','0','base_status',NULL,'danger','N','0','admin','2023-06-15 14:50:01','',NULL,NULL),
(102,1,'是','1','base_yes_no',NULL,'success','N','0','admin','2023-06-15 14:50:18','',NULL,NULL),
(103,0,'否','0','base_yes_no',NULL,'danger','N','0','admin','2023-06-15 14:50:31','',NULL,NULL),
(104,1,'安卓','Android','base_app_type',NULL,'primary','N','0','admin','2023-06-15 14:53:20','',NULL,NULL),
(105,2,'苹果','IOS','base_app_type',NULL,'warning','N','0','admin','2023-06-15 14:53:37','admin','2023-06-15 14:53:43',NULL),
(106,1,'微信','wechat','base_group_type',NULL,'default','N','0','admin','2023-06-15 14:56:54','',NULL,NULL),
(107,2,'qq','qq','base_group_type',NULL,'default','N','0','admin','2023-06-15 14:57:08','admin','2023-06-15 14:57:14',NULL),
(108,3,'小飞机','telegram','base_group_type',NULL,'success','N','0','admin','2023-06-15 14:57:47','',NULL,NULL),
(109,1,'开屏','open','biz_ad_page',NULL,'primary','N','0','admin','2023-06-15 15:01:02','',NULL,NULL),
(110,2,'首页','index','biz_ad_page',NULL,'primary','N','0','admin','2023-06-15 15:01:26','',NULL,NULL),
(111,3,'列表','list','biz_ad_page',NULL,'primary','N','0','admin','2023-06-15 15:01:41','',NULL,NULL),
(112,4,'详情页','detail','biz_ad_page',NULL,'primary','N','0','admin','2023-06-15 15:01:56','',NULL,NULL),
(113,5,'我的','my','biz_ad_page',NULL,'primary','N','0','admin','2023-06-15 15:02:11','',NULL,NULL),
(114,1,'综合','1','biz_query_type',NULL,'primary','N','0','admin','2023-06-27 15:57:38','',NULL,NULL),
(115,2,'类型','2','biz_query_type',NULL,'success','N','0','admin','2023-06-27 15:57:48','admin','2023-06-27 16:12:36',NULL),
(116,3,'地区','3','biz_query_type',NULL,'warning','N','0','admin','2023-06-27 15:57:59','admin','2023-06-27 16:12:41',NULL),
(117,4,'年份','4','biz_query_type',NULL,'danger','N','0','admin','2023-06-27 15:58:15','admin','2023-06-27 16:12:45',NULL),
(118,1,'播放类型','1','biz_feedback_type',NULL,'warning','N','0','admin','2023-06-27 19:14:39','admin','2023-06-27 19:15:47',NULL),
(119,2,'集数不全','2','biz_feedback_type',NULL,'warning','N','0','admin','2023-06-27 19:14:53','admin','2023-06-27 19:15:41',NULL),
(120,3,'资源缺失','3','biz_feedback_type',NULL,'danger','N','0','admin','2023-06-27 19:15:06','admin','2023-06-27 19:15:34',NULL),
(121,4,'信息有误','4','biz_feedback_type',NULL,'danger','N','0','admin','2023-06-27 19:15:22','',NULL,NULL),
(122,5,'分类不准','5','biz_feedback_type',NULL,'warning','N','0','admin','2023-06-27 19:16:05','',NULL,NULL),
(123,6,'BUG反馈','6','biz_feedback_type',NULL,'warning','N','0','admin','2023-06-27 19:16:21','',NULL,NULL),
(124,6,'系统消息','sysMsg','biz_ad_page',NULL,'primary','N','0','admin','2023-08-01 15:50:10','admin','2023-08-01 17:31:58',NULL),
(125,7,'收藏页','collect','biz_ad_page',NULL,'primary','N','0','admin','2023-08-01 15:57:32','admin','2023-08-01 17:32:05',NULL),
(126,8,'播放记录','play','biz_ad_page',NULL,'primary','N','0','admin','2023-08-01 17:31:36','admin','2023-08-01 17:32:09',NULL);

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'用户性别','sys_user_sex','0','admin','2023-06-14 15:47:57','',NULL,'用户性别列表'),
(2,'菜单状态','sys_show_hide','0','admin','2023-06-14 15:47:57','',NULL,'菜单状态列表'),
(3,'系统开关','sys_normal_disable','0','admin','2023-06-14 15:47:57','',NULL,'系统开关列表'),
(4,'任务状态','sys_job_status','0','admin','2023-06-14 15:47:57','',NULL,'任务状态列表'),
(5,'任务分组','sys_job_group','0','admin','2023-06-14 15:47:57','',NULL,'任务分组列表'),
(6,'系统是否','sys_yes_no','0','admin','2023-06-14 15:47:57','',NULL,'系统是否列表'),
(7,'通知类型','sys_notice_type','0','admin','2023-06-14 15:47:57','',NULL,'通知类型列表'),
(8,'通知状态','sys_notice_status','0','admin','2023-06-14 15:47:57','',NULL,'通知状态列表'),
(9,'操作类型','sys_oper_type','0','admin','2023-06-14 15:47:57','',NULL,'操作类型列表'),
(10,'系统状态','sys_common_status','0','admin','2023-06-14 15:47:57','',NULL,'登录状态列表'),
(100,'常用状态','base_status','0','admin','2023-06-15 14:46:46','',NULL,NULL),
(101,'常用是否','base_yes_no','0','admin','2023-06-15 14:47:01','',NULL,NULL),
(102,'app类型','base_app_type','0','admin','2023-06-15 14:51:54','admin','2023-06-15 14:52:13',NULL),
(103,'群类别','base_group_type','0','admin','2023-06-15 14:56:29','',NULL,NULL),
(104,'广告页面','biz_ad_page','0','admin','2023-06-15 15:00:32','',NULL,NULL),
(105,'查询类型','biz_query_type','0','admin','2023-06-27 15:57:22','',NULL,NULL),
(106,'反馈类型','biz_feedback_type','0','admin','2023-06-27 19:14:26','',NULL,NULL);

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2129 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,9,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-06-14 15:47:51','admin','2023-06-15 14:36:45','系统管理目录'),
(2,'系统监控',0,10,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-06-14 15:47:51','admin','2023-06-15 14:36:39','系统监控目录'),
(3,'系统工具',0,11,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2023-06-14 15:47:51','admin','2023-06-15 14:36:33','系统工具目录'),
(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2023-06-14 15:47:51','',NULL,'用户管理菜单'),
(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2023-06-14 15:47:51','',NULL,'角色管理菜单'),
(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2023-06-14 15:47:51','',NULL,'菜单管理菜单'),
(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2023-06-14 15:47:51','',NULL,'部门管理菜单'),
(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2023-06-14 15:47:51','',NULL,'岗位管理菜单'),
(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2023-06-14 15:47:51','',NULL,'字典管理菜单'),
(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2023-06-14 15:47:51','',NULL,'参数设置菜单'),
(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2023-06-14 15:47:51','',NULL,'通知公告菜单'),
(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2023-06-14 15:47:51','',NULL,'日志管理菜单'),
(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2023-06-14 15:47:51','',NULL,'在线用户菜单'),
(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2023-06-14 15:47:51','',NULL,'定时任务菜单'),
(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2023-06-14 15:47:51','',NULL,'数据监控菜单'),
(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2023-06-14 15:47:51','',NULL,'服务监控菜单'),
(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2023-06-14 15:47:51','',NULL,'缓存监控菜单'),
(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2023-06-14 15:47:51','',NULL,'缓存列表菜单'),
(115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2023-06-14 15:47:51','',NULL,'表单构建菜单'),
(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2023-06-14 15:47:51','',NULL,'代码生成菜单'),
(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2023-06-14 15:47:51','',NULL,'系统接口菜单'),
(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2023-06-14 15:47:51','',NULL,'操作日志菜单'),
(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2023-06-14 15:47:52','',NULL,'登录日志菜单'),
(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2023-06-14 15:47:52','',NULL,''),
(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2023-06-14 15:47:52','',NULL,''),
(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2023-06-14 15:47:52','',NULL,''),
(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2023-06-14 15:47:52','',NULL,''),
(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2023-06-14 15:47:52','',NULL,''),
(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2023-06-14 15:47:52','',NULL,''),
(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2023-06-14 15:47:52','',NULL,''),
(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2023-06-14 15:47:52','',NULL,''),
(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2023-06-14 15:47:52','',NULL,''),
(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2023-06-14 15:47:53','',NULL,''),
(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2023-06-14 15:47:53','',NULL,''),
(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2023-06-14 15:47:53','',NULL,''),
(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2023-06-14 15:47:53','',NULL,''),
(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2023-06-14 15:47:53','',NULL,''),
(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2023-06-14 15:47:53','',NULL,''),
(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2023-06-14 15:47:53','',NULL,''),
(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2023-06-14 15:47:53','',NULL,''),
(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2023-06-14 15:47:53','',NULL,''),
(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2023-06-14 15:47:53','',NULL,''),
(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2023-06-14 15:47:53','',NULL,''),
(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2023-06-14 15:47:53','',NULL,''),
(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2023-06-14 15:47:53','',NULL,''),
(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2023-06-14 15:47:53','',NULL,''),
(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2023-06-14 15:47:53','',NULL,''),
(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2023-06-14 15:47:53','',NULL,''),
(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2023-06-14 15:47:53','',NULL,''),
(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2023-06-14 15:47:53','',NULL,''),
(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2023-06-14 15:47:53','',NULL,''),
(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2023-06-14 15:47:54','',NULL,''),
(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2023-06-14 15:47:54','',NULL,''),
(2000,'基础设置',0,8,'base',NULL,NULL,1,0,'M','0','0',NULL,'drag','admin','2023-06-15 14:37:31','',NULL,''),
(2001,'会员管理',0,7,'member',NULL,NULL,1,0,'M','0','0',NULL,'user','admin','2023-06-15 14:38:07','',NULL,''),
(2002,'影片管理',0,6,'movie',NULL,NULL,1,0,'M','0','0',NULL,'international','admin','2023-06-15 14:39:27','',NULL,''),
(2003,'站点设置',2000,1,'webSite','movie/webSite/index',NULL,1,0,'C','0','0','movie:webSite:list','#','admin','2023-06-15 15:19:58','',NULL,'站点设置菜单'),
(2004,'站点设置查询',2003,1,'#','',NULL,1,0,'F','0','0','movie:webSite:query','#','admin','2023-06-15 15:19:58','',NULL,''),
(2005,'站点设置新增',2003,2,'#','',NULL,1,0,'F','0','0','movie:webSite:add','#','admin','2023-06-15 15:19:58','',NULL,''),
(2006,'站点设置修改',2003,3,'#','',NULL,1,0,'F','0','0','movie:webSite:edit','#','admin','2023-06-15 15:19:58','',NULL,''),
(2007,'站点设置删除',2003,4,'#','',NULL,1,0,'F','0','0','movie:webSite:remove','#','admin','2023-06-15 15:19:58','',NULL,''),
(2008,'站点设置导出',2003,5,'#','',NULL,1,0,'F','0','0','movie:webSite:export','#','admin','2023-06-15 15:19:58','',NULL,''),
(2009,'联系我们',2000,1,'contact','movie/contact/index',NULL,1,0,'C','0','0','movie:contact:list','#','admin','2023-06-15 15:20:08','',NULL,'联系我们菜单'),
(2010,'联系我们查询',2009,1,'#','',NULL,1,0,'F','0','0','movie:contact:query','#','admin','2023-06-15 15:20:08','',NULL,''),
(2011,'联系我们新增',2009,2,'#','',NULL,1,0,'F','0','0','movie:contact:add','#','admin','2023-06-15 15:20:08','',NULL,''),
(2012,'联系我们修改',2009,3,'#','',NULL,1,0,'F','0','0','movie:contact:edit','#','admin','2023-06-15 15:20:08','',NULL,''),
(2013,'联系我们删除',2009,4,'#','',NULL,1,0,'F','0','0','movie:contact:remove','#','admin','2023-06-15 15:20:08','',NULL,''),
(2014,'联系我们导出',2009,5,'#','',NULL,1,0,'F','0','0','movie:contact:export','#','admin','2023-06-15 15:20:08','',NULL,''),
(2015,'App版本',2000,1,'version','movie/version/index',NULL,1,0,'C','0','0','movie:version:list','#','admin','2023-06-15 15:20:16','admin','2023-06-15 16:32:11','版本菜单'),
(2016,'版本查询',2015,1,'#','',NULL,1,0,'F','0','0','movie:version:query','#','admin','2023-06-15 15:20:16','',NULL,''),
(2017,'版本新增',2015,2,'#','',NULL,1,0,'F','0','0','movie:version:add','#','admin','2023-06-15 15:20:16','',NULL,''),
(2018,'版本修改',2015,3,'#','',NULL,1,0,'F','0','0','movie:version:edit','#','admin','2023-06-15 15:20:16','',NULL,''),
(2019,'版本删除',2015,4,'#','',NULL,1,0,'F','0','0','movie:version:remove','#','admin','2023-06-15 15:20:16','',NULL,''),
(2020,'版本导出',2015,5,'#','',NULL,1,0,'F','0','0','movie:version:export','#','admin','2023-06-15 15:20:16','',NULL,''),
(2021,'广告图',2000,1,'banner','movie/banner/index',NULL,1,0,'C','0','0','movie:banner:list','#','admin','2023-06-15 15:20:26','admin','2023-06-15 16:32:23','轮播图菜单'),
(2022,'轮播图查询',2021,1,'#','',NULL,1,0,'F','0','0','movie:banner:query','#','admin','2023-06-15 15:20:26','',NULL,''),
(2023,'轮播图新增',2021,2,'#','',NULL,1,0,'F','0','0','movie:banner:add','#','admin','2023-06-15 15:20:26','',NULL,''),
(2024,'轮播图修改',2021,3,'#','',NULL,1,0,'F','0','0','movie:banner:edit','#','admin','2023-06-15 15:20:26','',NULL,''),
(2025,'轮播图删除',2021,4,'#','',NULL,1,0,'F','0','0','movie:banner:remove','#','admin','2023-06-15 15:20:26','',NULL,''),
(2026,'轮播图导出',2021,5,'#','',NULL,1,0,'F','0','0','movie:banner:export','#','admin','2023-06-15 15:20:26','',NULL,''),
(2027,'标签',2002,12,'tags','movie/tags/index',NULL,1,0,'C','0','0','movie:tags:list','#','admin','2023-06-15 20:20:16','admin','2023-06-27 20:39:14','标签菜单'),
(2028,'标签查询',2027,1,'#','',NULL,1,0,'F','0','0','movie:tags:query','#','admin','2023-06-15 20:20:16','',NULL,''),
(2029,'标签新增',2027,2,'#','',NULL,1,0,'F','0','0','movie:tags:add','#','admin','2023-06-15 20:20:16','',NULL,''),
(2030,'标签修改',2027,3,'#','',NULL,1,0,'F','0','0','movie:tags:edit','#','admin','2023-06-15 20:20:16','',NULL,''),
(2031,'标签删除',2027,4,'#','',NULL,1,0,'F','0','0','movie:tags:remove','#','admin','2023-06-15 20:20:16','',NULL,''),
(2032,'标签导出',2027,5,'#','',NULL,1,0,'F','0','0','movie:tags:export','#','admin','2023-06-15 20:20:16','',NULL,''),
(2033,'类别',2002,11,'category','movie/category/index',NULL,1,0,'C','0','0','movie:category:list','#','admin','2023-06-15 20:42:08','admin','2023-06-27 20:39:07','类别菜单'),
(2034,'类别查询',2033,1,'#','',NULL,1,0,'F','0','0','movie:category:query','#','admin','2023-06-15 20:42:08','',NULL,''),
(2035,'类别新增',2033,2,'#','',NULL,1,0,'F','0','0','movie:category:add','#','admin','2023-06-15 20:42:08','',NULL,''),
(2036,'类别修改',2033,3,'#','',NULL,1,0,'F','0','0','movie:category:edit','#','admin','2023-06-15 20:42:08','',NULL,''),
(2037,'类别删除',2033,4,'#','',NULL,1,0,'F','0','0','movie:category:remove','#','admin','2023-06-15 20:42:08','',NULL,''),
(2038,'类别导出',2033,5,'#','',NULL,1,0,'F','0','0','movie:category:export','#','admin','2023-06-15 20:42:08','',NULL,''),
(2039,'分类',2002,9,'classify','movie/classify/index',NULL,1,0,'C','0','0','movie:classify:list','#','admin','2023-06-15 20:42:19','admin','2023-06-27 20:39:46','分类菜单'),
(2040,'分类查询',2039,1,'#','',NULL,1,0,'F','0','0','movie:classify:query','#','admin','2023-06-15 20:42:19','',NULL,''),
(2041,'分类新增',2039,2,'#','',NULL,1,0,'F','0','0','movie:classify:add','#','admin','2023-06-15 20:42:19','',NULL,''),
(2042,'分类修改',2039,3,'#','',NULL,1,0,'F','0','0','movie:classify:edit','#','admin','2023-06-15 20:42:19','',NULL,''),
(2043,'分类删除',2039,4,'#','',NULL,1,0,'F','0','0','movie:classify:remove','#','admin','2023-06-15 20:42:19','',NULL,''),
(2044,'分类导出',2039,5,'#','',NULL,1,0,'F','0','0','movie:classify:export','#','admin','2023-06-15 20:42:19','',NULL,''),
(2045,'影片',2002,1,'movie','movie/movie/index',NULL,1,0,'C','0','0','movie:movie:list','#','admin','2023-06-15 20:42:47','',NULL,'影片菜单'),
(2046,'影片查询',2045,1,'#','',NULL,1,0,'F','0','0','movie:movie:query','#','admin','2023-06-15 20:42:47','',NULL,''),
(2047,'影片新增',2045,2,'#','',NULL,1,0,'F','0','0','movie:movie:add','#','admin','2023-06-15 20:42:47','',NULL,''),
(2048,'影片修改',2045,3,'#','',NULL,1,0,'F','0','0','movie:movie:edit','#','admin','2023-06-15 20:42:47','',NULL,''),
(2049,'影片删除',2045,4,'#','',NULL,1,0,'F','0','0','movie:movie:remove','#','admin','2023-06-15 20:42:47','',NULL,''),
(2050,'影片导出',2045,5,'#','',NULL,1,0,'F','0','0','movie:movie:export','#','admin','2023-06-15 20:42:47','',NULL,''),
(2051,'演职',2002,5,'acting','movie/acting/index',NULL,1,0,'C','1','0','movie:acting:list','#','admin','2023-06-15 20:42:58','admin','2023-06-27 20:40:57','演职菜单'),
(2052,'演职查询',2051,1,'#','',NULL,1,0,'F','0','0','movie:acting:query','#','admin','2023-06-15 20:42:58','',NULL,''),
(2053,'演职新增',2051,2,'#','',NULL,1,0,'F','0','0','movie:acting:add','#','admin','2023-06-15 20:42:58','',NULL,''),
(2054,'演职修改',2051,3,'#','',NULL,1,0,'F','0','0','movie:acting:edit','#','admin','2023-06-15 20:42:58','',NULL,''),
(2055,'演职删除',2051,4,'#','',NULL,1,0,'F','0','0','movie:acting:remove','#','admin','2023-06-15 20:42:58','',NULL,''),
(2056,'演职导出',2051,5,'#','',NULL,1,0,'F','0','0','movie:acting:export','#','admin','2023-06-15 20:42:58','',NULL,''),
(2057,'资源',2002,7,'resource','movie/resource/index',NULL,1,0,'C','0','0','movie:resource:list','#','admin','2023-06-15 20:43:10','admin','2023-06-27 20:40:30','资源菜单'),
(2058,'资源查询',2057,1,'#','',NULL,1,0,'F','0','0','movie:resource:query','#','admin','2023-06-15 20:43:10','',NULL,''),
(2059,'资源新增',2057,2,'#','',NULL,1,0,'F','0','0','movie:resource:add','#','admin','2023-06-15 20:43:10','',NULL,''),
(2060,'资源修改',2057,3,'#','',NULL,1,0,'F','0','0','movie:resource:edit','#','admin','2023-06-15 20:43:10','',NULL,''),
(2061,'资源删除',2057,4,'#','',NULL,1,0,'F','0','0','movie:resource:remove','#','admin','2023-06-15 20:43:10','',NULL,''),
(2062,'资源导出',2057,5,'#','',NULL,1,0,'F','0','0','movie:resource:export','#','admin','2023-06-15 20:43:10','',NULL,''),
(2063,'集数',2002,6,'partNum','movie/partNum/index',NULL,1,0,'C','0','0','movie:partNum:list','#','admin','2023-06-15 20:43:20','admin','2023-06-27 20:40:12','集数菜单'),
(2064,'集数查询',2063,1,'#','',NULL,1,0,'F','0','0','movie:partNum:query','#','admin','2023-06-15 20:43:20','',NULL,''),
(2065,'集数新增',2063,2,'#','',NULL,1,0,'F','0','0','movie:partNum:add','#','admin','2023-06-15 20:43:20','',NULL,''),
(2066,'集数修改',2063,3,'#','',NULL,1,0,'F','0','0','movie:partNum:edit','#','admin','2023-06-15 20:43:20','',NULL,''),
(2067,'集数删除',2063,4,'#','',NULL,1,0,'F','0','0','movie:partNum:remove','#','admin','2023-06-15 20:43:20','',NULL,''),
(2068,'集数导出',2063,5,'#','',NULL,1,0,'F','0','0','movie:partNum:export','#','admin','2023-06-15 20:43:20','',NULL,''),
(2069,'排行榜',2002,3,'ranking','movie/ranking/index',NULL,1,0,'C','0','0','movie:ranking:list','#','admin','2023-06-15 20:43:28','admin','2023-06-27 20:38:53','排行榜菜单'),
(2070,'排行榜查询',2069,1,'#','',NULL,1,0,'F','0','0','movie:ranking:query','#','admin','2023-06-15 20:43:28','',NULL,''),
(2071,'排行榜新增',2069,2,'#','',NULL,1,0,'F','0','0','movie:ranking:add','#','admin','2023-06-15 20:43:28','',NULL,''),
(2072,'排行榜修改',2069,3,'#','',NULL,1,0,'F','0','0','movie:ranking:edit','#','admin','2023-06-15 20:43:28','',NULL,''),
(2073,'排行榜删除',2069,4,'#','',NULL,1,0,'F','0','0','movie:ranking:remove','#','admin','2023-06-15 20:43:28','',NULL,''),
(2074,'排行榜导出',2069,5,'#','',NULL,1,0,'F','0','0','movie:ranking:export','#','admin','2023-06-15 20:43:28','',NULL,''),
(2075,'短视频',2002,2,'video','movie/video/index',NULL,1,0,'C','0','0','movie:video:list','#','admin','2023-06-15 20:43:37','admin','2023-06-27 20:38:46','短视频菜单'),
(2076,'短视频查询',2075,1,'#','',NULL,1,0,'F','0','0','movie:video:query','#','admin','2023-06-15 20:43:37','',NULL,''),
(2077,'短视频新增',2075,2,'#','',NULL,1,0,'F','0','0','movie:video:add','#','admin','2023-06-15 20:43:37','',NULL,''),
(2078,'短视频修改',2075,3,'#','',NULL,1,0,'F','0','0','movie:video:edit','#','admin','2023-06-15 20:43:37','',NULL,''),
(2079,'短视频删除',2075,4,'#','',NULL,1,0,'F','0','0','movie:video:remove','#','admin','2023-06-15 20:43:37','',NULL,''),
(2080,'短视频导出',2075,5,'#','',NULL,1,0,'F','0','0','movie:video:export','#','admin','2023-06-15 20:43:37','',NULL,''),
(2081,'会员',2001,1,'member','movie/member/index',NULL,1,0,'C','0','0','movie:member:list','#','admin','2023-06-15 20:57:16','',NULL,'会员菜单'),
(2082,'会员查询',2081,1,'#','',NULL,1,0,'F','0','0','movie:member:query','#','admin','2023-06-15 20:57:16','',NULL,''),
(2083,'会员新增',2081,2,'#','',NULL,1,0,'F','0','0','movie:member:add','#','admin','2023-06-15 20:57:16','',NULL,''),
(2084,'会员修改',2081,3,'#','',NULL,1,0,'F','0','0','movie:member:edit','#','admin','2023-06-15 20:57:16','',NULL,''),
(2085,'会员删除',2081,4,'#','',NULL,1,0,'F','0','0','movie:member:remove','#','admin','2023-06-15 20:57:17','',NULL,''),
(2086,'会员导出',2081,5,'#','',NULL,1,0,'F','0','0','movie:member:export','#','admin','2023-06-15 20:57:17','',NULL,''),
(2087,'会员vip',2001,1,'memberVip','movie/memberVip/index',NULL,1,0,'C','1','0','movie:memberVip:list','#','admin','2023-06-15 20:57:25','admin','2023-06-27 20:36:21','会员vip菜单'),
(2088,'会员vip查询',2087,1,'#','',NULL,1,0,'F','0','0','movie:memberVip:query','#','admin','2023-06-15 20:57:25','',NULL,''),
(2089,'会员vip新增',2087,2,'#','',NULL,1,0,'F','0','0','movie:memberVip:add','#','admin','2023-06-15 20:57:25','',NULL,''),
(2090,'会员vip修改',2087,3,'#','',NULL,1,0,'F','0','0','movie:memberVip:edit','#','admin','2023-06-15 20:57:25','',NULL,''),
(2091,'会员vip删除',2087,4,'#','',NULL,1,0,'F','0','0','movie:memberVip:remove','#','admin','2023-06-15 20:57:25','',NULL,''),
(2092,'会员vip导出',2087,5,'#','',NULL,1,0,'F','0','0','movie:memberVip:export','#','admin','2023-06-15 20:57:25','',NULL,''),
(2093,'播放记录',2001,1,'play','movie/play/index',NULL,1,0,'C','0','0','movie:play:list','#','admin','2023-06-15 20:57:31','',NULL,'播放记录菜单'),
(2094,'播放记录查询',2093,1,'#','',NULL,1,0,'F','0','0','movie:play:query','#','admin','2023-06-15 20:57:31','',NULL,''),
(2095,'播放记录新增',2093,2,'#','',NULL,1,0,'F','0','0','movie:play:add','#','admin','2023-06-15 20:57:31','',NULL,''),
(2096,'播放记录修改',2093,3,'#','',NULL,1,0,'F','0','0','movie:play:edit','#','admin','2023-06-15 20:57:31','',NULL,''),
(2097,'播放记录删除',2093,4,'#','',NULL,1,0,'F','0','0','movie:play:remove','#','admin','2023-06-15 20:57:31','',NULL,''),
(2098,'播放记录导出',2093,5,'#','',NULL,1,0,'F','0','0','movie:play:export','#','admin','2023-06-15 20:57:31','',NULL,''),
(2099,'我的收藏',2001,1,'collect','movie/collect/index',NULL,1,0,'C','0','0','movie:collect:list','#','admin','2023-06-15 20:57:36','',NULL,'我的收藏菜单'),
(2100,'我的收藏查询',2099,1,'#','',NULL,1,0,'F','0','0','movie:collect:query','#','admin','2023-06-15 20:57:37','',NULL,''),
(2101,'我的收藏新增',2099,2,'#','',NULL,1,0,'F','0','0','movie:collect:add','#','admin','2023-06-15 20:57:37','',NULL,''),
(2102,'我的收藏修改',2099,3,'#','',NULL,1,0,'F','0','0','movie:collect:edit','#','admin','2023-06-15 20:57:37','',NULL,''),
(2103,'我的收藏删除',2099,4,'#','',NULL,1,0,'F','0','0','movie:collect:remove','#','admin','2023-06-15 20:57:37','',NULL,''),
(2104,'我的收藏导出',2099,5,'#','',NULL,1,0,'F','0','0','movie:collect:export','#','admin','2023-06-15 20:57:37','',NULL,''),
(2105,'我的下载',2001,1,'down','movie/down/index',NULL,1,0,'C','0','0','movie:down:list','#','admin','2023-06-15 20:57:42','',NULL,'我的下载菜单'),
(2106,'我的下载查询',2105,1,'#','',NULL,1,0,'F','0','0','movie:down:query','#','admin','2023-06-15 20:57:42','',NULL,''),
(2107,'我的下载新增',2105,2,'#','',NULL,1,0,'F','0','0','movie:down:add','#','admin','2023-06-15 20:57:42','',NULL,''),
(2108,'我的下载修改',2105,3,'#','',NULL,1,0,'F','0','0','movie:down:edit','#','admin','2023-06-15 20:57:42','',NULL,''),
(2109,'我的下载删除',2105,4,'#','',NULL,1,0,'F','0','0','movie:down:remove','#','admin','2023-06-15 20:57:42','',NULL,''),
(2110,'我的下载导出',2105,5,'#','',NULL,1,0,'F','0','0','movie:down:export','#','admin','2023-06-15 20:57:42','',NULL,''),
(2111,'反馈信息',2001,1,'feedback','movie/feedback/index',NULL,1,0,'C','0','0','movie:feedback:list','#','admin','2023-06-15 20:57:48','',NULL,'反馈信息菜单'),
(2112,'反馈信息查询',2111,1,'#','',NULL,1,0,'F','0','0','movie:feedback:query','#','admin','2023-06-15 20:57:48','',NULL,''),
(2113,'反馈信息新增',2111,2,'#','',NULL,1,0,'F','0','0','movie:feedback:add','#','admin','2023-06-15 20:57:48','',NULL,''),
(2114,'反馈信息修改',2111,3,'#','',NULL,1,0,'F','0','0','movie:feedback:edit','#','admin','2023-06-15 20:57:48','',NULL,''),
(2115,'反馈信息删除',2111,4,'#','',NULL,1,0,'F','0','0','movie:feedback:remove','#','admin','2023-06-15 20:57:48','',NULL,''),
(2116,'反馈信息导出',2111,5,'#','',NULL,1,0,'F','0','0','movie:feedback:export','#','admin','2023-06-15 20:57:48','',NULL,''),
(2123,'搜索历史',2002,1,'searchHistory','movie/searchHistory/index',NULL,1,0,'C','0','0','movie:searchHistory:list','#','admin','2023-06-30 19:38:38','',NULL,'搜索历史菜单'),
(2124,'搜索历史查询',2123,1,'#','',NULL,1,0,'F','0','0','movie:searchHistory:query','#','admin','2023-06-30 19:38:38','',NULL,''),
(2125,'搜索历史新增',2123,2,'#','',NULL,1,0,'F','0','0','movie:searchHistory:add','#','admin','2023-06-30 19:38:38','',NULL,''),
(2126,'搜索历史修改',2123,3,'#','',NULL,1,0,'F','0','0','movie:searchHistory:edit','#','admin','2023-06-30 19:38:38','',NULL,''),
(2127,'搜索历史删除',2123,4,'#','',NULL,1,0,'F','0','0','movie:searchHistory:remove','#','admin','2023-06-30 19:38:38','',NULL,''),
(2128,'搜索历史导出',2123,5,'#','',NULL,1,0,'F','0','0','movie:searchHistory:export','#','admin','2023-06-30 19:38:38','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2023-06-14 15:47:50','',NULL,''),
(2,'se','项目经理',2,'0','admin','2023-06-14 15:47:50','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2023-06-14 15:47:50','',NULL,''),
(4,'user','普通员工',4,'0','admin','2023-06-14 15:47:50','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-06-14 15:47:51','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-06-14 15:47:51','',NULL,'普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values 
(2,1),
(2,2),
(2,3),
(2,4),
(2,100),
(2,101),
(2,102),
(2,103),
(2,104),
(2,105),
(2,106),
(2,107),
(2,108),
(2,109),
(2,110),
(2,111),
(2,112),
(2,113),
(2,114),
(2,115),
(2,116),
(2,117),
(2,500),
(2,501),
(2,1000),
(2,1001),
(2,1002),
(2,1003),
(2,1004),
(2,1005),
(2,1006),
(2,1007),
(2,1008),
(2,1009),
(2,1010),
(2,1011),
(2,1012),
(2,1013),
(2,1014),
(2,1015),
(2,1016),
(2,1017),
(2,1018),
(2,1019),
(2,1020),
(2,1021),
(2,1022),
(2,1023),
(2,1024),
(2,1025),
(2,1026),
(2,1027),
(2,1028),
(2,1029),
(2,1030),
(2,1031),
(2,1032),
(2,1033),
(2,1034),
(2,1035),
(2,1036),
(2,1037),
(2,1038),
(2,1039),
(2,1040),
(2,1041),
(2,1042),
(2,1043),
(2,1044),
(2,1045),
(2,1046),
(2,1047),
(2,1048),
(2,1049),
(2,1050),
(2,1051),
(2,1052),
(2,1053),
(2,1054),
(2,1055),
(2,1056),
(2,1057),
(2,1058),
(2,1059),
(2,1060);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,103,'admin','管理员','00','ry@163.com','15888888888','1','/profile/avatar/2023/06/15/blob_20230615162749A002.png','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','27.154.113.34','2023-08-07 18:51:31','admin','2023-06-14 15:47:50','','2023-08-07 18:51:30','管理员'),
(2,105,'test','测试原','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-06-14 15:47:50','admin','2023-06-14 15:47:50','',NULL,'测试员');

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2);

/*Table structure for table `vo_acting` */

DROP TABLE IF EXISTS `vo_acting`;

CREATE TABLE `vo_acting` (
  `acting_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'acting_id',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `types` tinyint(4) DEFAULT NULL COMMENT '类型 1导演2编辑3演员',
  `works_num` tinyint(4) DEFAULT NULL COMMENT '作品数量',
  `popularity` int(11) DEFAULT NULL COMMENT '人气',
  `intro` text COMMENT '人物简介',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`acting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='演职表';

/*Data for the table `vo_acting` */

/*Table structure for table `vo_category` */

DROP TABLE IF EXISTS `vo_category`;

CREATE TABLE `vo_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'category_id',
  `icon` varchar(256) DEFAULT NULL COMMENT '图标',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `mark` varchar(32) DEFAULT NULL COMMENT '标识',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `stint` tinyint(4) DEFAULT NULL COMMENT '是否限制',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='类别';

/*Data for the table `vo_category` */

insert  into `vo_category`(`category_id`,`icon`,`name`,`mark`,`status`,`stint`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,NULL,'电影',NULL,1,0,NULL,'2023-06-27 14:46:48',NULL,NULL),
(2,NULL,'剧集',NULL,1,0,NULL,'2023-06-27 14:47:00',NULL,NULL),
(3,NULL,'综艺',NULL,1,0,NULL,'2023-06-27 14:47:12',NULL,NULL),
(4,NULL,'动漫',NULL,1,0,NULL,'2023-06-27 14:47:27',NULL,NULL),
(6,NULL,'纪录',NULL,1,0,NULL,NULL,NULL,NULL),
(9,NULL,'福利',NULL,0,1,NULL,NULL,NULL,NULL);

/*Table structure for table `vo_classify` */

DROP TABLE IF EXISTS `vo_classify`;

CREATE TABLE `vo_classify` (
  `classify_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'classify_id',
  `category_id` bigint(20) DEFAULT NULL COMMENT 'category_id为空 则通用',
  `icon` varchar(256) DEFAULT NULL COMMENT '图标',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `types` tinyint(4) DEFAULT NULL COMMENT '类型 1 综合 2 类型 3 地区 4年份',
  `is_show` tinyint(4) DEFAULT '1' COMMENT '是否显示',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`classify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分类';

/*Data for the table `vo_classify` */

/*Table structure for table `vo_movie` */

DROP TABLE IF EXISTS `vo_movie`;

CREATE TABLE `vo_movie` (
  `movie_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'movie_id',
  `category_id` bigint(20) DEFAULT NULL COMMENT 'category_id',
  `img` varchar(512) DEFAULT NULL COMMENT '封面',
  `titles` varchar(64) DEFAULT NULL COMMENT '名称',
  `name_en` varchar(64) DEFAULT NULL COMMENT '英文名称',
  `other_name` varchar(256) DEFAULT NULL COMMENT '别名',
  `intro` text COMMENT '简介',
  `directors` varchar(128) DEFAULT NULL COMMENT '导演',
  `scenarist` varchar(128) DEFAULT NULL COMMENT '编剧',
  `actors` varchar(512) DEFAULT NULL COMMENT '演员',
  `dates` varchar(32) DEFAULT NULL COMMENT '年份',
  `areas` varchar(32) DEFAULT NULL COMMENT '地区',
  `genres` varchar(64) DEFAULT NULL COMMENT '流派如: 2023 动作 冒险 悬疑 ',
  `scores` decimal(12,2) DEFAULT NULL COMMENT '评分',
  `quotes` varchar(128) DEFAULT NULL COMMENT '短评',
  `movie_time` varchar(16) DEFAULT NULL COMMENT '片长',
  `views` tinyint(4) DEFAULT NULL COMMENT '播放数',
  `tags` varchar(128) DEFAULT NULL COMMENT '标签',
  `lang` varchar(64) DEFAULT NULL COMMENT '语言',
  `vip` tinyint(4) DEFAULT NULL COMMENT '是否VIP',
  `buy_much` decimal(10,2) DEFAULT NULL COMMENT '购买金额',
  `extra1` varchar(32) DEFAULT NULL COMMENT '扩展1',
  `extra2` varchar(32) DEFAULT NULL COMMENT '扩展2',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='影片';

/*Data for the table `vo_movie` */

/*Table structure for table `vo_movie_acting` */

DROP TABLE IF EXISTS `vo_movie_acting`;

CREATE TABLE `vo_movie_acting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `acting_id` bigint(20) DEFAULT NULL COMMENT 'classify_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='影片演职表';

/*Data for the table `vo_movie_acting` */

/*Table structure for table `vo_movie_classify` */

DROP TABLE IF EXISTS `vo_movie_classify`;

CREATE TABLE `vo_movie_classify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `classify_id` bigint(20) DEFAULT NULL COMMENT 'classify_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='影片分类';

/*Data for the table `vo_movie_classify` */

/*Table structure for table `vo_movie_resource` */

DROP TABLE IF EXISTS `vo_movie_resource`;

CREATE TABLE `vo_movie_resource` (
  `movie_resource_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'movie_resource_id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT 'resource_id',
  `part_id` bigint(20) DEFAULT NULL COMMENT 'part_id',
  `url` varchar(512) DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`movie_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='影片资源';

/*Data for the table `vo_movie_resource` */

/*Table structure for table `vo_part_num` */

DROP TABLE IF EXISTS `vo_part_num`;

CREATE TABLE `vo_part_num` (
  `part_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'part_id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT '影片id',
  `titles` varchar(64) DEFAULT NULL COMMENT '影片名称',
  `name` varchar(32) DEFAULT NULL COMMENT '集数名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `series` varchar(32) DEFAULT NULL COMMENT '组',
  `is_show` tinyint(4) DEFAULT '0' COMMENT '是否显示 0 否 1 是',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='集数';

/*Data for the table `vo_part_num` */

/*Table structure for table `vo_ranking` */

DROP TABLE IF EXISTS `vo_ranking`;

CREATE TABLE `vo_ranking` (
  `ranking_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ranking_id',
  `category_id` bigint(20) DEFAULT NULL COMMENT 'category_id',
  `category_name` varchar(64) DEFAULT NULL COMMENT '分类名称',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `titles` varchar(64) DEFAULT NULL COMMENT '影片名称',
  `play_num` bigint(20) DEFAULT '0' COMMENT '播放次数',
  `sort` char(10) DEFAULT NULL COMMENT '排名',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ranking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='排行榜';

/*Data for the table `vo_ranking` */

/*Table structure for table `vo_resource` */

DROP TABLE IF EXISTS `vo_resource`;

CREATE TABLE `vo_resource` (
  `resource_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'resource_id',
  `name` varchar(32) DEFAULT NULL COMMENT '资源名称',
  `def` tinyint(4) DEFAULT '0' COMMENT '是否默认 1是 0 否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源';

/*Data for the table `vo_resource` */

/*Table structure for table `vo_tags` */

DROP TABLE IF EXISTS `vo_tags`;

CREATE TABLE `vo_tags` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'tag_id',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `base_color` varchar(16) DEFAULT NULL COMMENT '底色',
  `text_color` varchar(16) DEFAULT NULL COMMENT '文字颜色',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签';

/*Data for the table `vo_tags` */

/*Table structure for table `vo_video` */

DROP TABLE IF EXISTS `vo_video`;

CREATE TABLE `vo_video` (
  `video_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'video_id',
  `movie_id` bigint(20) DEFAULT NULL COMMENT 'movie_id',
  `movie_name` varchar(64) DEFAULT NULL COMMENT '影片名称',
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `describes` varchar(512) DEFAULT NULL COMMENT '描述',
  `url` varchar(512) DEFAULT NULL COMMENT 'url',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短视频';

/*Data for the table `vo_video` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
