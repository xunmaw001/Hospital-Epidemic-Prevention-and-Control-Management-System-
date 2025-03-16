-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3935y
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医生回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-03-13 09:05:48',1,1,'提问1','回复1',1),(82,'2021-03-13 09:05:48',2,2,'提问2','回复2',2),(83,'2021-03-13 09:05:48',3,3,'提问3','回复3',3),(84,'2021-03-13 09:05:48',4,4,'提问4','回复4',4),(85,'2021-03-13 09:05:48',5,5,'提问5','回复5',5),(86,'2021-03-13 09:05:48',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm3935y/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3935y/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3935y/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (91,'2021-03-13 09:05:48','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/ssm3935y/upload/defaultuser_picture1.jpg','773890001@qq.com'),(92,'2021-03-13 09:05:48','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/ssm3935y/upload/defaultuser_picture2.jpg','773890002@qq.com'),(93,'2021-03-13 09:05:48','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/ssm3935y/upload/defaultuser_picture3.jpg','773890003@qq.com'),(94,'2021-03-13 09:05:48','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/ssm3935y/upload/defaultuser_picture4.jpg','773890004@qq.com'),(95,'2021-03-13 09:05:48','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/ssm3935y/upload/defaultuser_picture5.jpg','773890005@qq.com'),(96,'2021-03-13 09:05:48','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/ssm3935y/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyibaobei`
--

DROP TABLE IF EXISTS `fangyibaobei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyibaobei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `xingdongguiji` longtext COMMENT '行动轨迹',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xiansuozaidi` varchar(200) DEFAULT NULL COMMENT '现所在地',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615626827609 DEFAULT CHARSET=utf8 COMMENT='防疫报备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyibaobei`
--

LOCK TABLES `fangyibaobei` WRITE;
/*!40000 ALTER TABLE `fangyibaobei` DISABLE KEYS */;
INSERT INTO `fangyibaobei` VALUES (62,'2021-03-13 09:05:48','发布时间2','行动轨迹2','用户名2','姓名2','身份证2','现所在地2'),(63,'2021-03-13 09:05:48','发布时间3','行动轨迹3','用户名3','姓名3','身份证3','现所在地3'),(64,'2021-03-13 09:05:48','发布时间4','行动轨迹4','用户名4','姓名4','身份证4','现所在地4'),(65,'2021-03-13 09:05:48','发布时间5','行动轨迹5','用户名5','姓名5','身份证5','现所在地5'),(66,'2021-03-13 09:05:48','发布时间6','行动轨迹6','用户名6','姓名6','身份证6','现所在地6'),(1615626827608,'2021-03-13 09:13:46','test','test','test','test','666666666666666666','test');
/*!40000 ALTER TABLE `fangyibaobei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','vmy3zwsmrik6apkdlow4i9omh86hibyv','2021-03-13 09:07:10','2021-03-13 10:07:11'),(2,1615626898694,'456','yonghu','用户','vn209794fdrlku3tv0f17vzxtm5dx7lu','2021-03-13 09:15:14','2021-03-13 10:15:27');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','123456','管理员','2021-03-13 09:05:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiqinggonggao`
--

DROP TABLE IF EXISTS `yiqinggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiqinggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `gonggaozhuangtai` varchar(200) DEFAULT NULL COMMENT '公告状态',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='疫情公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiqinggonggao`
--

LOCK TABLES `yiqinggonggao` WRITE;
/*!40000 ALTER TABLE `yiqinggonggao` DISABLE KEYS */;
INSERT INTO `yiqinggonggao` VALUES (31,'2021-03-13 09:05:48','2021-03-13 17:05:48','test','test','test','最近一周发布','http://localhost:8080/ssm3935y/upload/yiqinggonggao_tupian1.jpg'),(33,'2021-03-13 09:05:48','2021-03-13 17:05:48','公告标题3','公告类型3','公告内容3','最近三天发布','http://localhost:8080/ssm3935y/upload/yiqinggonggao_tupian3.jpg'),(34,'2021-03-13 09:05:48','2021-03-13 17:05:48','公告标题4','公告类型4','公告内容4','最近三天发布','http://localhost:8080/ssm3935y/upload/yiqinggonggao_tupian4.jpg'),(35,'2021-03-13 09:05:48','2021-03-13 17:05:48','公告标题5','公告类型5','公告内容5','最近三天发布','http://localhost:8080/ssm3935y/upload/yiqinggonggao_tupian5.jpg'),(36,'2021-03-13 09:05:48','2021-03-13 17:05:48','公告标题6','公告类型6','公告内容6','最近三天发布','http://localhost:8080/ssm3935y/upload/yiqinggonggao_tupian6.jpg');
/*!40000 ALTER TABLE `yiqinggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengming` varchar(200) NOT NULL COMMENT '医生名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `gongzuojingli` longtext COMMENT '工作经历',
  `wenhuachengdu` varchar(200) DEFAULT NULL COMMENT '文化程度',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-13 09:05:48','医生1','123456','医生1','男','13823888881','773890001@qq.com','440300199101010001','test','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian1.jpg'),(22,'2021-03-13 09:05:48','医生2','123456','医生名2','男','13823888882','773890002@qq.com','440300199202020002','工作经历2','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian2.jpg'),(23,'2021-03-13 09:05:48','医生3','123456','医生名3','男','13823888883','773890003@qq.com','440300199303030003','工作经历3','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian3.jpg'),(24,'2021-03-13 09:05:48','医生4','123456','医生名4','男','13823888884','773890004@qq.com','440300199404040004','工作经历4','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian4.jpg'),(25,'2021-03-13 09:05:48','医生5','123456','医生名5','男','13823888885','773890005@qq.com','440300199505050005','工作经历5','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian5.jpg'),(26,'2021-03-13 09:05:48','医生6','123456','医生名6','男','13823888886','773890006@qq.com','440300199606060006','工作经历6','博士','http://localhost:8080/ssm3935y/upload/yisheng_zhaopian6.jpg');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyangbaogao`
--

DROP TABLE IF EXISTS `yiyangbaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyangbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baogaoshijian` varchar(200) DEFAULT NULL COMMENT '报告时间',
  `shentiyichang` varchar(200) DEFAULT NULL COMMENT '身体异常',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='异样报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyangbaogao`
--

LOCK TABLES `yiyangbaogao` WRITE;
/*!40000 ALTER TABLE `yiyangbaogao` DISABLE KEYS */;
INSERT INTO `yiyangbaogao` VALUES (71,'2021-03-13 09:05:48','test','有','test','test'),(72,'2021-03-13 09:05:48','报告时间2','无','用户名2','姓名2'),(73,'2021-03-13 09:05:48','报告时间3','无','用户名3','姓名3'),(74,'2021-03-13 09:05:48','报告时间4','无','用户名4','姓名4'),(75,'2021-03-13 09:05:48','报告时间5','无','用户名5','姓名5'),(76,'2021-03-13 09:05:48','报告时间6','无','用户名6','姓名6');
/*!40000 ALTER TABLE `yiyangbaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615626898695 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (12,'2021-03-13 09:05:48','用户2','123456','姓名2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm3935y/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-13 09:05:48','用户3','123456','姓名3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm3935y/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-13 09:05:48','用户4','123456','姓名4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm3935y/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-13 09:05:48','用户5','123456','姓名5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm3935y/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-13 09:05:48','用户6','123456','姓名6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm3935y/upload/yonghu_zhaopian6.jpg'),(1615626535786,'2021-03-13 09:08:55','test','test','test','13666666666','421124@qq.com','666666666666666666','http://localhost:8080/ssm3935y/upload/1615626534177.jpg'),(1615626898694,'2021-03-13 09:14:58','456','123456','456','17899999999','4856@11.com','666666666666666666','http://localhost:8080/ssm3935y/upload/1615627016746.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuedingdan`
--

DROP TABLE IF EXISTS `yuyuedingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyueyisheng` varchar(200) DEFAULT NULL COMMENT '预约医生',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `guahaokeshi` varchar(200) DEFAULT NULL COMMENT '挂号科室',
  `guahaoshijian` datetime DEFAULT NULL COMMENT '挂号时间',
  `danhao` varchar(200) DEFAULT NULL COMMENT '单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615627005068 DEFAULT CHARSET=utf8 COMMENT='预约订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuedingdan`
--

LOCK TABLES `yuyuedingdan` WRITE;
/*!40000 ALTER TABLE `yuyuedingdan` DISABLE KEYS */;
INSERT INTO `yuyuedingdan` VALUES (51,'2021-03-13 09:05:48','预约医生1','挂号费1','挂号科室1','2021-03-13 17:05:48','单号1'),(52,'2021-03-13 09:05:48','预约医生2','挂号费2','挂号科室2','2021-03-13 17:05:48','单号2'),(53,'2021-03-13 09:05:48','预约医生3','挂号费3','挂号科室3','2021-03-13 17:05:48','单号3'),(54,'2021-03-13 09:05:48','预约医生4','挂号费4','挂号科室4','2021-03-13 17:05:48','单号4'),(55,'2021-03-13 09:05:48','预约医生5','挂号费5','挂号科室5','2021-03-13 17:05:48','单号5'),(56,'2021-03-13 09:05:48','预约医生6','挂号费6','挂号科室6','2021-03-13 17:05:48','单号6'),(1615626779108,'2021-03-13 09:12:58','医生名6','65','609','2021-03-18 00:00:00','JY46789078'),(1615627005067,'2021-03-13 09:16:44','医生1','52','609','2021-03-13 00:00:00','JY4864856456456');
/*!40000 ALTER TABLE `yuyuedingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguanli`
--

DROP TABLE IF EXISTS `yuyueguanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengming` varchar(200) DEFAULT NULL COMMENT '医生名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `gongzuojingli` longtext COMMENT '工作经历',
  `wenhuachengdu` varchar(200) DEFAULT NULL COMMENT '文化程度',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `guahaokeshi` varchar(200) DEFAULT NULL COMMENT '挂号科室',
  `danhao` varchar(200) DEFAULT NULL COMMENT '单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='预约管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguanli`
--

LOCK TABLES `yuyueguanli` WRITE;
/*!40000 ALTER TABLE `yuyueguanli` DISABLE KEYS */;
INSERT INTO `yuyueguanli` VALUES (41,'2021-03-13 09:05:48','医生名2','男','test','博士','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian1.jpg','52','609','JY4864856456456'),(42,'2021-03-13 09:05:48','医生名2','性别2','工作经历2','文化程度2','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian2.jpg','挂号费2','挂号科室2','单号2'),(43,'2021-03-13 09:05:48','医生名3','性别3','工作经历3','文化程度3','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian3.jpg','挂号费3','挂号科室3','单号3'),(44,'2021-03-13 09:05:48','医生名4','性别4','工作经历4','文化程度4','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian4.jpg','挂号费4','挂号科室4','单号4'),(45,'2021-03-13 09:05:48','医生名5','性别5','工作经历5','文化程度5','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian5.jpg','挂号费5','挂号科室5','单号5'),(46,'2021-03-13 09:05:48','医生名6','性别6','工作经历6','文化程度6','http://localhost:8080/ssm3935y/upload/yuyueguanli_zhaopian6.jpg','挂号费6','挂号科室6','单号6');
/*!40000 ALTER TABLE `yuyueguanli` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 21:34:39
