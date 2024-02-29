/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot59b1w
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot59b1w` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot59b1w`;

/*Table structure for table `banjifenlei` */

DROP TABLE IF EXISTS `banjifenlei`;

CREATE TABLE `banjifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='班级分类';

/*Data for the table `banjifenlei` */

insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (51,'2021-05-12 10:15:24','分类1');
insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (52,'2021-05-12 10:15:24','分类2');
insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (53,'2021-05-12 10:15:24','分类3');
insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (54,'2021-05-12 10:15:24','分类4');
insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (55,'2021-05-12 10:15:24','分类5');
insert  into `banjifenlei`(`id`,`addtime`,`fenlei`) values (56,'2021-05-12 10:15:24','分类6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot59b1w/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot59b1w/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot59b1w/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-05-12 10:15:24','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (92,'2021-05-12 10:15:24','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (93,'2021-05-12 10:15:24','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (94,'2021-05-12 10:15:24','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (95,'2021-05-12 10:15:24','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (96,'2021-05-12 10:15:24','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (21,'2021-05-12 10:15:24','教师1','123456','教师姓名1','男','职务1','班级1','13823888881','773890001@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (22,'2021-05-12 10:15:24','教师2','123456','教师姓名2','男','职务2','班级2','13823888882','773890002@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (23,'2021-05-12 10:15:24','教师3','123456','教师姓名3','男','职务3','班级3','13823888883','773890003@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (24,'2021-05-12 10:15:24','教师4','123456','教师姓名4','男','职务4','班级4','13823888884','773890004@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (25,'2021-05-12 10:15:24','教师5','123456','教师姓名5','男','职务5','班级5','13823888885','773890005@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwu`,`banji`,`shouji`,`youxiang`) values (26,'2021-05-12 10:15:24','教师6','123456','教师姓名6','男','职务6','班级6','13823888886','773890006@qq.com');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengjianjie` longtext COMMENT '课程简介',
  `kechengwenjian` varchar(200) DEFAULT NULL COMMENT '课程文件',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xiangqing` longtext COMMENT '详情',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (31,'2021-05-12 10:15:24','课程名称1','科目1','班级1','课程简介1','','课时1','学分1','2021-05-12','详情1','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian1.jpg','工号1','教师姓名1');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (32,'2021-05-12 10:15:24','课程名称2','科目2','班级2','课程简介2','','课时2','学分2','2021-05-12','详情2','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian2.jpg','工号2','教师姓名2');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (33,'2021-05-12 10:15:24','课程名称3','科目3','班级3','课程简介3','','课时3','学分3','2021-05-12','详情3','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian3.jpg','工号3','教师姓名3');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (34,'2021-05-12 10:15:24','课程名称4','科目4','班级4','课程简介4','','课时4','学分4','2021-05-12','详情4','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian4.jpg','工号4','教师姓名4');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (35,'2021-05-12 10:15:24','课程名称5','科目5','班级5','课程简介5','','课时5','学分5','2021-05-12','详情5','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian5.jpg','工号5','教师姓名5');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`kechengjianjie`,`kechengwenjian`,`keshi`,`xuefen`,`faburiqi`,`xiangqing`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (36,'2021-05-12 10:15:24','课程名称6','科目6','班级6','课程简介6','','课时6','学分6','2021-05-12','详情6','http://localhost:8080/springboot59b1w/upload/kechengxinxi_kechengtupian6.jpg','工号6','教师姓名6');

/*Table structure for table `kechengzuoye` */

DROP TABLE IF EXISTS `kechengzuoye`;

CREATE TABLE `kechengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `zuoyewenjian` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoyexiangqing` longtext COMMENT '作业详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程作业';

/*Data for the table `kechengzuoye` */

insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (61,'2021-05-12 10:15:24','课程名称1','科目1','班级1','作业名称1','作业内容1','','作业详情1','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian1.jpg','工号1','教师姓名1');
insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (62,'2021-05-12 10:15:24','课程名称2','科目2','班级2','作业名称2','作业内容2','','作业详情2','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian2.jpg','工号2','教师姓名2');
insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (63,'2021-05-12 10:15:24','课程名称3','科目3','班级3','作业名称3','作业内容3','','作业详情3','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian3.jpg','工号3','教师姓名3');
insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (64,'2021-05-12 10:15:24','课程名称4','科目4','班级4','作业名称4','作业内容4','','作业详情4','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian4.jpg','工号4','教师姓名4');
insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (65,'2021-05-12 10:15:24','课程名称5','科目5','班级5','作业名称5','作业内容5','','作业详情5','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian5.jpg','工号5','教师姓名5');
insert  into `kechengzuoye`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`zuoyeneirong`,`zuoyewenjian`,`zuoyexiangqing`,`fabushijian`,`kechengtupian`,`gonghao`,`jiaoshixingming`) values (66,'2021-05-12 10:15:24','课程名称6','科目6','班级6','作业名称6','作业内容6','','作业详情6','2021-05-12','http://localhost:8080/springboot59b1w/upload/kechengzuoye_kechengtupian6.jpg','工号6','教师姓名6');

/*Table structure for table `kemufenlei` */

DROP TABLE IF EXISTS `kemufenlei`;

CREATE TABLE `kemufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='科目分类';

/*Data for the table `kemufenlei` */

insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (41,'2021-05-12 10:15:24','分类1');
insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (42,'2021-05-12 10:15:24','分类2');
insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (43,'2021-05-12 10:15:24','分类3');
insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (44,'2021-05-12 10:15:24','分类4');
insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (45,'2021-05-12 10:15:24','分类5');
insert  into `kemufenlei`(`id`,`addtime`,`fenlei`) values (46,'2021-05-12 10:15:24','分类6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='校园公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-05-12 10:15:24','标题1','简介1','http://localhost:8080/springboot59b1w/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-05-12 10:15:24','标题2','简介2','http://localhost:8080/springboot59b1w/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-05-12 10:15:24','标题3','简介3','http://localhost:8080/springboot59b1w/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-05-12 10:15:24','标题4','简介4','http://localhost:8080/springboot59b1w/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-05-12 10:15:24','标题5','简介5','http://localhost:8080/springboot59b1w/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-05-12 10:15:24','标题6','简介6','http://localhost:8080/springboot59b1w/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 10:15:24');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-05-12 10:15:24','学生1','123456','学生姓名1','男','院系1','班级1','13823888881','773890001@qq.com','440300199101010001');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (12,'2021-05-12 10:15:24','学生2','123456','学生姓名2','男','院系2','班级2','13823888882','773890002@qq.com','440300199202020002');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (13,'2021-05-12 10:15:24','学生3','123456','学生姓名3','男','院系3','班级3','13823888883','773890003@qq.com','440300199303030003');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (14,'2021-05-12 10:15:24','学生4','123456','学生姓名4','男','院系4','班级4','13823888884','773890004@qq.com','440300199404040004');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (15,'2021-05-12 10:15:24','学生5','123456','学生姓名5','男','院系5','班级5','13823888885','773890005@qq.com','440300199505050005');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`) values (16,'2021-05-12 10:15:24','学生6','123456','学生姓名6','男','院系6','班级6','13823888886','773890006@qq.com','440300199606060006');

/*Table structure for table `zuoyepigai` */

DROP TABLE IF EXISTS `zuoyepigai`;

CREATE TABLE `zuoyepigai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyepingfen` int(11) DEFAULT NULL COMMENT '作业评分',
  `pigaiwenjian` varchar(200) DEFAULT NULL COMMENT '批改文件',
  `jiaoshipingyu` longtext COMMENT '教师评语',
  `pigairiqi` date DEFAULT NULL COMMENT '批改日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='作业批改';

/*Data for the table `zuoyepigai` */

insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (81,'2021-05-12 10:15:24','课程名称1','科目1','班级1','学号1','学生姓名1','作业名称1',1,'','教师评语1','2021-05-12','工号1','教师姓名1');
insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (82,'2021-05-12 10:15:24','课程名称2','科目2','班级2','学号2','学生姓名2','作业名称2',2,'','教师评语2','2021-05-12','工号2','教师姓名2');
insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (83,'2021-05-12 10:15:24','课程名称3','科目3','班级3','学号3','学生姓名3','作业名称3',3,'','教师评语3','2021-05-12','工号3','教师姓名3');
insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (84,'2021-05-12 10:15:24','课程名称4','科目4','班级4','学号4','学生姓名4','作业名称4',4,'','教师评语4','2021-05-12','工号4','教师姓名4');
insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (85,'2021-05-12 10:15:24','课程名称5','科目5','班级5','学号5','学生姓名5','作业名称5',5,'','教师评语5','2021-05-12','工号5','教师姓名5');
insert  into `zuoyepigai`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`xuehao`,`xueshengxingming`,`zuoyemingcheng`,`zuoyepingfen`,`pigaiwenjian`,`jiaoshipingyu`,`pigairiqi`,`gonghao`,`jiaoshixingming`) values (86,'2021-05-12 10:15:24','课程名称6','科目6','班级6','学号6','学生姓名6','作业名称6',6,'','教师评语6','2021-05-12','工号6','教师姓名6');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `xueshengzuoye` varchar(200) DEFAULT NULL COMMENT '学生作业',
  `tijiaoshijian` date DEFAULT NULL COMMENT '提交时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (71,'2021-05-12 10:15:24','课程名称1','科目1','班级1','作业名称1','','2021-05-12','工号1','学号1','学生姓名1','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (72,'2021-05-12 10:15:24','课程名称2','科目2','班级2','作业名称2','','2021-05-12','工号2','学号2','学生姓名2','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (73,'2021-05-12 10:15:24','课程名称3','科目3','班级3','作业名称3','','2021-05-12','工号3','学号3','学生姓名3','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (74,'2021-05-12 10:15:24','课程名称4','科目4','班级4','作业名称4','','2021-05-12','工号4','学号4','学生姓名4','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (75,'2021-05-12 10:15:24','课程名称5','科目5','班级5','作业名称5','','2021-05-12','工号5','学号5','学生姓名5','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`banji`,`zuoyemingcheng`,`xueshengzuoye`,`tijiaoshijian`,`gonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (76,'2021-05-12 10:15:24','课程名称6','科目6','班级6','作业名称6','','2021-05-12','工号6','学号6','学生姓名6','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
