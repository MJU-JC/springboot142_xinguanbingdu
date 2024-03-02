/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiechuzhe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiechuzhe` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiechuzhe`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-22 15:02:57'),(2,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-22 15:02:57'),(3,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-01-22 15:02:57'),(4,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-01-22 15:02:57'),(5,'jiankang_types','健康状态',1,'健康',NULL,NULL,'2022-01-22 15:02:57'),(6,'jiankang_types','健康状态',2,'疑似',NULL,NULL,'2022-01-22 15:02:57'),(7,'jiankang_types','健康状态',3,'感染',NULL,NULL,'2022-01-22 15:02:57'),(8,'didian_types','地点状态',1,'安全地区',NULL,NULL,'2022-01-22 15:02:57'),(9,'didian_types','地点状态',2,'风险地区',NULL,NULL,'2022-01-22 15:02:57'),(10,'jiance_types','检测结果',1,'安全',NULL,NULL,'2022-01-22 15:02:58'),(11,'jiance_types','检测结果',2,'感染',NULL,NULL,'2022-01-22 15:02:58'),(12,'yimiao_types','疫苗类型名称',1,'一期疫苗',NULL,NULL,'2022-01-22 15:02:58'),(13,'yimiao_types','疫苗类型名称',2,'二期疫苗',NULL,NULL,'2022-01-22 15:02:58'),(14,'yimiao_types','疫苗类型名称',3,'三期疫苗',NULL,NULL,'2022-01-22 15:02:58'),(15,'yimiaoyuyue_types','状态',1,'已预约',NULL,NULL,'2022-01-22 15:02:58'),(16,'yimiaoyuyue_types','状态',2,'已打',NULL,NULL,'2022-01-22 15:02:58'),(17,'kouzhao_types','口罩类型名称',1,'N95',NULL,NULL,'2022-01-22 15:02:58'),(18,'kouzhao_types','口罩类型名称',2,'医用口罩',NULL,NULL,'2022-01-22 15:02:58'),(19,'kouzhao_types','口罩类型名称',3,'一次性口罩',NULL,NULL,'2022-01-22 15:02:58'),(20,'kouzhaoyuyue_types','状态',1,'已预订',NULL,NULL,'2022-01-22 15:02:58'),(21,'kouzhaoyuyue_types','状态',2,'已领取',NULL,NULL,'2022-01-22 15:02:58'),(22,'yimiao_types','疫苗类型名称',4,'四期疫苗',NULL,'','2022-01-22 17:12:27');

/*Table structure for table `didian` */

DROP TABLE IF EXISTS `didian`;

CREATE TABLE `didian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `didian_name` varchar(200) DEFAULT NULL COMMENT '地点名称 Search111 ',
  `didian_types` int(11) DEFAULT NULL COMMENT '地点状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='地点';

/*Data for the table `didian` */

insert  into `didian`(`id`,`didian_name`,`didian_types`,`insert_time`,`create_time`) values (1,'地点1',1,'2022-01-22 15:35:50','2022-01-22 15:35:50'),(2,'地点2',1,'2022-01-22 15:35:58','2022-01-22 15:35:58'),(3,'地点3',1,'2022-01-22 15:36:05','2022-01-22 15:36:05'),(4,'地点4',1,'2022-01-22 17:12:40','2022-01-22 17:12:40');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/jiechuzhe/upload/1642842774440.jpg',1,'2022-01-22 15:02:57','<p>公告详情1111</p>','2022-01-22 15:02:57'),(2,'公告1','http://localhost:8080/jiechuzhe/upload/1642836973578.jpg',1,'2022-01-22 15:36:21','<p>公告1的内容</p>','2022-01-22 15:36:21');

/*Table structure for table `guiji` */

DROP TABLE IF EXISTS `guiji`;

CREATE TABLE `guiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `didian_id` int(11) DEFAULT NULL COMMENT '地点',
  `guiji_time` timestamp NULL DEFAULT NULL COMMENT '去的时间 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户轨迹';

/*Data for the table `guiji` */

insert  into `guiji`(`id`,`yonghu_id`,`didian_id`,`guiji_time`,`insert_time`,`create_time`) values (1,1,3,'2022-01-07 00:00:00','2022-01-22 16:42:43','2022-01-22 16:42:43'),(2,1,2,'2022-01-22 02:02:03','2022-01-22 16:43:06','2022-01-22 16:43:06'),(3,2,4,'2022-01-20 00:00:00','2022-01-22 17:14:00','2022-01-22 17:14:00'),(4,2,3,'2022-01-28 04:04:02','2022-01-22 17:18:21','2022-01-22 17:18:21');

/*Table structure for table `hesuan` */

DROP TABLE IF EXISTS `hesuan`;

CREATE TABLE `hesuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '检测人',
  `jiance_types` int(11) DEFAULT NULL COMMENT '检测结果 Search111 ',
  `jiance_time` date DEFAULT NULL COMMENT '检测时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='核算检测';

/*Data for the table `hesuan` */

insert  into `hesuan`(`id`,`yonghu_id`,`jiance_types`,`jiance_time`,`insert_time`,`create_time`) values (1,1,1,'2022-01-22','2022-01-22 15:36:42','2022-01-22 15:36:42'),(2,2,1,'2022-01-21','2022-01-22 17:14:12','2022-01-22 17:14:12');

/*Table structure for table `kouzhao` */

DROP TABLE IF EXISTS `kouzhao`;

CREATE TABLE `kouzhao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kouzhao_name` varchar(200) DEFAULT NULL COMMENT '口罩名称 Search111 ',
  `kouzhao_types` int(11) DEFAULT NULL COMMENT '口罩类型 Search111 ',
  `kouzhao_number` int(11) DEFAULT NULL COMMENT '口罩数量  Search111',
  `kouzhao_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='口罩';

/*Data for the table `kouzhao` */

insert  into `kouzhao`(`id`,`kouzhao_name`,`kouzhao_types`,`kouzhao_number`,`kouzhao_content`,`insert_time`,`create_time`) values (1,'来自北京的n95口罩',1,700,'<p>无</p>','2022-01-22 15:38:41','2022-01-22 15:38:41'),(2,'一次性口罩',3,1400,'<p>无</p>','2022-01-22 17:14:44','2022-01-22 17:14:44');

/*Table structure for table `kouzhaoyuyue` */

DROP TABLE IF EXISTS `kouzhaoyuyue`;

CREATE TABLE `kouzhaoyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预订人',
  `kouzhao_id` int(11) DEFAULT NULL COMMENT '口罩',
  `yueding_number` int(11) DEFAULT NULL COMMENT '预定数量',
  `kouzhaoyuyue_types` int(11) DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预订时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='口罩预订';

/*Data for the table `kouzhaoyuyue` */

insert  into `kouzhaoyuyue`(`id`,`yonghu_id`,`kouzhao_id`,`yueding_number`,`kouzhaoyuyue_types`,`insert_time`,`create_time`) values (1,1,1,200,2,'2022-01-22 15:38:41','2022-01-22 15:27:08'),(2,1,1,100,2,'2022-01-22 15:38:41','2022-01-22 15:27:08'),(3,2,2,100,1,'2022-01-22 17:19:23','2022-01-22 17:19:23');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','zud66yn8f6anj0e1anw7ahap1q3n1iqo','2022-01-22 15:26:22','2022-01-22 18:27:58'),(2,1,'a1','yonghu','用户','cs7lcc6sl1hvv6bq5d67zikhc8lgsl0d','2022-01-22 15:27:20','2022-01-22 17:42:23'),(3,1,'a1','yihu','医护人员','ftb9vc021i0vugdentyemzb4n1uciw4j','2022-01-22 17:16:30','2022-01-22 18:16:31'),(4,2,'a2','yonghu','用户','71axaa6jjqdyolsodsfuz5vhvvg2lfbv','2022-01-22 17:17:26','2022-01-22 18:17:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yihu` */

DROP TABLE IF EXISTS `yihu`;

CREATE TABLE `yihu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yihu_name` varchar(200) DEFAULT NULL COMMENT '医护人员姓名 Search111 ',
  `yihu_phone` varchar(200) DEFAULT NULL COMMENT '医护人员手机号 Search111 ',
  `yihu_id_number` varchar(200) DEFAULT NULL COMMENT '医护人员身份证号 Search111 ',
  `yihu_photo` varchar(200) DEFAULT NULL COMMENT '医护人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医护人员';

/*Data for the table `yihu` */

insert  into `yihu`(`id`,`username`,`password`,`yihu_name`,`yihu_phone`,`yihu_id_number`,`yihu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/jiechuzhe/upload/1642837809090.jpg',1,'2022-01-22 15:50:11'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/jiechuzhe/upload/1642842916463.jpg',1,'2022-01-22 17:15:18');

/*Table structure for table `yimiao` */

DROP TABLE IF EXISTS `yimiao`;

CREATE TABLE `yimiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗名称 Search111 ',
  `yimiao_types` int(11) DEFAULT NULL COMMENT '疫苗类型 Search111 ',
  `yimiao_number` int(11) DEFAULT NULL COMMENT '疫苗数量  Search111',
  `yimiao_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='疫苗';

/*Data for the table `yimiao` */

insert  into `yimiao`(`id`,`yimiao_name`,`yimiao_types`,`yimiao_number`,`yimiao_content`,`insert_time`,`create_time`) values (1,'张1公司生产的一期疫苗',1,998,'<p>无</p>','2022-01-22 15:53:04','2022-01-22 15:53:04'),(2,'张1公司生产的二期疫苗',2,2000,'<p>无</p>','2022-01-22 15:53:26','2022-01-22 15:53:26'),(3,'张2公司生成的四期疫苗',4,9000,'<p>无</p>','2022-01-22 17:15:41','2022-01-22 17:15:41');

/*Table structure for table `yimiaoyuyue` */

DROP TABLE IF EXISTS `yimiaoyuyue`;

CREATE TABLE `yimiaoyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预约人',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yimiaoyuyue_types` int(11) DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='疫苗预约';

/*Data for the table `yimiaoyuyue` */

insert  into `yimiaoyuyue`(`id`,`yonghu_id`,`yimiao_id`,`yimiaoyuyue_types`,`insert_time`,`create_time`) values (1,1,1,2,'2022-01-22 15:53:04','2022-01-22 15:27:08'),(2,2,1,1,'2022-01-22 17:19:46','2022-01-22 17:19:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiankang_types` int(11) DEFAULT NULL COMMENT '健康状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`jiankang_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/jiechuzhe/upload/1642836422802.jpg',2,1,'2022-01-22 15:27:08'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/jiechuzhe/upload/1642842811787.jpg',1,1,'2022-01-22 17:13:37'),(3,'a3','123456','张3','17703786903','410224199610232003',NULL,NULL,1,'2022-01-22 17:20:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
