/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengyishujie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengyishujie` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengyishujie`;

/*Table structure for table `biaoyanxiangmu` */

DROP TABLE IF EXISTS `biaoyanxiangmu`;

CREATE TABLE `biaoyanxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoyanxiangmu_name` varchar(255) DEFAULT NULL COMMENT '表演项目 Search111',
  `biaoyanxiangmu_types` int(200) DEFAULT NULL COMMENT '表演类型 Search111',
  `biaoyanxiangmu_number` int(200) DEFAULT NULL COMMENT '报名人数',
  `biaoyanxiangmu_time` timestamp NULL DEFAULT NULL COMMENT '结束报名时间',
  `biaoyanxiangmu_photo` varchar(255) DEFAULT NULL COMMENT '预览图',
  `biaoyanxiangmu_content` text COMMENT '表演规则',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='表演项目';

/*Data for the table `biaoyanxiangmu` */

insert  into `biaoyanxiangmu`(`id`,`biaoyanxiangmu_name`,`biaoyanxiangmu_types`,`biaoyanxiangmu_number`,`biaoyanxiangmu_time`,`biaoyanxiangmu_photo`,`biaoyanxiangmu_content`,`insert_time`,`create_time`) values (22,'表演项目1',1,2,'2021-04-30 12:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424562997.jpg','表演规则1\r\n','2021-04-26 16:09:34','2021-04-26 16:09:34'),(23,'表演项目2',2,2,'2021-05-08 12:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424620582.gif','表演规则2\r\n','2021-04-26 16:10:26','2021-04-26 16:10:26'),(24,'表演项目3',3,3,'2022-05-07 12:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424652128.jpg','表演规则3\r\n','2021-04-26 16:10:55','2021-04-26 16:10:55');

/*Table structure for table `biaoyanxiangmu_collection` */

DROP TABLE IF EXISTS `biaoyanxiangmu_collection`;

CREATE TABLE `biaoyanxiangmu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoyanxiangmu_id` int(11) DEFAULT NULL COMMENT '表演项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='表演项目收藏';

/*Data for the table `biaoyanxiangmu_collection` */

insert  into `biaoyanxiangmu_collection`(`id`,`biaoyanxiangmu_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,22,1,'2021-04-26 17:27:31','2021-04-26 17:27:31');

/*Table structure for table `biaoyanxiangmu_liuyan` */

DROP TABLE IF EXISTS `biaoyanxiangmu_liuyan`;

CREATE TABLE `biaoyanxiangmu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoyanxiangmu_id` int(11) DEFAULT NULL COMMENT '表演项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `biaoyanxiangmu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='表演项目留言';

/*Data for the table `biaoyanxiangmu_liuyan` */

insert  into `biaoyanxiangmu_liuyan`(`id`,`biaoyanxiangmu_id`,`yonghu_id`,`biaoyanxiangmu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,23,1,'','1111\r\n','2021-04-26 16:52:26','2021-04-26 16:52:26'),(2,22,1,'13212312',NULL,'2021-04-26 17:27:42','2021-04-26 17:27:42'),(3,22,1,'13212312',NULL,'2021-04-26 17:27:42','2021-04-26 17:27:42');

/*Table structure for table `biaoyanxiangmu_order` */

DROP TABLE IF EXISTS `biaoyanxiangmu_order`;

CREATE TABLE `biaoyanxiangmu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoyanxiangmu_id` int(200) DEFAULT NULL COMMENT '报名项目 ',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '报名人 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='表演项目报名模块';

/*Data for the table `biaoyanxiangmu_order` */

insert  into `biaoyanxiangmu_order`(`id`,`biaoyanxiangmu_id`,`yonghu_id`,`insert_time`,`create_time`) values (23,23,1,'2021-04-26 16:41:02','2021-04-26 16:41:02'),(24,22,1,'2021-04-26 17:27:36','2021-04-26 17:27:36');

/*Table structure for table `bishaijieguo` */

DROP TABLE IF EXISTS `bishaijieguo`;

CREATE TABLE `bishaijieguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bishaixiangm_id` int(200) DEFAULT NULL COMMENT '比赛项目 ',
  `bishaijieguo_time` timestamp NULL DEFAULT NULL COMMENT '比赛结束时间',
  `biaoyanxiangmu_bisaijieguo` varchar(11) DEFAULT NULL COMMENT '比赛结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='比赛结果';

/*Data for the table `bishaijieguo` */

/*Table structure for table `bishaixiangm` */

DROP TABLE IF EXISTS `bishaixiangm`;

CREATE TABLE `bishaixiangm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bishaixiangm_name` varchar(255) DEFAULT NULL COMMENT '比赛项目 Search111',
  `bishaixiangm_types` int(200) DEFAULT NULL COMMENT '比赛类型 Search111',
  `bishaixiangm_number` int(200) DEFAULT NULL COMMENT '报名人数',
  `bishaixiangm_time` timestamp NULL DEFAULT NULL COMMENT '结束报名时间',
  `bishaixiangm_photo` varchar(255) DEFAULT NULL COMMENT '预览图',
  `bishaixiangm_content` text COMMENT '比赛规则',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='比赛项目';

/*Data for the table `bishaixiangm` */

insert  into `bishaixiangm`(`id`,`bishaixiangm_name`,`bishaixiangm_types`,`bishaixiangm_number`,`bishaixiangm_time`,`bishaixiangm_photo`,`bishaixiangm_content`,`insert_time`,`create_time`) values (22,'比赛项目1',2,0,'2021-04-30 12:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619425512180.jpg','比赛规则1\r\n','2021-04-26 16:25:19','2021-04-26 16:25:19'),(23,'比赛项目2',2,0,'2021-05-08 12:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619425580310.jpg','比赛规则2\r\n','2021-04-26 16:26:26','2021-04-26 16:26:26'),(24,'比赛项目3',1,0,'2021-06-05 06:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619425601622.jpg','比赛规则3\r\n','2021-04-26 16:26:46','2021-04-26 16:26:46'),(25,'123',2,1,'2021-05-06 00:00:00','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619429196786.jpg','123\r\n','2021-04-26 17:26:37','2021-04-26 17:26:37');

/*Table structure for table `bishaixiangm_collection` */

DROP TABLE IF EXISTS `bishaixiangm_collection`;

CREATE TABLE `bishaixiangm_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bishaixiangm_id` int(11) DEFAULT NULL COMMENT '比赛项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='比赛项目收藏';

/*Data for the table `bishaixiangm_collection` */

/*Table structure for table `bishaixiangm_liuyan` */

DROP TABLE IF EXISTS `bishaixiangm_liuyan`;

CREATE TABLE `bishaixiangm_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bishaixiangm_id` int(11) DEFAULT NULL COMMENT '比赛项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `bishaixiangm_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='比赛项目留言';

/*Data for the table `bishaixiangm_liuyan` */

insert  into `bishaixiangm_liuyan`(`id`,`bishaixiangm_id`,`yonghu_id`,`bishaixiangm_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,25,1,'1111111111111111',NULL,'2021-04-26 17:27:23','2021-04-26 17:27:23');

/*Table structure for table `bishaixiangm_order` */

DROP TABLE IF EXISTS `bishaixiangm_order`;

CREATE TABLE `bishaixiangm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bishaixiangm_id` int(200) DEFAULT NULL COMMENT '报名项目 ',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '报名人 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='比赛项目报名模块';

/*Data for the table `bishaixiangm_order` */

insert  into `bishaixiangm_order`(`id`,`bishaixiangm_id`,`yonghu_id`,`insert_time`,`create_time`) values (22,25,1,'2021-04-26 17:27:17','2021-04-26 17:27:17');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/daxueshengyishujie/upload/1619426225912.jpg'),(2,'picture2','http://localhost:8080/daxueshengyishujie/upload/1619426231686.jpg'),(3,'picture3','http://localhost:8080/daxueshengyishujie/upload/1619426239640.jpg'),(6,'homepage','http://localhost:8080/daxueshengyishujie/upload/1619426247171.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-26 15:45:36'),(2,'sex_types','性别',2,'女',NULL,'2021-04-26 15:45:36'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-26 15:45:36'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-26 15:45:36'),(5,'bishaixiangm_types','比赛类型名称',1,'比赛类型1',NULL,'2021-04-26 15:45:36'),(6,'bishaixiangm_types','比赛类型名称',2,'比赛类型2',NULL,'2021-04-26 15:45:36'),(7,'biaoyanxiangmu_types','表演类型名称',1,'表演类型1',NULL,'2021-04-26 15:45:37'),(8,'biaoyanxiangmu_types','表演类型名称',2,'表演类型2',NULL,'2021-04-26 15:45:37'),(9,'biaoyanxiangmu_types','表演类型名称',3,'表演类型3',NULL,'2021-04-26 17:25:20');

/*Table structure for table `jieqianxinxi` */

DROP TABLE IF EXISTS `jieqianxinxi`;

CREATE TABLE `jieqianxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jieqianxinxi_name` varchar(255) DEFAULT NULL COMMENT '标题 Search111',
  `jieqianxinxi_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `jieqianxinxi_content` text COMMENT '详情内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='节前信息';

/*Data for the table `jieqianxinxi` */

insert  into `jieqianxinxi`(`id`,`jieqianxinxi_name`,`jieqianxinxi_photo`,`insert_time`,`jieqianxinxi_content`,`create_time`) values (1,'节前信息1','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424269162.jpg','2021-04-26 16:05:12','详情内容1\r\n','2021-04-26 16:05:12'),(2,'节前信息2','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424321620.jpg','2021-04-26 16:05:24','详情内容2\r\n','2021-04-26 16:05:24'),(3,'节前信息3','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619424329835.jpg','2021-04-26 16:05:32','详情内容3\r\n','2021-04-26 16:05:32');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/daxueshengyishujie/file/download?fileName=1619426271411.jpg','2021-04-26 16:37:56','公告详情1\r\n','2021-04-26 16:37:56'),(2,'公告名称2',2,'http://localhost:8080/daxueshengyishujie/file/download?fileName=1619426287741.jpg','2021-04-26 16:38:10','公告详情2\r\n','2021-04-26 16:38:10');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ca79y3pdoeugxybtkrnofz9tdin2q2j6','2021-04-26 15:41:59','2021-04-26 18:23:38'),(2,1,'111','yonghu','用户','rwrnslmt1ka4fgbcvryrat9stvk7jod7','2021-04-26 16:40:34','2021-04-26 18:26:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011211141','13516155411','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619426391502.jpg','2021-04-26 16:39:52'),(2,'222','123456','用户2',2,'410882200011211142','13516155412','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619426409350.jpg','2021-04-26 16:40:10'),(3,'333','123456','用户3',1,'410882200011211143','13516155413','http://localhost:8080/daxueshengyishujie/file/download?fileName=1619429063502.jpg','2021-04-26 17:24:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
