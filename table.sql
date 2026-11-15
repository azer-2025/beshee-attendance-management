/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yuangongguanli
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yuangongguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yuangongguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `name` varchar(100) NOT NULL COMMENT '配置参数名称',
                          `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
                          `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `dangan_uuid_number` varchar(200) DEFAULT NULL COMMENT '档案编号 Search111 ',
                          `dangan_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
                          `dangan_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
                          `dangan_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
                          `dangan_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
                          `dangan_chusheng` varchar(200) DEFAULT NULL COMMENT '出生年月',
                          `dangan_file` varchar(200) DEFAULT NULL COMMENT '附件',
                          `sex_types` int(11) DEFAULT NULL COMMENT '性别',
                          `dangan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
                          `ruzhi_time` timestamp NULL DEFAULT NULL COMMENT '入职时间',
                          `dangan_xueli_content` longtext COMMENT '学历情况',
                          `dangan_shixi_content` longtext COMMENT '实习情况',
                          `dangan_gongzuo_content` longtext COMMENT '工作情况',
                          `dangan_beizhu_content` longtext COMMENT '备注',
                          `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
                          `update_time` timestamp NULL DEFAULT NULL COMMENT '最后更新时间',
                          `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='档案';

/*Data for the table `dangan` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
                              `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
                              `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
                              `code_index` int(11) DEFAULT NULL COMMENT '编码',
                              `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
                              `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
                              `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
                              `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
                           `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
                           `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
                           `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
                           `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
                           `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
                           `gonggao_content` longtext COMMENT '公告详情 ',
                           `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
                        `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                        `role_zh_name` varchar(200) DEFAULT NULL COMMENT '角色汉字 Search111 ',
                        `role_en_name` varchar(200) DEFAULT NULL COMMENT '角色表名 Search111 ',
                        `direction` varchar(200) DEFAULT NULL COMMENT '使用方向 Search111 ',
                        `yiji_menu_name` varchar(200) DEFAULT NULL COMMENT '一级菜单名称 Search111 ',
                        `yiji_menu_icon` varchar(200) DEFAULT NULL COMMENT '一级菜单图标',
                        `erji_menu` varchar(2000) DEFAULT NULL COMMENT '二级菜单',
                        `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
                        `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
                        `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
                        `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='菜单';

/*Data for the table `menu` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
                           `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
                           `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
                           `qiandao_shangban_time` timestamp NULL DEFAULT NULL COMMENT '上班签到时间',
                           `qiandao_shangban_types` int(11) DEFAULT NULL COMMENT '上班签到状态 Search111',
                           `qiandao_xiaban_time` timestamp NULL DEFAULT NULL COMMENT '下班签退时间',
                           `qiandao_xiaban_types` int(11) DEFAULT NULL COMMENT '下班签退状态 Search111',
                           `insert_time` date DEFAULT NULL COMMENT '所属日期',
                           `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='员工签到';

/*Data for the table `qiandao` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `userid` bigint(20) NOT NULL COMMENT '员工id',
                         `username` varchar(100) NOT NULL COMMENT '员工名',
                         `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
                         `role` varchar(100) DEFAULT NULL COMMENT '角色',
                         `token` varchar(200) NOT NULL COMMENT '密码',
                         `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                         `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `username` varchar(100) NOT NULL COMMENT '员工名',
                         `password` varchar(100) NOT NULL COMMENT '密码',
                         `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
                         `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
                         `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
                         `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
                         `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
                         `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
                         `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
                         `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
                         `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
                         `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
                         `xinzi_content` longtext COMMENT '备注 ',
                         `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
                         `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
                            `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `username` varchar(200) DEFAULT NULL COMMENT '账户',
                            `password` varchar(200) DEFAULT NULL COMMENT '密码',
                            `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
                            `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
                            `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
                            `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
                            `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
                            `sex_types` int(11) DEFAULT NULL COMMENT '性别',
                            `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
                            `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
                            `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
                            `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
                            `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `yuangongchuchai` */

DROP TABLE IF EXISTS `yuangongchuchai`;

CREATE TABLE `yuangongchuchai` (
                                   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                                   `yuangong_id` int(200) DEFAULT NULL COMMENT '员工',
                                   `yuangongchuchai_name` varchar(200) DEFAULT NULL COMMENT '出差标题 Search111 ',
                                   `yuangongchuchai_text` longtext COMMENT '出差缘由',
                                   `yuangongchuchai_address` varchar(200) DEFAULT NULL COMMENT '出差地点',
                                   `yuangongchuchai_types` int(11) DEFAULT NULL COMMENT '出差类型 Search111',
                                   `yuangongchuchai_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '出差开始时间',
                                   `yuangongchuchai_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '出差结束时间',
                                   `yuangongchuchai_jiaotonggongju_types` int(11) DEFAULT NULL COMMENT '交通工具 Search111',
                                   `yuzhi_feiyong` decimal(10,2) DEFAULT NULL COMMENT '预支费用',
                                   `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
                                   `yuangongchuchai_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
                                   `yuangongchuchai_yesno_text` longtext COMMENT '处理意见',
                                   `yuangongchuchai_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
                                   `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
                                   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工出差';

/*Data for the table `yuangongchuchai` */

-- Data rows omitted from the public source snapshot.


/*Table structure for table `yuangongqingjia` */

DROP TABLE IF EXISTS `yuangongqingjia`;

CREATE TABLE `yuangongqingjia` (
                                   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                                   `yuangong_id` int(200) DEFAULT NULL COMMENT '员工',
                                   `yuangongqingjia_text` longtext COMMENT '请假缘由',
                                   `yuangongqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
                                   `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
                                   `yuangongqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
                                   `yuangongqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
                                   `yuangongqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
                                   `yuangongqingjia_yesno_text` longtext COMMENT '处理意见',
                                   `yuangongqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
                                   `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
                                   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工请假';

/*Data for the table `yuangongqingjia` */

-- Data rows omitted from the public source snapshot.


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
