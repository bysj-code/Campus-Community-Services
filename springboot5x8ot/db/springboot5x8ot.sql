-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot5x8ot
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
-- Current Database: `springboot5x8ot`
--

/*!40000 DROP DATABASE IF EXISTS `springboot5x8ot`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot5x8ot` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot5x8ot`;

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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='反馈信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (121,'2023-04-10 11:08:12',1,1,'提问1','回复1',1),(122,'2023-04-10 11:08:12',2,2,'提问2','回复2',2),(123,'2023-04-10 11:08:12',3,3,'提问3','回复3',3),(124,'2023-04-10 11:08:12',4,4,'提问4','回复4',4),(125,'2023-04-10 11:08:12',5,5,'提问5','回复5',5),(126,'2023-04-10 11:08:12',6,6,'提问6','回复6',6),(127,'2023-04-10 11:08:12',7,7,'提问7','回复7',7),(128,'2023-04-10 11:08:12',8,8,'提问8','回复8',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfaxian`
--

DROP TABLE IF EXISTS `discussfaxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfaxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发现评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfaxian`
--

LOCK TABLES `discussfaxian` WRITE;
/*!40000 ALTER TABLE `discussfaxian` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfaxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshubanghuzhu`
--

DROP TABLE IF EXISTS `discusshubanghuzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshubanghuzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='互帮互助评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshubanghuzhu`
--

LOCK TABLES `discusshubanghuzhu` WRITE;
/*!40000 ALTER TABLE `discusshubanghuzhu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusshubanghuzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxianzhijiaoyi`
--

DROP TABLE IF EXISTS `discussxianzhijiaoyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxianzhijiaoyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='闲置交易评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxianzhijiaoyi`
--

LOCK TABLES `discussxianzhijiaoyi` WRITE;
/*!40000 ALTER TABLE `discussxianzhijiaoyi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxianzhijiaoyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziliao`
--

DROP TABLE IF EXISTS `discussxuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习资料评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziliao`
--

LOCK TABLES `discussxuexiziliao` WRITE;
/*!40000 ALTER TABLE `discussxuexiziliao` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faxian`
--

DROP TABLE IF EXISTS `faxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `tupian` longtext COMMENT '图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='发现';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faxian`
--

LOCK TABLES `faxian` WRITE;
/*!40000 ALTER TABLE `faxian` DISABLE KEYS */;
INSERT INTO `faxian` VALUES (111,'2023-04-10 11:08:12','文章标题1','文章分类1','upload/faxian_tupian1.jpg,upload/faxian_tupian2.jpg,upload/faxian_tupian3.jpg','用户账号1','用户姓名1','内容1','2023-04-10 19:08:12',1,1,'2023-04-10 19:08:12',1),(112,'2023-04-10 11:08:12','文章标题2','文章分类2','upload/faxian_tupian2.jpg,upload/faxian_tupian3.jpg,upload/faxian_tupian4.jpg','用户账号2','用户姓名2','内容2','2023-04-10 19:08:12',2,2,'2023-04-10 19:08:12',2),(113,'2023-04-10 11:08:12','文章标题3','文章分类3','upload/faxian_tupian3.jpg,upload/faxian_tupian4.jpg,upload/faxian_tupian5.jpg','用户账号3','用户姓名3','内容3','2023-04-10 19:08:12',3,3,'2023-04-10 19:08:12',3),(114,'2023-04-10 11:08:12','文章标题4','文章分类4','upload/faxian_tupian4.jpg,upload/faxian_tupian5.jpg,upload/faxian_tupian6.jpg','用户账号4','用户姓名4','内容4','2023-04-10 19:08:12',4,4,'2023-04-10 19:08:12',4),(115,'2023-04-10 11:08:12','文章标题5','文章分类5','upload/faxian_tupian5.jpg,upload/faxian_tupian6.jpg,upload/faxian_tupian7.jpg','用户账号5','用户姓名5','内容5','2023-04-10 19:08:12',5,5,'2023-04-10 19:08:12',5),(116,'2023-04-10 11:08:12','文章标题6','文章分类6','upload/faxian_tupian6.jpg,upload/faxian_tupian7.jpg,upload/faxian_tupian8.jpg','用户账号6','用户姓名6','内容6','2023-04-10 19:08:12',6,6,'2023-04-10 19:08:12',6),(117,'2023-04-10 11:08:12','文章标题7','文章分类7','upload/faxian_tupian7.jpg,upload/faxian_tupian8.jpg,upload/faxian_tupian9.jpg','用户账号7','用户姓名7','内容7','2023-04-10 19:08:12',7,7,'2023-04-10 19:23:30',9),(118,'2023-04-10 11:08:12','文章标题8','文章分类8','upload/faxian_tupian8.jpg,upload/faxian_tupian9.jpg,upload/faxian_tupian10.jpg','用户账号8','用户姓名8','内容8','2023-04-10 19:08:12',8,8,'2023-04-10 19:22:19',9);
/*!40000 ALTER TABLE `faxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaiwupin`
--

DROP TABLE IF EXISTS `goumaiwupin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaiwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `wupintupian` longtext COMMENT '物品图片',
  `jiaoyijiage` varchar(200) DEFAULT NULL COMMENT '交易价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '买家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '买家姓名',
  `maijiadianhua` varchar(200) DEFAULT NULL COMMENT '买家电话',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='购买物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaiwupin`
--

LOCK TABLES `goumaiwupin` WRITE;
/*!40000 ALTER TABLE `goumaiwupin` DISABLE KEYS */;
INSERT INTO `goumaiwupin` VALUES (61,'2023-04-10 11:08:12','物品名称1','物品分类1','upload/goumaiwupin_wupintupian1.jpg,upload/goumaiwupin_wupintupian2.jpg,upload/goumaiwupin_wupintupian3.jpg','交易价格1','用户账号1','用户姓名1','联系电话1','买家账号1','买家姓名1','买家电话1','2023-04-10 19:08:12'),(62,'2023-04-10 11:08:12','物品名称2','物品分类2','upload/goumaiwupin_wupintupian2.jpg,upload/goumaiwupin_wupintupian3.jpg,upload/goumaiwupin_wupintupian4.jpg','交易价格2','用户账号2','用户姓名2','联系电话2','买家账号2','买家姓名2','买家电话2','2023-04-10 19:08:12'),(63,'2023-04-10 11:08:12','物品名称3','物品分类3','upload/goumaiwupin_wupintupian3.jpg,upload/goumaiwupin_wupintupian4.jpg,upload/goumaiwupin_wupintupian5.jpg','交易价格3','用户账号3','用户姓名3','联系电话3','买家账号3','买家姓名3','买家电话3','2023-04-10 19:08:12'),(64,'2023-04-10 11:08:12','物品名称4','物品分类4','upload/goumaiwupin_wupintupian4.jpg,upload/goumaiwupin_wupintupian5.jpg,upload/goumaiwupin_wupintupian6.jpg','交易价格4','用户账号4','用户姓名4','联系电话4','买家账号4','买家姓名4','买家电话4','2023-04-10 19:08:12'),(65,'2023-04-10 11:08:12','物品名称5','物品分类5','upload/goumaiwupin_wupintupian5.jpg,upload/goumaiwupin_wupintupian6.jpg,upload/goumaiwupin_wupintupian7.jpg','交易价格5','用户账号5','用户姓名5','联系电话5','买家账号5','买家姓名5','买家电话5','2023-04-10 19:08:12'),(66,'2023-04-10 11:08:12','物品名称6','物品分类6','upload/goumaiwupin_wupintupian6.jpg,upload/goumaiwupin_wupintupian7.jpg,upload/goumaiwupin_wupintupian8.jpg','交易价格6','用户账号6','用户姓名6','联系电话6','买家账号6','买家姓名6','买家电话6','2023-04-10 19:08:12'),(67,'2023-04-10 11:08:12','物品名称7','物品分类7','upload/goumaiwupin_wupintupian7.jpg,upload/goumaiwupin_wupintupian8.jpg,upload/goumaiwupin_wupintupian9.jpg','交易价格7','用户账号7','用户姓名7','联系电话7','买家账号7','买家姓名7','买家电话7','2023-04-10 19:08:12'),(68,'2023-04-10 11:08:12','物品名称8','物品分类8','upload/goumaiwupin_wupintupian8.jpg,upload/goumaiwupin_wupintupian9.jpg,upload/goumaiwupin_wupintupian10.jpg','交易价格8','用户账号8','用户姓名8','联系电话8','买家账号8','买家姓名8','买家电话8','2023-04-10 19:08:12');
/*!40000 ALTER TABLE `goumaiwupin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hubanghuzhu`
--

DROP TABLE IF EXISTS `hubanghuzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hubanghuzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fabuleixing` varchar(200) NOT NULL COMMENT '发布类型',
  `tupian` longtext COMMENT '图片',
  `fabuneirong` longtext COMMENT '发布内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='互帮互助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubanghuzhu`
--

LOCK TABLES `hubanghuzhu` WRITE;
/*!40000 ALTER TABLE `hubanghuzhu` DISABLE KEYS */;
INSERT INTO `hubanghuzhu` VALUES (31,'2023-04-10 11:08:12','标题1','发布类型1','upload/hubanghuzhu_tupian1.jpg,upload/hubanghuzhu_tupian2.jpg,upload/hubanghuzhu_tupian3.jpg','发布内容1','用户账号1','用户姓名1','联系电话1','2023-04-10 19:08:12','2023-04-10 19:08:12',1),(32,'2023-04-10 11:08:12','标题2','发布类型2','upload/hubanghuzhu_tupian2.jpg,upload/hubanghuzhu_tupian3.jpg,upload/hubanghuzhu_tupian4.jpg','发布内容2','用户账号2','用户姓名2','联系电话2','2023-04-10 19:08:12','2023-04-10 19:08:12',2),(33,'2023-04-10 11:08:12','标题3','发布类型3','upload/hubanghuzhu_tupian3.jpg,upload/hubanghuzhu_tupian4.jpg,upload/hubanghuzhu_tupian5.jpg','发布内容3','用户账号3','用户姓名3','联系电话3','2023-04-10 19:08:12','2023-04-10 19:08:12',3),(34,'2023-04-10 11:08:12','标题4','发布类型4','upload/hubanghuzhu_tupian4.jpg,upload/hubanghuzhu_tupian5.jpg,upload/hubanghuzhu_tupian6.jpg','发布内容4','用户账号4','用户姓名4','联系电话4','2023-04-10 19:08:12','2023-04-10 19:08:12',4),(35,'2023-04-10 11:08:12','标题5','发布类型5','upload/hubanghuzhu_tupian5.jpg,upload/hubanghuzhu_tupian6.jpg,upload/hubanghuzhu_tupian7.jpg','发布内容5','用户账号5','用户姓名5','联系电话5','2023-04-10 19:08:12','2023-04-10 19:08:12',5),(36,'2023-04-10 11:08:12','标题6','发布类型6','upload/hubanghuzhu_tupian6.jpg,upload/hubanghuzhu_tupian7.jpg,upload/hubanghuzhu_tupian8.jpg','发布内容6','用户账号6','用户姓名6','联系电话6','2023-04-10 19:08:12','2023-04-10 19:08:12',6),(37,'2023-04-10 11:08:12','标题7','发布类型7','upload/hubanghuzhu_tupian7.jpg,upload/hubanghuzhu_tupian8.jpg,upload/hubanghuzhu_tupian9.jpg','发布内容7','用户账号7','用户姓名7','联系电话7','2023-04-10 19:08:12','2023-04-10 19:08:12',7),(38,'2023-04-10 11:08:12','标题8','发布类型8','upload/hubanghuzhu_tupian8.jpg,upload/hubanghuzhu_tupian9.jpg,upload/hubanghuzhu_tupian10.jpg','发布内容8','用户账号8','用户姓名8','联系电话8','2023-04-10 19:08:12','2023-04-10 19:08:12',8);
/*!40000 ALTER TABLE `hubanghuzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huzhufabuleixing`
--

DROP TABLE IF EXISTS `huzhufabuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huzhufabuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fabuleixing` varchar(200) NOT NULL COMMENT '发布类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='互助发布类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huzhufabuleixing`
--

LOCK TABLES `huzhufabuleixing` WRITE;
/*!40000 ALTER TABLE `huzhufabuleixing` DISABLE KEYS */;
INSERT INTO `huzhufabuleixing` VALUES (21,'2023-04-10 11:08:12','发布类型1'),(22,'2023-04-10 11:08:12','发布类型2'),(23,'2023-04-10 11:08:12','发布类型3'),(24,'2023-04-10 11:08:12','发布类型4'),(25,'2023-04-10 11:08:12','发布类型5'),(26,'2023-04-10 11:08:12','发布类型6'),(27,'2023-04-10 11:08:12','发布类型7'),(28,'2023-04-10 11:08:12','发布类型8');
/*!40000 ALTER TABLE `huzhufabuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2023-04-10 11:08:12','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\",\"parentMenuName\":\"用户管理\"}],\"menu\":\"用户管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"互助发布类型\",\"menuJump\":\"列表\",\"tableName\":\"huzhufabuleixing\",\"parentMenuName\":\"发布类型管理\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物品分类\",\"menuJump\":\"列表\",\"tableName\":\"wupinfenlei\",\"parentMenuName\":\"发布类型管理\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资料类别\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoleibie\",\"parentMenuName\":\"发布类型管理\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"文章分类\",\"menuJump\":\"列表\",\"tableName\":\"wenzhangfenlei\",\"parentMenuName\":\"发布类型管理\"}],\"menu\":\"发布类型管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"互帮互助\",\"menuJump\":\"列表\",\"tableName\":\"hubanghuzhu\",\"parentMenuName\":\"互帮互助管理\"}],\"menu\":\"互帮互助管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"闲置交易\",\"menuJump\":\"列表\",\"tableName\":\"xianzhijiaoyi\",\"parentMenuName\":\"闲置交易管理\"}],\"menu\":\"闲置交易管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"购买物品\",\"menuJump\":\"列表\",\"tableName\":\"goumaiwupin\",\"parentMenuName\":\"购买物品管理\"}],\"menu\":\"购买物品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\",\"parentMenuName\":\"学习资料管理\"}],\"menu\":\"学习资料管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"树洞\",\"menuJump\":\"列表\",\"tableName\":\"shudong\",\"parentMenuName\":\"树洞管理\"}],\"menu\":\"树洞管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"发现\",\"menuJump\":\"列表\",\"tableName\":\"faxian\",\"parentMenuName\":\"发现管理\"}],\"menu\":\"发现管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\",\"parentMenuName\":\"系统管理\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"轮播图管理\",\"tableName\":\"config\",\"parentMenuName\":\"系统管理\"},{\"appFrontIcon\":\"cuIcon-service\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"反馈信息\",\"tableName\":\"chat\",\"parentMenuName\":\"系统管理\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"购买\"],\"menu\":\"闲置交易列表\",\"menuJump\":\"列表\",\"tableName\":\"xianzhijiaoyi\"}],\"menu\":\"闲置交易模块\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"学习资料列表\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料模块\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"树洞列表\",\"menuJump\":\"列表\",\"tableName\":\"shudong\"}],\"menu\":\"树洞模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"互帮互助\",\"menuJump\":\"列表\",\"tableName\":\"hubanghuzhu\"}],\"menu\":\"互帮互助管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"闲置交易\",\"menuJump\":\"列表\",\"tableName\":\"xianzhijiaoyi\"}],\"menu\":\"闲置交易管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"购买物品\",\"menuJump\":\"列表\",\"tableName\":\"goumaiwupin\"}],\"menu\":\"购买物品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"树洞\",\"menuJump\":\"列表\",\"tableName\":\"shudong\"}],\"menu\":\"树洞管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"发现\",\"menuJump\":\"列表\",\"tableName\":\"faxian\"}],\"menu\":\"发现管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-favor\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏管理\",\"tableName\":\"storeup\"}],\"menu\":\"我的收藏管理\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"购买\"],\"menu\":\"闲置交易列表\",\"menuJump\":\"列表\",\"tableName\":\"xianzhijiaoyi\"}],\"menu\":\"闲置交易模块\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"学习资料列表\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料模块\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"树洞列表\",\"menuJump\":\"列表\",\"tableName\":\"shudong\"}],\"menu\":\"树洞模块\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shudong`
--

DROP TABLE IF EXISTS `shudong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shudong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='树洞';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shudong`
--

LOCK TABLES `shudong` WRITE;
/*!40000 ALTER TABLE `shudong` DISABLE KEYS */;
INSERT INTO `shudong` VALUES (91,'2023-04-10 11:08:12','标题1','upload/shudong_fengmian1.jpg,upload/shudong_fengmian2.jpg,upload/shudong_fengmian3.jpg','内容1',1,1,1),(92,'2023-04-10 11:08:12','标题2','upload/shudong_fengmian2.jpg,upload/shudong_fengmian3.jpg,upload/shudong_fengmian4.jpg','内容2',2,2,2),(93,'2023-04-10 11:08:12','标题3','upload/shudong_fengmian3.jpg,upload/shudong_fengmian4.jpg,upload/shudong_fengmian5.jpg','内容3',3,3,3),(94,'2023-04-10 11:08:12','标题4','upload/shudong_fengmian4.jpg,upload/shudong_fengmian5.jpg,upload/shudong_fengmian6.jpg','内容4',4,4,4),(95,'2023-04-10 11:08:12','标题5','upload/shudong_fengmian5.jpg,upload/shudong_fengmian6.jpg,upload/shudong_fengmian7.jpg','内容5',5,5,5),(96,'2023-04-10 11:08:12','标题6','upload/shudong_fengmian6.jpg,upload/shudong_fengmian7.jpg,upload/shudong_fengmian8.jpg','内容6',6,6,6),(97,'2023-04-10 11:08:12','标题7','upload/shudong_fengmian7.jpg,upload/shudong_fengmian8.jpg,upload/shudong_fengmian9.jpg','内容7',7,7,7),(98,'2023-04-10 11:08:12','标题8','upload/shudong_fengmian8.jpg,upload/shudong_fengmian9.jpg,upload/shudong_fengmian10.jpg','内容8',8,8,8);
/*!40000 ALTER TABLE `shudong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681125773222 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1681125773221,'2023-04-10 11:22:53',11,117,'faxian','文章标题7','upload/faxian_tupian7.jpg','1','文章分类7',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','0pcvurvpiqgjsob1ncpuv1rge6o72hl2','2023-04-10 11:19:02','2023-04-10 12:22:02'),(2,1,'admin','users','管理员','kyiyit2bygigzv2g6ier3imhi7572d2u','2023-04-10 11:19:28','2023-04-10 12:20:47');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-10 11:08:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenzhangfenlei`
--

DROP TABLE IF EXISTS `wenzhangfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenzhangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='文章分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenzhangfenlei`
--

LOCK TABLES `wenzhangfenlei` WRITE;
/*!40000 ALTER TABLE `wenzhangfenlei` DISABLE KEYS */;
INSERT INTO `wenzhangfenlei` VALUES (101,'2023-04-10 11:08:12','文章分类1'),(102,'2023-04-10 11:08:12','文章分类2'),(103,'2023-04-10 11:08:12','文章分类3'),(104,'2023-04-10 11:08:12','文章分类4'),(105,'2023-04-10 11:08:12','文章分类5'),(106,'2023-04-10 11:08:12','文章分类6'),(107,'2023-04-10 11:08:12','文章分类7'),(108,'2023-04-10 11:08:12','文章分类8');
/*!40000 ALTER TABLE `wenzhangfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinfenlei`
--

DROP TABLE IF EXISTS `wupinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinfenlei` varchar(200) NOT NULL COMMENT '物品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='物品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinfenlei`
--

LOCK TABLES `wupinfenlei` WRITE;
/*!40000 ALTER TABLE `wupinfenlei` DISABLE KEYS */;
INSERT INTO `wupinfenlei` VALUES (41,'2023-04-10 11:08:12','物品分类1'),(42,'2023-04-10 11:08:12','物品分类2'),(43,'2023-04-10 11:08:12','物品分类3'),(44,'2023-04-10 11:08:12','物品分类4'),(45,'2023-04-10 11:08:12','物品分类5'),(46,'2023-04-10 11:08:12','物品分类6'),(47,'2023-04-10 11:08:12','物品分类7'),(48,'2023-04-10 11:08:12','物品分类8');
/*!40000 ALTER TABLE `wupinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianzhijiaoyi`
--

DROP TABLE IF EXISTS `xianzhijiaoyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianzhijiaoyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) NOT NULL COMMENT '物品分类',
  `wupintupian` longtext COMMENT '物品图片',
  `jiaoyijiage` varchar(200) DEFAULT NULL COMMENT '交易价格',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='闲置交易';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianzhijiaoyi`
--

LOCK TABLES `xianzhijiaoyi` WRITE;
/*!40000 ALTER TABLE `xianzhijiaoyi` DISABLE KEYS */;
INSERT INTO `xianzhijiaoyi` VALUES (51,'2023-04-10 11:08:12','物品名称1','物品分类1','upload/xianzhijiaoyi_wupintupian1.jpg,upload/xianzhijiaoyi_wupintupian2.jpg,upload/xianzhijiaoyi_wupintupian3.jpg','交易价格1','物品详情1','用户账号1','用户姓名1','联系电话1','2023-04-10 19:08:12',1),(52,'2023-04-10 11:08:12','物品名称2','物品分类2','upload/xianzhijiaoyi_wupintupian2.jpg,upload/xianzhijiaoyi_wupintupian3.jpg,upload/xianzhijiaoyi_wupintupian4.jpg','交易价格2','物品详情2','用户账号2','用户姓名2','联系电话2','2023-04-10 19:08:12',2),(53,'2023-04-10 11:08:12','物品名称3','物品分类3','upload/xianzhijiaoyi_wupintupian3.jpg,upload/xianzhijiaoyi_wupintupian4.jpg,upload/xianzhijiaoyi_wupintupian5.jpg','交易价格3','物品详情3','用户账号3','用户姓名3','联系电话3','2023-04-10 19:08:12',3),(54,'2023-04-10 11:08:12','物品名称4','物品分类4','upload/xianzhijiaoyi_wupintupian4.jpg,upload/xianzhijiaoyi_wupintupian5.jpg,upload/xianzhijiaoyi_wupintupian6.jpg','交易价格4','物品详情4','用户账号4','用户姓名4','联系电话4','2023-04-10 19:08:12',4),(55,'2023-04-10 11:08:12','物品名称5','物品分类5','upload/xianzhijiaoyi_wupintupian5.jpg,upload/xianzhijiaoyi_wupintupian6.jpg,upload/xianzhijiaoyi_wupintupian7.jpg','交易价格5','物品详情5','用户账号5','用户姓名5','联系电话5','2023-04-10 19:08:12',5),(56,'2023-04-10 11:08:12','物品名称6','物品分类6','upload/xianzhijiaoyi_wupintupian6.jpg,upload/xianzhijiaoyi_wupintupian7.jpg,upload/xianzhijiaoyi_wupintupian8.jpg','交易价格6','物品详情6','用户账号6','用户姓名6','联系电话6','2023-04-10 19:08:12',6),(57,'2023-04-10 11:08:12','物品名称7','物品分类7','upload/xianzhijiaoyi_wupintupian7.jpg,upload/xianzhijiaoyi_wupintupian8.jpg,upload/xianzhijiaoyi_wupintupian9.jpg','交易价格7','物品详情7','用户账号7','用户姓名7','联系电话7','2023-04-10 19:08:12',7),(58,'2023-04-10 11:08:12','物品名称8','物品分类8','upload/xianzhijiaoyi_wupintupian8.jpg,upload/xianzhijiaoyi_wupintupian9.jpg,upload/xianzhijiaoyi_wupintupian10.jpg','交易价格8','物品详情8','用户账号8','用户姓名8','联系电话8','2023-04-10 19:08:12',8);
/*!40000 ALTER TABLE `xianzhijiaoyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziliao`
--

DROP TABLE IF EXISTS `xuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `ziliaoleibie` varchar(200) DEFAULT NULL COMMENT '资料类别',
  `ziliaotupian` longtext COMMENT '资料图片',
  `ziliaoneirong` longtext COMMENT '资料内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='学习资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziliao`
--

LOCK TABLES `xuexiziliao` WRITE;
/*!40000 ALTER TABLE `xuexiziliao` DISABLE KEYS */;
INSERT INTO `xuexiziliao` VALUES (81,'2023-04-10 11:08:12','标题1','资料类别1','upload/xuexiziliao_ziliaotupian1.jpg,upload/xuexiziliao_ziliaotupian2.jpg,upload/xuexiziliao_ziliaotupian3.jpg','资料内容1','用户账号1','用户姓名1','2023-04-10 19:08:12'),(82,'2023-04-10 11:08:12','标题2','资料类别2','upload/xuexiziliao_ziliaotupian2.jpg,upload/xuexiziliao_ziliaotupian3.jpg,upload/xuexiziliao_ziliaotupian4.jpg','资料内容2','用户账号2','用户姓名2','2023-04-10 19:08:12'),(83,'2023-04-10 11:08:12','标题3','资料类别3','upload/xuexiziliao_ziliaotupian3.jpg,upload/xuexiziliao_ziliaotupian4.jpg,upload/xuexiziliao_ziliaotupian5.jpg','资料内容3','用户账号3','用户姓名3','2023-04-10 19:08:12'),(84,'2023-04-10 11:08:12','标题4','资料类别4','upload/xuexiziliao_ziliaotupian4.jpg,upload/xuexiziliao_ziliaotupian5.jpg,upload/xuexiziliao_ziliaotupian6.jpg','资料内容4','用户账号4','用户姓名4','2023-04-10 19:08:12'),(85,'2023-04-10 11:08:12','标题5','资料类别5','upload/xuexiziliao_ziliaotupian5.jpg,upload/xuexiziliao_ziliaotupian6.jpg,upload/xuexiziliao_ziliaotupian7.jpg','资料内容5','用户账号5','用户姓名5','2023-04-10 19:08:12'),(86,'2023-04-10 11:08:12','标题6','资料类别6','upload/xuexiziliao_ziliaotupian6.jpg,upload/xuexiziliao_ziliaotupian7.jpg,upload/xuexiziliao_ziliaotupian8.jpg','资料内容6','用户账号6','用户姓名6','2023-04-10 19:08:12'),(87,'2023-04-10 11:08:12','标题7','资料类别7','upload/xuexiziliao_ziliaotupian7.jpg,upload/xuexiziliao_ziliaotupian8.jpg,upload/xuexiziliao_ziliaotupian9.jpg','资料内容7','用户账号7','用户姓名7','2023-04-10 19:08:12'),(88,'2023-04-10 11:08:12','标题8','资料类别8','upload/xuexiziliao_ziliaotupian8.jpg,upload/xuexiziliao_ziliaotupian9.jpg,upload/xuexiziliao_ziliaotupian10.jpg','资料内容8','用户账号8','用户姓名8','2023-04-10 19:08:12');
/*!40000 ALTER TABLE `xuexiziliao` ENABLE KEYS */;
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
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-04-10 11:08:12','用户账号1','123456','用户姓名1','男','upload/yonghu_touxiang1.jpg','13823888881'),(12,'2023-04-10 11:08:12','用户账号2','123456','用户姓名2','男','upload/yonghu_touxiang2.jpg','13823888882'),(13,'2023-04-10 11:08:12','用户账号3','123456','用户姓名3','男','upload/yonghu_touxiang3.jpg','13823888883'),(14,'2023-04-10 11:08:12','用户账号4','123456','用户姓名4','男','upload/yonghu_touxiang4.jpg','13823888884'),(15,'2023-04-10 11:08:12','用户账号5','123456','用户姓名5','男','upload/yonghu_touxiang5.jpg','13823888885'),(16,'2023-04-10 11:08:12','用户账号6','123456','用户姓名6','男','upload/yonghu_touxiang6.jpg','13823888886'),(17,'2023-04-10 11:08:12','用户账号7','123456','用户姓名7','男','upload/yonghu_touxiang7.jpg','13823888887'),(18,'2023-04-10 11:08:12','用户账号8','123456','用户姓名8','男','upload/yonghu_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoleibie`
--

DROP TABLE IF EXISTS `ziliaoleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaoleibie` varchar(200) NOT NULL COMMENT '资料类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='资料类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoleibie`
--

LOCK TABLES `ziliaoleibie` WRITE;
/*!40000 ALTER TABLE `ziliaoleibie` DISABLE KEYS */;
INSERT INTO `ziliaoleibie` VALUES (71,'2023-04-10 11:08:12','资料类别1'),(72,'2023-04-10 11:08:12','资料类别2'),(73,'2023-04-10 11:08:12','资料类别3'),(74,'2023-04-10 11:08:12','资料类别4'),(75,'2023-04-10 11:08:12','资料类别5'),(76,'2023-04-10 11:08:12','资料类别6'),(77,'2023-04-10 11:08:12','资料类别7'),(78,'2023-04-10 11:08:12','资料类别8');
/*!40000 ALTER TABLE `ziliaoleibie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 13:57:56
