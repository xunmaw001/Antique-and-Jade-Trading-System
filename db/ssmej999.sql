-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmej999
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614842984781 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-04 07:17:29',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-04 07:17:29',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-04 07:17:29',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-04 07:17:29',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-04 07:17:29',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-04 07:17:29',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614842984780,'2021-03-04 07:29:44',1614842930171,'湖南省衡阳市衡南县泉湖镇庵子岭','小吴','13455612322','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1614843249311 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-04 07:17:29',1,1,'提问1','回复1',1),(62,'2021-03-04 07:17:29',2,2,'提问2','回复2',2),(63,'2021-03-04 07:17:29',3,3,'提问3','回复3',3),(64,'2021-03-04 07:17:29',4,4,'提问4','回复4',4),(65,'2021-03-04 07:17:29',5,5,'提问5','回复5',5),(66,'2021-03-04 07:17:29',6,6,'提问6','回复6',6),(1614843080341,'2021-03-04 07:31:19',1614842930171,NULL,'这里可以向管理员咨询  管理员在后台回复',NULL,0),(1614843249310,'2021-03-04 07:34:08',1614842930171,1,NULL,'这里回复用户咨询',NULL);
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmej999/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmej999/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmej999/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843019467 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (121,'2021-03-04 07:17:29',1,1,'评论内容1','回复内容1'),(122,'2021-03-04 07:17:29',2,2,'评论内容2','回复内容2'),(123,'2021-03-04 07:17:29',3,3,'评论内容3','回复内容3'),(124,'2021-03-04 07:17:29',4,4,'评论内容4','回复内容4'),(125,'2021-03-04 07:17:29',5,5,'评论内容5','回复内容5'),(126,'2021-03-04 07:17:29',6,6,'评论内容6','回复内容6'),(1614843019466,'2021-03-04 07:30:18',41,1614842930171,'登录后可收藏  评论  购买等操作','这里查看回复用户评论');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843269548 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-03-04 07:17:29','标题1','简介1','http://localhost:8080/ssmej999/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssmej999/upload/1614842868943.jpg\">内容1</p>'),(112,'2021-03-04 07:17:29','标题2','简介2','http://localhost:8080/ssmej999/upload/news_picture2.jpg','内容2'),(113,'2021-03-04 07:17:29','标题3','简介3','http://localhost:8080/ssmej999/upload/news_picture3.jpg','内容3'),(114,'2021-03-04 07:17:29','标题4','简介4','http://localhost:8080/ssmej999/upload/news_picture4.jpg','内容4'),(115,'2021-03-04 07:17:29','标题5','简介5','http://localhost:8080/ssmej999/upload/news_picture5.jpg','内容5'),(116,'2021-03-04 07:17:29','标题6','简介6','http://localhost:8080/ssmej999/upload/news_picture6.jpg','内容6'),(1614843269547,'2021-03-04 07:34:29','这里添加公告信息','1111111111111','http://localhost:8080/ssmej999/upload/1614843264670.jpg','<p><img src=\"http://localhost:8080/ssmej999/upload/1614843267991.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843050132 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614843038484,'2021-03-04 07:30:38','20213415303792425080','shangpinxinxi',1614842930171,42,'商品名称2','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian2.jpg',1,1500,1500,1500,1500,1,'已完成','湖南省衡阳市衡南县泉湖镇庵子岭'),(1614843050131,'2021-03-04 07:30:49','20213415304972561548','shangpinxinxi',1614842930171,41,'商品名称1','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian1.jpg',1,1200,1200,1200,1200,1,'已完成','湖南省衡阳市衡南县泉湖镇庵子岭');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843186122 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-03-04 07:17:29','玉器'),(32,'2021-03-04 07:17:29','钱币'),(33,'2021-03-04 07:17:29','字画'),(34,'2021-03-04 07:17:29','陶瓷'),(35,'2021-03-04 07:17:29','杂项'),(1614843186121,'2021-03-04 07:33:05','11');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinjianding`
--

DROP TABLE IF EXISTS `shangpinjianding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinjianding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chaodai` varchar(200) DEFAULT NULL COMMENT '朝代',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `xiangqing` longtext COMMENT '详情',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843133760 DEFAULT CHARSET=utf8 COMMENT='商品鉴定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinjianding`
--

LOCK TABLES `shangpinjianding` WRITE;
/*!40000 ALTER TABLE `shangpinjianding` DISABLE KEYS */;
INSERT INTO `shangpinjianding` VALUES (51,'2021-03-04 07:17:29','商品名称1','分类1','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian1.jpg','朝代1','年份1','详情1','用户名1','姓名1','13823888881','是',''),(52,'2021-03-04 07:17:29','商品名称2','分类2','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian2.jpg','朝代2','年份2','详情2','用户名2','姓名2','13823888882','是',''),(53,'2021-03-04 07:17:29','商品名称3','分类3','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian3.jpg','朝代3','年份3','详情3','用户名3','姓名3','13823888883','是',''),(54,'2021-03-04 07:17:29','商品名称4','分类4','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian4.jpg','朝代4','年份4','详情4','用户名4','姓名4','13823888884','是',''),(55,'2021-03-04 07:17:29','商品名称5','分类5','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian5.jpg','朝代5','年份5','详情5','用户名5','姓名5','13823888885','是',''),(56,'2021-03-04 07:17:29','商品名称6','分类6','http://localhost:8080/ssmej999/upload/shangpinjianding_tupian6.jpg','朝代6','年份6','详情6','用户名6','姓名6','13823888886','是',''),(1614843133759,'2021-03-04 07:32:13','这里添加自己要鉴定的商品','钱币','http://localhost:8080/ssmej999/upload/1614843107213.jpg','袁世凯','111','<p>111</p>','001','小李','13654565432','是','真货');
/*!40000 ALTER TABLE `shangpinjianding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `shangpumingcheng` varchar(200) DEFAULT NULL COMMENT '商铺名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-03-04 07:17:29','商品名称1','陶瓷','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian1.jpg','规格1','年份1','地区1','商铺名称1','13823888881','<p>详情1</p>','2021-03-04 15:34:45',9,1200),(42,'2021-03-04 07:17:29','商品名称2','陶瓷','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian2.jpg','规格2','年份2','地区2','商铺名称2','13823888882','<p>详情2</p>','2021-03-04 15:30:38',5,1500),(43,'2021-03-04 07:17:29','商品名称3','分类3','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian3.jpg','规格3','年份3','地区3','商铺名称3','13823888883','详情3','2021-03-04 15:17:29',3,99.9),(44,'2021-03-04 07:17:29','商品名称4','分类4','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian4.jpg','规格4','年份4','地区4','商铺名称4','13823888884','详情4','2021-03-04 15:35:22',6,99.9),(45,'2021-03-04 07:17:29','商品名称5','分类5','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian5.jpg','规格5','年份5','地区5','商铺名称5','13823888885','详情5','2021-03-04 15:17:29',5,99.9),(46,'2021-03-04 07:17:29','商品名称6','分类6','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian6.jpg','规格6','年份6','地区6','商铺名称6','13823888886','详情6','2021-03-04 15:17:29',6,99.9);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpuxinxi`
--

DROP TABLE IF EXISTS `shangpuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpumingcheng` varchar(200) NOT NULL COMMENT '商铺名称',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `shangputupian` varchar(200) DEFAULT NULL COMMENT '商铺图片',
  `shangpudizhi` varchar(200) DEFAULT NULL COMMENT '商铺地址',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shangpujieshao` longtext COMMENT '商铺介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商铺信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpuxinxi`
--

LOCK TABLES `shangpuxinxi` WRITE;
/*!40000 ALTER TABLE `shangpuxinxi` DISABLE KEYS */;
INSERT INTO `shangpuxinxi` VALUES (21,'2021-03-04 07:17:29','商铺名称1','经营范围1','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian1.jpg','商铺地址1','13823888881','商铺介绍1'),(22,'2021-03-04 07:17:29','商铺名称2','经营范围2','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian2.jpg','商铺地址2','13823888882','商铺介绍2'),(23,'2021-03-04 07:17:29','商铺名称3','经营范围3','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian3.jpg','商铺地址3','13823888883','商铺介绍3'),(24,'2021-03-04 07:17:29','商铺名称4','经营范围4','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian4.jpg','商铺地址4','13823888884','商铺介绍4'),(25,'2021-03-04 07:17:29','商铺名称5','经营范围5','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian5.jpg','商铺地址5','13823888885','商铺介绍5'),(26,'2021-03-04 07:17:29','商铺名称6','经营范围6','http://localhost:8080/ssmej999/upload/shangpuxinxi_shangputupian6.jpg','商铺地址6','13823888886','商铺介绍6');
/*!40000 ALTER TABLE `shangpuxinxi` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843009265 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614843009264,'2021-03-04 07:30:08',1614842930171,41,'shangpinxinxi','商品名称1','http://localhost:8080/ssmej999/upload/shangpinxinxi_tupian1.jpg');
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','6ri7tb65uxp0ely8wbceuy4y4602b5ih','2021-03-04 07:26:23','2021-03-04 08:32:23'),(2,1614842930171,'001','yonghu','用户','km9mali84br4xqty06tgscp7gh89qg1k','2021-03-04 07:28:54','2021-03-04 08:34:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-04 07:17:29'),(2,'000','000','管理员','2021-03-04 07:33:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614842930172 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-04 07:17:29','用户1','123456','姓名1','女','http://localhost:8080/ssmej999/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(12,'2021-03-04 07:17:29','用户2','123456','姓名2','男','http://localhost:8080/ssmej999/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(13,'2021-03-04 07:17:29','用户3','123456','姓名3','男','http://localhost:8080/ssmej999/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(14,'2021-03-04 07:17:29','用户4','123456','姓名4','男','http://localhost:8080/ssmej999/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(15,'2021-03-04 07:17:29','用户5','123456','姓名5','男','http://localhost:8080/ssmej999/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(16,'2021-03-04 07:17:29','用户6','123456','姓名6','男','http://localhost:8080/ssmej999/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1614842930171,'2021-03-04 07:28:50','001','001','小李','男','http://localhost:8080/ssmej999/upload/1614842945306.jpg','13654565432','1324@12.com',300);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-08 10:22:30
