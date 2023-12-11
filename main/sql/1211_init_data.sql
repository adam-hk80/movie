/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.7.30-0ubuntu0.16.04.1 : Database - movie_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
(103,'短视频显示','biz_video_show','1','N','admin','2023-07-31 14:13:54','admin','2023-08-17 14:56:53','0 不显示 1 显示'),
(104,'探剧显示','biz_explore_show','1','N','admin','2023-07-31 19:35:50','',NULL,'0 不显示 1 显示 默认是需要显示的'),
(105,'探剧显示内容','biz_explore_id','6','N','admin','2023-07-31 14:13:54','admin','2023-08-21 10:20:59','探索显示内容，填写categoryId,空则按顺序显示 多个请用,分割'),
(106,'是否单线路资源','biz_single_src','0','N','admin','2023-08-14 12:14:20','admin','2023-08-17 14:57:53','1：单线路 0：不限(多)'),
(107,'列数显示','biz_col_num','[{\"0\":3},{\"1\":3},{\"2\":3},{\"3\":3},{\"4\":2},{\"5\":3},{\"6\":1},{\"7\":3},{\"8\":0},{\"9\":0},{\"detail\":3}]','Y','admin','2023-08-19 23:26:31','admin','2023-08-24 10:53:47','key 对应categoryId 0 代表推荐，detail 详情页\nvalue 3 代表3列 1 代表1列（列表）0 代表大图'),
(108,'图片是否存储本地','biz_save_img','0','N','admin','2023-08-20 00:01:24','admin','2023-08-22 19:33:57','1 true 0 false'),
(109,'测试数量页数','biz_test_num','2','N','admin','2023-08-20 20:28:57','admin','2023-08-20 20:29:12','0 则不限制'),
(110,'采集单页间隔秒数','biz_single_interval','10','Y','admin','2023-08-29 11:29:13','admin','2023-08-29 11:42:41','采集单页间隔,避免被封 单位秒\n如果采集量大 值设置长点'),
(111,'采集列表翻页间隔秒数','biz_list_interval','10','Y','admin','2023-08-29 11:30:18','admin','2023-08-29 11:42:45','采集列表翻页间隔 避免被封 单位秒\n如果采集量大 值设置长点'),
(112,'测试数量','biz_test_num','18','N','admin','2023-08-31 18:19:56','admin','2023-08-31 18:36:59','测试采集数量,总数量（非页数）'),
(113,'第二栏目显示','biz_two_show','1','Y','admin','2023-09-01 21:53:23','admin','2023-09-07 15:51:11','第二栏目榜单显示 1显示榜单 2显示category mark=2内容'),
(114,'多语言','biz_many_lang','1','Y','admin','2023-09-07 15:53:44','admin','2023-09-07 15:56:16','1:多语言同时并,对应信息需要有多语言，category 需要18n录入(c1 label)。0则不需要');

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','易学科技',0,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(101,100,'0,100','上海总部',1,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(102,100,'0,100','武汉分公司',2,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(103,101,'0,100,101','研发部门',1,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(104,101,'0,100,101','市场部门',2,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(105,101,'0,100,101','测试部门',3,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(106,101,'0,100,101','财务部门',4,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(107,101,'0,100,101','运维部门',5,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(108,102,'0,100,102','市场部门',1,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL),
(109,102,'0,100,102','财务部门',2,'易学','15888888888','yx@163.com','0','0','admin','2023-06-14 15:47:50','',NULL);

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
(126,8,'播放记录','play','biz_ad_page',NULL,'primary','N','0','admin','2023-08-01 17:31:36','admin','2023-08-01 17:32:09',NULL),
(127,1,'中文','zh-CN','base_i18n',NULL,'primary','N','0','admin','2023-08-23 17:37:26','',NULL,NULL),
(128,2,'English','en-US','base_i18n',NULL,'success','N','0','admin','2023-08-23 17:37:41','',NULL,NULL),
(129,1,'app端','app','base_i18n_client',NULL,'primary','N','0','admin','2023-08-23 17:39:25','',NULL,NULL),
(130,2,'管理端','manage','base_i18n_client',NULL,'success','N','0','admin','2023-08-23 17:39:47','',NULL,NULL);

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
(106,'反馈类型','biz_feedback_type','0','admin','2023-06-27 19:14:26','',NULL,NULL),
(107,'语言包','base_i18n','0','admin','2023-08-23 17:36:57','',NULL,NULL),
(108,'语言包-客户端','base_i18n_client','0','admin','2023-08-23 17:39:05','',NULL,NULL);

/*Data for the table `sys_i18n` */

insert  into `sys_i18n`(`i18n_id`,`label`,`content`,`lang`,`status`,`types`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,'feedback.request','反馈/求片','zh-CN',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(2,'feedback.request','Feedback/Request','en-US',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(3,'feedback.type','请选择反馈类型','zh-CN',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(4,'feedback.type','Please select a feedback type','en-US',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(5,'feedback.content','请选择反馈内容','zh-CN',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(6,'feedback.content','Please select a feedback content','en-US',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(7,'select.question','选择遇到的问题','zh-CN',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(8,'select.question','Select the problem encountered','en-US',1,'app',NULL,'2023-08-25 11:32:10',NULL,NULL),
(9,'describe.question','详细描述问题(必填)','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(10,'describe.question','Describe the problem in detail (required)','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(11,'everyone.search','大家都在搜','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(12,'everyone.search','everyone is searching','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(13,'login.view.collect','登录后可查看收藏记录','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(14,'login.view.collect','Log in to view favorite records','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(15,'chat.room','聊天室','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(16,'chat.room','chatroom','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(17,'please.add','请添加','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(18,'please.add','please add in','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(19,'copied','已复制','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(20,'copied','copied','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(21,'shared','已分享','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(22,'shared','shared','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(23,'intro','简介','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(24,'intro','Introduction','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(25,'cast.and.crew','演职人员','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(26,'cast.and.crew','cast and crew','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(27,'director','导演','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(28,'director','director','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(29,'screenwriter','编剧','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(30,'screenwriter','screenwriter','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(31,'actor','演员','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(32,'actor','actor','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(33,'starring','主演','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(34,'starring','starring','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(35,'warn.video.text','不要相信视频中的广告，谨防上当受骗!','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(36,'warn.video.text','Don\'t believe the advertisements in the video, beware of being deceived!','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(37,'hint.video.text','当视频卡慢，可尝试切换其他播放线路!','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(38,'hint.video.text','When the video card is slow, try to switch to other playback lines!','en-US',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(39,'short.video','短视频','zh-CN',1,'app',NULL,'2023-08-25 11:32:11',NULL,NULL),
(40,'short.video','short video','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(41,'exploring.drama','探剧','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(42,'exploring.drama','Exploring the drama','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(43,'play.feature','播放正片','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(44,'play.feature','play feature','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(45,'to.share','去分享','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(46,'to.share','to share','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(47,'look.again','再看看','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(48,'look.again','look again','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(49,'want.share','我要分享','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(50,'want.share','i want to share','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(51,'i.see','我知道了','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(52,'i.see','I see','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(53,'favorite.videos','收藏影片','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(54,'favorite.videos','favorite videos','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(55,'selection','选集','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(56,'selection','selection','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(57,'switch.resources','切换资源','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(58,'switch.resources','switch resources','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(59,'related.suggestion','相关推荐','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(60,'related.suggestion','related suggestion','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(61,'weekly.list','周榜','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(62,'weekly.list','Weekly list','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(63,'latest.online','最新上线','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(64,'latest.online','latest online','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(65,'network.fire.play','全网热播','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(66,'network.fire.play','The whole network hit','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(67,'recently.popular','近期热门','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(68,'recently.popular','Recently popular','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(69,'personal.info','个人资料','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(70,'personal.info','personal information','en-US',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(71,'set.avatar','设置头像','zh-CN',1,'app',NULL,'2023-08-25 11:32:12',NULL,NULL),
(72,'set.avatar','Set Avatar','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(73,'nick.name','昵称','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(74,'nick.name','Nick name','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(75,'nick.name.update','修改昵称','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(76,'nick.name.update','change username','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(77,'nick.name.input','请输入昵称','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(78,'nick.name.input','Please enter a nickname','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(79,'user.name','用户名','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(80,'user.name','User name','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(81,'user.name.update','修改用户名','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(82,'user.name.update','modify username','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(83,'user.name.input','请输入用户名','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(84,'user.name.input','please enter user name','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(85,'bind.email','绑定邮箱','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(86,'bind.email','Bind Email','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(87,'bind.email.update','修改绑定邮箱','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(88,'bind.email.update','Modify bound email','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(89,'bind.email.new','请输入绑定的新邮箱账户','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(90,'bind.email.new','Please enter the bound new email account','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(91,'bind.email.input','请输入邮箱账号','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(92,'bind.email.input','Please enter your email account','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(93,'email.regist','邮箱注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(94,'email.regist','email registration','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(95,'use.email.regist','使用邮箱注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(96,'use.email.regist','Register with email','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(97,'email.input','请输入邮箱地址','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(98,'email.input','Please input the email address','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(99,'email.valid','请输入正确的邮箱地址','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(100,'email.valid','Please input the correct email address','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(101,'bind.mobile','绑定手机号','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(102,'bind.mobile','Bind mobile phone number','en-US',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(103,'bind.mobile.update','修改绑定手机号','zh-CN',1,'app',NULL,'2023-08-25 11:32:13',NULL,NULL),
(104,'bind.mobile.update','Modify the bound mobile phone number','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(105,'use.mobile.regist','使用手机号注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(106,'use.mobile.regist','Register with mobile number','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(107,'mobile.regist','手机号注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(108,'mobile.regist','Mobile number registration','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(109,'mobile.input','请输入手机号','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(110,'mobile.input','Please enter phone number','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(111,'mobile.valid','请输入正确的手机号','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(112,'mobile.valid','please enter a valid phone number','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(113,'bind.mobile.new','请输入绑定的新手机号','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(114,'bind.mobile.new','Please enter the bound new mobile phone number','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(115,'play.record','播放记录','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(116,'play.record','play record','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(117,'play.no.record','暂无播放记录','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(118,'play.no.record','No play record','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(119,'login.view.play.history','登录后可查看播放记录','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(120,'login.view.play.history','Log in to view playback history','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(121,'copy.shar.link','已复制分享链接','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(122,'copy.shar.link','Copied share link','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(123,'copy.shar.link.failed','复制分享链接失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(124,'copy.shar.link.failed','Failed to copy and share link','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(125,'choose.regist.method','请选择注册方式','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(126,'choose.regist.method','Please choose a registration method','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(127,'regist.email','海外用户请选择邮箱注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(128,'regist.email','Overseas users, please select email to register','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(129,'regist.choose','海外用户请选择','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(130,'regist.choose','Overseas users please choose','en-US',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(131,'set.password','请输入推荐码','zh-CN',1,'app',NULL,'2023-08-25 11:32:14',NULL,NULL),
(132,'set.password','Please set a password','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(133,'referral.code','请设置密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(134,'referral.code','Please enter the referral code','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(135,'new.version.update','发现新版本，是否要更新?','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(136,'new.version.update','Found a new version, do you want to update?','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(137,'hit.user.name','可用于登录','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(138,'hit.user.name','available for login','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(139,'hint.question','请描述遇到的问题，我们会帮您解决','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(140,'hint.question','Please describe the problem encountered, we will help you solve it','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(141,'hint.loginName','请输入账号、手机号、邮箱','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(142,'hint.loginName','Please enter account number, mobile number, email','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(143,'hint.password','请输入密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(144,'hint.password','please enter password','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(145,'hint.search','搜索任何你想看内容','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(146,'hint.search','search for anything you want','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(147,'hint.must.letters.num','必须包含字母和数字','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(148,'hint.must.letters.num','Must contain letters and numbers','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(149,'common.reminder','友情提示','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(150,'common.reminder','friendly reminder','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(151,'common.kind.tips','温馨提示','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(152,'common.kind.tips','Kind tips','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(153,'common.update.reminder','更新提示','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(154,'common.update.reminder','update reminder','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(155,'common.register','注册','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(156,'common.register','register','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(157,'common.login','登录','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(158,'common.login','Log in','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(159,'common.click.login','点击登录','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(160,'common.click.login','Click to Login','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(161,'common.login.now','立即登录','zh-CN',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(162,'common.login.now','log in immediately','en-US',1,'app',NULL,'2023-08-25 11:32:15',NULL,NULL),
(163,'common.cancel','取消','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(164,'common.cancel','Cancel','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(165,'common.select.all','全选','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(166,'common.select.all','select all','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(167,'common.see.more','查看更多','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(168,'common.see.more','seemore','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(169,'common.expand.all','展开全部','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(170,'common.expand.all','Expand All','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(171,'common.copy','复制','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(172,'common.copy','copy','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(173,'common.warn','警告','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(174,'common.warn','warn','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(175,'common.hint','提示','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(176,'common.hint','hint','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(177,'common.set.up','设置','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(178,'common.set.up','set up','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(179,'common.clear.cache','清除缓存','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(180,'common.clear.cache','clear cache','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(181,'common.cache.cleaning','缓存清理完成','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(182,'common.cache.cleaning','Cache cleaning complete','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(183,'common.sign.out','退出登录','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(184,'common.sign.out','sign out','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(185,'common.anthology','集','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(186,'common.anthology','anthology','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(187,'common.fraction','分','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(188,'common.fraction','fraction','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(189,'common.add','添加','zh-CN',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(190,'common.add','Add to','en-US',1,'app',NULL,'2023-08-25 11:32:16',NULL,NULL),
(191,'common.edit','编辑','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(192,'common.edit','edit','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(193,'common.delete','删除','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(194,'common.delete','delete','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(195,'common.submit','提交','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(196,'common.submit','submit','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(197,'common.share','分享','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(198,'common.share','share','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(199,'common.share.code','分享码','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(200,'common.share.code','share code','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(201,'common.collect','收藏','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(202,'common.collect','collect','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(203,'common.no.collect','暂无收藏','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(204,'common.no.collect','No Favorites','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(205,'common.my.collect','我的收藏','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(206,'common.my.collect','my collection','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(207,'common.my.download','我的下载','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(208,'common.my.download','My download','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(209,'common.no.download','暂无下载记录','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(210,'common.no.download','No download record','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(211,'common.play.now','立即播放','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(212,'common.play.now','play now','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(213,'common.about.us','关于我们','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(214,'common.about.us','about Us','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(215,'common.open.file','打开文件','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(216,'common.open.file','open a file','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(217,'common.downloading','下载中','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(218,'common.downloading','downloading','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(219,'common.change.pwd','修改密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(220,'common.change.pwd','change Password','en-US',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(221,'common.pwd.new','请输入新密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:17',NULL,NULL),
(222,'common.pwd.new','Please enter a new password','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(223,'common.pwd.set.new','设置新密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(224,'common.pwd.set.new','set new password','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(225,'common.pwd.set.new.again','再次输入新密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(226,'common.pwd.set.new.again','Enter the new password again','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(227,'common.pwd.two.not.match','两次密码不一致','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(228,'common.pwd.two.not.match','The two passwords do not match','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(229,'common.retrieve.pwd','找回密码','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(230,'common.retrieve.pwd','retrieve password','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(231,'common.search.history','搜索历史','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(232,'common.search.history','search history','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(233,'common.help.center','帮助中心','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(234,'common.help.center','help center','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(235,'common.complex','综合','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(236,'common.complex','complex','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(237,'common.style','类型','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(238,'common.style','style','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(239,'common.area','地区','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(240,'common.area','area','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(241,'common.years','年份','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(242,'common.years','years','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(243,'common.feedback','意见反馈','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(244,'common.feedback','Feedback','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(245,'common.skip.ad','跳过广告','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(246,'common.skip.ad','skip ad','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(247,'common.watch.now','立即观看','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(248,'common.watch.now','watch now','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(249,'common.sys.info','系统消息','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(250,'common.sys.info','system information','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(251,'common.no.info','暂无系统消息','zh-CN',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(252,'common.no.info','No system news','en-US',1,'app',NULL,'2023-08-25 11:32:18',NULL,NULL),
(253,'common.loading','加载中','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(254,'common.loading','Loading','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(255,'common.contact.us','联系我们','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(256,'common.contact.us','contact us','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(257,'common.wechat','微信','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(258,'common.wechat','wechat','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(259,'common.save.poster','保存海报','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(260,'common.save.poster','save the poster','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(261,'common.poster.gen','海报生成中','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(262,'common.poster.gen','Poster generation','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(263,'common.copy.link','复制链接','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(264,'common.copy.link','copy Link','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(265,'common.must.array','必须是数组类型','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(266,'common.must.array','Must be an array type','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(267,'common.scan.qrcode','扫描右边二维码','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(268,'common.scan.qrcode','Scan the QR code on the right','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(269,'failed.network.error','网络请求出错','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(270,'failed.network.error','Network request error','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(271,'failed.check.network','请检查网络','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(272,'failed.check.network','please check the network','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(273,'failed.check.api','请检查api地址能否访问正常','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(274,'failed.check.api','Please check whether the api address can be accessed normally','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(275,'failed.http.code.error','图片过大，请重新上传','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(276,'failed.http.code.error','status code error','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(277,'failed.picture.too.big','图片过大，请重新上传','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(278,'failed.picture.too.big','The picture is too large, please upload again','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(279,'failed.upload.no.data','文件上传缺失数据url','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(280,'failed.upload.no.data','file upload missing data url','en-US',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(281,'failed.request.interceptor','请求开始拦截器未通过','zh-CN',1,'app',NULL,'2023-08-25 11:32:19',NULL,NULL),
(282,'failed.request.interceptor','request start interceptor failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(283,'failed.update','更新失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(284,'failed.update','update failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(285,'failed.copy','复制失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(286,'failed.copy','replication failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(287,'failed.save','保存失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(288,'failed.save','save failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(289,'failed.download','下载失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(290,'failed.download','download failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(291,'failed.read.file','文件路径读取失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(292,'failed.read.file','Failed to read file path','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(293,'failed.get.img','图片获取失败','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(294,'failed.get.img','Image acquisition failed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(295,'success.modified','修改成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(296,'success.modified','Successfully modified','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(297,'success.update','更新成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(298,'success.update','update completed','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(299,'success.regist','注册成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(300,'success.regist','registration success','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(301,'success.copy','复制成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(302,'success.copy','copy successfully','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(303,'success.save','保存成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(304,'success.save','Saved successfully','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(305,'success.submit','提交成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(306,'success.submit','Submitted successfully','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(307,'success.login','登录成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(308,'success.login','login successful','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(309,'success.collection','收藏成功','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(310,'success.collection','Collection success','en-US',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(311,'success.open','成功打开','zh-CN',1,'app',NULL,'2023-08-25 11:32:20',NULL,NULL),
(312,'success.open','successfully opened','en-US',1,'app',NULL,'2023-08-25 11:32:21',NULL,NULL),
(313,'common.recommend','推荐','zh-CN',1,'app',NULL,'2023-08-25 12:09:24',NULL,NULL),
(314,'common.recommend','recommend','en-US',1,'app',NULL,'2023-08-25 12:09:24',NULL,NULL),
(315,'common.load.more','加载更多','zh-CN',1,'app',NULL,'2023-08-25 14:01:30',NULL,NULL),
(316,'common.load.more','load more','en-US',1,'app',NULL,'2023-08-25 14:01:30',NULL,NULL),
(319,'common.no.more','没有更多了','zh-CN',1,'app',NULL,'2023-08-25 14:01:30',NULL,NULL),
(320,'common.no.more','no more','en-US',1,'app',NULL,'2023-08-25 14:01:30',NULL,NULL),
(321,'common.load','正在加载...','zh-CN',1,'app',NULL,'2023-08-25 14:03:01',NULL,NULL),
(322,'common.load','loading...','en-US',1,'app',NULL,'2023-08-25 14:03:01',NULL,NULL),
(323,'common.lang','语种','zh-CN',1,'app',NULL,'2023-08-25 16:57:00',NULL,NULL),
(324,'common.lang','language','en-US',1,'app',NULL,'2023-08-25 16:57:00',NULL,NULL),
(325,'C1','Movie','en-US',1,'app',NULL,'2023-09-07 17:13:15',NULL,NULL),
(326,'C2','TV drama','en-US',1,'app',NULL,'2023-09-07 17:14:19',NULL,NULL),
(327,'C3','variety show','en-US',1,'app',NULL,'2023-09-07 17:18:02',NULL,NULL),
(328,'C4','cartoon','en-US',1,'app',NULL,'2023-09-07 17:18:27',NULL,NULL),
(329,'C6','record','en-US',1,'app',NULL,'2023-09-07 17:18:49',NULL,NULL),
(330,'C8','sports','en-US',1,'app',NULL,'2023-09-07 17:19:15',NULL,NULL),
(331,'C9','Welfare','en-US',1,'app',NULL,'2023-09-07 17:19:26',NULL,NULL);

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-06-14 15:47:59','',NULL,''),
(10,'json解析','DEFAULT','movieTask.jsonTask()','* * 0/1 * * ?','3','1','0','admin','2023-12-08 14:35:26','admin','2023-12-08 14:41:28','');

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,9,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-06-14 15:47:51','admin','2023-06-15 14:36:45','系统管理目录'),
(2,'系统监控',0,10,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-06-14 15:47:51','admin','2023-08-28 19:22:20','系统监控目录'),
(3,'系统工具',0,11,'tool',NULL,'',1,0,'M','1','0','','tool','admin','2023-06-14 15:47:51','admin','2023-08-28 19:22:02','系统工具目录'),
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
(2027,'标签',2002,12,'tags','movie/tags/index',NULL,1,0,'C','1','1','movie:tags:list','#','admin','2023-06-15 20:20:16','admin','2023-08-10 17:08:22','标签菜单'),
(2028,'标签查询',2027,1,'#','',NULL,1,0,'F','0','0','movie:tags:query','#','admin','2023-06-15 20:20:16','',NULL,''),
(2029,'标签新增',2027,2,'#','',NULL,1,0,'F','0','0','movie:tags:add','#','admin','2023-06-15 20:20:16','',NULL,''),
(2030,'标签修改',2027,3,'#','',NULL,1,0,'F','0','0','movie:tags:edit','#','admin','2023-06-15 20:20:16','',NULL,''),
(2031,'标签删除',2027,4,'#','',NULL,1,0,'F','0','0','movie:tags:remove','#','admin','2023-06-15 20:20:16','',NULL,''),
(2032,'标签导出',2027,5,'#','',NULL,1,0,'F','0','0','movie:tags:export','#','admin','2023-06-15 20:20:16','',NULL,''),
(2033,'类别管理',2002,11,'category','movie/category/index',NULL,1,0,'C','0','0','movie:category:list','#','admin','2023-06-15 20:42:08','admin','2023-08-10 17:07:18','类别菜单'),
(2034,'类别查询',2033,1,'#','',NULL,1,0,'F','0','0','movie:category:query','#','admin','2023-06-15 20:42:08','',NULL,''),
(2035,'类别新增',2033,2,'#','',NULL,1,0,'F','0','0','movie:category:add','#','admin','2023-06-15 20:42:08','',NULL,''),
(2036,'类别修改',2033,3,'#','',NULL,1,0,'F','0','0','movie:category:edit','#','admin','2023-06-15 20:42:08','',NULL,''),
(2037,'类别删除',2033,4,'#','',NULL,1,0,'F','0','0','movie:category:remove','#','admin','2023-06-15 20:42:08','',NULL,''),
(2038,'类别导出',2033,5,'#','',NULL,1,0,'F','0','0','movie:category:export','#','admin','2023-06-15 20:42:08','',NULL,''),
(2039,'分类管理',2002,9,'classify','movie/classify/index',NULL,1,0,'C','0','0','movie:classify:list','#','admin','2023-06-15 20:42:19','admin','2023-08-10 17:07:08','分类菜单'),
(2040,'分类查询',2039,1,'#','',NULL,1,0,'F','0','0','movie:classify:query','#','admin','2023-06-15 20:42:19','',NULL,''),
(2041,'分类新增',2039,2,'#','',NULL,1,0,'F','0','0','movie:classify:add','#','admin','2023-06-15 20:42:19','',NULL,''),
(2042,'分类修改',2039,3,'#','',NULL,1,0,'F','0','0','movie:classify:edit','#','admin','2023-06-15 20:42:19','',NULL,''),
(2043,'分类删除',2039,4,'#','',NULL,1,0,'F','0','0','movie:classify:remove','#','admin','2023-06-15 20:42:19','',NULL,''),
(2044,'分类导出',2039,5,'#','',NULL,1,0,'F','0','0','movie:classify:export','#','admin','2023-06-15 20:42:19','',NULL,''),
(2045,'影片信息',2002,1,'movie','movie/movie/index',NULL,1,0,'C','0','0','movie:movie:list','#','admin','2023-06-15 20:42:47','admin','2023-08-10 17:06:49','影片菜单'),
(2046,'影片查询',2045,1,'#','',NULL,1,0,'F','0','0','movie:movie:query','#','admin','2023-06-15 20:42:47','',NULL,''),
(2047,'影片新增',2045,2,'#','',NULL,1,0,'F','0','0','movie:movie:add','#','admin','2023-06-15 20:42:47','',NULL,''),
(2048,'影片修改',2045,3,'#','',NULL,1,0,'F','0','0','movie:movie:edit','#','admin','2023-06-15 20:42:47','',NULL,''),
(2049,'影片删除',2045,4,'#','',NULL,1,0,'F','0','0','movie:movie:remove','#','admin','2023-06-15 20:42:47','',NULL,''),
(2050,'影片导出',2045,5,'#','',NULL,1,0,'F','0','0','movie:movie:export','#','admin','2023-06-15 20:42:47','',NULL,''),
(2051,'演职',2002,5,'acting','movie/acting/index',NULL,1,0,'C','1','1','movie:acting:list','#','admin','2023-06-15 20:42:58','admin','2023-08-10 17:08:02','演职菜单'),
(2052,'演职查询',2051,1,'#','',NULL,1,0,'F','0','0','movie:acting:query','#','admin','2023-06-15 20:42:58','',NULL,''),
(2053,'演职新增',2051,2,'#','',NULL,1,0,'F','0','0','movie:acting:add','#','admin','2023-06-15 20:42:58','',NULL,''),
(2054,'演职修改',2051,3,'#','',NULL,1,0,'F','0','0','movie:acting:edit','#','admin','2023-06-15 20:42:58','',NULL,''),
(2055,'演职删除',2051,4,'#','',NULL,1,0,'F','0','0','movie:acting:remove','#','admin','2023-06-15 20:42:58','',NULL,''),
(2056,'演职导出',2051,5,'#','',NULL,1,0,'F','0','0','movie:acting:export','#','admin','2023-06-15 20:42:58','',NULL,''),
(2057,'资源管理',2002,7,'resource','movie/resource/index',NULL,1,0,'C','0','0','movie:resource:list','#','admin','2023-06-15 20:43:10','admin','2023-08-10 17:07:00','资源菜单'),
(2058,'资源查询',2057,1,'#','',NULL,1,0,'F','0','0','movie:resource:query','#','admin','2023-06-15 20:43:10','',NULL,''),
(2059,'资源新增',2057,2,'#','',NULL,1,0,'F','0','0','movie:resource:add','#','admin','2023-06-15 20:43:10','',NULL,''),
(2060,'资源修改',2057,3,'#','',NULL,1,0,'F','0','0','movie:resource:edit','#','admin','2023-06-15 20:43:10','',NULL,''),
(2061,'资源删除',2057,4,'#','',NULL,1,0,'F','0','0','movie:resource:remove','#','admin','2023-06-15 20:43:10','',NULL,''),
(2062,'资源导出',2057,5,'#','',NULL,1,0,'F','0','0','movie:resource:export','#','admin','2023-06-15 20:43:10','',NULL,''),
(2063,'集数',2002,6,'partNum','movie/partNum/index',NULL,1,0,'C','1','1','movie:partNum:list','#','admin','2023-06-15 20:43:20','admin','2023-08-15 14:51:54','集数菜单'),
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
(2081,'会员信息',2001,1,'member','movie/member/index',NULL,1,0,'C','0','0','movie:member:list','#','admin','2023-06-15 20:57:16','admin','2023-08-10 17:08:37','会员菜单'),
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
(2128,'搜索历史导出',2123,5,'#','',NULL,1,0,'F','0','0','movie:searchHistory:export','#','admin','2023-06-30 19:38:38','',NULL,''),
(2129,'域名',2000,1,'domain','movie/domain/index',NULL,1,0,'C','1','1','movie:domain:list','#','admin','2023-08-08 18:27:06','admin','2023-08-10 17:08:48','域名菜单'),
(2130,'域名查询',2129,1,'#','',NULL,1,0,'F','0','0','movie:domain:query','#','admin','2023-08-08 18:27:06','',NULL,''),
(2131,'域名新增',2129,2,'#','',NULL,1,0,'F','0','0','movie:domain:add','#','admin','2023-08-08 18:27:06','',NULL,''),
(2132,'域名修改',2129,3,'#','',NULL,1,0,'F','0','0','movie:domain:edit','#','admin','2023-08-08 18:27:06','',NULL,''),
(2133,'域名删除',2129,4,'#','',NULL,1,0,'F','0','0','movie:domain:remove','#','admin','2023-08-08 18:27:06','',NULL,''),
(2134,'域名导出',2129,5,'#','',NULL,1,0,'F','0','0','movie:domain:export','#','admin','2023-08-08 18:27:06','',NULL,''),
(2141,'采集信息',2000,1,'collectTask','movie/collectTask/index',NULL,1,0,'C','0','0','movie:collectTask:list','#','admin','2023-08-16 15:59:25','',NULL,'采集信息菜单'),
(2142,'采集信息查询',2141,1,'#','',NULL,1,0,'F','0','0','movie:collectTask:query','#','admin','2023-08-16 15:59:26','',NULL,''),
(2143,'采集信息新增',2141,2,'#','',NULL,1,0,'F','0','0','movie:collectTask:add','#','admin','2023-08-16 15:59:27','',NULL,''),
(2144,'采集信息修改',2141,3,'#','',NULL,1,0,'F','0','0','movie:collectTask:edit','#','admin','2023-08-16 15:59:27','',NULL,''),
(2145,'采集信息删除',2141,4,'#','',NULL,1,0,'F','0','0','movie:collectTask:remove','#','admin','2023-08-16 15:59:28','',NULL,''),
(2146,'采集信息导出',2141,5,'#','',NULL,1,0,'F','0','0','movie:collectTask:export','#','admin','2023-08-16 15:59:28','',NULL,''),
(2147,'国际化语言',2000,1,'i18n','movie/i18n/index',NULL,1,0,'C','0','0','movie:i18n:list','#','admin','2023-08-23 17:41:37','',NULL,'国际化语言菜单'),
(2148,'国际化语言查询',2147,1,'#','',NULL,1,0,'F','0','0','movie:i18n:query','#','admin','2023-08-23 17:41:38','',NULL,''),
(2149,'国际化语言新增',2147,2,'#','',NULL,1,0,'F','0','0','movie:i18n:add','#','admin','2023-08-23 17:41:39','',NULL,''),
(2150,'国际化语言修改',2147,3,'#','',NULL,1,0,'F','0','0','movie:i18n:edit','#','admin','2023-08-23 17:41:39','',NULL,''),
(2151,'国际化语言删除',2147,4,'#','',NULL,1,0,'F','0','0','movie:i18n:remove','#','admin','2023-08-23 17:41:40','',NULL,''),
(2152,'国际化语言导出',2147,5,'#','',NULL,1,0,'F','0','0','movie:i18n:export','#','admin','2023-08-23 17:41:40','',NULL,'');

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2023-06-14 15:47:50','',NULL,''),
(2,'se','项目经理',2,'0','admin','2023-06-14 15:47:50','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2023-06-14 15:47:50','',NULL,''),
(4,'user','普通员工',4,'0','admin','2023-06-14 15:47:50','',NULL,'');

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-06-14 15:47:51','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-06-14 15:47:51','',NULL,'普通角色');

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

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

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,103,'admin','管理员','00','kt@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-12-08 14:33:50','admin','2023-06-14 15:47:50','','2023-12-08 14:33:49','管理员'),
(2,105,'test','测试员','00','kt@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-06-14 15:47:50','admin','2023-06-14 15:47:50','',NULL,'测试员');

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2);

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2);

/*Data for the table `vo_category` */

insert  into `vo_category`(`category_id`,`parent_id`,`icon`,`code`,`name`,`mark`,`status`,`stint`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,NULL,NULL,NULL,'电影','1',1,0,NULL,'2023-06-27 14:46:48',NULL,NULL),
(2,NULL,NULL,NULL,'电视剧','1',1,0,NULL,'2023-06-27 14:47:00',NULL,NULL),
(3,NULL,NULL,NULL,'综艺','1',1,0,NULL,'2023-06-27 14:47:12',NULL,NULL),
(4,NULL,NULL,NULL,'动漫','1',1,0,NULL,'2023-06-27 14:47:27',NULL,NULL),
(6,NULL,NULL,NULL,'纪录片','1',1,0,NULL,'2023-06-27 14:47:27',NULL,'2023-08-28 18:08:41'),
(8,NULL,NULL,NULL,'体育','1',1,0,NULL,'2023-06-27 14:47:27',NULL,'2023-08-19 20:58:31'),
(9,NULL,NULL,NULL,'福利','1',0,1,NULL,'2023-06-27 14:47:27',NULL,'2023-08-28 19:30:58');

/*Data for the table `vo_classify` */

insert  into `vo_classify`(`classify_id`,`category_id`,`icon`,`name`,`status`,`types`,`is_show`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,NULL,NULL,'最新',1,1,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(2,NULL,NULL,'最热',1,1,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(3,NULL,NULL,'评分',1,1,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(4,NULL,NULL,'2023',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(5,NULL,NULL,'2022',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(6,NULL,NULL,'2021',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(7,NULL,NULL,'2020',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(8,NULL,NULL,'10年代',1,4,1,NULL,'2023-06-27 18:09:02',NULL,'2023-06-27 16:15:57'),
(9,NULL,NULL,'00年代',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(10,NULL,NULL,'90年代',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(11,NULL,NULL,'80年代',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(12,NULL,NULL,'更早',1,4,1,NULL,'2023-06-27 18:09:02',NULL,NULL),
(15,NULL,NULL,'2024',1,4,1,NULL,'2023-08-18 00:33:21',NULL,NULL) ;

/*Data for the table `vo_resource` */

insert  into `vo_resource`(`resource_id`,`name`,`def`,`url`,`m3u8_analyze`,`remark`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,'iyf',0,'',NULL,NULL,NULL,NULL,NULL,NULL) ;

/*Data for the table `vo_tags` */

insert  into `vo_tags`(`tag_id`,`name`,`base_color`,`text_color`,`status`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,'本月最佳','red','白色',1,NULL,'2023-06-15 20:27:15',NULL,NULL),
(2,'多人收藏',NULL,NULL,1,NULL,'2023-06-27 15:00:34',NULL,NULL),
(3,'最多人看',NULL,NULL,1,NULL,'2023-06-27 15:00:50',NULL,NULL),
(5,'今日热点',NULL,NULL,1,NULL,'2023-06-27 15:01:12',NULL,NULL),
(6,'高分推荐',NULL,NULL,1,NULL,'2023-06-27 15:01:26',NULL,NULL),
(7,'热度飙升',NULL,NULL,1,NULL,'2023-06-27 15:01:51',NULL,NULL),
(8,'推荐',NULL,NULL,1,NULL,'2023-06-27 15:02:22',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
