﻿# MySQL-Front 4.2  (Build 2.83)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: jhoa
# ------------------------------------------------------
# Server version 5.1.54-community

USE `jhoa`;

#
# Table structure for table qt_academy
#

CREATE TABLE `qt_academy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academyname` varchar(255) DEFAULT NULL COMMENT '学院名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='学院表';

#
# Dumping data for table qt_academy
#
LOCK TABLES `qt_academy` WRITE;
/*!40000 ALTER TABLE `qt_academy` DISABLE KEYS */;

INSERT INTO `qt_academy` VALUES (1,'化材学院');
INSERT INTO `qt_academy` VALUES (2,'机械学院');
INSERT INTO `qt_academy` VALUES (3,'信息学院');
INSERT INTO `qt_academy` VALUES (4,'计算机、软件学院');
INSERT INTO `qt_academy` VALUES (5,'经贸学院');
INSERT INTO `qt_academy` VALUES (6,'建工学院');
INSERT INTO `qt_academy` VALUES (7,'生环学院');
INSERT INTO `qt_academy` VALUES (8,'教科学院');
INSERT INTO `qt_academy` VALUES (9,'人文学院');
INSERT INTO `qt_academy` VALUES (10,'健行学院');
INSERT INTO `qt_academy` VALUES (11,'外语学院');
INSERT INTO `qt_academy` VALUES (12,'法学院');
INSERT INTO `qt_academy` VALUES (13,'理学院');
INSERT INTO `qt_academy` VALUES (14,'成教学院');
INSERT INTO `qt_academy` VALUES (15,'之江学院');
INSERT INTO `qt_academy` VALUES (16,'艺术学院');
INSERT INTO `qt_academy` VALUES (17,'药学院');
INSERT INTO `qt_academy` VALUES (18,'国际学院');
INSERT INTO `qt_academy` VALUES (19,'政管学院');
/*!40000 ALTER TABLE `qt_academy` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_comment
#

CREATE TABLE `qt_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `userID` int(11) DEFAULT NULL COMMENT '评论ID',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `fileID` int(11) DEFAULT NULL COMMENT '关联文件ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='文件评论表';

#
# Dumping data for table qt_comment
#
LOCK TABLES `qt_comment` WRITE;
/*!40000 ALTER TABLE `qt_comment` DISABLE KEYS */;

INSERT INTO `qt_comment` VALUES (20,'测试李小斌的评论',2,'2011-10-26 21:06:49',4);
INSERT INTO `qt_comment` VALUES (21,'2',2,'2011-10-26 21:10:01',4);
INSERT INTO `qt_comment` VALUES (22,'什么',2,'2011-10-26 21:11:36',4);
/*!40000 ALTER TABLE `qt_comment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_department
#

CREATE TABLE `qt_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(255) DEFAULT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='部门表';

#
# Dumping data for table qt_department
#
LOCK TABLES `qt_department` WRITE;
/*!40000 ALTER TABLE `qt_department` DISABLE KEYS */;

INSERT INTO `qt_department` VALUES (1,'主席团');
INSERT INTO `qt_department` VALUES (2,'技术前端设计');
INSERT INTO `qt_department` VALUES (3,'技术视觉传达');
INSERT INTO `qt_department` VALUES (4,'技术后台程序');
INSERT INTO `qt_department` VALUES (5,'技术服务器部');
INSERT INTO `qt_department` VALUES (6,'精弘feel电台');
INSERT INTO `qt_department` VALUES (7,'精弘开源');
INSERT INTO `qt_department` VALUES (8,'精弘下载');
INSERT INTO `qt_department` VALUES (9,'精弘家园');
INSERT INTO `qt_department` VALUES (10,'精弘商铺');
INSERT INTO `qt_department` VALUES (11,'精弘资讯');
INSERT INTO `qt_department` VALUES (12,'精弘论坛');
INSERT INTO `qt_department` VALUES (13,'常务朝晖部');
INSERT INTO `qt_department` VALUES (14,'常务组织部');
INSERT INTO `qt_department` VALUES (15,'常务活动部');
INSERT INTO `qt_department` VALUES (16,'常务办公室');
/*!40000 ALTER TABLE `qt_department` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_event
#

CREATE TABLE `qt_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '事件标题',
  `content` text COMMENT '事件内容',
  `modifytime` timestamp NULL DEFAULT NULL COMMENT '最后编辑时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='大事件表';

#
# Dumping data for table qt_event
#
LOCK TABLES `qt_event` WRITE;
/*!40000 ALTER TABLE `qt_event` DISABLE KEYS */;

INSERT INTO `qt_event` VALUES (9,'精弘的历史2002-2005','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2002年5月：“精弘苑”网站诞生-www.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2002年10月:iduck接手精弘,第二版精弘苑</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2002年12月:第一版招生网-zs.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年2月:第一版就业网-job.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年3月:视听开始</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年4月:brad加入</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年5月:精弘论坛开始bbs.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年8月:垃圾加入</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年9月：“心灵有约”网站开始运行-heart.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年10月:电视台合作《2046》</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2003年12月:新闻网开始-news.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年1月:第一次版聚FB</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年1月:FICQ开始-ficq.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年3月:**论坛喊停</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年4月:第二版论坛</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年5月：“精弘博客”开始运行-blog.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年5月:论坛一周年文集《记录我们的时代》</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年5月:第二次版聚FB</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年6月 第一次跳蚤市场</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年6月:第二版招生网</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年9月:第三版论坛(动网Dvbbs)</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年9月:第二版就业网<br />\r\n（开发jhurricane 深红的苜蓿即linchunfei zzn）</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2004年10月26日:Feel电台创立（始祖为\"肚子\"、\"IWS\"）-radio.zjut.com，运行一段时间后喊停，在iduck的协调下，收于精弘服务器。12月重新运行</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2005年1月:第四版精弘网络 （开发elong即Zhu kaiyu&nbsp; 深红的苜蓿)</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2005年2月:公共FTP开始-ftp.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2005年4月:直播开始</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2005年5月:两周年MV,版聚FB</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2005年6月：精弘2周年纪念文化衫<br />\r\n9月好像开始推广文化衫，文化衫设计比赛，爪爪也参加了。不过大家说太幼稚了，囧</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a href=\"http://blog.myzjut.org/sites/default/files/08122100201d68fdacb784915f.jpg\" target=\"_blank\" style=\"color:#ab0900;\"><img height=\"371\" width=\"400\" align=\"middle\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/08122100201d68fdacb784915f.jpg\" alt=\"\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>','2011-11-01 21:40:21');
INSERT INTO `qt_event` VALUES (10,'精弘的历史2006-2007','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年3月 不知道是第几次招新的非常拉风的banner<br />\r\n<a href=\"http://blog.myzjut.org/node/sites/default/files/banner.rar\" style=\"text-decoration:none;color:#ab0900;\">通缉令.rar BY爪爪</a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年4月：毕业生留言板</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/byslyb.jpg\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"250\" width=\"200\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/byslyb.jpg\" alt=\"\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年5月：blog比赛</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/bkbs.jpg\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"280\" width=\"200\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/bkbs.jpg\" alt=\"\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年5月：FICQ经常出现问题，然后被关闭</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年5月：第1版学生邮件开始运行-mail.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年7月：第2版博客-http://blog.zjut.com/index.html</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006下半年 ：站长大土土毕业离开，技术总监小影、落日的午后离开</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006下半年： 雨阳继任站长、dweng加入</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年9月：吼吼(OHSC)、咩咩加入</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年11月：代替“Ficq”的“Jicq”开始运行-jicq.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2006年12月：FEEL电台真情祝福活动</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年4月：第四版论坛(php discuz6.0)开始运行-bbs.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/oldbbs.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"395\" width=\"200\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/oldbbs.png\" alt=\"\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年6月：“新生论坛”升级</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年9月：村长开发新版“毕业生留言”</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年9月：论坛升级到Discuz6.1</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年10月：电台服务器系统升级</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年10月：精弘资讯站内测，并与人文日新社合作。同时该系统自带的X-Space成为新博客系统。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年11月：第一版精弘下载站开始运行-down.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年11月：“松鹤斋”并入，改名“精弘下载站”</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/downsite.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"172\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/downsite.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年11月：“精弘邮件”开始内测运行</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年11月：第2版学生邮件开始运行-mail.zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年11月：团队博客-team.zjut.com开通</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a href=\"http://blog.myzjut.org/sites/default/files/teamblog.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"174\" width=\"200\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/teamblog.png\" alt=\"\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年12月：与校会合作直播TOP10</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2007年12月：FEEL电台真情祝福活动</p>','2011-11-01 21:42:03');
INSERT INTO `qt_event` VALUES (11,'精弘的历史2008-2009','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年01月：站长雨阳离任，技术总监dweng(村长)离任</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年01月：吼吼(OHSC)继任站长、咩咩任技术总监</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年03月：技术部决定全面投入开源技术，<strong>这是精弘技术团队标志性的转折</strong></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年04月：“精弘邮件”改用Linux架构</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a rel=\"lightbox\" href=\"http://blog.myzjut.org/sites/default/files/extmail.png\" class=\"lightbox-processed\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"95\" width=\"200\" rel=\"lightbox\" alt=\"\" src=\"http://blog.myzjut.org/sites/default/files/extmail.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年05月：“ubuntu镜像”开通</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a href=\"http://blog.myzjut.org/sites/default/files/linuxmirror.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"222\" width=\"200\" rel=\"lightbox\" alt=\"\" src=\"http://blog.myzjut.org/sites/default/files/linuxmirror.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年07月：服务器重新调整，按运行环境重新分配服务器</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年07月：技术部恢复网专被批删的帖子</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年09月：给下载站腾出专门的下载服务器</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年09月：精弘举办软件自由日系列活动</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a href=\"http://blog.myzjut.org/sites/default/files/sfd.jpg\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"53\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/sfd.jpg\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年09月：精弘部门结构重组</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年12月：精弘论坛更换服务器，论坛升级</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年12月：第五版论坛(php discuz7.0)</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/newbbs.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"301\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/newbbs.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年12月：个人空间升级至精弘家园（Ucenter Home）</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/uchome.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/uchome.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2008年12月：FEEL电台真情祝福活动</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年01月：电台服务器报废。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年02月：电台使用mms直播系统。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年02月：与夜语DV社合作影片《火花》</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年03月：FTP搜素引擎（WEB版FTP浏览器）开通。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/ftpengine.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"170\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/ftpengine.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年03月：学工部站点竣工-www.xgb.zjut.edu.cn</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/xgbpic.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"95\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/xgbpic.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年03月：内网导航站开通</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/go.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"144\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/go.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年03月：JICQ改版，帐号从原来的name@jicq.zjut.com缩短为name@zjut.com，服务器地址为zjut.com</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年03月：推出JICQ新页面，web版客户端正式投入使用</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/jicqnewweb.png\" style=\"text-decoration:none;color:#ab0900;\"><img height=\"167\" width=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/jicqnewweb.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年04月：资讯站升级成Supesite7.0</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年05月：FTP服务取消，并入下载站</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2009年07月：第二版下载站上线</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a href=\"http://blog.myzjut.org/files/downsite2_3.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"200\" height=\"106\" alt=\"\" rel=\"lightbox\" src=\"http://team.zjut.com/files/downsite2_3.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>','2011-11-01 21:43:23');
INSERT INTO `qt_event` VALUES (12,'精弘FTP帐号说明','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">精弘FTP主要有以下帐号（下面将以ftp://帐号:密码@地址的方式显示）</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">普通帐号：</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">端口均为21</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">匿名帐号&nbsp;<a href=\"ftp://ftp.zjut.com/\" title=\"ftp://ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">可以查看目录，但除了学习资源外，其他资源都不能下载。</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">单线程 下载：50KB/S 允许60IP同时在线</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">下载帐号&nbsp;<a href=\"ftp://down:down@ftp.zjut.com/\" title=\"ftp://down:down@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://down:down@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：down</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：down</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">不能查看目录，但可以下载所有资源。因为down帐号限制只有100人，而且连的人比较多，所以一般时候都是人满。请尽量选择在人少的时候连接下载，并且有耐心就行了，相信总会连上的。</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">单线程 下载：100KB/S 允许70IP同时在线</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">上传帐号&nbsp;<a href=\"ftp://up:up@ftp.zjut.com/\" title=\"ftp://up:up@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://up:up@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：up</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：up</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">只能用来上传</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">双线程 下载：1500KB/S 允许20IP同时在线</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">特殊帐号：</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">均绑定ip，需要修改ip，请发论坛短信给OHSC</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">影视资源VIP&nbsp;<a href=\"ftp://yingshi:yingshi@ftp.zjut.com/\" title=\"ftp://yingshi:yingshi@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://yingshi:yingshi@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：yingshi</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：yingshi</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">由精弘论坛的影视资源版块版主定期评定，奖励对资源版块有贡献的人员，有效期一个月。</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">单线程 下载：250KB/S 允许10IP同时在线</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">动漫资源VIP&nbsp;<a href=\"ftp://dongman:dongman@ftp.zjut.com/\" title=\"ftp://dongman:dongman@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://dongman:dongman@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：dongman</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：dongman</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">由精弘论坛的影视资源版块版主定期评定，奖励对资源版块有贡献的人员，有效期一个月。</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">单线程 下载：250KB/S 允许10IP同时在线</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">优秀版主/超级版主/元老&nbsp;<a href=\"ftp://super:super@ftp.zjut.com/\" title=\"ftp://super:super@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://super:super@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：super</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：super</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">被超级版主及精弘管理员评为优秀版主的，奖励spuer账号。优秀版主的使用有效期为一个月。超级版主的使用有效期至职位取消为止。元老有效期至其毕业离校。<br />\r\n单线程 下载：150KB/S 允许4IP同时在线</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">普通版主/贵宾&nbsp;<a href=\"ftp://banzhu:banzhu@ftp.zjut.com/\" title=\"ftp://banzhu:banzhu@ftp.zjut.com\" style=\"text-decoration:none;color:#ab0900;\">ftp://banzhu:banzhu@ftp.zjut.com</a></p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">帐号：banzhu</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">密码：banzhu</p>\r\n<p class=\"rteindent2\" style=\"margin-top:10px;margin-bottom:15px;margin-left:80px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">所有版主均可以使用改帐号。版主的使用有效期至职位取消为止。贵宾有效期至毕业离校。</p>','2011-11-01 21:44:03');
INSERT INTO `qt_event` VALUES (13,'精弘网络邮件系统非本科生申请说明','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">由于我们精弘只有本科生的数据，所以请其他需要开通邮箱的同学以班级为单位向我们精弘网络提交申请。请下载下面的文件。打印并填写《精弘网络邮件系统开通申请》再由学院盖章，然后填写《申请名单》，附上姓名和联系电话发送至myzjut@zjut.com。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">我们收到邮件后会尽快联系您，并获取您手中的《精弘网络邮件系统开通申请》。待我们审核完毕后会把申请的邮箱一次性开通。</p>\r\n<table class=\"sticky-header\" style=\"margin-top:0px;background-image:initial;background-attachment:initial;background-origin:initial;background-clip:initial;color:#333333;font-family:Arial;font-size:13px;position:fixed;top:0px;width:451px;left:450px;visibility:hidden;\"><thead><tr><th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;width:391px;\"></th>\r\n<th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;width:32px;\"></th>\r\n</tr>\r\n</thead></table>\r\n<table id=\"attachments\" class=\"sticky-enabled sticky-table\" style=\"color:#333333;font-family:Arial;font-size:13px;\"><thead class=\"tableHeader-processed\"><tr><th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;\">附件</th>\r\n<th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;\">大小</th>\r\n</tr>\r\n</thead><tbody style=\"border-top-width:1px;border-top-style:solid;border-top-color:#cccccc;\"><tr class=\"odd\" style=\"background-color:#eeeeee;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#cccccc;padding-top:0.1em;padding-right:0.6em;padding-bottom:0.1em;padding-left:0.6em;\"><td style=\"padding-top:0.3em;padding-right:0.3em;padding-bottom:0.3em;padding-left:0.3em;\"><a href=\"http://blog.myzjut.org/files/Jing_Hong_Wang_Luo_You_Jian_Xi_Tong_Kai_Tong_Shen_Qing_.rar\" style=\"text-decoration:none;color:#ab0900;\">Jing_Hong_Wang_Luo_You_Jian_Xi_Tong_Kai_Tong_Shen_Qing_.rar</a></td>\r\n<td style=\"padding-top:0.3em;padding-right:0.3em;padding-bottom:0.3em;padding-left:0.3em;\">4.1 KB</td>\r\n</tr>\r\n</tbody>\r\n</table>','2011-11-01 21:44:37');
INSERT INTO `qt_event` VALUES (14,'使用迅雷下载精弘FTP的简易方法','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">此方法是利用我们精弘FTP的web站点来下载文件。好处是非常简单，您不需要安装特殊的ftp软件，只要您电脑里有浏览器和迅雷/flashget，就可以轻松地开始下载。坏处是web站点的信息每天只更新一次，所以文件信息不是实时的。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">具体方法：</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">1.请用您的浏览器访问<a href=\"http://ftp.zjut.com/\" style=\"text-decoration:none;color:#ab0900;\">http://ftp.zjut.com</a>（注意前面是http://而不是ftp://哦）</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2.点击“Web浏览FTP所有内容”<a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/ftp1.png\" style=\"text-decoration:none;color:#ab0900;\"><br />\r\n</a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">&nbsp;<a href=\"http://blog.myzjut.org/sites/default/files/ftp1.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"359\" height=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/ftp1.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">3.找到您想下载的文件</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/ftp2.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"564\" height=\"200\" alt=\"\" class=\"triggerclass\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/ftp2.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">4.右键点击那个文件的连接，选择使用迅雷下载</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/ftp3.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"153\" height=\"200\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/ftp3.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">5.勾选“登陆到服务器”，并填写帐号密码，如果您没有vip帐号，请都填写down。原始线程数改成1，否则您极有可能被封哦。改好后就可以开始下载了，但是ftp服务器对同时下载人数是有限制的，您不一定马上就可以开始下载。此时您只要把迅雷的任务开着，到轮到您的时候，迅雷就会开始下载。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><a target=\"_blank\" href=\"http://blog.myzjut.org/sites/default/files/ftp4.png\" style=\"text-decoration:none;color:#ab0900;\"><img width=\"370\" height=\"400\" alt=\"\" rel=\"lightbox\" src=\"http://blog.myzjut.org/sites/default/files/ftp4.png\" style=\"border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initial;border-color:initial;margin-top:5px;margin-right:5px;margin-bottom:5px;margin-left:5px;\" /></a></p>','2011-11-01 21:44:59');
INSERT INTO `qt_event` VALUES (15,'精弘FTP上传资源及获得VIP帐号说明','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">精弘FTP的VIP帐号是赠给对精弘FTP有贡献朋友使用的。有效期一个月，每个月会依据会员的贡献评一次VIP，有若干名额，具体参见相关资源板块的说明。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">一、如何上传？</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">1.准备要上传的文件，修改文件名，在文件名末尾注明您的论坛id</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2.请使用FTP工具（推荐）FlashFXP登陆ftp.zjut.com，账号密码都是up</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">3.选择相应的目录，传上你要传的文件</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">4.去对应版块发帖说明（这步很重要，这是评价您贡献的依据）</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">二、哪些板块可以发帖说明？</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">1.<a href=\"http://bbs.zjut.com/forumdisplay.php?fid=186\" style=\"text-decoration:none;color:#ab0900;\">影视资源</a></p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">2.<a href=\"http://bbs.zjut.com/forumdisplay.php?fid=227\" style=\"text-decoration:none;color:#ab0900;\">动漫资源</a></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">三、如何评价贡献？</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">每个月末，资源板块的斑竹都会统计该板块用户在该月的上传的资源量，并以此排名，选择优秀的会员。这些资源量包括内网资源和外网资源。也就是说无论您是否在精弘ftp上传文件，只要您在资源板块发布资源，您就有贡献。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">四、资源VIP有哪些？</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">影视资源VIP</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">动漫资源VIP</p>\r\n<p class=\"rteindent1\" style=\"margin-top:10px;margin-bottom:15px;margin-left:40px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">(帐号密码参见“<a href=\"http://team.zjut.com/MyzjutFTP-id\" style=\"text-decoration:none;color:#ab0900;\">精弘FTP帐号说明</a>”)</p>','2011-11-01 21:45:14');
INSERT INTO `qt_event` VALUES (16,'关闭全文搜索功能','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">近来论坛比较卡大家也看到了。<br />\r\n发现全文搜索对服务器数据库的压力很大。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">经过和各位版主的商量，<br />\r\n所以我们决定先关闭论坛的全文搜索功能一段时间。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">这次涉及的用户组有：管理员，超级版主，版主，学校部门，优秀版主，实习版主，池塘管理员，优秀会员，精弘网络团队，精弘元老。</p>','2011-11-01 21:45:29');
INSERT INTO `qt_event` VALUES (17,'论坛勋章','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><em id=\"authorposton7832843\">2009-9-30</em></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><em>开辟了论坛勋章可以买卖的先河，</em></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><em>可以买卖的勋章有星座，情侣勋章。</em></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><em>用JHB买卖。标价999.</em></p>','2011-11-01 21:45:44');
INSERT INTO `qt_event` VALUES (18,'精弘广告模式的尝试','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">这学期尝试了精弘商铺的广告模式~</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">广告模式的平台系统将会在下学期与广告商和用户见面！</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">整个模式采用adsense&nbsp; 的数据显示方式，但加入精弘本身的特色，一步步将它发展起来，一个部门的崛起，得有合适的流动资金，希望我们的这一步能得到大家的支持！</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">--晴天</p>','2011-11-01 21:45:59');
INSERT INTO `qt_event` VALUES (19,'精弘网络2009/2010起部门划分','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">精弘网络从2009/2010夏天开始，办公室定在东17架空层【认准精弘网络的门牌】</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">精弘网络现组织：</p>\r\n<ol style=\"margin-left:35px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><li>常务组【人力资源调配，财务管理】</li>\r\n<li>技术部<ol style=\"margin-left:35px;\"><li>服务器管理【linux,mysql】</li>\r\n<li>视觉传达【photoshop】</li>\r\n<li>后台程序开发【Jsp,Php,Python】</li>\r\n<li>前端开发【xhtml,javascript,css】</li>\r\n</ol>\r\n</li>\r\n<li>产品部【资讯，论坛，商铺，家园，下载，电台】【服务包括:导航，邮箱，开源镜像，即时通讯】</li>\r\n</ol>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">&nbsp;</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">主要短缺人才：<strong>服务器管理人员，程序开发人员，视觉传达人员</strong></p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">对精弘有兴趣，对技术有兴趣的同学都可以联系我们！可以在论坛短消息我们，ID:qingtian16265,【技术部】</p>','2011-11-01 21:46:13');
INSERT INTO `qt_event` VALUES (20,'精弘论坛','<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">一、&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">精弘论坛是工大师生信息共享、学术交流、娱乐休闲的网络互动平台。2003年5月在校领导的支持下，精弘论坛正式建立，并申请到了“bbs.zjut.edu.cn”域名，标志了其官方论坛的地位。论坛以服务同学为宗旨，不断推陈出新，经过几代人的不懈努力，已发展成为校内具有很高影响力的网络互动平台。</span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\">&nbsp;</p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">二、&nbsp;</span><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">口号</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\">：</span><span style=\"font-size:10.5pt;font-family:宋体;\">精弘论坛，我们的交流平台！</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\">&nbsp;</p>\r\n<p class=\"p16\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">三、&nbsp;</span><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">组织架构：</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><br />\r\n<span style=\"font-weight:bold;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">1.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">校园生活区：校园生活区是工大学子分享校园生活的喜乐、校内团体组织的活动宣传平台。在这里可以了解到很多的校园信息，而其中新手报到、暑期实践、选课交流以及毕业留言版块是时节性的热门版块，二手版块更是让同学间的物品转让也有了方便的平台，同乡联谊会、心灵家园以及情感空间的存在，更是丰富了大家在校园生活力多姿多彩的生活。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">2.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">电脑网络区：电脑网络区是学校电脑网络技术的交流平台。实用技术为主服务普通同学，开发技术为辅促进学术交流。比较有针对性的让同学来交流各种技术问题，其中的硬件数码、软件版块更是能很好的解决大家平时学校里遇到的各种技术性难题，编程版块是ACM爱好者聚集的平台，linux则是宣扬开源的精神，与精弘的开源社区联系密切。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">3.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">文化艺术区：文化学术区是文学、艺术作品的交流分享平台。这里集中了论坛里大部分原创性的资源与各种文人才子，是同学们学习交流的一个重要场所。文学、读书、摄影、设计版块贴近同学们的生活，寻找志同道合的人，一起探讨交流心得。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">4.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">未来规划区：未来规划区是工大学子关于人生规划的交流平台。包括就业，升学，出国等，让大家能在这里找到自己的人生方向和未来发展目标</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">5.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">学术科学区：学术科学是理性与智慧交锋、学术与科学融汇的交流平台。让工大学子能在这里找到志同道合的人，一起交流，引发学生对于社会时政的关注、培养学生对学术科学的理性思考、提升学生的学术科学水平。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">6.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">休闲娱乐区：休闲娱乐区为广大师生提供一个休闲娱乐全方面的交流平台。这里目前有旅游、体育、音乐、影视等多个分类明确的版块，聚集着一批因为共同爱好而相识、相知的青年，在这里互相交流经验与心得。休闲娱乐区还开设了灌水类版块池塘边，营造一个轻松愉悦的氛围以活跃论坛人气。吸引人气，活跃论坛气氛，让学生们能在学习的空余好好放松自己。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">7.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">精弘网络以及精弘站务区：精弘网络以及精弘站务区作为宣传精弘的平台与精弘论坛处理日常事务的场所，由论坛负责人直接管辖。其中精弘网络主要以宣传精弘的各个产品为主，开设了各个产品的版块，由产品部门人员管理；还有会员之家是处理精弘一些线上问题，合作事宜则是处理其他组织与精弘网络进行合作的平台。精弘站务区是精弘内部交流的场所，有精弘论坛的斑竹培训基地实习版主版块，也有精弘论坛斑竹们交流讨论的版块，还有精弘网络团队版块供精弘各部门人员进行线上交流。</span></p>','2011-11-01 21:46:27');
INSERT INTO `qt_event` VALUES (21,'开源社区','<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">一、&nbsp;</span><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">简介:</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\">&nbsp;开源社区是一个专注于发展工大开源文化的组织。开源社区成立于2008年9月，为工大师生提供免费的Linux镜像服务、邮箱服务以及即时通讯软件等，让更多的人关注开源技术，用开源技术服务更多人。同时，开源社区作为火狐校园大使，积极开展了火狐社区的开源活动。开源社区作为Google杭州技术用户组（GTUG）的合作组织，与杭州本地的Google开源技术爱好者紧密合作。</span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\">&nbsp;</p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">二、&nbsp;</span><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">口号</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\">：自由，分享！</span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\">&nbsp;</p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p15\" style=\"margin-top:0pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">三、&nbsp;</span><span style=\"color:#000000;font-weight:bold;font-size:10.5pt;font-family:宋体;\">组织架构：</span><span style=\"color:#000000;font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><br />\r\n<span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-bottom:0pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\"><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-right:16.275pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">1.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">即时通讯组：维护即时通讯软件的服务，保证软件的正常使用。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-right:16.275pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">2.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">Ubuntu镜像组：维护内网的Ubuntu镜像，保持镜像的及时更新和稳定。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-right:16.275pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">3.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">学生邮箱组：维护学生邮箱服务，解决同学使用邮箱碰到的各类问题。</span><span style=\"font-size:10.5pt;font-family:宋体;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top:0pt;margin-right:16.275pt;margin-bottom:0pt;margin-left:21pt;color:#333333;font-family:Arial;font-size:13px;line-height:normal;text-indent:-21pt;\"><span style=\"font-size:10.5pt;font-family:宋体;\">4.&nbsp;</span><span style=\"font-size:10.5pt;font-family:宋体;\">开源推广：发展推广工大的开源文化，让更多的人关注开源技术，用开源技术服务更多人。</span></p>','2011-11-01 21:46:43');
INSERT INTO `qt_event` VALUES (22,'09/10学年精弘网络发展规划','<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">精弘在08/09主要发展目标是拓展业务。现在精弘的主要产品已经足够，下一阶段需要做的是巩固现有服务，深化组织改革，提高工作效率，改善成员福利。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">一、组织结构<br />\r\n组织规划图见附件。</p>\r\n<p style=\"margin-top:10px;margin-bottom:15px;color:#333333;font-family:Arial;font-size:13px;line-height:normal;\">在上阶段改革后，精弘运作效率有显著改善，但是还存在各种问题，比如线下团队闲置问题。下阶段精弘还需要继续改革。新的组织结构充分参考了外部企业，并结合了现有的结构。新的组织简化为3大部门，分别由CTO、COO、日常事务总监主管。<br />\r\n&nbsp;<br />\r\n新组织进一步缩减了线下部门，改名常务部。主要负责精弘的日常事务。该部门一般由新招收的学生为主。在常务部门工作同时，接受技术部门、产品部门的指导，学习技术、业务知识。学习结束后，经考核转入其他部门。<br />\r\n&nbsp;<br />\r\n下一阶段，精弘主打六大产品：论坛、家园、下载、商铺、电台、资讯。每个部门专设产品经理，负责整个产品的发展，对产品负责。每个部门专设一个技术小团队，由服务器管理员、程序开发、视觉设计、前端开发组成。这些人均来自技术部门，日常工作听从产品经理的安排，特殊项目时，由CTO统一管理。<br />\r\n这样做的好处是，充分利用人力资源，确保各产品都有人在维护。<br />\r\n&nbsp;<br />\r\n技术部门，平时主要工作有三部分，一是分成6个团队，维护现有产品；二是组织人员开发新产品或现有产品的扩展；三是技术培训。<br />\r\n&nbsp;<br />\r\n二、产品<br />\r\n精弘发展至今，陆续推出过很多产品，但是随着互联网的发展，有些产品已经不能满足现有用户的需求。这些产品该关的要关，该并的要并。这学期初首要工作就是关停[精弘博客]，目前关停工作已就绪，等待用户备份完后，月底关停。<br />\r\n&nbsp;<br />\r\n精弘论坛，是我们精弘的老牌产品，发展到现在累积了很多经验。下一阶段任务仍就是完善各种管理规则，包括管理会员和管理版主，要求处罚、奖励时有规可依。同时版主的考评、工资奖励也要开始准备起来。<br />\r\n&nbsp;<br />\r\n精弘下载，是上阶段推出的产品，受到了同学们的好评。下一阶段，我们将把精弘FTP合并到精弘下载，实现资源下载的统一，降低用户下载资源的技术门槛。目前这部门即将面临的问题是服务器老化，空间不足，带宽不够。<br />\r\n&nbsp;<br />\r\n精弘商铺，是下阶段要正式运行的新产品。目前运行方案还在规划中。到时候需要设立勤工岗位，定点值班处理学生的备案。<br />\r\n&nbsp;<br />\r\n精弘家园，由精弘博客转型而来，是一个娱乐性质比较强的站点。下阶段的主要工作是，建立管理团队，监督不良信息、开展各类活动。<br />\r\n&nbsp;<br />\r\nFEEL电台，没有太大的变化。下阶段主要是为电台开发一个收听门户。<br />\r\n&nbsp;<br />\r\n精弘资讯，下阶段的主要工作是组建记者团。<br />\r\n&nbsp;<br />\r\n另外，FEEL电台、精弘资讯可能要与校内某个DV社进行合作，发展视频媒体。具体细节还在策划中。<br />\r\n&nbsp;<br />\r\n三、服务器<br />\r\n服务器搬迁的事情，还不能进行，网络中心的机柜还没有买来。我们还需要等待一段时间。<br />\r\n&nbsp;<br />\r\n招生就业服务器搬迁的评估工作已经结束。我们发现招生网改动太多，代码太乱，要迁移过去的难度太大，建议重新开发招生网。目前我们正在尝试搬迁就业网。如果招生网需要重新开发，那么可能需要消耗一年工期。这段时间新老服务器都不可能闲置下来。我们依然会面对服务器紧缺问题。<br />\r\n&nbsp;<br />\r\n继上学期，FEEL电台的服务器报废后。精弘现在有两台服务器偏老，可能会在下一阶段报废。<br />\r\n&nbsp;<br />\r\n四、工资<br />\r\n精弘在以往，技术和美编是有工资的。不过目前出现了问题，由于工资是稳定的，美编的积极性不高了。平时都忙着做自己的事情，经常推托任务。在下一阶段，我们设想全员分配工资。如果工资可控范围比较大(0-500元)，我们想实行按劳分配，充分调动成员的积极性。<br />\r\n&nbsp;<br />\r\n五、广告<br />\r\n精弘的产品已经丰富，我觉得下一阶段，家园、商铺可以尝试做广告。家园以娱乐为主，商铺以商业为主，这种氛围下做广告，均不会影响学校形象。</p>\r\n<table class=\"sticky-header\" style=\"margin-top:0px;background-image:initial;background-attachment:initial;background-origin:initial;background-clip:initial;color:#333333;font-family:Arial;font-size:13px;position:fixed;top:0px;width:232px;left:450px;visibility:hidden;\"><thead><tr><th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;width:158px;\"></th>\r\n<th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;width:46px;\"></th>\r\n</tr>\r\n</thead></table>\r\n<table id=\"attachments\" class=\"sticky-enabled sticky-table\" style=\"color:#333333;font-family:Arial;font-size:13px;\"><thead class=\"tableHeader-processed\"><tr><th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;\">附件</th>\r\n<th style=\"text-align:left;padding-right:1em;border-bottom-width:3px;border-bottom-style:solid;border-bottom-color:#cccccc;\">大小</th>\r\n</tr>\r\n</thead><tbody style=\"border-top-width:1px;border-top-style:solid;border-top-color:#cccccc;\"><tr class=\"odd\" style=\"background-color:#eeeeee;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#cccccc;padding-top:0.1em;padding-right:0.6em;padding-bottom:0.1em;padding-left:0.6em;\"><td style=\"padding-top:0.3em;padding-right:0.3em;padding-bottom:0.3em;padding-left:0.3em;\"><a href=\"http://blog.myzjut.org/files/Jing_Hong_Gui_Hua_Tu_.jpg\" style=\"text-decoration:none;color:#ab0900;\">Jing_Hong_Gui_Hua_Tu_.jpg</a></td>\r\n<td style=\"padding-top:0.3em;padding-right:0.3em;padding-bottom:0.3em;padding-left:0.3em;\">32.59 KB</td>\r\n</tr>\r\n</tbody>\r\n</table>','2011-11-01 21:47:20');
/*!40000 ALTER TABLE `qt_event` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_ffile
#

CREATE TABLE `qt_ffile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名',
  `showname` varchar(255) DEFAULT NULL COMMENT '显示名',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文件表';

#
# Dumping data for table qt_ffile
#
LOCK TABLES `qt_ffile` WRITE;
/*!40000 ALTER TABLE `qt_ffile` DISABLE KEYS */;

INSERT INTO `qt_ffile` VALUES (1,'/Jh-oa/file/20111110222027_538.jpg','hello','2011-11-10 22:20:48',2,51149,'jpg');
INSERT INTO `qt_ffile` VALUES (2,'/Jh-oa/file/20111113142241_267.png','2011新生报告申请表','2011-11-13 14:22:53',2,4905,'png');
/*!40000 ALTER TABLE `qt_ffile` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_job
#

CREATE TABLE `qt_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(255) DEFAULT NULL COMMENT '职务名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='职务表';

#
# Dumping data for table qt_job
#
LOCK TABLES `qt_job` WRITE;
/*!40000 ALTER TABLE `qt_job` DISABLE KEYS */;

INSERT INTO `qt_job` VALUES (1,'主席');
INSERT INTO `qt_job` VALUES (2,'副主席');
INSERT INTO `qt_job` VALUES (3,'部长');
INSERT INTO `qt_job` VALUES (4,'副部');
INSERT INTO `qt_job` VALUES (5,'部员');
/*!40000 ALTER TABLE `qt_job` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_ke
#

CREATE TABLE `qt_ke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `kevalue` varchar(255) DEFAULT NULL COMMENT '课程表值[以0代表没课，1代表有课]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='课表';

#
# Dumping data for table qt_ke
#
LOCK TABLES `qt_ke` WRITE;
/*!40000 ALTER TABLE `qt_ke` DISABLE KEYS */;

INSERT INTO `qt_ke` VALUES (9,2,'00000000100000010000000000001000000100000010000001000000000001110000110000000');
INSERT INTO `qt_ke` VALUES (10,3,'10000001000000000000000000000000000000000000000000000000000000000000000000000');
INSERT INTO `qt_ke` VALUES (11,4,'00000000100000011000000100000000000000000000010000001000000000001100000110000');
INSERT INTO `qt_ke` VALUES (12,5,'00000000000000010100001010000100000010000000100000010000000000000000000000000');
INSERT INTO `qt_ke` VALUES (13,6,'00000000000000010000001000000000000100000010100000010000000010000001000000000');
/*!40000 ALTER TABLE `qt_ke` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_menu
#

CREATE TABLE `qt_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) DEFAULT NULL COMMENT '菜单名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='菜单表';

#
# Dumping data for table qt_menu
#
LOCK TABLES `qt_menu` WRITE;
/*!40000 ALTER TABLE `qt_menu` DISABLE KEYS */;

INSERT INTO `qt_menu` VALUES (7,'个人中心');
INSERT INTO `qt_menu` VALUES (9,'用户管理');
INSERT INTO `qt_menu` VALUES (10,'菜单管理');
INSERT INTO `qt_menu` VALUES (11,'资源管理');
INSERT INTO `qt_menu` VALUES (12,'操作管理');
INSERT INTO `qt_menu` VALUES (13,'角色管理');
INSERT INTO `qt_menu` VALUES (14,'用户角色管理');
INSERT INTO `qt_menu` VALUES (15,'权限管理');
INSERT INTO `qt_menu` VALUES (16,'动态管理');
INSERT INTO `qt_menu` VALUES (17,'角色权限管理');
INSERT INTO `qt_menu` VALUES (18,'全局菜单');
INSERT INTO `qt_menu` VALUES (19,'学院管理');
INSERT INTO `qt_menu` VALUES (20,'部门管理');
INSERT INTO `qt_menu` VALUES (21,'课表管理');
INSERT INTO `qt_menu` VALUES (22,'历史管理');
INSERT INTO `qt_menu` VALUES (23,'文件管理');
INSERT INTO `qt_menu` VALUES (24,'评论管理');
INSERT INTO `qt_menu` VALUES (25,'反馈管理');
INSERT INTO `qt_menu` VALUES (26,'产品管理');
INSERT INTO `qt_menu` VALUES (27,'管理团队成员管理');
INSERT INTO `qt_menu` VALUES (28,'职务菜单');
/*!40000 ALTER TABLE `qt_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_news
#

CREATE TABLE `qt_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_hungarian_ci COMMENT '富文本内容',
  `stext` varchar(255) DEFAULT NULL COMMENT '纯文本内容',
  `userID` int(11) DEFAULT NULL COMMENT '发布者ID',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `modifytime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻动态表';

#
# Dumping data for table qt_news
#
LOCK TABLES `qt_news` WRITE;
/*!40000 ALTER TABLE `qt_news` DISABLE KEYS */;

/*!40000 ALTER TABLE `qt_news` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_operator
#

CREATE TABLE `qt_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optname` varchar(255) DEFAULT NULL COMMENT '操作描述',
  `optvalue` varchar(255) DEFAULT NULL COMMENT '操作值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='操作表';

#
# Dumping data for table qt_operator
#
LOCK TABLES `qt_operator` WRITE;
/*!40000 ALTER TABLE `qt_operator` DISABLE KEYS */;

INSERT INTO `qt_operator` VALUES (2,'单条数据查看','show');
INSERT INTO `qt_operator` VALUES (4,'添加视图','viewAdd');
INSERT INTO `qt_operator` VALUES (5,'添加','add');
INSERT INTO `qt_operator` VALUES (6,'删除','delete');
INSERT INTO `qt_operator` VALUES (7,'编辑视图','viewModify');
INSERT INTO `qt_operator` VALUES (8,'编辑','modify');
INSERT INTO `qt_operator` VALUES (9,'筛选视图','viewFilter');
INSERT INTO `qt_operator` VALUES (10,'筛选','filter');
INSERT INTO `qt_operator` VALUES (11,'列表','list');
INSERT INTO `qt_operator` VALUES (12,'分页列表','listByPage');
INSERT INTO `qt_operator` VALUES (13,'批量删除','batchDelete');
INSERT INTO `qt_operator` VALUES (14,'私有数据查看','showMyself');
INSERT INTO `qt_operator` VALUES (15,'私有数据编辑视图','viewModifyMyself');
INSERT INTO `qt_operator` VALUES (16,'私有数据编辑','modifyMyself');
INSERT INTO `qt_operator` VALUES (17,'私有数据筛选视图','viewFilterMyself');
INSERT INTO `qt_operator` VALUES (18,'私有数据筛选','filterMyself');
INSERT INTO `qt_operator` VALUES (19,'私有数据列表','listMyself');
INSERT INTO `qt_operator` VALUES (20,'私有数据分页列表','listByPageMyself');
INSERT INTO `qt_operator` VALUES (21,'私有数据批量删除','batchDeleteMyself');
INSERT INTO `qt_operator` VALUES (22,'后台管理主页','manager');
INSERT INTO `qt_operator` VALUES (23,'上传图片','uploadImg');
INSERT INTO `qt_operator` VALUES (24,'退出系统','anonymous_logout');
INSERT INTO `qt_operator` VALUES (25,'私有数据添加视图','viewAddMyself');
INSERT INTO `qt_operator` VALUES (26,'私有数据添加','addMyself');
INSERT INTO `qt_operator` VALUES (27,'导出用户基本信息视图','viewExportUser');
INSERT INTO `qt_operator` VALUES (28,'导出用户基本信息','exportUser');
INSERT INTO `qt_operator` VALUES (29,'上传文件','uploadFile');
INSERT INTO `qt_operator` VALUES (30,'私有数据删除','deleteMyself');
INSERT INTO `qt_operator` VALUES (31,'评论列表（文件中使用）','ajaxCommentFilter');
INSERT INTO `qt_operator` VALUES (32,'发表评论（文件详细中使用）','ajaxCommentAdd');
INSERT INTO `qt_operator` VALUES (33,'删除评论（文件详细中使用）','ajaxCommentDelete');
INSERT INTO `qt_operator` VALUES (34,'共享文件','shareFile');
INSERT INTO `qt_operator` VALUES (35,'公共文件查看','shareFileShow');
INSERT INTO `qt_operator` VALUES (36,'空课查询视图','viewFindFreeTime');
INSERT INTO `qt_operator` VALUES (37,'空课查询','findFreeTime');
INSERT INTO `qt_operator` VALUES (38,'按部门查看全体人员空闲时间情况','listAllKeByDepartmentId');
/*!40000 ALTER TABLE `qt_operator` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_permission
#

CREATE TABLE `qt_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) DEFAULT NULL COMMENT '菜单ID',
  `resourceID` int(11) DEFAULT NULL COMMENT '资源ID',
  `optID` int(11) DEFAULT NULL COMMENT '操作ID',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='权限表';

#
# Dumping data for table qt_permission
#
LOCK TABLES `qt_permission` WRITE;
/*!40000 ALTER TABLE `qt_permission` DISABLE KEYS */;

INSERT INTO `qt_permission` VALUES (7,10,3,4,'添加菜单视图');
INSERT INTO `qt_permission` VALUES (8,10,3,5,'添加菜单');
INSERT INTO `qt_permission` VALUES (9,10,3,6,'删除菜单');
INSERT INTO `qt_permission` VALUES (10,10,3,7,'编辑菜单视图');
INSERT INTO `qt_permission` VALUES (11,10,3,8,'编辑菜单');
INSERT INTO `qt_permission` VALUES (12,10,3,11,'列表菜单');
INSERT INTO `qt_permission` VALUES (13,11,6,4,'添加资源视图');
INSERT INTO `qt_permission` VALUES (14,11,6,5,'添加资源');
INSERT INTO `qt_permission` VALUES (15,11,6,6,'删除资源');
INSERT INTO `qt_permission` VALUES (16,11,6,7,'编辑资源视图');
INSERT INTO `qt_permission` VALUES (17,11,6,8,'编辑资源');
INSERT INTO `qt_permission` VALUES (18,11,6,11,'列表资源');
INSERT INTO `qt_permission` VALUES (19,12,7,4,'添加操作视图');
INSERT INTO `qt_permission` VALUES (20,12,7,5,'添加操作');
INSERT INTO `qt_permission` VALUES (21,12,7,6,'删除操作');
INSERT INTO `qt_permission` VALUES (22,12,7,7,'编辑操作视图');
INSERT INTO `qt_permission` VALUES (23,12,7,8,'编辑操作');
INSERT INTO `qt_permission` VALUES (24,12,7,11,'列表操作');
INSERT INTO `qt_permission` VALUES (25,9,8,2,'查看用户');
INSERT INTO `qt_permission` VALUES (26,9,8,4,'添加用户视图');
INSERT INTO `qt_permission` VALUES (27,9,8,5,'添加用户');
INSERT INTO `qt_permission` VALUES (28,9,8,7,'编辑用户视图');
INSERT INTO `qt_permission` VALUES (29,9,8,8,'编辑用户');
INSERT INTO `qt_permission` VALUES (30,9,8,10,'筛选用户');
INSERT INTO `qt_permission` VALUES (31,16,9,2,'查看动态');
INSERT INTO `qt_permission` VALUES (32,16,9,4,'添加动态视图');
INSERT INTO `qt_permission` VALUES (33,16,9,5,'添加动态');
INSERT INTO `qt_permission` VALUES (34,16,9,7,'编辑动态视图');
INSERT INTO `qt_permission` VALUES (35,16,9,8,'编辑动态');
INSERT INTO `qt_permission` VALUES (36,16,9,10,'筛选动态');
INSERT INTO `qt_permission` VALUES (37,16,9,13,'批量删除动态');
INSERT INTO `qt_permission` VALUES (38,13,10,4,'添加角色视图');
INSERT INTO `qt_permission` VALUES (39,13,10,5,'添加角色');
INSERT INTO `qt_permission` VALUES (40,13,10,6,'删除角色');
INSERT INTO `qt_permission` VALUES (41,13,10,7,'编辑角色视图');
INSERT INTO `qt_permission` VALUES (42,13,10,8,'编辑角色');
INSERT INTO `qt_permission` VALUES (43,13,10,11,'列表角色');
INSERT INTO `qt_permission` VALUES (44,14,11,4,'添加用户角色视图');
INSERT INTO `qt_permission` VALUES (45,14,11,5,'添加用户角色');
INSERT INTO `qt_permission` VALUES (46,14,11,7,'编辑用户角色视图');
INSERT INTO `qt_permission` VALUES (47,14,11,8,'编辑用户角色');
INSERT INTO `qt_permission` VALUES (48,14,11,10,'筛选用户角色');
INSERT INTO `qt_permission` VALUES (49,14,11,13,'批量删除用户角色');
INSERT INTO `qt_permission` VALUES (50,15,12,4,'添加权限视图');
INSERT INTO `qt_permission` VALUES (51,15,12,5,'添加权限');
INSERT INTO `qt_permission` VALUES (52,15,12,7,'编辑权限视图');
INSERT INTO `qt_permission` VALUES (53,15,12,8,'编辑权限');
INSERT INTO `qt_permission` VALUES (54,15,12,10,'筛选权限');
INSERT INTO `qt_permission` VALUES (55,15,12,13,'批量删除权限');
INSERT INTO `qt_permission` VALUES (56,17,13,4,'添加角色权限视图');
INSERT INTO `qt_permission` VALUES (57,17,13,5,'添加角色权限');
INSERT INTO `qt_permission` VALUES (58,17,13,6,'删除角色权限');
INSERT INTO `qt_permission` VALUES (59,17,13,7,'编辑角色权限视图');
INSERT INTO `qt_permission` VALUES (60,17,13,8,'编辑角色权限');
INSERT INTO `qt_permission` VALUES (61,17,13,10,'筛选角色权限');
INSERT INTO `qt_permission` VALUES (62,18,14,22,'查看后台管理主页');
INSERT INTO `qt_permission` VALUES (63,18,14,23,'上传图片');
INSERT INTO `qt_permission` VALUES (64,18,14,24,'用户退出');
INSERT INTO `qt_permission` VALUES (65,19,15,4,'添加学院视图');
INSERT INTO `qt_permission` VALUES (66,19,15,5,'添加学院');
INSERT INTO `qt_permission` VALUES (67,19,15,6,'删除学院');
INSERT INTO `qt_permission` VALUES (68,19,15,7,'编辑学院视图');
INSERT INTO `qt_permission` VALUES (69,19,15,8,'编辑学院');
INSERT INTO `qt_permission` VALUES (70,19,15,11,'列表学院');
INSERT INTO `qt_permission` VALUES (71,9,8,13,'批量删除用户');
INSERT INTO `qt_permission` VALUES (72,20,16,4,'添加部门视图');
INSERT INTO `qt_permission` VALUES (73,20,16,5,'添加部门');
INSERT INTO `qt_permission` VALUES (74,20,16,6,'删除部门');
INSERT INTO `qt_permission` VALUES (75,20,16,7,'编辑部门视图');
INSERT INTO `qt_permission` VALUES (76,20,16,8,'编辑部门');
INSERT INTO `qt_permission` VALUES (77,20,16,11,'列表部门');
INSERT INTO `qt_permission` VALUES (78,7,8,14,'个人资料查看');
INSERT INTO `qt_permission` VALUES (79,7,8,15,'编辑个人资料视图');
INSERT INTO `qt_permission` VALUES (80,7,8,16,'编辑个人资料');
INSERT INTO `qt_permission` VALUES (81,21,17,10,'筛选课表');
INSERT INTO `qt_permission` VALUES (82,21,17,14,'私有数据查看');
INSERT INTO `qt_permission` VALUES (83,21,17,15,'私有数据编辑视图');
INSERT INTO `qt_permission` VALUES (84,21,17,25,'私有数据添加视图');
INSERT INTO `qt_permission` VALUES (85,21,17,26,'私有数据添加');
INSERT INTO `qt_permission` VALUES (86,21,17,16,'私有数据编辑');
INSERT INTO `qt_permission` VALUES (87,21,17,13,'批量删除');
INSERT INTO `qt_permission` VALUES (88,21,17,7,'编辑课表视图');
INSERT INTO `qt_permission` VALUES (89,21,17,8,'编辑课表');
INSERT INTO `qt_permission` VALUES (90,21,17,4,'添加课表视图');
INSERT INTO `qt_permission` VALUES (91,21,17,5,'添加课表');
INSERT INTO `qt_permission` VALUES (92,21,17,2,'单个课表查看');
INSERT INTO `qt_permission` VALUES (93,22,18,4,'添加大事件视图');
INSERT INTO `qt_permission` VALUES (94,22,18,5,'添加大事件');
INSERT INTO `qt_permission` VALUES (95,22,18,7,'编辑大事件视图');
INSERT INTO `qt_permission` VALUES (96,22,18,8,'编辑大事件');
INSERT INTO `qt_permission` VALUES (97,22,18,10,'筛选大事件');
INSERT INTO `qt_permission` VALUES (98,22,18,13,'批量删除大事件');
INSERT INTO `qt_permission` VALUES (99,22,18,2,'查看大事件');
INSERT INTO `qt_permission` VALUES (100,9,8,27,'导出用户基本信息视图');
INSERT INTO `qt_permission` VALUES (101,9,8,28,'导出用户基本信息');
INSERT INTO `qt_permission` VALUES (102,23,19,2,'文件查看');
INSERT INTO `qt_permission` VALUES (103,23,19,5,'文件添加');
INSERT INTO `qt_permission` VALUES (104,23,19,10,'文件筛选');
INSERT INTO `qt_permission` VALUES (105,23,19,18,'私有文件筛选');
INSERT INTO `qt_permission` VALUES (110,23,19,4,'文件添加视图');
INSERT INTO `qt_permission` VALUES (111,23,19,25,'私有文件添加视图');
INSERT INTO `qt_permission` VALUES (112,23,19,26,'私有文件添加');
INSERT INTO `qt_permission` VALUES (113,23,19,14,'私有文件查看');
INSERT INTO `qt_permission` VALUES (114,23,19,29,'上传文件');
INSERT INTO `qt_permission` VALUES (115,23,19,6,'单个文件删除');
INSERT INTO `qt_permission` VALUES (116,23,19,13,'批量删除文件');
INSERT INTO `qt_permission` VALUES (117,23,19,30,'私有数据删除');
INSERT INTO `qt_permission` VALUES (118,23,19,21,'私有数据批量删除');
INSERT INTO `qt_permission` VALUES (122,18,14,31,'评论列表（文件详细中使用）');
INSERT INTO `qt_permission` VALUES (123,18,14,32,'发表评论（文件详细中使用）');
INSERT INTO `qt_permission` VALUES (124,18,14,33,'删除评论（文件详细中使用）');
INSERT INTO `qt_permission` VALUES (125,25,21,25,'私有反馈添加视图');
INSERT INTO `qt_permission` VALUES (126,25,21,26,'私有反馈添加');
INSERT INTO `qt_permission` VALUES (127,25,21,7,'反馈回复视图');
INSERT INTO `qt_permission` VALUES (128,25,21,8,'反馈回复');
INSERT INTO `qt_permission` VALUES (129,25,21,10,'反馈筛选');
INSERT INTO `qt_permission` VALUES (130,25,21,18,'私有反馈筛选');
INSERT INTO `qt_permission` VALUES (131,25,21,14,'私有反馈查看');
INSERT INTO `qt_permission` VALUES (132,25,21,21,'私有反馈批量删除');
INSERT INTO `qt_permission` VALUES (133,25,21,2,'单条反馈查看');
INSERT INTO `qt_permission` VALUES (134,26,22,4,'添加产品视图');
INSERT INTO `qt_permission` VALUES (135,26,22,5,'添加产品');
INSERT INTO `qt_permission` VALUES (136,26,22,6,'删除产品');
INSERT INTO `qt_permission` VALUES (137,26,22,7,'编辑产品视图');
INSERT INTO `qt_permission` VALUES (138,26,22,8,'编辑产品');
INSERT INTO `qt_permission` VALUES (139,26,22,11,'列表产品');
INSERT INTO `qt_permission` VALUES (140,26,22,29,'上传产品LOGO');
INSERT INTO `qt_permission` VALUES (141,27,23,4,'管理团队成员添加视图');
INSERT INTO `qt_permission` VALUES (142,27,23,5,'管理团队成员添加');
INSERT INTO `qt_permission` VALUES (143,27,23,6,'管理团队成员删除');
INSERT INTO `qt_permission` VALUES (144,27,23,7,'管理团队成员编辑视图');
INSERT INTO `qt_permission` VALUES (145,27,23,8,'管理团队成员编辑');
INSERT INTO `qt_permission` VALUES (146,27,23,10,'管理团队成员筛选');
INSERT INTO `qt_permission` VALUES (147,27,23,29,'管理团队成员头像上传');
INSERT INTO `qt_permission` VALUES (148,18,14,34,'共享文件');
INSERT INTO `qt_permission` VALUES (149,18,14,35,'公共文件查看');
INSERT INTO `qt_permission` VALUES (150,28,24,4,'添加职务视图');
INSERT INTO `qt_permission` VALUES (151,28,24,5,'添加职务');
INSERT INTO `qt_permission` VALUES (152,28,24,6,'删除职务');
INSERT INTO `qt_permission` VALUES (153,28,24,7,'编辑职务视图');
INSERT INTO `qt_permission` VALUES (154,28,24,8,'编辑职务');
INSERT INTO `qt_permission` VALUES (155,28,24,11,'列表职务');
INSERT INTO `qt_permission` VALUES (156,21,17,36,'空课查询视图');
INSERT INTO `qt_permission` VALUES (157,21,17,37,'空课查询');
INSERT INTO `qt_permission` VALUES (158,21,17,38,'按部门查看全体人员空闲时间情况');
/*!40000 ALTER TABLE `qt_permission` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_product
#

CREATE TABLE `qt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo图片地址',
  `name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `introduce` text COMMENT '产品介绍',
  `link` varchar(255) DEFAULT NULL COMMENT '产品地址',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品表';

#
# Dumping data for table qt_product
#
LOCK TABLES `qt_product` WRITE;
/*!40000 ALTER TABLE `qt_product` DISABLE KEYS */;

INSERT INTO `qt_product` VALUES (2,'/Jh-oa/product/20111110221912_68.png','论坛','这是一个测试<b>用例</b>','http://bbs.zjut.com','2011-11-10 22:19:13');
INSERT INTO `qt_product` VALUES (3,'/Jh-oa/product/20111106220042_473.jpg','商铺','送往迎来','http://shop.zjut.com','2011-11-06 22:00:54');
INSERT INTO `qt_product` VALUES (4,'/Jh-oa/product/20111106220113_808.jpg','电台','电台&nbsp;&nbsp;&nbsp;&nbsp;','http://feel.zjut.com','2011-11-06 22:01:25');
INSERT INTO `qt_product` VALUES (5,'/Jh-oa/product/20111106220412_875.jpg','下载','下载','http://down.zjut.com','2011-11-06 22:04:24');
/*!40000 ALTER TABLE `qt_product` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_resource
#

CREATE TABLE `qt_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourcename` varchar(255) DEFAULT NULL COMMENT '资源描述',
  `resourcevalue` varchar(255) DEFAULT NULL COMMENT '资源值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='资源表';

#
# Dumping data for table qt_resource
#
LOCK TABLES `qt_resource` WRITE;
/*!40000 ALTER TABLE `qt_resource` DISABLE KEYS */;

INSERT INTO `qt_resource` VALUES (3,'菜单资源','menu');
INSERT INTO `qt_resource` VALUES (6,'资源','resource');
INSERT INTO `qt_resource` VALUES (7,'操作资源','operator');
INSERT INTO `qt_resource` VALUES (8,'用户资源','user');
INSERT INTO `qt_resource` VALUES (9,'动态资源','news');
INSERT INTO `qt_resource` VALUES (10,'角色资源','role');
INSERT INTO `qt_resource` VALUES (11,'用户角色资源','userrole');
INSERT INTO `qt_resource` VALUES (12,'权限资源','permission');
INSERT INTO `qt_resource` VALUES (13,'角色权限资源','rolepermission');
INSERT INTO `qt_resource` VALUES (14,'全局资源','global');
INSERT INTO `qt_resource` VALUES (15,'学院资源','academy');
INSERT INTO `qt_resource` VALUES (16,'部门资源','department');
INSERT INTO `qt_resource` VALUES (17,'课表资源','ke');
INSERT INTO `qt_resource` VALUES (18,'大事件资源','event');
INSERT INTO `qt_resource` VALUES (19,'文件资源','ffile');
INSERT INTO `qt_resource` VALUES (20,'评论资源','comment');
INSERT INTO `qt_resource` VALUES (21,'反馈资源','suggest');
INSERT INTO `qt_resource` VALUES (22,'产品资源','product');
INSERT INTO `qt_resource` VALUES (23,'管理团队成员资源','team');
INSERT INTO `qt_resource` VALUES (24,'职务资源','job');
/*!40000 ALTER TABLE `qt_resource` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_role
#

CREATE TABLE `qt_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色表';

#
# Dumping data for table qt_role
#
LOCK TABLES `qt_role` WRITE;
/*!40000 ALTER TABLE `qt_role` DISABLE KEYS */;

INSERT INTO `qt_role` VALUES (1,'超级管理员');
INSERT INTO `qt_role` VALUES (6,'部员');
INSERT INTO `qt_role` VALUES (7,'部长');
INSERT INTO `qt_role` VALUES (8,'主席团');
/*!40000 ALTER TABLE `qt_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_rolepermission
#

CREATE TABLE `qt_rolepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL COMMENT '角色ID',
  `permissionID` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4162 DEFAULT CHARSET=utf8 COMMENT='角色权限对应表';

#
# Dumping data for table qt_rolepermission
#
LOCK TABLES `qt_rolepermission` WRITE;
/*!40000 ALTER TABLE `qt_rolepermission` DISABLE KEYS */;

INSERT INTO `qt_rolepermission` VALUES (3703,6,102);
INSERT INTO `qt_rolepermission` VALUES (3704,6,105);
INSERT INTO `qt_rolepermission` VALUES (3705,6,111);
INSERT INTO `qt_rolepermission` VALUES (3706,6,112);
INSERT INTO `qt_rolepermission` VALUES (3707,6,113);
INSERT INTO `qt_rolepermission` VALUES (3708,6,114);
INSERT INTO `qt_rolepermission` VALUES (3709,6,117);
INSERT INTO `qt_rolepermission` VALUES (3710,6,118);
INSERT INTO `qt_rolepermission` VALUES (3711,6,122);
INSERT INTO `qt_rolepermission` VALUES (3712,6,123);
INSERT INTO `qt_rolepermission` VALUES (3713,6,125);
INSERT INTO `qt_rolepermission` VALUES (3714,6,126);
INSERT INTO `qt_rolepermission` VALUES (3715,6,130);
INSERT INTO `qt_rolepermission` VALUES (3716,6,131);
INSERT INTO `qt_rolepermission` VALUES (3717,6,132);
INSERT INTO `qt_rolepermission` VALUES (3718,6,148);
INSERT INTO `qt_rolepermission` VALUES (3719,6,149);
INSERT INTO `qt_rolepermission` VALUES (3720,6,62);
INSERT INTO `qt_rolepermission` VALUES (3721,6,63);
INSERT INTO `qt_rolepermission` VALUES (3722,6,64);
INSERT INTO `qt_rolepermission` VALUES (3723,6,78);
INSERT INTO `qt_rolepermission` VALUES (3724,6,79);
INSERT INTO `qt_rolepermission` VALUES (3725,6,80);
INSERT INTO `qt_rolepermission` VALUES (3726,6,82);
INSERT INTO `qt_rolepermission` VALUES (3727,6,83);
INSERT INTO `qt_rolepermission` VALUES (3728,6,84);
INSERT INTO `qt_rolepermission` VALUES (3729,6,85);
INSERT INTO `qt_rolepermission` VALUES (3730,6,86);
INSERT INTO `qt_rolepermission` VALUES (4017,1,10);
INSERT INTO `qt_rolepermission` VALUES (4018,1,100);
INSERT INTO `qt_rolepermission` VALUES (4019,1,101);
INSERT INTO `qt_rolepermission` VALUES (4020,1,102);
INSERT INTO `qt_rolepermission` VALUES (4021,1,103);
INSERT INTO `qt_rolepermission` VALUES (4022,1,104);
INSERT INTO `qt_rolepermission` VALUES (4023,1,105);
INSERT INTO `qt_rolepermission` VALUES (4024,1,11);
INSERT INTO `qt_rolepermission` VALUES (4025,1,110);
INSERT INTO `qt_rolepermission` VALUES (4026,1,111);
INSERT INTO `qt_rolepermission` VALUES (4027,1,112);
INSERT INTO `qt_rolepermission` VALUES (4028,1,113);
INSERT INTO `qt_rolepermission` VALUES (4029,1,114);
INSERT INTO `qt_rolepermission` VALUES (4030,1,115);
INSERT INTO `qt_rolepermission` VALUES (4031,1,116);
INSERT INTO `qt_rolepermission` VALUES (4032,1,117);
INSERT INTO `qt_rolepermission` VALUES (4033,1,118);
INSERT INTO `qt_rolepermission` VALUES (4034,1,12);
INSERT INTO `qt_rolepermission` VALUES (4035,1,122);
INSERT INTO `qt_rolepermission` VALUES (4036,1,123);
INSERT INTO `qt_rolepermission` VALUES (4037,1,124);
INSERT INTO `qt_rolepermission` VALUES (4038,1,125);
INSERT INTO `qt_rolepermission` VALUES (4039,1,126);
INSERT INTO `qt_rolepermission` VALUES (4040,1,127);
INSERT INTO `qt_rolepermission` VALUES (4041,1,128);
INSERT INTO `qt_rolepermission` VALUES (4042,1,129);
INSERT INTO `qt_rolepermission` VALUES (4043,1,13);
INSERT INTO `qt_rolepermission` VALUES (4044,1,130);
INSERT INTO `qt_rolepermission` VALUES (4045,1,131);
INSERT INTO `qt_rolepermission` VALUES (4046,1,132);
INSERT INTO `qt_rolepermission` VALUES (4047,1,133);
INSERT INTO `qt_rolepermission` VALUES (4048,1,134);
INSERT INTO `qt_rolepermission` VALUES (4049,1,135);
INSERT INTO `qt_rolepermission` VALUES (4050,1,136);
INSERT INTO `qt_rolepermission` VALUES (4051,1,137);
INSERT INTO `qt_rolepermission` VALUES (4052,1,138);
INSERT INTO `qt_rolepermission` VALUES (4053,1,139);
INSERT INTO `qt_rolepermission` VALUES (4054,1,14);
INSERT INTO `qt_rolepermission` VALUES (4055,1,140);
INSERT INTO `qt_rolepermission` VALUES (4056,1,141);
INSERT INTO `qt_rolepermission` VALUES (4057,1,142);
INSERT INTO `qt_rolepermission` VALUES (4058,1,143);
INSERT INTO `qt_rolepermission` VALUES (4059,1,144);
INSERT INTO `qt_rolepermission` VALUES (4060,1,145);
INSERT INTO `qt_rolepermission` VALUES (4061,1,146);
INSERT INTO `qt_rolepermission` VALUES (4062,1,147);
INSERT INTO `qt_rolepermission` VALUES (4063,1,148);
INSERT INTO `qt_rolepermission` VALUES (4064,1,149);
INSERT INTO `qt_rolepermission` VALUES (4065,1,15);
INSERT INTO `qt_rolepermission` VALUES (4066,1,150);
INSERT INTO `qt_rolepermission` VALUES (4067,1,151);
INSERT INTO `qt_rolepermission` VALUES (4068,1,152);
INSERT INTO `qt_rolepermission` VALUES (4069,1,153);
INSERT INTO `qt_rolepermission` VALUES (4070,1,154);
INSERT INTO `qt_rolepermission` VALUES (4071,1,155);
INSERT INTO `qt_rolepermission` VALUES (4072,1,156);
INSERT INTO `qt_rolepermission` VALUES (4073,1,157);
INSERT INTO `qt_rolepermission` VALUES (4074,1,158);
INSERT INTO `qt_rolepermission` VALUES (4075,1,16);
INSERT INTO `qt_rolepermission` VALUES (4076,1,17);
INSERT INTO `qt_rolepermission` VALUES (4077,1,18);
INSERT INTO `qt_rolepermission` VALUES (4078,1,19);
INSERT INTO `qt_rolepermission` VALUES (4079,1,20);
INSERT INTO `qt_rolepermission` VALUES (4080,1,21);
INSERT INTO `qt_rolepermission` VALUES (4081,1,22);
INSERT INTO `qt_rolepermission` VALUES (4082,1,23);
INSERT INTO `qt_rolepermission` VALUES (4083,1,24);
INSERT INTO `qt_rolepermission` VALUES (4084,1,25);
INSERT INTO `qt_rolepermission` VALUES (4085,1,26);
INSERT INTO `qt_rolepermission` VALUES (4086,1,27);
INSERT INTO `qt_rolepermission` VALUES (4087,1,28);
INSERT INTO `qt_rolepermission` VALUES (4088,1,29);
INSERT INTO `qt_rolepermission` VALUES (4089,1,30);
INSERT INTO `qt_rolepermission` VALUES (4090,1,31);
INSERT INTO `qt_rolepermission` VALUES (4091,1,32);
INSERT INTO `qt_rolepermission` VALUES (4092,1,33);
INSERT INTO `qt_rolepermission` VALUES (4093,1,34);
INSERT INTO `qt_rolepermission` VALUES (4094,1,35);
INSERT INTO `qt_rolepermission` VALUES (4095,1,36);
INSERT INTO `qt_rolepermission` VALUES (4096,1,37);
INSERT INTO `qt_rolepermission` VALUES (4097,1,38);
INSERT INTO `qt_rolepermission` VALUES (4098,1,39);
INSERT INTO `qt_rolepermission` VALUES (4099,1,40);
INSERT INTO `qt_rolepermission` VALUES (4100,1,41);
INSERT INTO `qt_rolepermission` VALUES (4101,1,42);
INSERT INTO `qt_rolepermission` VALUES (4102,1,43);
INSERT INTO `qt_rolepermission` VALUES (4103,1,44);
INSERT INTO `qt_rolepermission` VALUES (4104,1,45);
INSERT INTO `qt_rolepermission` VALUES (4105,1,46);
INSERT INTO `qt_rolepermission` VALUES (4106,1,47);
INSERT INTO `qt_rolepermission` VALUES (4107,1,48);
INSERT INTO `qt_rolepermission` VALUES (4108,1,49);
INSERT INTO `qt_rolepermission` VALUES (4109,1,50);
INSERT INTO `qt_rolepermission` VALUES (4110,1,51);
INSERT INTO `qt_rolepermission` VALUES (4111,1,52);
INSERT INTO `qt_rolepermission` VALUES (4112,1,53);
INSERT INTO `qt_rolepermission` VALUES (4113,1,54);
INSERT INTO `qt_rolepermission` VALUES (4114,1,55);
INSERT INTO `qt_rolepermission` VALUES (4115,1,56);
INSERT INTO `qt_rolepermission` VALUES (4116,1,57);
INSERT INTO `qt_rolepermission` VALUES (4117,1,58);
INSERT INTO `qt_rolepermission` VALUES (4118,1,59);
INSERT INTO `qt_rolepermission` VALUES (4119,1,60);
INSERT INTO `qt_rolepermission` VALUES (4120,1,61);
INSERT INTO `qt_rolepermission` VALUES (4121,1,62);
INSERT INTO `qt_rolepermission` VALUES (4122,1,63);
INSERT INTO `qt_rolepermission` VALUES (4123,1,64);
INSERT INTO `qt_rolepermission` VALUES (4124,1,65);
INSERT INTO `qt_rolepermission` VALUES (4125,1,66);
INSERT INTO `qt_rolepermission` VALUES (4126,1,67);
INSERT INTO `qt_rolepermission` VALUES (4127,1,68);
INSERT INTO `qt_rolepermission` VALUES (4128,1,69);
INSERT INTO `qt_rolepermission` VALUES (4129,1,7);
INSERT INTO `qt_rolepermission` VALUES (4130,1,70);
INSERT INTO `qt_rolepermission` VALUES (4131,1,71);
INSERT INTO `qt_rolepermission` VALUES (4132,1,72);
INSERT INTO `qt_rolepermission` VALUES (4133,1,73);
INSERT INTO `qt_rolepermission` VALUES (4134,1,74);
INSERT INTO `qt_rolepermission` VALUES (4135,1,75);
INSERT INTO `qt_rolepermission` VALUES (4136,1,76);
INSERT INTO `qt_rolepermission` VALUES (4137,1,77);
INSERT INTO `qt_rolepermission` VALUES (4138,1,78);
INSERT INTO `qt_rolepermission` VALUES (4139,1,79);
INSERT INTO `qt_rolepermission` VALUES (4140,1,8);
INSERT INTO `qt_rolepermission` VALUES (4141,1,80);
INSERT INTO `qt_rolepermission` VALUES (4142,1,81);
INSERT INTO `qt_rolepermission` VALUES (4143,1,82);
INSERT INTO `qt_rolepermission` VALUES (4144,1,83);
INSERT INTO `qt_rolepermission` VALUES (4145,1,84);
INSERT INTO `qt_rolepermission` VALUES (4146,1,85);
INSERT INTO `qt_rolepermission` VALUES (4147,1,86);
INSERT INTO `qt_rolepermission` VALUES (4148,1,87);
INSERT INTO `qt_rolepermission` VALUES (4149,1,88);
INSERT INTO `qt_rolepermission` VALUES (4150,1,89);
INSERT INTO `qt_rolepermission` VALUES (4151,1,9);
INSERT INTO `qt_rolepermission` VALUES (4152,1,90);
INSERT INTO `qt_rolepermission` VALUES (4153,1,91);
INSERT INTO `qt_rolepermission` VALUES (4154,1,92);
INSERT INTO `qt_rolepermission` VALUES (4155,1,93);
INSERT INTO `qt_rolepermission` VALUES (4156,1,94);
INSERT INTO `qt_rolepermission` VALUES (4157,1,95);
INSERT INTO `qt_rolepermission` VALUES (4158,1,96);
INSERT INTO `qt_rolepermission` VALUES (4159,1,97);
INSERT INTO `qt_rolepermission` VALUES (4160,1,98);
INSERT INTO `qt_rolepermission` VALUES (4161,1,99);
/*!40000 ALTER TABLE `qt_rolepermission` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_suggest
#

CREATE TABLE `qt_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '反馈内容',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `reply` text COMMENT '回复内容',
  `replytime` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `userID` int(11) DEFAULT NULL COMMENT '反馈者',
  `replyUserID` int(11) DEFAULT NULL COMMENT '回复者',
  `stext` varchar(255) DEFAULT NULL COMMENT '纯文本内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='建议反馈表';

#
# Dumping data for table qt_suggest
#
LOCK TABLES `qt_suggest` WRITE;
/*!40000 ALTER TABLE `qt_suggest` DISABLE KEYS */;

INSERT INTO `qt_suggest` VALUES (8,'测试反馈机制','2011-10-29 21:26:45','此问题是系统临时的问题，已修复，谢谢你提交的反馈！','2011-10-29 21:30:15',3,2,'测试反馈机制');
INSERT INTO `qt_suggest` VALUES (9,'哈全','2011-11-13 18:21:30','',NULL,2,0,'哈全');
INSERT INTO `qt_suggest` VALUES (10,'<a href=\"http://www.zjut.com\" target=\"_blank\">精弘</a>','2011-11-18 21:56:14','',NULL,2,0,'精弘');
/*!40000 ALTER TABLE `qt_suggest` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_team
#

CREATE TABLE `qt_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  `headimage` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='管理团队表';

#
# Dumping data for table qt_team
#
LOCK TABLES `qt_team` WRITE;
/*!40000 ALTER TABLE `qt_team` DISABLE KEYS */;

INSERT INTO `qt_team` VALUES (7,2,'/Jh-oa/team/20111125142342_881.jpg');
/*!40000 ALTER TABLE `qt_team` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_user
#

CREATE TABLE `qt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL DEFAULT '' COMMENT '学号',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `modifytime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `cornet` varchar(255) DEFAULT NULL COMMENT '短号',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话号码长号',
  `academyID` int(11) DEFAULT NULL COMMENT '学院ID',
  `departmentID` int(11) DEFAULT NULL COMMENT '部门ID',
  `jobID` int(11) DEFAULT NULL COMMENT '职务ID',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `location` varchar(255) DEFAULT NULL COMMENT '校区',
  `dormitory` varchar(255) DEFAULT NULL COMMENT '宿舍',
  `islock` int(11) DEFAULT '0' COMMENT '是否锁定',
  `bbs` varchar(255) DEFAULT NULL COMMENT '论坛ID',
  `introduce` text COMMENT '简介',
  `simpleinfo` text COMMENT '纯文本',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日''',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=522 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Dumping data for table qt_user
#
LOCK TABLES `qt_user` WRITE;
/*!40000 ALTER TABLE `qt_user` DISABLE KEYS */;

INSERT INTO `qt_user` VALUES (2,'200826490109','李斌斌','a8fe34d357f41231dc9b283258ad2fbb','2010-04-21 22:21:18',NULL,NULL,'687541','13656667541',NULL,NULL,NULL,'软件工程(2+3)0801','屏峰校区','西13#614',0,'qingtian16265',NULL,NULL,'1987-08-18','549652838','男');
INSERT INTO `qt_user` VALUES (3,'200819100203','陈若涵','fcea920f7412b5da7be0cf42b8c93759','2010-09-11 21:30:16',NULL,NULL,'537177','15158131238',NULL,NULL,NULL,'计算机科学与技术0802','屏峰校区','东10-509',0,'crhan',NULL,NULL,'2012-12-20','50868596','男');
INSERT INTO `qt_user` VALUES (4,'200926630615','邵锦佩','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:16',NULL,NULL,'516101','15068822535',NULL,NULL,NULL,'计算机+自动化0902','屏峰校区','西10#520',1,'sibeily',NULL,NULL,'1992-12-25','247289702','女');
INSERT INTO `qt_user` VALUES (5,'200908480102','陈金芝','03bb492876b60334370af7cc70051435','2010-09-11 21:30:17',NULL,NULL,'514358','13758235593',NULL,NULL,NULL,'外汉0901','屏峰校区','西6#214',1,'哆朵',NULL,NULL,'2010-08-01','501714127','女');
INSERT INTO `qt_user` VALUES (6,'200803100411','李涵','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-530027','13575458734',NULL,NULL,NULL,'计算机08040804','屏峰校区','东2#118',1,'七七散',NULL,NULL,'2010-09-26','306354288','男');
INSERT INTO `qt_user` VALUES (7,'200926630618','汪兴','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-516093','15068822356',NULL,NULL,NULL,'软工09060906','屏峰校区','东6#529',1,'昏头',NULL,NULL,'2010-09-26','694851355','男');
INSERT INTO `qt_user` VALUES (8,'200919100406','陈彦强','fe1d18f84c113d1ebca0b221a2c11ba5','2010-09-11 21:30:17',NULL,NULL,'-518563','15068878528',NULL,NULL,NULL,'计算机0904','屏峰校区','东10#417',1,'chenyq001',NULL,NULL,'2010-10-25','372717287','男');
INSERT INTO `qt_user` VALUES (9,'200803120409','金秦震','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-530289','13575459816',NULL,NULL,NULL,'自动化08040804','屏峰校区','东10#604',1,'yuchen',NULL,NULL,'2010-09-26','363071399','男');
INSERT INTO `qt_user` VALUES (10,'200805910417','陶胜刚','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (11,'200908480224','杨罗莎','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (12,'200903110126','杨继承','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-516701','15068833065',NULL,NULL,NULL,'通信工程通信0901','屏峰校区','东2#528',1,'紫晨',NULL,NULL,'1992-01-10','584734166','男');
INSERT INTO `qt_user` VALUES (13,'200903110124','徐九凌','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-516682','15068832763',NULL,NULL,NULL,'-通信工程-0901','屏峰校区','-东#2 503',1,'-流水平沙',NULL,NULL,'1990-10-24','-316949000','男');
INSERT INTO `qt_user` VALUES (14,'200808580122','汪璇','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'531950','15158133358',NULL,NULL,NULL,'汉语言文学中文0801','屏峰校区','西8#209',1,'潇湘雨',NULL,NULL,'1.29','506448259','女');
INSERT INTO `qt_user` VALUES (15,'200918360320','田超','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (16,'200908270307','楼梦蝶','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (17,'200909300618','李洲莹','7a7214580596fc0a47865857bd961419','2010-09-11 21:30:17',NULL,NULL,'-637889','13735887889',NULL,NULL,NULL,'-英语-0906','屏峰校区','-西二',1,'-draw',NULL,NULL,'1991-05-01','-476063003','女');
INSERT INTO `qt_user` VALUES (18,'200908580201','包瑜俐','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (19,'200801010107','黄卫廷','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'537304','15158131351',NULL,NULL,NULL,'材料科学与工程金属材料0803','朝晖校区','S4#219',0,'银河月',NULL,NULL,'1990-01-19','-357595185','男');
INSERT INTO `qt_user` VALUES (20,'200703080206','冯海龙','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-684988','15858178894',NULL,NULL,NULL,'电气工程及其自动化电气0702','屏峰校区','东3#428',1,'flybird',NULL,NULL,'1988-05-21','421221394','男');
INSERT INTO `qt_user` VALUES (21,'200810620215','王宝平','870caf1fdc38dba279ffa00a80be9746','2010-09-11 21:30:17',NULL,NULL,'590117','15158134528',NULL,NULL,NULL,'光信息科学与技术0802','屏峰校区','-',0,'百色迷迭',NULL,NULL,'','243208186','男');
INSERT INTO `qt_user` VALUES (22,'2110903071','都斌','a59d04367c14a54a924c04d77e6260bf','2010-09-11 21:30:17',NULL,NULL,'暂无','15268592483',NULL,NULL,NULL,'控制理论与控制工程控研091','屏峰校区','西12',1,'舞文弄墨',NULL,NULL,'5.25','578065176','男');
INSERT INTO `qt_user` VALUES (23,'200709550229','周家俊','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','屏峰校区','-',1,'-',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (24,'200926630820','吴慧强','266a0639818f84663a7d141aa67bea9c','2010-09-11 21:30:17',NULL,NULL,'516187','-',NULL,NULL,NULL,'软件工程0908','屏峰校区','东14 # 316',0,'smalljonxs',NULL,NULL,'1990-10-02','97532468','男');
INSERT INTO `qt_user` VALUES (25,'200718350109','姜宇','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'679042','15868458042',NULL,NULL,NULL,'应用心理学0801','朝晖校区','梦2-117',0,'muyuxiaofeng',NULL,NULL,'1989-08-20','834373092','女');
INSERT INTO `qt_user` VALUES (26,'200826630108','马其伟','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'532094','15158133489',NULL,NULL,NULL,'软件工程0801','屏峰校区','家和西苑13#604',1,'ma7wei',NULL,NULL,'1989-10-03','472522755','男');
INSERT INTO `qt_user` VALUES (27,'200805720101','巴冬叶','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'533219','15158135117',NULL,NULL,NULL,'工程管理0801','屏峰校区','东五',0,'吥可救药ヾ',NULL,NULL,'0502','491611004','女');
INSERT INTO `qt_user` VALUES (28,'200926100514','李益','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'526256','15068808186',NULL,NULL,NULL,'计算机科学与技术计算机0905','屏峰校区','东十四#418',0,'子益',NULL,NULL,'1990-05-16','87381997','男');
INSERT INTO `qt_user` VALUES (29,'200926100413','李晓端','a7f1951af64912e5e6b1e757053b8b5b','2010-09-11 21:30:17',NULL,NULL,'526227','15068807567',NULL,NULL,NULL,'计算机科学与技术0904','屏峰校区','东14#419',1,'潇洒XD',NULL,NULL,'1990-05-28','280927216','男');
INSERT INTO `qt_user` VALUES (30,'200802070127','张重正','ce3098a66b45d0454c324923fbe4ffc9','2010-09-11 21:30:17',NULL,NULL,'538112','-',NULL,NULL,NULL,'--','朝晖校区','-',1,'ZCZ',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (31,'200808580114','陆景仪','08ddb3cc78c65ccf9b45a0e50bdf41ac','2010-09-11 21:30:17',NULL,NULL,'500177','500177',NULL,NULL,NULL,'汉语言文学0801','屏峰校区','西八116',0,'牛皮纸',NULL,NULL,'1990-02-11','304063404','女');
INSERT INTO `qt_user` VALUES (32,'200726630415','王鑫鹏','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (33,'200926630504','陈翊武','f95888c623df26c3941d6eb24d22ba15','2010-09-11 21:30:17',NULL,NULL,'516055','15068822070',NULL,NULL,NULL,'软件工程0905','屏峰校区','东14#213',1,'街舞囝囝',NULL,NULL,'1991-11-19','402750224','男');
INSERT INTO `qt_user` VALUES (34,'200709550105','何琪添','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'640218','15858178120',NULL,NULL,NULL,'日语0701','屏峰校区','西12',1,'ein',NULL,NULL,'2010-09-26','125050655','男');
INSERT INTO `qt_user` VALUES (35,'200926100408','冯超','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'426213','15068807317',NULL,NULL,NULL,'计算机科学与技术计算机0904','屏峰校区','419',1,'-',NULL,NULL,'1990-11-29','180939904','男');
INSERT INTO `qt_user` VALUES (36,'200826470215','邵铭','d7b5adca0634cefbb3c7b12689515bc0','2010-09-11 21:30:17',NULL,NULL,'532508','15158133804',NULL,NULL,NULL,'数字媒体技术0802','屏峰校区','西十#501',1,'sunfish',NULL,NULL,'1989-09-10','304943534','女');
INSERT INTO `qt_user` VALUES (37,'200911050208','邵碧娴','6bedc512aac038191e0406c72473166e','2010-09-11 21:30:17',NULL,NULL,'524659','15068839545',NULL,NULL,NULL,'工业设计0902','屏峰校区','西5#408',0,'茅山道姑',NULL,NULL,'1990-09-03','760415713','女');
INSERT INTO `qt_user` VALUES (38,'200911290301','曹丹','9fd8301ac24fb88e65d9d7cd1dd1b1ec','2010-09-11 21:30:17',NULL,NULL,'659520','15068859520',NULL,NULL,NULL,'公共艺术设计0901','屏峰校区','西5#409',0,'夢遊',NULL,NULL,'1989-12-28','525549491','女');
INSERT INTO `qt_user` VALUES (39,'200924450310','华依文','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'517171','15068851539',NULL,NULL,NULL,'对外汉语0901','屏峰校区','西6',1,'小游鱼来鱼',NULL,NULL,'2010-09-20','249791976','女');
INSERT INTO `qt_user` VALUES (40,'2110910011','卜燕敏','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'-','13588423329',NULL,NULL,NULL,'传播学传播学09','屏峰校区','西5#209',1,'2110910011',NULL,NULL,'2010-11-22','1048589733','女');
INSERT INTO `qt_user` VALUES (41,'200819100126','王巍怀','9b63654bd1bab26ef5cd5fa4bdf9aee1','2010-09-11 21:30:17',NULL,NULL,'537161','15158131224',NULL,NULL,NULL,'数字媒体0802','屏峰校区','东10#517',1,'ercwang',NULL,NULL,'1989-10-05','357111479','男');
INSERT INTO `qt_user` VALUES (42,'200819100310','蒋一博','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:17',NULL,NULL,'537227','15158131281',NULL,NULL,NULL,'树自莓体计树0801','屏峰校区','东十523',1,'yibojiang',NULL,NULL,'10.23','47084864','男');
INSERT INTO `qt_user` VALUES (43,'200828800303','陈怿辉','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'532607','15158133881',NULL,NULL,NULL,'编码与测试编码0803','屏峰校区','东2#209',1,'街頭詩人',NULL,NULL,'1988-10-17','252752391','男');
INSERT INTO `qt_user` VALUES (44,'2110912057','刘金良','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (45,'200826630726','赵博聪','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (46,'200926100411','洪峰','6cd762ffd6e64cc1a0187a483465d6dc','2010-09-11 21:30:18',NULL,NULL,'526214','15068807318',NULL,NULL,NULL,'计算机+自动化0901','屏峰校区','东14#501',0,'深之',NULL,NULL,'1991-01-22','646907105','男');
INSERT INTO `qt_user` VALUES (47,'200902040120','王飞帆','817c60a706d212bb4d2523ba7dd4fdad','2010-09-11 21:30:18',NULL,NULL,'524587','15068836394',NULL,NULL,NULL,'工业工程工业工程0901','朝晖校区','尚5#208',1,'善良的灰灰',NULL,NULL,'1990-03-01','330726349','男');
INSERT INTO `qt_user` VALUES (48,'200905911103','高丽','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'524537','15068834405',NULL,NULL,NULL,'-','屏峰校区','东五',1,'迷上幻想',NULL,NULL,'-','','女');
INSERT INTO `qt_user` VALUES (49,'200905190234','陈泽镕','87eec1a4c98febbe8623139f05a0900c','2010-09-11 21:30:18',NULL,NULL,'695706','13456775706',NULL,NULL,NULL,'国贸国贸0902','屏峰校区','东3#105',0,'czrandy52/喁喁',NULL,NULL,'1991-01-25','289817167','男');
INSERT INTO `qt_user` VALUES (50,'200909300614','胡艳巧','7f3a052d7da7130a8fe255a419bd5360','2010-09-11 21:30:18',NULL,NULL,'518196','15068871370',NULL,NULL,NULL,'英语096','屏峰校区','西2#506',1,'花逊の大妈',NULL,NULL,'1990-10-19','513951487','女');
INSERT INTO `qt_user` VALUES (51,'200805910517','王珂','0196454653c67b25b82711c686a66817','2010-09-11 21:30:18',NULL,NULL,'539538','15158131883',NULL,NULL,NULL,'财务管理082','屏峰校区','东五505',1,'Yoco',NULL,NULL,'1990-06-12','330688658','女');
INSERT INTO `qt_user` VALUES (52,'200901030322','叶克对','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (53,'200903440115','阮涛','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'514139','13758227795',NULL,NULL,NULL,'电子科学与技术0901','屏峰校区','东2#318',1,'油炸鱼',NULL,NULL,'19910515','391725443','男');
INSERT INTO `qt_user` VALUES (54,'200917330106','韩亚菲','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'514481','13758247338',NULL,NULL,NULL,'法学法学0901','屏峰校区','西14#117',0,'hyf200917330106',NULL,NULL,'1990-09-13','1172598968','女');
INSERT INTO `qt_user` VALUES (55,'200903120219','王楚','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'518688','15068880885',NULL,NULL,NULL,'自动化0902','屏峰校区','西六525',1,'楚小楚（216388）',NULL,NULL,'1991-05-02','366252292','女');
INSERT INTO `qt_user` VALUES (56,'200926680111','潘卓恺','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'517089','15068847308',NULL,NULL,NULL,'网络工程0901','屏峰校区','东14 102',1,'-',NULL,NULL,'','-','男');
INSERT INTO `qt_user` VALUES (57,'200810310116','陆彩虹','18e0d8f9b5c5b5ac949e06ed4f76d116','2010-09-11 21:30:18',NULL,NULL,'590272','15158134712',NULL,NULL,NULL,'信息与计算科学信计0801班','屏峰校区','西5#304',0,'木子槿',NULL,NULL,'1990-04-25','978762963','女');
INSERT INTO `qt_user` VALUES (58,'200905910826','张晋江','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (59,'200903080203','费泽坤','a1acf8803ebd2669b2095b9f89946791','2010-09-11 21:30:18',NULL,NULL,'514093','13758226257',NULL,NULL,NULL,'电气工程及其自动化电气0902','屏峰校区','东二#311',0,'仿真K',NULL,NULL,'2010-09-24','365367969','男');
INSERT INTO `qt_user` VALUES (60,'200719100404','陈昕','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','15868458108',NULL,NULL,NULL,'外语-','屏峰校区','东10#404',1,'深蓝传说',NULL,NULL,'1989-07-17','79790705','男');
INSERT INTO `qt_user` VALUES (61,'200903090218','王观峰','83751867915fac8decbc0d3bd40055f1','2010-09-11 21:30:18',NULL,NULL,'514232','13758231197',NULL,NULL,NULL,'电子信息工程0902','屏峰校区','-',1,'lovewade',NULL,NULL,'1991-02-17','644293315','男');
INSERT INTO `qt_user` VALUES (62,'200903090108','何宇航','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'514200','13758230175',NULL,NULL,NULL,'电子信息工程0901','屏峰校区','东2#329',1,'-',NULL,NULL,'1991-03-20','391941248','男');
INSERT INTO `qt_user` VALUES (63,'200903110108','韩杰','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (64,'200811290712','马喆','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'530931','13575462644',NULL,NULL,NULL,'视觉传达0807','屏峰校区','西七301',1,'summerscent',NULL,NULL,'1989-11-01','272405498','女');
INSERT INTO `qt_user` VALUES (65,'200911290102','丁子航','c97d51fa7d9e725db21fbe22dd9214cf','2010-09-11 21:30:18',NULL,NULL,'-517512','-15068859073',NULL,NULL,NULL,'-多媒体与网页设计--多媒体与网页设计0901','屏峰校区','-东4#516',1,'面试狂胖丁',NULL,NULL,'1990-08-25','-381724007','男');
INSERT INTO `qt_user` VALUES (66,'200808580104','郭雅文','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (67,'200818530208','胡剑云','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'530565','-',NULL,NULL,NULL,'药学药学0802','朝晖校区','尚八331',1,'靈軒',NULL,NULL,'-','472274613','女');
INSERT INTO `qt_user` VALUES (68,'200926740210','林奇恩','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (69,'200905720106','樊德义','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'524154','15068817141',NULL,NULL,NULL,'--','屏峰校区','东6#234',1,'-',NULL,NULL,'-','1074521928','男');
INSERT INTO `qt_user` VALUES (70,'200604140216','沈超','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (71,'200801020411','康碧莹','648e2acede9518591ec8ecdec94e513c','2010-09-11 21:30:18',NULL,NULL,'537587','15158132107',NULL,NULL,NULL,'化学工程与工艺化工化工自动化085','朝晖校区','梦2#301',0,'莹glaze',NULL,NULL,'1990-09-21','345460101','女');
INSERT INTO `qt_user` VALUES (72,'200927920105','何侃伦','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'524706','15068852438',NULL,NULL,NULL,'行政管理0901','屏峰校区','东1#205',0,'午木',NULL,NULL,'1990-04-21','554938455','男');
INSERT INTO `qt_user` VALUES (73,'200701020103','戴林','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'644864','15858229864',NULL,NULL,NULL,'化工工艺化工工艺07(2)','朝晖校区','尚4-115',1,'david9864',NULL,NULL,'1989-3-15','363551531','男');
INSERT INTO `qt_user` VALUES (74,'200810310227','俞炉明','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'590318','15158134769',NULL,NULL,NULL,'--','屏峰校区','-',1,'-',NULL,NULL,'-','360728232','男');
INSERT INTO `qt_user` VALUES (75,'200803090213','洪鹏','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'533577','15158135438',NULL,NULL,NULL,'电子信息工程电信0802','屏峰校区','东10#611',1,'hxxpxx',NULL,NULL,'1990-02-01','524827065','男');
INSERT INTO `qt_user` VALUES (76,'200626380119','王长乐','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (77,'200817330317','苏宏治','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'536991','15158130792',NULL,NULL,NULL,'法学法学0803','屏峰校区','东9',0,'云月明',NULL,NULL,'1990-03-17','774002407','男');
INSERT INTO `qt_user` VALUES (78,'200910620214','吕良','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (79,'200904140211','乐立挺','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'524129','15068816104',NULL,NULL,NULL,'给水排水工程给排水092','朝晖校区','尚6#226',0,'乐小衰',NULL,NULL,'1990-06-05','584494584','男');
INSERT INTO `qt_user` VALUES (80,'200803100111','林超','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (81,'200702060126','曾阳','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'649349','13625719349',NULL,NULL,NULL,'过程装备与控制工程0701','朝晖校区','综合414',1,'暗夜demom',NULL,NULL,'19890222','395825586','男');
INSERT INTO `qt_user` VALUES (82,'200708270217','吴梦莎','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (83,'200819100324','吴凯兵','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (84,'2110901213','朱捷','fd13434c03daae933d8e548f1238df43','2010-09-11 21:30:18',NULL,NULL,'-','13675893458',NULL,NULL,NULL,'应用化学应化094','朝晖校区','梦6-201',1,'鹤影寒渡',NULL,NULL,'1987-04-26','309227326','男');
INSERT INTO `qt_user` VALUES (85,'200710620129','郑乐行','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (86,'200926630708','蒋利杰','7816ebc7df0b70ac037351d66fb1ba3c','2010-09-11 21:30:18',NULL,NULL,'516134','15068822870',NULL,NULL,NULL,'软件工程0907','屏峰校区','东14#322',1,'jaloz',NULL,NULL,'1990-07-02','826000919','男');
INSERT INTO `qt_user` VALUES (87,'200604160108','黄伟增','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (88,'200802070410','金皖东','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','朝晖校区','-',1,'-',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (89,'200709300225','叶莉乔','96fd299220dc221ee33b97dffa6bb013','2010-09-11 21:30:18',NULL,NULL,'','13868063745',NULL,NULL,NULL,'英语072','屏峰校区','西三',1,'Jorange',NULL,NULL,'2月16日','','女');
INSERT INTO `qt_user` VALUES (90,'1110603008','戴欣华','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'60013616719891','13616719891',NULL,NULL,NULL,'控制工程博士','屏峰校区','西1-317',1,'狂风细雨',NULL,NULL,'1976-06-25','236336270','男');
INSERT INTO `qt_user` VALUES (91,'200711050302','陈欣','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-697272','-15868457272',NULL,NULL,NULL,'工业设计-0703','屏峰校区','-东五119',1,'-yinyangyue',NULL,NULL,'1989-10-09','-805043702','女');
INSERT INTO `qt_user` VALUES (92,'2110812016','王波','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'652996','13675842996',NULL,NULL,NULL,'教育技术学08研','朝晖校区','梦3-405',1,'kof波波',NULL,NULL,'1983-12-04','107842515','男');
INSERT INTO `qt_user` VALUES (93,'200702070423','唐鹏飞','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'649315','649315',NULL,NULL,NULL,'机自0704','朝晖校区','S5 523',1,'379355724',NULL,NULL,'1989-01-28','379355724','男');
INSERT INTO `qt_user` VALUES (94,'2110901261','阮璐璐','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (95,'200602070521','吴锦谢','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (96,'2110802030','邱杰','f2d141abeb9617d80e221c7656b4765b','2010-09-11 21:30:18',NULL,NULL,'558347','13858098347',NULL,NULL,NULL,'机械制造及其自动化研081班','朝晖校区','梦6',1,'毕加猪',NULL,NULL,'1986-10-18','379007475','男');
INSERT INTO `qt_user` VALUES (97,'200711430208','乔培远','f48d6c74a1f34afe1f9ee8bfe803cdce','2010-09-11 21:30:18',NULL,NULL,'675171','15858229171',NULL,NULL,NULL,'数字动画0702','屏峰校区','东四618',1,'贝壳哈姆',NULL,NULL,'0422','510130312','男');
INSERT INTO `qt_user` VALUES (98,'200601030130','朱亦博','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (99,'200926410219','魏杰','c5c9007840fbb0d7d7f3cd4110eab61d','2010-09-11 21:30:18',NULL,NULL,'659953','13989899359',NULL,NULL,NULL,'软件工程-','屏峰校区','-',1,'Jordan也会怕',NULL,NULL,'-','653967725','男');
INSERT INTO `qt_user` VALUES (100,'200727340111','李楠','c58faf037e7d350d30bb852a17acab10','2010-09-11 21:30:18',NULL,NULL,'-649908','-13967109908',NULL,NULL,NULL,'-电子科学与技术-电科0701','屏峰校区','-东十606',1,'-fantasy0111',NULL,NULL,'','-375749474','男');
INSERT INTO `qt_user` VALUES (101,'200701030328','朱鹏浩','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'641223','15858229223',NULL,NULL,NULL,'分析0803','朝晖校区','尚4-514',1,'南夕小木',NULL,NULL,'2010-11-16','375523875','男');
INSERT INTO `qt_user` VALUES (102,'200717330108','贾盛','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (103,'200808280131','朱宏劼','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (104,'200801020325','周伟杰','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'643351','15868463351',NULL,NULL,NULL,'工程081','朝晖校区','s4111',1,'wjzhou',NULL,NULL,'2010-09-14','715686477','男');
INSERT INTO `qt_user` VALUES (105,'200705170102','陈一令','436fcac258115e874ad04e4d0b11e82a','2010-09-11 21:30:18',NULL,NULL,'645810','-',NULL,NULL,NULL,'财务管理0702','屏峰校区','西九',1,'左小麦',NULL,NULL,'1988-01-29','61493842','女');
INSERT INTO `qt_user` VALUES (106,'2110902023','李文俊','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'562745','13634190885',NULL,NULL,NULL,'机械制造及自动化机制研091','朝晖校区','梦5 113',1,'Nerazzurri-Li',NULL,NULL,'1985-10-06','249497083','男');
INSERT INTO `qt_user` VALUES (107,'200702750113','金敏伟','0bae2e8377b90c3010cfc1930cab7335','2010-09-11 21:30:18',NULL,NULL,'697722','-',NULL,NULL,NULL,'--','朝晖校区','-',1,'卡兮卡',NULL,NULL,'1989-09-16','419875481','男');
INSERT INTO `qt_user` VALUES (108,'200601030205','龚渊','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-680334',NULL,NULL,NULL,'有机化学有机物化105','朝晖校区','梦5-207',0,'幻+光',NULL,NULL,'1988-03-12','264183001','男');
INSERT INTO `qt_user` VALUES (109,'200702040209','黄周伟','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-687588','15858178857',NULL,NULL,NULL,'工业工程工业工程0702','朝晖校区','尚5#318',1,'千寒',NULL,NULL,'','3525033112','男');
INSERT INTO `qt_user` VALUES (110,'200926410115','沈彦蓁','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (111,'200504130125','叶敏强','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (112,'200610730202','冯里婧','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:18',NULL,NULL,'-','13656642150',NULL,NULL,NULL,'数学与应用数学0602','屏峰校区','西6#517',1,'stockard',NULL,NULL,'-','101013000','女');
INSERT INTO `qt_user` VALUES (113,'200705190110','林梦嫚','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (114,'1110804001','陈超','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',0,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (115,'2240707032','滕小波','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (116,'2110805084','董重','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','朝晖校区','-',1,'sarsar',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (117,'200606240214','李作刚','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (118,'200703080211','金佳露','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-649976','15858229976',NULL,NULL,NULL,'-电气-0702','屏峰校区','-东3#428',1,'-无聊的云',NULL,NULL,'1989-11-17','-519805583','男');
INSERT INTO `qt_user` VALUES (119,'200618360119','王捷敏','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (120,'200617330114','潘裔','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (121,'200711050309','李箐','d1b222a579339580abaefcf3e6ce98fc','2010-09-11 21:30:19',NULL,NULL,'644128','13625814128',NULL,NULL,NULL,'工业设计-','屏峰校区','-',1,'天上银雪',NULL,NULL,'1990-09-30','873792726','女');
INSERT INTO `qt_user` VALUES (122,'200604160217','王帆','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (123,'200711050308','金玲佳','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (124,'200828800321','王天安','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (125,'200611290110','刘语嫣','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (126,'200708270130','赵慧玲','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (127,'200603100427','杨曌','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (128,'200701620129','郑乐行','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (129,'200710730127','张炜','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (130,'200718360416','王乐凯','fdc60e355b13449beafb886e5adf3525','2010-09-11 21:30:19',NULL,NULL,'641918','13735411918',NULL,NULL,NULL,'国贸3+1','朝晖校区','梦一507',1,'乐凯',NULL,NULL,'1990-03-20','369914606','男');
INSERT INTO `qt_user` VALUES (131,'200703090203','傅渭军','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','屏峰校区','-',1,'6666',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (132,'200603100209','金波','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (133,'200703090205','顾旦青','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (134,'200609550115','孙建琴','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (135,'200701010224','张国飞','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'697619','15868461619',NULL,NULL,NULL,'材料科学工程高分子成型0702','朝晖校区','尚德2#112',1,'张小毒',NULL,NULL,'1987-10-02','635020097','男');
INSERT INTO `qt_user` VALUES (136,'200604130109','李凯克','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (137,'200701020326','朱秋莲','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (138,'201026410118','王前','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'689363','15868458363',NULL,NULL,NULL,'软件工程(3+2)  1班','屏峰校区','东2#218',0,'wangqian2008',NULL,NULL,'1989-10-24','407278091','男');
INSERT INTO `qt_user` VALUES (139,'200802750130','朱洒洒','c940bb4cd98820bf9ecf2bada31d7e15','2010-09-11 21:30:19',NULL,NULL,'537914','15158132717',NULL,NULL,NULL,'车辆工程车辆0801','朝晖校区','综合311',0,'Jayie',NULL,NULL,'-','841420384','男');
INSERT INTO `qt_user` VALUES (140,'200605190420','许楠','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (141,'2110812017','程祥春','89975c5e5d407916e8080d137c48ddd7','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','朝晖校区','-',1,'-神哭泣',NULL,NULL,'-','-','男');
INSERT INTO `qt_user` VALUES (142,'200619100208','高宇滨','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (143,'2110912005','陈会兵','597ff5e3128062733aa2c7bdbc56e909','2010-09-11 21:30:19',NULL,NULL,'685430','13738170345',NULL,NULL,NULL,'计算机软件与理论计算机软件与理论091','屏峰校区','x11#220',0,'chenhb1988',NULL,NULL,'1988-06-18','568586021','男');
INSERT INTO `qt_user` VALUES (144,'200719100130','徐侃','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'680735','-',NULL,NULL,NULL,'通信工程0703','屏峰校区','东十',1,'element2007',NULL,NULL,'','505907983','男');
INSERT INTO `qt_user` VALUES (145,'200728800427','余益翡','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-流落·凡尘',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (146,'200703100414','孟凡悦','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (147,'200901020714','任奕丞','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'515136','15158064933',NULL,NULL,NULL,'化学工程与工艺化学工程0901','朝晖校区','尚2',0,'ryc111',NULL,NULL,'1991-01-11','408758063','男');
INSERT INTO `qt_user` VALUES (148,'200705570227','赵旭东','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (150,'200904160608','梁宇钟','9bbde746f98f67d54d03faebc7180af4','2010-09-11 21:30:19',NULL,NULL,'517080','15068846218',NULL,NULL,NULL,'土木工程0906','朝晖校区','尚九102',1,'johnlyz',NULL,NULL,'1991-09-10','501610985','男');
INSERT INTO `qt_user` VALUES (151,'200926100501','陈博','e784ac8e42322b17eae672684f404e41','2010-09-11 21:30:19',NULL,NULL,'526255','15068808156',NULL,NULL,NULL,'计算机+自动化0902','屏峰校区','东14',1,'孤风傲月',NULL,NULL,'5.12','261824039','男');
INSERT INTO `qt_user` VALUES (152,'200828800218','舒晓莎','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (153,'200810620212','任加勒','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (154,'200803100303','陈皓','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (155,'200808270124','杨蕾','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-590446','-15158134921',NULL,NULL,NULL,'-广电-0801','屏峰校区','-西八509',1,'-依妮格雪',NULL,NULL,'1990-07-06','-396929764','女');
INSERT INTO `qt_user` VALUES (156,'200627770223','叶伟豪','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (157,'200610620203','陈响文','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (158,'200709300329','张亚芳','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (159,'200708270313','李莹','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (160,'200908480106','邓惠文','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (161,'200908480111','管箫筝','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (162,'200708270123','姚震宇','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (163,'200708270314','刘佳佳','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (164,'200808580211','刘金燕','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (165,'200808270229','邹华','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (166,'200808280114','楼思南','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (167,'200828850123','邢锟','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-532711','-15158133963',NULL,NULL,NULL,'-电脑艺术设计-0801','屏峰校区','-东2#121',1,'-kitta88',NULL,NULL,'1990-12-03','-88179839','男');
INSERT INTO `qt_user` VALUES (168,'200828850215','唐惠立','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (169,'200808270223','杨洁','54cbd3f25108c5d42e8ad0ea1e24039a','2010-09-11 21:30:19',NULL,NULL,'590477','15158134959',NULL,NULL,NULL,'广电08','屏峰校区','西苑',0,'喜羊羊',NULL,NULL,'1990-06-08','339705629','女');
INSERT INTO `qt_user` VALUES (170,'200808580101','郭雅文','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (171,'200808280314','刘腾飞','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (172,'200808280308','郝天骄','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (173,'200808580111','李帮彬','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'531937','15158133347',NULL,NULL,NULL,'企业管理0802班','屏峰校区','东9#610',1,'天源',NULL,NULL,'1989-05-14','404021310','男');
INSERT INTO `qt_user` VALUES (174,'MA090029','赵陆恬','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (175,'200911290106','林治','c47051a3a78fef2efcb96e4560a5c7d0','2010-09-11 21:30:19',NULL,NULL,'517518','15068859103',NULL,NULL,NULL,'多媒体网页设计多媒体0901','屏峰校区','东4.212',1,'LINZHI0217',NULL,NULL,'1990-02-17','416253617','男');
INSERT INTO `qt_user` VALUES (176,'200826630116','王驰涛','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (177,'200826630107','柳毅','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (178,'200909300310','李奕明','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (179,'200803440110','何伟','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (180,'200824450115','罗妙辉','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (181,'200902540213','吕超帅','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (182,'200926410101','蔡鑫梅','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (183,'200919100324','姚枫','e1437dbb0ded94e194763ca4c0bc358e','2010-09-11 21:30:19',NULL,NULL,'-','518536',NULL,NULL,NULL,'计算机科学与技术0903','屏峰校区','东10-412',0,'听临',NULL,NULL,'','170587364','男');
INSERT INTO `qt_user` VALUES (184,'200708270318','彭铭泽','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'648089','15868490089',NULL,NULL,NULL,'广播电视新闻系广电073','屏峰校区','东9#502',0,'mingzepeng',NULL,NULL,'1.26','312703401','男');
INSERT INTO `qt_user` VALUES (185,'200926630710','罗锋','a56eca19413162f313d170516465cbd8','2010-09-11 21:30:19',NULL,NULL,'516133','15068822857',NULL,NULL,NULL,'软件工程软件工程0907','屏峰校区','东14#322',0,'诺亚',NULL,NULL,'1991-01-08','1179749793','男');
INSERT INTO `qt_user` VALUES (186,'200926680223','杨阳','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (187,'200926740325','叶永娜','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (188,'200926630713','沈奇鹏','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'516119','15068822667',NULL,NULL,NULL,'--','屏峰校区','-',0,'sproc',NULL,NULL,'1991-10-29','369545986','男');
INSERT INTO `qt_user` VALUES (189,'200711290711','沈梦怡','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (190,'200711290703','程凌云','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (191,'200711290702','陈亿茹','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (192,'200711290706','赖以希','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (193,'200911290917','张天增','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (194,'200811291010','竺蕾蕾','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (195,'200811291007','李硕盛','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (196,'200919100301','鲍方','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (197,'200901020426','于洲','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'525509','15068885754',NULL,NULL,NULL,'化学工艺+计算机工艺（2）班','朝晖校区','尚二326',1,'shadowdaw',NULL,NULL,'1991-01-22','397833313','男');
INSERT INTO `qt_user` VALUES (198,'200806250224','许帆','f379eaf3c831b04de153469d1bec345e','2010-09-11 21:30:19',NULL,NULL,'584440','13757166167',NULL,NULL,NULL,'食品0802','朝晖校区','尚7#422',0,'xufan6',NULL,NULL,'1990-01-12','83178951','男');
INSERT INTO `qt_user` VALUES (199,'200926740114','吕靖强','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (200,'200926740216','任成','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (201,'200803090109','林相德','3935e1963e939991996d971a9b8977d5','2010-09-11 21:30:19',NULL,NULL,'533540','15158135403',NULL,NULL,NULL,'电子信息工程0801','屏峰校区','东10#614',0,'lxd722',NULL,NULL,'1990-07-21','124966602','男');
INSERT INTO `qt_user` VALUES (202,'200926740312','陆露','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (203,'2111103096','徐栋','c62d929e7b7e7b6165923a5dfc60cb56','2010-09-11 21:30:19',NULL,NULL,'684658','15858229856',NULL,NULL,NULL,'控制理论与控制工程控制1102','屏峰校区','西11-503',0,'thomaspaine',NULL,NULL,'1988-12-13','22829608','男');
INSERT INTO `qt_user` VALUES (204,'200903120128','赵洋','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:19',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (205,'200902540219','闻声','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'513775','13758264730',NULL,NULL,NULL,'测控技术与仪器0902','朝晖校区','尚2#216',1,'懒洋洋',NULL,NULL,'1992-01-23','550116852','男');
INSERT INTO `qt_user` VALUES (206,'200902540221','徐怡','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'513777','13758264786',NULL,NULL,NULL,'测控技术与仪器0902','朝晖校区','尚2#216',1,'-',NULL,NULL,'1991-12-08','1071542626','男');
INSERT INTO `qt_user` VALUES (207,'200901030316','王鹏','b28b05b5c8e602a4d4ebb9122842f249','2010-09-11 21:30:20',NULL,NULL,'517820','15068863682',NULL,NULL,NULL,'应用电化学09(01)09(01)','朝晖校区','尚德2-116',1,'wpeng326',NULL,NULL,'1991-03-26','517454870','男');
INSERT INTO `qt_user` VALUES (208,'200902070822','许鹏杰','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'526037','15068845257',NULL,NULL,NULL,'机械工程及自动化机械工程及自动化0908','朝晖校区','尚9#711',0,'兰色∨s枫叶',NULL,NULL,'1991-11-29','478589381','男');
INSERT INTO `qt_user` VALUES (209,'200907420227','许剑波','e1f17ec35cf77fd4ba3c7b6a3af59db8','2010-09-11 21:30:20',NULL,NULL,'513352','13758241375',NULL,NULL,NULL,'安全工程安工0902','屏峰校区','东十',1,'移动移不动',NULL,NULL,'1990-03-27','339249440','男');
INSERT INTO `qt_user` VALUES (210,'200918360421','唐弋奥','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'518405','15068876273',NULL,NULL,NULL,'生物制药0902','朝晖校区','尚12  112',1,'林苏',NULL,NULL,'1992-07-03','772796173','男');
INSERT INTO `qt_user` VALUES (211,'200903110128','张彤','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'516699','15068833051',NULL,NULL,NULL,'通信0901','屏峰校区','东二#528',0,'几多愁',NULL,NULL,'','674006121','男');
INSERT INTO `qt_user` VALUES (212,'200904140210','金汉峰','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (213,'200910320222','俞瑞泰','6f1a0f10ce1797ad29260dfe43a98d64','2010-09-11 21:30:20',NULL,NULL,'517913','15068866558',NULL,NULL,NULL,'应用物理0902','屏峰校区','东1#613',1,'edtiger',NULL,NULL,'','422875418','男');
INSERT INTO `qt_user` VALUES (214,'200926100503','陈贤雕','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (215,'200911050120','朱作君','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'524654','15068839478',NULL,NULL,NULL,'工设0901','屏峰校区','西5#503',1,'蟹炒年糕',NULL,NULL,'1990-07-15','43087277','女');
INSERT INTO `qt_user` VALUES (216,'200926740316','沈珊珊','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (217,'200926740319','王晓萍','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (218,'200828800208','金霄','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'532575','15158133856',NULL,NULL,NULL,'-软件技术-0802','屏峰校区','-东2#206',1,'-',NULL,NULL,'1990-02-07','-315232021','男');
INSERT INTO `qt_user` VALUES (219,'200926100430','郑诚','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'526208','15068807221',NULL,NULL,NULL,'计算机科学与技术计算机科学与技术0904','屏峰校区','东14 420',1,'真诚',NULL,NULL,'1991-06-07','370567301','男');
INSERT INTO `qt_user` VALUES (220,'200904160519','王金马','872a41e614cdd01f335dbbd2d82bcd55','2010-09-11 21:30:20',NULL,NULL,'517032','15068839665',NULL,NULL,NULL,'土木工程0905班','朝晖校区','尚9#111',1,'kima',NULL,NULL,'1990-10-09','455940742','男');
INSERT INTO `qt_user` VALUES (221,'200803100224','徐琳迪','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'533685','15158135642',NULL,NULL,NULL,'计算机专业计算机0802','屏峰校区','西13#212',1,'xuld',NULL,NULL,'1990-12-06','744257564','男');
INSERT INTO `qt_user` VALUES (222,'200911050209','孙可','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'524666','15068839943',NULL,NULL,NULL,'工业设计0902','屏峰校区','西五#408',0,'牛牛来了',NULL,NULL,'2010-09-02','1206171084','女');
INSERT INTO `qt_user` VALUES (223,'200911050215','肖倩妮','5697f4bb2a73500a1f1119d639ab240e','2010-09-11 21:30:20',NULL,NULL,'524656','15068839498',NULL,NULL,NULL,'工业设计0902','屏峰校区','西五#408',0,'铅笔小呢',NULL,NULL,'1991-05-29','345852562','女');
INSERT INTO `qt_user` VALUES (224,'200826490130','邹跃丰','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'-','-','-');
INSERT INTO `qt_user` VALUES (225,'200910620213','刘正','f047c215bc2908045838e271e7e500d0','2010-09-11 21:30:20',NULL,NULL,'524889','15068860646',NULL,NULL,NULL,'光信息科学与技术0902','屏峰校区','东一#618',0,'liuzheng',NULL,NULL,'1990-7-12','408852058','男');
INSERT INTO `qt_user` VALUES (226,'200709300609','胡益霞','e10adc3949ba59abbe56e057f20f883e','2010-09-11 21:30:20',NULL,NULL,'-','-',NULL,NULL,NULL,'--','-','-',1,'-',NULL,NULL,'1987-03-26','-','-');
INSERT INTO `qt_user` VALUES (227,'200902040119','孙少军','480630af8e0635fd550f695a58feaed8','2010-09-17 05:03:17',NULL,NULL,'524591','15068836439',NULL,NULL,NULL,'工业工程0901','朝晖校区','尚五203',1,'Mè↘(ㄅ傷',NULL,NULL,'1990-03-28','625742518','男');
INSERT INTO `qt_user` VALUES (228,'200810320113','金栋铭','e10adc3949ba59abbe56e057f20f883e','2010-09-18 20:01:33',NULL,NULL,'634635','15158134635',NULL,NULL,NULL,'应用物理学0801','屏峰校区','东8#222',0,'windyfly',NULL,NULL,'1990-04-27','285946485','男');
INSERT INTO `qt_user` VALUES (229,'2110910009','杨帆','985c199e2f3b3a3bb7a155052edd38ed','2010-09-18 20:28:40',NULL,NULL,'515334','15158065295',NULL,NULL,NULL,'古代文学09級','屏峰校区','西11#110',0,'TseYung',NULL,NULL,'','371763287','男');
INSERT INTO `qt_user` VALUES (230,'201001391420','殷嘉月','b2c843f86b1e213e450b617daa8e5142','2010-09-18 23:16:52',NULL,NULL,'514468','18767117784',NULL,NULL,NULL,'化学工程与工艺化工1002班','朝晖校区','尚3#1028',0,'除却巫山',NULL,NULL,'1992-06-06','562094988','女');
INSERT INTO `qt_user` VALUES (231,'201008280205','何珊','70028658328c3c71ddca24240df7cf3d','2010-09-18 23:21:29',NULL,NULL,'523461','18767119301',NULL,NULL,NULL,'广告学201002','屏峰校区','家和西苑15幢415',1,'',NULL,NULL,'1992-05-28','1550700510','女');
INSERT INTO `qt_user` VALUES (232,'201008280203','范俊霞','3bef2722d0e6afc04767cc77ab68a3ee','2010-09-18 23:23:18',NULL,NULL,'630232','18768140232',NULL,NULL,NULL,'广告学二班','屏峰校区','家和西苑15幢415寝室',1,'',NULL,NULL,'农历二月初四','599035821','女');
INSERT INTO `qt_user` VALUES (233,'201001390707','蒋琪','e10adc3949ba59abbe56e057f20f883e','2010-09-18 23:25:41',NULL,NULL,'513443','18767116874  ',NULL,NULL,NULL,'化学工程与材料类7班','屏峰校区','东11#118',0,'',NULL,NULL,'2011-09-07','1037560204','女');
INSERT INTO `qt_user` VALUES (234,'201002040113','沈周敏','0e3490347c12ff9e2de0329d21567df3','2010-09-18 23:26:25',NULL,NULL,'514661','18767118247',NULL,NULL,NULL,'工业工程1班','屏峰校区','东苑6号楼124寝室',1,'',NULL,NULL,'1992-08-31','377091023','男');
INSERT INTO `qt_user` VALUES (235,'201005190210','沈灵智','45a140fd1547ae6746b7a0fa3c2cee6b','2010-09-18 23:27:57',NULL,NULL,'519524','18767123483',NULL,NULL,NULL,'国际经济与贸易1002','屏峰校区','东5#210',0,'wood智',NULL,NULL,'1992-01-17','807143947','女');
INSERT INTO `qt_user` VALUES (236,'201002070220','吴伟剑','819cf1304065c4ae95f2babaf8a03fd7','2010-09-18 23:28:37',NULL,NULL,'515272','18767118947',NULL,NULL,NULL,'机械工程及自动化机自1002班','屏峰校区','东6#203',1,'vvvjake',NULL,NULL,'1992-10-22','346885822','男');
INSERT INTO `qt_user` VALUES (237,'201018360412','李鑫业','99e4cc0fc5199527e8cccaf0a87954bb','2010-09-18 23:31:23',NULL,NULL,'527105','18767121501',NULL,NULL,NULL,'生物制药生药2班','屏峰校区','东苑15幢212室',0,'余温的夏天',NULL,NULL,'3.15','17703206','男');
INSERT INTO `qt_user` VALUES (238,'201005910620','王懿娟','1030807442780fb1fc6dc149716f6260','2010-09-18 23:32:02',NULL,NULL,'519951','18767117815',NULL,NULL,NULL,'工商管理06','屏峰校区','425',1,'九九玥',NULL,NULL,'1992-05-16','1284864747','女');
INSERT INTO `qt_user` VALUES (239,'201001390310','莫雅雯','af510c2dfb04fa68af7b2c7ea78c7060','2010-09-18 23:40:08',NULL,NULL,'513145','18767116436',NULL,NULL,NULL,'化学类化材3班','屏峰校区','东11#112',1,'雯',NULL,NULL,'1992-07-24','27607374','女');
INSERT INTO `qt_user` VALUES (240,'201005190203','冯李丹','4b383ede4a8aa9aa675e812237c3639d','2010-09-18 23:46:52',NULL,NULL,'519514','18767123476',NULL,NULL,NULL,'国贸02','屏峰校区','西15   220',0,'',NULL,NULL,'1991-11-19','1479826952','女');
INSERT INTO `qt_user` VALUES (241,'200917330421','吴菲菲','1c020611e3b753925ffc8af8745c0556','2010-09-19 01:19:46',NULL,NULL,'524013','15068810427',NULL,NULL,NULL,'法学法学0904','屏峰校区','',0,'LSphanx',NULL,NULL,'1990-08-14','124878397','女');
INSERT INTO `qt_user` VALUES (242,'200803080219','王俊俏','e10adc3949ba59abbe56e057f20f883e','2010-09-19 06:17:05',NULL,NULL,'533521','15158135386',NULL,NULL,NULL,'计算机科学与技术计算机0801','屏峰校区','西苑13#206',0,'超级DD',NULL,NULL,'1989-02-14','774367334','男');
INSERT INTO `qt_user` VALUES (243,'200828800223','应顺帆','e10adc3949ba59abbe56e057f20f883e','2010-09-19 07:35:32',NULL,NULL,'','',NULL,NULL,NULL,'编码与测试0802','屏峰校区','东2 208',1,'stop_lian',NULL,NULL,'','1058926966','男');
INSERT INTO `qt_user` VALUES (244,'2110902070','何瑞江','e10adc3949ba59abbe56e057f20f883e','2010-09-20 06:04:50',NULL,NULL,'685123','13735573321',NULL,NULL,NULL,'机械电子工程研0903','朝晖校区','梦7 213',0,'酷炎二代',NULL,NULL,'1986-11-01','347898013','男');
INSERT INTO `qt_user` VALUES (245,'200803080221','谢宇琪','e10adc3949ba59abbe56e057f20f883e','2010-09-20 07:24:45',NULL,NULL,'533524','15158135389',NULL,NULL,NULL,'电气工程及其自动化0802','屏峰校区','东1#611',1,'小爱ing',NULL,NULL,'1990-08-13','648379625','男');
INSERT INTO `qt_user` VALUES (246,'杨国华','杨国华','e10adc3949ba59abbe56e057f20f883e','2010-09-22 22:46:52',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (247,'章大良','章大良','e10adc3949ba59abbe56e057f20f883e','2010-09-22 22:47:05',NULL,NULL,'','',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (249,'200903080202','方颂','de233ac2de7f94fe215946489d50ecf6','2010-09-26 21:21:09',NULL,NULL,'514082','13758226081',NULL,NULL,NULL,'电气工程及其自动化电气0902','屏峰校区','东2#322',1,'_monitor',NULL,NULL,'1990-06-14','540832777','男');
INSERT INTO `qt_user` VALUES (250,'201003120325','徐磊','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:21:50',NULL,NULL,'518972 ','18767121543',NULL,NULL,NULL,'自动化1003','屏峰校区','',1,'不觉已鸣晓',NULL,NULL,'2010-09-27','227970392','男');
INSERT INTO `qt_user` VALUES (251,'201005190219','姚凯斌','8a8dd686b8ff46bf5ced0b78599228d6','2010-09-26 21:22:14',NULL,NULL,'519537','18767123495',NULL,NULL,NULL,'国贸1002','屏峰校区','东苑',0,'Miku',NULL,NULL,'1991-09-13','444074953','男');
INSERT INTO `qt_user` VALUES (252,'200902070607','郭强','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:22:53',NULL,NULL,'525946 ','15068842672',NULL,NULL,NULL,'机自','朝晖校区','',1,'onlineguo',NULL,NULL,'','316981285','男');
INSERT INTO `qt_user` VALUES (253,'200803100326','张臻','60e90bb199fe27c7a349f28c15a101dd','2010-09-26 21:23:19',NULL,NULL,'530011','13575458657',NULL,NULL,NULL,'计算机0803','屏峰校区','西苑',1,'Nastia',NULL,NULL,'2009-02-22','302739385','男');
INSERT INTO `qt_user` VALUES (254,'201018590126 ','应一君','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:25:29',NULL,NULL,'527223','18767121651',NULL,NULL,NULL,'中药学中药1001','屏峰校区','东7#506',0,'',NULL,NULL,'1992-02-24','769885274','女');
INSERT INTO `qt_user` VALUES (255,'201003090121 ','王跃为','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:26:59',NULL,NULL,'518061','18767120542',NULL,NULL,NULL,'电信电信01','屏峰校区','东18#108',1,'',NULL,NULL,'1990-12-30','857339600','男');
INSERT INTO `qt_user` VALUES (256,'201026810404 ','陈琦','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:27:40',NULL,NULL,'527721','18767122273',NULL,NULL,NULL,'计算机1004','屏峰校区','东15#413',1,'',NULL,NULL,'1991-02-18','448764699','男');
INSERT INTO `qt_user` VALUES (257,'200801020626','章洁','36e1a5072c78359066ed7715f5ff3da8','2010-09-26 21:27:51',NULL,NULL,'537680','15158132185',NULL,NULL,NULL,'化工技术与贸易0804','朝晖校区','尚德3#1068',1,'zhangjie',NULL,NULL,'1989-07-13','648753382','女');
INSERT INTO `qt_user` VALUES (258,'201002070113 ','裘金婧','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:28:00',NULL,NULL,'515138','18767118745',NULL,NULL,NULL,'机械工程及其自动化机自01','屏峰校区','东11#507',0,'',NULL,NULL,'1991-08-10','1519287629','女');
INSERT INTO `qt_user` VALUES (259,'201001391416 ','吴思聪','56775563708465a10d7f7d80baa357db','2010-09-26 21:28:55',NULL,NULL,'514450','18767117749',NULL,NULL,NULL,'化材材料1005','朝晖校区','尚3#1055',0,'0618wusicong',NULL,NULL,'1991.12.29','974142566','女');
INSERT INTO `qt_user` VALUES (260,'201026810407 ','黄军','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:29:53',NULL,NULL,'527724','18767122278',NULL,NULL,NULL,'计算机1004','屏峰校区','东15#415',0,'河的第三岸',NULL,NULL,'2010-09-29','843526722','男');
INSERT INTO `qt_user` VALUES (263,'201001391516 ','王进','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:35:27',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (264,'200826630712','楼旭明','ac3a34fa910e067ad3383b8c58cdf5f0','2010-09-26 21:38:44',NULL,NULL,'532335','15158133675',NULL,NULL,NULL,'软件工程软工0807','屏峰校区','西13#318',0,'水痴',NULL,NULL,'1990-10-01','108240921','男');
INSERT INTO `qt_user` VALUES (265,'200718100324','金力','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:43:33',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (266,'200926100112','李璧影','437fc24c075452d9586e2e98fbcbdb65','2010-09-26 21:43:46',NULL,NULL,'526103','15068846603',NULL,NULL,NULL,'计算机科学与技术0901','屏峰校区','西10#512',1,'Aerin',NULL,NULL,'1990-11-07','297305458','女');
INSERT INTO `qt_user` VALUES (267,'200911290911','孙伊丽','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:44:25',NULL,NULL,'517714','15068861693',NULL,NULL,NULL,'视觉传达0901','屏峰校区','西七#211',1,'mibumibao',NULL,NULL,'1991-06-26','276537782','女');
INSERT INTO `qt_user` VALUES (268,'200911290913','王玮颖','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:45:13',NULL,NULL,'517723','15068861836',NULL,NULL,NULL,'视觉传达0901','屏峰校区','西七#211',1,'sunaquarius',NULL,NULL,'1990-02-11','373891264','女');
INSERT INTO `qt_user` VALUES (269,'201002540103','龚约翰','6ebd50f2655f575b87d4203d260efdd4','2010-09-26 21:46:03',NULL,NULL,'516711','18767119845',NULL,NULL,NULL,'测控技术与仪器1001','朝晖校区','尚9#607',1,'',NULL,NULL,'1991-09-21','446480993','男');
INSERT INTO `qt_user` VALUES (270,'201004160110','宓传伟','d8e6e8819d4d0daccb81e758ae2e5d50','2010-09-26 21:47:31',NULL,NULL,'519286','519286',NULL,NULL,NULL,'土木1001','屏峰校区','东六505',1,'',NULL,NULL,'','490194187','男');
INSERT INTO `qt_user` VALUES (271,'2111003143','陈圆','03612e71fb2f2c8077dd4c0b34b1f292','2010-09-26 21:51:04',NULL,NULL,'528616','18767123573',NULL,NULL,NULL,'模式识别与智能系统控制1003','屏峰校区','西苑12#320',1,'butian',NULL,NULL,'1987-06-04','280438337','男');
INSERT INTO `qt_user` VALUES (272,'200802540123','杨时建','e8f58703e621d57170300c2a79b00be4','2010-09-26 21:51:51',NULL,NULL,'512651','15158132651',NULL,NULL,NULL,'测控技术与仪器0801','朝晖校区','综合楼 324',1,'zgdysj',NULL,NULL,'1989-06-16','970841448','男');
INSERT INTO `qt_user` VALUES (274,'200819100327','吴逸君','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:56:08',NULL,NULL,'537247','15158131299',NULL,NULL,NULL,'','屏峰校区','',1,'',NULL,NULL,'','25763736','男');
INSERT INTO `qt_user` VALUES (275,'200819100303','柴达龙','2aaab8db0225dfe0d08926c65a558e31','2010-09-26 21:56:30',NULL,NULL,'537218','15158131274',NULL,NULL,NULL,'软件工程0805','屏峰校区','东10#522',1,'longterry',NULL,NULL,'1990-12-16','381433459','男');
INSERT INTO `qt_user` VALUES (276,'200819100329','徐鸿杰','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:57:03',NULL,NULL,'590685','13666652011',NULL,NULL,NULL,'','屏峰校区','',1,'',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (277,'201005570207','楼劼','0cee38a2861cc60ad2ed4634e7af4723','2010-09-26 21:57:39',NULL,NULL,'659950','13867419950',NULL,NULL,NULL,'信管1002','屏峰校区','东6#327',1,'凤凰小子',NULL,NULL,'1992-02-20','409146491','男');
INSERT INTO `qt_user` VALUES (278,'201026811713','陆王延 ','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:58:01',NULL,NULL,'528177','18767122927',NULL,NULL,NULL,'电气信息1017','屏峰校区','东15#611',1,'L_Destiny',NULL,NULL,'1991-12-07','337216565','男');
INSERT INTO `qt_user` VALUES (279,'201001391007','钱佳斌','e10adc3949ba59abbe56e057f20f883e','2010-09-26 21:58:16',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (280,'201027920408','胡梦君','7408d44d0186291107267efde7fdfe4c','2010-09-26 22:13:26',NULL,NULL,'528332','18767123123',NULL,NULL,NULL,'政管1004','屏峰校区','西15.619',0,'2008jun__love',NULL,NULL,'1994-01-26','805479053','女');
INSERT INTO `qt_user` VALUES (281,'200903080207','孔维宁','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:13:41',NULL,NULL,'514061','13758223258',NULL,NULL,NULL,'电气工程及自动化电气0902','屏峰校区','东2#311',1,'俄罗斯企鹅',NULL,NULL,'1992-11-04','535190016','男');
INSERT INTO `qt_user` VALUES (282,'201003090113','李改改','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:13:56',NULL,NULL,'518023','18767120498',NULL,NULL,NULL,'电信1001','屏峰校区','东7#320',1,'小改',NULL,NULL,'2010-09-15','1543554786','女');
INSERT INTO `qt_user` VALUES (283,'201001390318','吴鹏鹦','1d2376e6cb61b6043f67d2ea5bb574e5','2010-09-26 22:14:13',NULL,NULL,'513158','18767116455',NULL,NULL,NULL,'化学工程与材料03','屏峰校区','东11#112室',1,'流年偶遇',NULL,NULL,'1991-08-16','857116232','女');
INSERT INTO `qt_user` VALUES (284,'201018350124','张京京','39363c0c82f2c0b7093b80eb63b900c4','2010-09-26 22:14:31',NULL,NULL,'526964','18767121217',NULL,NULL,NULL,'药物制剂1001','屏峰校区','东7#425',1,'青铜J',NULL,NULL,'1993-03-18','674877427','女');
INSERT INTO `qt_user` VALUES (286,'200910310221','俞天宇','3f1fba33130e63cc2cfbaad93f215601','2010-09-26 22:18:56',NULL,NULL,'517352','15068856607',NULL,NULL,NULL,'信息与计算科学信息与计算科学0902','屏峰校区','东1-626',0,'酱油已打',NULL,NULL,'1990-10-12','353754371','男');
INSERT INTO `qt_user` VALUES (287,'200908580203','程洁','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:19:15',NULL,NULL,'525388','15068881614',NULL,NULL,NULL,'中文中文0902','屏峰校区','西6#304',1,'莳悦勿忧',NULL,NULL,'1990-03-27','819437354','女');
INSERT INTO `qt_user` VALUES (288,'200908560109','刘心治','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:20:15',NULL,NULL,'513378','13758242120',NULL,NULL,NULL,'播音0902','屏峰校区','东九',1,'llxxzz08',NULL,NULL,'1991-04-14','691106715','男');
INSERT INTO `qt_user` VALUES (289,'200908560219','徐雨南','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:27:24',NULL,NULL,'513431','13758243375',NULL,NULL,NULL,'播音0902','屏峰校区','西六#229',1,'徐雨南',NULL,NULL,'1992-04-10','598894532','女');
INSERT INTO `qt_user` VALUES (290,'200808280325','颜元滔','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:27:45',NULL,NULL,'531913','15158133328',NULL,NULL,NULL,'广告0803','屏峰校区','西八418',1,'夏末',NULL,NULL,'1989-06-26','148129843','女');
INSERT INTO `qt_user` VALUES (291,'200908560119','叶沈蓉','ff0763b9de8990e8a123d427dec06d5d','2010-09-26 22:31:35',NULL,NULL,'513402','13758242873',NULL,NULL,NULL,'播音主持0901','屏峰校区','西6 107',1,'天边的流星',NULL,NULL,'1990-06-19','1146432887','-');
INSERT INTO `qt_user` VALUES (292,'200908270121','张缘','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:31:58',NULL,NULL,'524917','15068861734',NULL,NULL,NULL,'广电0901','屏峰校区','家和西苑6幢406',1,'ashinzhang17',NULL,NULL,'1991-04-10','380107457','女');
INSERT INTO `qt_user` VALUES (293,'200908480127','钟韵','d6600396f74c984760660adbe96e4ccc','2010-09-26 22:34:48',NULL,NULL,'514381','13758236927',NULL,NULL,NULL,'对外汉语0901','屏峰校区','西6#302',0,'旋@木',NULL,NULL,'1991-09-10','461647614','女');
INSERT INTO `qt_user` VALUES (294,'200908560227','周奕武','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:35:06',NULL,NULL,'513450','13758243963',NULL,NULL,NULL,'播音0902','屏峰校区','东九423',1,'周一五',NULL,NULL,'2010-05-24','386369845','男');
INSERT INTO `qt_user` VALUES (295,'200809300111','黄新新','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:36:04',NULL,NULL,'533283','15158135171',NULL,NULL,NULL,'英语081','屏峰校区','西二#221',1,'梦幻浅紫',NULL,NULL,'1990-01-16','394027956','女');
INSERT INTO `qt_user` VALUES (296,'200909300616','金晓丹','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:37:07',NULL,NULL,'518197','15068871371',NULL,NULL,NULL,'英语0906','屏峰校区','西二#509',1,'0金针菇0',NULL,NULL,'1991-11-20','694810592','女');
INSERT INTO `qt_user` VALUES (297,'200903090217','唐瑞琮','7bec453a3ab374e8ef1c94e6ded715a2','2010-09-26 22:37:30',NULL,NULL,'514239','13625770737',NULL,NULL,NULL,'电子信息工程0902','屏峰校区','东二 327',1,'',NULL,NULL,'1990-07-27','178905090','男');
INSERT INTO `qt_user` VALUES (298,'200827920217','夏琛','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:38:10',NULL,NULL,'531014','13575463125',NULL,NULL,NULL,'公共管理类公管0802','屏峰校区','西4#104',1,'小桃子',NULL,NULL,'1989-11-17','986784328','女');
INSERT INTO `qt_user` VALUES (299,'200907420225','徐丽贤','ac55d86e85df97de488f6081f4a3b93d','2010-09-26 22:54:49',NULL,NULL,'513303','13758234913',NULL,NULL,NULL,'安全工程0902','朝晖校区','尚三3058',1,'',NULL,NULL,'1991-02-14','626902366','女');
INSERT INTO `qt_user` VALUES (300,'200904160523','杨力峰','3cdb05ec2a9b92156a80e2f3afcea46f','2010-09-26 22:55:32',NULL,NULL,'517042','15068839753',NULL,NULL,NULL,'土木工程0905班','朝晖校区','尚九109',1,'尨尨',NULL,NULL,'1990-09-21','289471686','男');
INSERT INTO `qt_user` VALUES (301,'200907420226','徐瑶阳','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:58:39',NULL,NULL,'513343','13758240919',NULL,NULL,NULL,'食品科学与工程0901','朝晖校区','尚德3号楼3058',1,'',NULL,NULL,'1991-10-30','403055280','女');
INSERT INTO `qt_user` VALUES (302,'200902060124','杨勇','fc1fc1c948dbcc463b41b0f684ee3932','2010-09-26 22:59:19',NULL,NULL,'525216','15068875148',NULL,NULL,NULL,'过程装备与控制工程0901','朝晖校区','尚五108',1,'青子呦鹿',NULL,NULL,'1989-08-02','359476955','男');
INSERT INTO `qt_user` VALUES (303,'200907420229','姚志琴','e10adc3949ba59abbe56e057f20f883e','2010-09-26 22:59:55',NULL,NULL,'513329','13758240397',NULL,NULL,NULL,'食品科学与工程食品0902','朝晖校区','尚德三3058',1,'小毛菜',NULL,NULL,'1990-05-24','553214364','女');
INSERT INTO `qt_user` VALUES (304,'200902540227','赵奎','e10adc3949ba59abbe56e057f20f883e','2010-09-26 23:00:38',NULL,NULL,'513770','13758264692',NULL,NULL,NULL,'测控0902班','朝晖校区','尚5，102',1,'',NULL,NULL,'1990-06-18','970057791','男');
INSERT INTO `qt_user` VALUES (305,'200904160522','徐文斌','711b5d8fe72c0da71e7d8e1373a85068','2010-09-26 23:10:19',NULL,NULL,'517033','15068839673',NULL,NULL,NULL,'土木工程+工程管理土木工程0905','朝晖校区','尚九-111',1,'Vern!!',NULL,NULL,'1989-10-17','1170216510','男');
INSERT INTO `qt_user` VALUES (306,'200901020204','郭英巧','74cbe7113b1c11f0d70452400790bc84','2010-09-26 23:12:20',NULL,NULL,'525463','15068884124',NULL,NULL,NULL,'工艺+英语0902','朝晖校区','尚3#1042',1,'',NULL,NULL,'1991-08-04','750696046','女');
INSERT INTO `qt_user` VALUES (307,'201026811813','林子圣','e10adc3949ba59abbe56e057f20f883e','2010-09-26 23:28:28',NULL,NULL,'528211','18767122973',NULL,NULL,NULL,'电气信息类计算机1018班','屏峰校区','东15#615',0,'',NULL,NULL,'1992-07-08','463153408','男');
INSERT INTO `qt_user` VALUES (308,'200705170125','张昀珩','e10adc3949ba59abbe56e057f20f883e','2010-09-26 23:30:32',NULL,NULL,'643134','15858179134',NULL,NULL,NULL,'财务管理072','屏峰校区','西九208',1,'满小淡',NULL,NULL,'1989-04-06','344525669','女');
INSERT INTO `qt_user` VALUES (309,'200908560113','钱艺','e10adc3949ba59abbe56e057f20f883e','2010-09-26 23:37:59',NULL,NULL,'513392','13758242571',NULL,NULL,NULL,'广播电视新闻0901','屏峰校区','西6-203',1,'',NULL,NULL,'1991-06-28','','女');
INSERT INTO `qt_user` VALUES (310,'201002040116','王涛','e10adc3949ba59abbe56e057f20f883e','2010-09-27 12:14:56',NULL,NULL,'514668','18767118254',NULL,NULL,NULL,'工业工程1001','朝晖校区','尚德9 519',0,'茶多酚',NULL,NULL,'1991-10-12','349995358','男');
INSERT INTO `qt_user` VALUES (312,'200924450307','冯佳佳','e10adc3949ba59abbe56e057f20f883e','2010-09-27 21:01:23',NULL,NULL,'517184','15068851901',NULL,NULL,NULL,'财管0903','屏峰校区','西十',1,'中美',NULL,NULL,'1991-01-12','747191223','女');
INSERT INTO `qt_user` VALUES (313,'201011290705','崔艳梅','348430eea3e98142362fbd0fce2d822c','2010-09-27 21:22:00',NULL,NULL,'526568','18767120721',NULL,NULL,NULL,'视觉传达1007','屏峰校区','东11#605',0,'112860',NULL,NULL,'1990-08-28','838210154','女');
INSERT INTO `qt_user` VALUES (314,'200902040111','梁世武','e10adc3949ba59abbe56e057f20f883e','2010-10-22 23:06:07',NULL,NULL,'524579','15068835934',NULL,NULL,NULL,'工业工程工业工程0901','朝晖校区','尚德园⑤号楼203',1,'',NULL,NULL,'1991-09-21','349738243','男');
INSERT INTO `qt_user` VALUES (316,'200917330108','胡琼方','e10adc3949ba59abbe56e057f20f883e','2010-11-02 21:28:29',NULL,NULL,'514457','13758240798',NULL,NULL,NULL,'法学法学0901班','屏峰校区','西14,307',0,'低调~',NULL,NULL,'1992-02-28','356333705','女');
INSERT INTO `qt_user` VALUES (317,'200917330109','季玲骅','fa7337fde2a15453b4e28d3ab7a099cd','2010-11-02 21:28:53',NULL,NULL,'514467','13758243038',NULL,NULL,NULL,'法学0901','屏峰校区','西14#117',1,'',NULL,NULL,'1991-02-08','1017545734','女');
INSERT INTO `qt_user` VALUES (318,'200911050213','王苹','80538fff9c5ca0d8c70f1b4364cb8223','2010-11-02 21:33:38',NULL,NULL,'524664','15068839846',NULL,NULL,NULL,'工业设计0902','屏峰校区','西5-408',0,'',NULL,NULL,'1992-01-03','270482702','女');
INSERT INTO `qt_user` VALUES (319,'200827920311','陆晓华','1e0ca144a3d31a24b0d54a9da3ab052c','2010-11-09 21:33:01',NULL,NULL,'531039','13575463275',NULL,NULL,NULL,'人力资源管理模块公管0803','屏峰校区','',0,'lovelymind',NULL,NULL,'','767922659','女');
INSERT INTO `qt_user` VALUES (320,'2111011031','吴珺楠','251a69bfb4cd9ebef25c388663c78174','2010-11-28 08:33:47',NULL,NULL,'648271','15967147271',NULL,NULL,NULL,'教育经济与管理教管10级','屏峰校区','东苑七号222寝室',0,'陌尘',NULL,NULL,'1987-10-17','477630471','女');
INSERT INTO `qt_user` VALUES (321,'200801010102','陈群','e10adc3949ba59abbe56e057f20f883e','2010-12-04 20:03:56',NULL,NULL,'537299','',NULL,NULL,NULL,'功能0804','朝晖校区','218',0,'xchen120',NULL,NULL,'','373673290','男');
INSERT INTO `qt_user` VALUES (322,'200801010104',' 陈哲','e10adc3949ba59abbe56e057f20f883e','2010-12-04 20:34:32',NULL,NULL,'666348','15158131348',NULL,NULL,NULL,'高分子材料高分子材料0801','朝晖校区','',0,'cabcz',NULL,NULL,'','490913278','-');
INSERT INTO `qt_user` VALUES (323,'200809300511','孟欢','4adc465b3c68f746f239f886ecfacf18','2010-12-04 20:54:26',NULL,NULL,'533416','15158135292',NULL,NULL,NULL,'英语Y085','屏峰校区','西二111',0,'mishi',NULL,NULL,'2010-11-29','496908509','女');
INSERT INTO `qt_user` VALUES (324,'200810310124','闫欣雅','10f2af41d78c8857fb6ccaa0298ea2ac','2010-12-04 21:59:13',NULL,NULL,'590281','',NULL,NULL,NULL,'信息与计算科学0801','屏峰校区','',0,'阳光宅宅',NULL,NULL,'','541000012','-');
INSERT INTO `qt_user` VALUES (325,'200817330315','石燕超','e10adc3949ba59abbe56e057f20f883e','2010-12-04 22:34:29',NULL,NULL,'536989','15158130790',NULL,NULL,NULL,'车辆车辆0801','朝晖校区','综合311',0,'工大口水站',NULL,NULL,'2010-10-21','461342237','男');
INSERT INTO `qt_user` VALUES (326,'200717330627','张林峰','e10adc3949ba59abbe56e057f20f883e','2010-12-05 19:17:10',NULL,NULL,'680179','15858229710',NULL,NULL,NULL,'法学0706','屏峰校区','东四314',1,'fenggel',NULL,NULL,'1989-01-29','776426777','男');
INSERT INTO `qt_user` VALUES (327,'200918590119','徐芬','e10adc3949ba59abbe56e057f20f883e','2010-12-05 19:18:08',NULL,NULL,'','',NULL,NULL,NULL,'','朝晖校区','',1,'彐寸林夕',NULL,NULL,'','','女');
INSERT INTO `qt_user` VALUES (328,'200926100515 ','廖刘承','e2a173982b2dfa1b8d26a447e6b6c7c0','2010-12-05 19:21:14',NULL,NULL,'526277','15068808661',NULL,NULL,NULL,'（计算机+自动化）科学与技术计自0902','屏峰校区','东14#523',0,'喝口凉茶',NULL,NULL,'1991-10-30','992258873','男');
INSERT INTO `qt_user` VALUES (329,'200811290911','盛业慧','e10adc3949ba59abbe56e057f20f883e','2010-12-13 23:10:42',NULL,NULL,'530682','13575461644',NULL,NULL,NULL,'视觉传达多媒体与网页设计0809','屏峰校区','西七#109',1,'yehui56580',NULL,NULL,'1989-11-16','930795830','女');
INSERT INTO `qt_user` VALUES (330,'200927920115','施琦','1bad33ecfb3d61208c8d924e8d77470b','2010-12-14 10:54:38',NULL,NULL,'524717','15068852684',NULL,NULL,NULL,'公共管理公管0901','屏峰校区','西3#222',0,'conanqiqi',NULL,NULL,'1991-08-19','475514556','女');
INSERT INTO `qt_user` VALUES (331,'201018590105','房纯纯','e10adc3949ba59abbe56e057f20f883e','2010-12-14 10:55:22',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (332,'200907260217','邱嘉辰','8f3f0b7199ba7a7f6cb2a56d66282acd','2010-12-14 21:31:59',NULL,NULL,'515623','15068813016',NULL,NULL,NULL,'教育技术0902','朝晖校区','尚6 209',1,'qjcchina',NULL,NULL,'1990-04-05','249926183','男');
INSERT INTO `qt_user` VALUES (333,'200926680218','吴斌','e10adc3949ba59abbe56e057f20f883e','2010-12-19 18:06:10',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (334,'200924450304','储丽娟','cfc75185a1e0ca08c204f13a8c1e2df5','2010-12-19 21:45:42',NULL,NULL,'517175','15068851685',NULL,NULL,NULL,'广播电视新闻学0903','屏峰校区','西六#208',0,'Monna',NULL,NULL,'1991-01-21','842545328','女');
INSERT INTO `qt_user` VALUES (335,'200807780133','赵迪峰','85ec55ebaadc633ea1fafe91a9cc290d','2010-12-24 00:00:34',NULL,NULL,'539162','',NULL,NULL,NULL,'机械工程及其自动化（教育）机师0801','朝晖校区','尚6# 416',1,'Darktamplar',NULL,NULL,'1989-05-26','553715874','男');
INSERT INTO `qt_user` VALUES (336,'200801640120','谈宾宾','e10adc3949ba59abbe56e057f20f883e','2011-01-02 22:43:25',NULL,NULL,'537451','15158132003',NULL,NULL,NULL,'海洋科学与技术海洋0801','朝晖校区','尚4',0,'后年七月',NULL,NULL,'1989-03-28','770690290','男');
INSERT INTO `qt_user` VALUES (337,'200903120302','蔡长玻','56e0a09835dc5c9c344c4cbd5f1eff65','2011-03-01 10:24:46',NULL,NULL,'518764','15068881916',NULL,NULL,NULL,'自动化0903','屏峰校区','东二#610',0,'殒念',NULL,NULL,'1991-02-17','707789773','男');
INSERT INTO `qt_user` VALUES (338,'200909300418','施凯军','e10adc3949ba59abbe56e057f20f883e','2011-03-01 16:14:41',NULL,NULL,'518130','15068870636',NULL,NULL,NULL,'英语Y0904','屏峰校区','东1#222',0,'小、是',NULL,NULL,'1991-01-07','547460437','男');
INSERT INTO `qt_user` VALUES (339,'200911290602','胡晶晶','e10adc3949ba59abbe56e057f20f883e','2011-03-02 14:19:15',NULL,NULL,'517656','15068860762',NULL,NULL,NULL,'环境艺术设计环艺0902','屏峰校区','西七',0,'Georney',NULL,NULL,'','99032873','女');
INSERT INTO `qt_user` VALUES (340,'200903080209','李一祥','e10adc3949ba59abbe56e057f20f883e','2011-03-05 00:20:28',NULL,NULL,'','514088',NULL,NULL,NULL,'电气自动化0902','屏峰校区','东2—321',1,'',NULL,NULL,'1990-08-20','236496417','男');
INSERT INTO `qt_user` VALUES (341,'200909300509 ','李小娇','46f94c8de14fb36680850768ff1b7f2a','2011-03-05 00:31:25',NULL,NULL,'518163','15068870887',NULL,NULL,NULL,'英语0905','屏峰校区','西2 419',0,'我在这等你',NULL,NULL,'1991-11-27','499904960','女');
INSERT INTO `qt_user` VALUES (342,'200901010120','吴于芸','5c0220d656e5e385635b7c2a4ed32200','2011-03-05 00:32:13',NULL,NULL,'513488','13758245002',NULL,NULL,NULL,'高分子材料0901','朝晖校区','梦2#401',0,'蝶血',NULL,NULL,'1990-11-01','1158276515','女');
INSERT INTO `qt_user` VALUES (343,'200917510125','徐菲','e10adc3949ba59abbe56e057f20f883e','2011-03-05 00:32:54',NULL,NULL,'518230','15068872115',NULL,NULL,NULL,'知识产权0901','屏峰校区','西14#315',0,'Sofia_Sara',NULL,NULL,'1991-09-10','32525772','女');
INSERT INTO `qt_user` VALUES (344,'201002070118','王仑渊','b15f7af0b646066c2b30a9f93928cc58','2011-03-05 00:36:08',NULL,NULL,'515145','18767118754',NULL,NULL,NULL,'机自机自1001班','朝晖校区','尚九603',0,'七年',NULL,NULL,'1991-12-19','742666602','男');
INSERT INTO `qt_user` VALUES (345,'梁世武','梁世武','e10adc3949ba59abbe56e057f20f883e','2011-03-06 16:23:00',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (346,'2110905027','陆涛','e10adc3949ba59abbe56e057f20f883e','2011-03-06 21:25:41',NULL,NULL,'663672','13675894276',NULL,NULL,NULL,'生物化学与分子生物学微生物与分子09研','朝晖校区','梦6#909',0,'装公子',NULL,NULL,'1987-11-13','434625785','男');
INSERT INTO `qt_user` VALUES (347,'201008280323','张弘','e10adc3949ba59abbe56e057f20f883e','2011-03-14 12:58:07',NULL,NULL,'523513','18767119363',NULL,NULL,NULL,'广告学1003班','屏峰校区','东18楼512室',0,'224845',NULL,NULL,'1990-08-24','307540207','男');
INSERT INTO `qt_user` VALUES (348,'200911050218','周晔星','e10adc3949ba59abbe56e057f20f883e','2011-03-14 12:58:37',NULL,NULL,'524672','15068850416',NULL,NULL,NULL,'工业设计0902','屏峰校区','东四506',0,'落落飞飞',NULL,NULL,'1990-06-25','616316889','男');
INSERT INTO `qt_user` VALUES (349,'200911050211','唐都','e10adc3949ba59abbe56e057f20f883e','2011-03-14 12:59:04',NULL,NULL,'524657','15068839524',NULL,NULL,NULL,'工业设计0902','屏峰校区','东四506室',0,'tangdu1125',NULL,NULL,'1990-11-25','547027483','男');
INSERT INTO `qt_user` VALUES (350,'201024450128','詹斌','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:48:47',NULL,NULL,'','',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (351,'201008580216','谢超男','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:49:24',NULL,NULL,'523688','18767119682',NULL,NULL,NULL,'中文中文1002','屏峰校区','西六322',0,'忽而今夏',NULL,NULL,'1991-12-27','447477126','女');
INSERT INTO `qt_user` VALUES (352,'201001391508','华哲航','061cbc68121c2200abd94ab2eac13262','2011-03-14 21:50:00',NULL,NULL,'514518','18767117884',NULL,NULL,NULL,'化材大专业15','屏峰校区','东17#611',1,'思衎',NULL,NULL,'1991-07-16','631160344','男');
INSERT INTO `qt_user` VALUES (354,'200926630324','徐宁','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:52:04',NULL,NULL,'515950','15068821319',NULL,NULL,NULL,'计算机09','屏峰校区','',0,'',NULL,NULL,'','173358672','女');
INSERT INTO `qt_user` VALUES (355,'200926630322','徐飞黎','9e4a00f7c2d9edd33bdef36c5740aeab','2011-03-14 21:52:34',NULL,NULL,'515970','15068821502',NULL,NULL,NULL,'软件工程0903','屏峰校区','西10#409',0,'',NULL,NULL,'2011-10-12','635316960','女');
INSERT INTO `qt_user` VALUES (357,'200805570203','韩一罡','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:53:58',NULL,NULL,'642444','15088732444',NULL,NULL,NULL,'信管0802','屏峰校区','东8-405',0,'silk',NULL,NULL,'','361389535','男');
INSERT INTO `qt_user` VALUES (358,'200926470225','易肖峰','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:55:08',NULL,NULL,'','18989488078',NULL,NULL,NULL,'数媒0902','屏峰校区','',0,'左氧',NULL,NULL,'','490626983','男');
INSERT INTO `qt_user` VALUES (359,'200811291018','张乐臣','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:55:46',NULL,NULL,'','',NULL,NULL,NULL,'','屏峰校区','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (360,'201019100336','朱昱霖','f5f712fbfb79d7c6cac6f49a38f72b67','2011-03-14 21:56:51',NULL,NULL,'527346','18767121803',NULL,NULL,NULL,'计算机科学与技术3班','屏峰校区','东15 420',1,'zhuyulin861',NULL,NULL,'1992-01-20','423410569','男');
INSERT INTO `qt_user` VALUES (361,'201007760115','赖茹彬','f31c629737ede7ce40263ce269ea10f8','2011-03-14 21:57:19',NULL,NULL,'523261','18767119057',NULL,NULL,NULL,'自动化1001','屏峰校区','西3-408',1,'Lrb',NULL,NULL,'1992-06-06','568129591','女');
INSERT INTO `qt_user` VALUES (363,'201003080126','王森浩','e10adc3949ba59abbe56e057f20f883e','2011-03-14 21:58:57',NULL,NULL,'','18767120417',NULL,NULL,NULL,'电气工程及其自动化电气1001','屏峰校区','东18-318',1,'一骑红尘',NULL,NULL,'1991-10-25','337189277','男');
INSERT INTO `qt_user` VALUES (364,'201003080132','杨龙','96947db2e8d8e41116484aec9e13f59b','2011-03-14 21:59:23',NULL,NULL,'517606','18767120423',NULL,NULL,NULL,'电气工程及其自动化电气一班','屏峰校区','东2#208',0,'乐羊羊',NULL,NULL,'1991-08-22','839880341','男');
INSERT INTO `qt_user` VALUES (365,'201003090109','蒋灵仙','3617943bca9e480c1c4d50b4fbca9623','2011-03-14 22:00:17',NULL,NULL,'517979','18767120493',NULL,NULL,NULL,'电子信息工程电信1001','屏峰校区','东7#320',1,'小仙Joyce',NULL,NULL,'1991-07-24','310819728','女');
INSERT INTO `qt_user` VALUES (366,'200926100404','陈永','e10adc3949ba59abbe56e057f20f883e','2011-03-14 22:18:26',NULL,NULL,'526207','15068807206',NULL,NULL,NULL,'计算机加自动化计自0902','屏峰校区','东14#501',1,'彼岸无忧',NULL,NULL,'1989-04-22','979454064','男');
INSERT INTO `qt_user` VALUES (367,'200919100428','张平','8c66df556d2ddfd037df5b6eaece7ccd','2011-03-15 11:18:05',NULL,NULL,'518561','15068878393',NULL,NULL,NULL,'计算机科学与技术0904','屏峰校区','东11#417',0,'离开树的叶',NULL,NULL,'1990-06-03','465113142','男');
INSERT INTO `qt_user` VALUES (368,'201005910228','职璐爽','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:18:39',NULL,NULL,'519824','',NULL,NULL,NULL,'工商管理1002','屏峰校区','',0,'',NULL,NULL,'','','女');
INSERT INTO `qt_user` VALUES (369,'201005910508','李晓龙','1ac0549d4f803c8841ac2a6d3773beb9','2011-03-15 11:19:14',NULL,NULL,'519905','',NULL,NULL,NULL,'市营市营1001','屏峰校区','E8#515',0,'d1nglxl',NULL,NULL,'1991-12-01','562735538','男');
INSERT INTO `qt_user` VALUES (370,'201008580104','黄帅','c0a7c04e2a9c2ff2a6603c6d91daf3b2','2011-03-15 11:19:42',NULL,NULL,'','18969049032',NULL,NULL,NULL,'汉语言文学中文1001班','屏峰校区','西15幢511',0,'木末',NULL,NULL,'1991-03-29','1286548048','女');
INSERT INTO `qt_user` VALUES (371,'200919100208','李昊琦  ','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:20:15',NULL,NULL,'518513','15068877705',NULL,NULL,NULL,'计算机科学与技术092','屏峰校区','东十308',1,'戮',NULL,NULL,'1990-09-07','240792182','男');
INSERT INTO `qt_user` VALUES (372,'201009300328','钟雷雷  ','ea5fdbf44f86b785707b62753207a015','2011-03-15 11:20:45',NULL,NULL,'523803','18767119816',NULL,NULL,NULL,'英语1003','屏峰校区','西3，212',0,'伏羲九九',NULL,NULL,'1992-08-13','913139134','女');
INSERT INTO `qt_user` VALUES (373,'201018360411','李江杭 ','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:21:23',NULL,NULL,'527104','18767121456',NULL,NULL,NULL,'生物制药生物制药1002','屏峰校区','东苑15     212',0,'',NULL,NULL,'1992    1006','36105019','男');
INSERT INTO `qt_user` VALUES (374,'201002070218','翁佺','01fcdc586cb4c0c6f5cf8f9e63e3f223','2011-03-15 11:22:01',NULL,NULL,'658945','18058424600',NULL,NULL,NULL,'机械工程及自动化1002','屏峰校区','尚九723',0,'',NULL,NULL,'1992-12-22','1033997225','男');
INSERT INTO `qt_user` VALUES (375,'201002040114','宋宇航 ','4f825074599277a78419bf0427242af1','2011-03-15 11:22:24',NULL,NULL,'514664','18767118248',NULL,NULL,NULL,'工业工程一班','屏峰校区','东6，124',0,'i十三',NULL,NULL,'1992-05-21','781967968','男');
INSERT INTO `qt_user` VALUES (376,'201008480125','郑敏敏 ','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:22:45',NULL,NULL,'523546','18767119398',NULL,NULL,NULL,'对外汉语对外汉语1001','屏峰校区','西15-505',0,'',NULL,NULL,'1991-11-08','425760599','女');
INSERT INTO `qt_user` VALUES (377,'201002040105','何旭东 ','0184b3bc28fb7608f4272f980824da88','2011-03-15 11:23:05',NULL,NULL,'514651','18767118214',NULL,NULL,NULL,'工业工程工业工程1001','朝晖校区','东6#113',0,'hxd2011',NULL,NULL,'1991-03-30','443777319','男');
INSERT INTO `qt_user` VALUES (378,'200903120212','金佳佳 ','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:23:31',NULL,NULL,'518704','15068881117',NULL,NULL,NULL,'自动化0902','屏峰校区','西六#525',1,'Iynn',NULL,NULL,'1990-12-16','1074633930','女');
INSERT INTO `qt_user` VALUES (379,'201002040122','俞仁强 ','e10adc3949ba59abbe56e057f20f883e','2011-03-15 11:23:48',NULL,NULL,'514689','18767118314',NULL,NULL,NULL,'工业工程1001','屏峰校区','东六114',1,'',NULL,NULL,'1991-08-03','385145075','男');
INSERT INTO `qt_user` VALUES (380,'201017510220','徐佳雯 ','b27bc487f246d9679cba72456a9b5dd3','2011-03-15 11:24:12',NULL,NULL,'528716','18767123697',NULL,NULL,NULL,'知识产权1002','屏峰校区','西四#403',0,'月满东楼',NULL,NULL,'1992-03-24','1453473759','女');
INSERT INTO `qt_user` VALUES (381,'yys','杨延圣','e10adc3949ba59abbe56e057f20f883e','2011-03-17 09:02:25',NULL,NULL,'667020','13456797020',NULL,NULL,NULL,'','屏峰校区','',0,'',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (382,'200701020224','杨健','afa2de5e709da20981213650d5309b00','2011-03-20 21:24:33',NULL,NULL,'','15924164345',NULL,NULL,NULL,'化工工艺化工工艺0702','朝晖校区','S4-118',0,'夜未央',NULL,NULL,'2011-11-08','584650829','男');
INSERT INTO `qt_user` VALUES (383,'200908480113','李嘉翼','e10adc3949ba59abbe56e057f20f883e','2011-03-26 11:14:16',NULL,NULL,'514378','13758236638 ',NULL,NULL,NULL,'对外汉语0901','屏峰校区','西六302',0,'玉簟青绫',NULL,NULL,'1991-08-28','382291437','-');
INSERT INTO `qt_user` VALUES (384,'201008560108','蒋雷亦','2e4e27cc57cf8d9d3cb15a913ea336c6','2011-03-26 11:14:50',NULL,NULL,'523588','18767119557',NULL,NULL,NULL,'播音与主持艺术播音1001班','屏峰校区','西15  508',1,'',NULL,NULL,'1990-11-08','976839328','女');
INSERT INTO `qt_user` VALUES (385,'200909300330','朱嘉莺','ee755bdd4adb8ac6270ef476fefab245','2011-03-26 11:15:41',NULL,NULL,'680117','15068870117',NULL,NULL,NULL,'英语英语0903','屏峰校区','西二',0,'',NULL,NULL,'1990-02-22','798807738','女');
INSERT INTO `qt_user` VALUES (386,'201008560124','张可欣','1ece1d3858ec95d8b2317c920fe7d5df','2011-03-26 11:22:39',NULL,NULL,'523606 ','18767119576 ',NULL,NULL,NULL,'播音与主持1001','屏峰校区','西6 119室',0,'',NULL,NULL,'1992-02-09','353280067 ','女');
INSERT INTO `qt_user` VALUES (387,'200926100306','黄杰','1bf8cdc05c23f75824d9074f3fd91fbc','2011-04-24 10:13:45',NULL,NULL,'526183','15068846835',NULL,NULL,NULL,'计自0901计自0901','屏峰校区','东14#502',0,'水月',NULL,NULL,'1990-10-12','1014429160','男');
INSERT INTO `qt_user` VALUES (388,'200909300522','杨檬莹','0945424ce19eaf4ab00b8c4641a7730b','2011-04-28 23:55:52',NULL,NULL,'518168','15068870921',NULL,NULL,NULL,'英语095','屏峰校区','西2',0,'我不二谁二',NULL,NULL,'1991-05-26','712051748','女');
INSERT INTO `qt_user` VALUES (389,'200801020705','高晨砾','e10adc3949ba59abbe56e057f20f883e','2011-08-29 16:15:32',NULL,NULL,'537689','15158132195',NULL,NULL,NULL,'化学工程与工艺（化工技术与贸易）化工外贸086','朝晖校区','梦2#304',0,'米丫头',NULL,NULL,'1989-09-18','542601407','女');
INSERT INTO `qt_user` VALUES (390,'201006250201','陈杨','fbd5dfc636c1a0b759b10954680bd447','2011-09-08 14:25:23',NULL,NULL,'522783','0',NULL,NULL,NULL,'食品科学与工程1002','朝晖校区','尚六102',0,'蓬松feeling',NULL,NULL,'1991-10-30','467635173','男');
INSERT INTO `qt_user` VALUES (391,'200926100530 ','周盛伟','e10adc3949ba59abbe56e057f20f883e','2011-09-18 18:49:43',NULL,NULL,'526278','15068808683 ',NULL,NULL,NULL,'计算机科学与技术0905','屏峰校区','东14#417',0,'恋风',NULL,NULL,'1991-10-24','290601953','男');
INSERT INTO `qt_user` VALUES (392,'201105910915','沈梦蝶','eba8dfdd8b9a44f0cda095b05a94874f','2011-09-22 22:53:48',NULL,NULL,'531589','18868813330',NULL,NULL,NULL,'工商管理1109','-','',0,'',NULL,NULL,'1992-11-07','983698650','女');
INSERT INTO `qt_user` VALUES (393,'201003440124','杨长雄','777cb1a373c04388f5595f3009c42109','2011-09-22 22:55:34',NULL,NULL,'519039','18767121848',NULL,NULL,NULL,'电子科学与技术1001','屏峰校区','东三304',0,'',NULL,NULL,'1992-08-17','827103281','男');
INSERT INTO `qt_user` VALUES (394,'201005910225','张悦','85df7464db7194f531ddb4746c078bcd','2011-09-22 22:56:08',NULL,NULL,'519817','18767124492',NULL,NULL,NULL,'工商管理1002','屏峰校区','东五',0,'击剑猫',NULL,NULL,'1991-09-16','850701383','女');
INSERT INTO `qt_user` VALUES (395,'201110800207','李晓雷','3bc7f199c407ea3a0dd56a868d8c677e','2011-09-22 22:59:55',NULL,NULL,'536073','18868815464',NULL,NULL,NULL,'物理2班','-','',0,'',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (396,'201107420218','叶焕','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:03:46',NULL,NULL,'532807','18868814316',NULL,NULL,NULL,'安全工程1102','屏峰校区','家和东苑6幢530',0,'',NULL,NULL,'1992-08-11','353309113','男');
INSERT INTO `qt_user` VALUES (398,'201103090125','余黎磊','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:07:09',NULL,NULL,'529456','18758255838',NULL,NULL,NULL,'电子信息工程1101','屏峰校区','ong',0,'',NULL,NULL,'1991-05-18','853589125','男');
INSERT INTO `qt_user` VALUES (399,'201103090122','杨尚星','1c9c4e17a0db082f336e9cd13c0b9105','2011-09-22 23:08:52',NULL,NULL,'529453','18758255838',NULL,NULL,NULL,'电子信息工程1101','屏峰校区','东18#316',0,'',NULL,NULL,'1991-05-18','853589125','男');
INSERT INTO `qt_user` VALUES (401,'111111111111','刘梦阳','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:14:33',NULL,NULL,'','18868815441',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (402,'21','吴昊','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:15:21',NULL,NULL,'','18868815477',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (403,'23','徐天宇','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:16:23',NULL,NULL,'','18758263825',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (404,'24','刘禹鸿','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:17:06',NULL,NULL,'','18758263497',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (405,'43','包颖波','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:17:44',NULL,NULL,'','18868815263',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (406,'234','唐渝蔚','e10adc3949ba59abbe56e057f20f883e','2011-09-22 23:18:25',NULL,NULL,'','18868814754',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (407,'201126680222','徐嘉义','dc483e80a7a0bd9ef71d8cf973673924','2011-09-23 21:16:19',NULL,NULL,'550472','-18868832095',NULL,NULL,NULL,'网络工程1102','屏峰校区','东11#617',0,'',NULL,NULL,'1992-04-07','923983799','女');
INSERT INTO `qt_user` VALUES (408,'201108280107','林俊','e10adc3949ba59abbe56e057f20f883e','2011-09-23 21:16:48',NULL,NULL,'','-',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (409,'201011290701','陈刚','e10adc3949ba59abbe56e057f20f883e','2011-09-23 21:17:10',NULL,NULL,'','-',NULL,NULL,NULL,'视觉传达1007','屏峰校区','东四#515',0,'',NULL,NULL,'1991-04-12','','男');
INSERT INTO `qt_user` VALUES (410,'201111430101','毕卉','be2fca7db04a7f29d262eaf0bc993fb8','2011-09-23 21:17:36',NULL,NULL,'536311','18868815559',NULL,NULL,NULL,'动画动画1101','屏峰校区','西十五204',0,'咪咪丶',NULL,NULL,'1993-02-16','423118557','女');
INSERT INTO `qt_user` VALUES (411,'201011290713','王佳慧','ab3bf522ac40fc7e379cfd1daae918ea','2011-09-23 21:18:06',NULL,NULL,'526576','-',NULL,NULL,NULL,'视传1007','屏峰校区','',0,'',NULL,NULL,'','273147395','女');
INSERT INTO `qt_user` VALUES (412,'201026811611','罗临风','e10adc3949ba59abbe56e057f20f883e','2011-09-23 21:18:24',NULL,NULL,'528138','-18767122886',NULL,NULL,NULL,'数字媒体技术1','屏峰校区','西13 202',0,'馨红妖瞳',NULL,NULL,'2011-07-28','406513102','男');
INSERT INTO `qt_user` VALUES (413,'201110790308','金潇','a022cbc59c067c9c6105bcf7908945d0','2011-09-25 15:39:36',NULL,NULL,'535769','18868815367',NULL,NULL,NULL,'数学类1103','屏峰校区','东17#108',0,'呦西',NULL,NULL,'1993-07-02','280329682','男');
INSERT INTO `qt_user` VALUES (414,'201110800115','刘梦阳','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:42:34',NULL,NULL,'536003','18868815441',NULL,NULL,NULL,'物理1','屏峰校区','东17-116',0,'骚扰我吧',NULL,NULL,'1993-01-06','596449804','男');
INSERT INTO `qt_user` VALUES (415,'201110800219','吴昊','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:43:22',NULL,NULL,'536127','18868815477',NULL,NULL,NULL,'物理2','屏峰校区','120',0,'顺便骚扰我吧',NULL,NULL,'1992-12-28','422599097','男');
INSERT INTO `qt_user` VALUES (416,'201103120223','徐天宇','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:44:15',NULL,NULL,'529680','18758263825',NULL,NULL,NULL,'自动化1102','屏峰校区','东18 501',0,'小feel',NULL,NULL,'1993-03-06','390868743','男');
INSERT INTO `qt_user` VALUES (417,'201103120215','刘禹鸿','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:45:53',NULL,NULL,'529671','18758263497',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (419,'201005190205','林容容','ab9605a433128f7a998ac91f7e369015','2011-09-25 15:46:20',NULL,NULL,'519516','18767123478',NULL,NULL,NULL,'国际经济与贸易国贸1002','屏峰校区','东五210',0,'林容',NULL,NULL,'1991-03-06','152234372','女');
INSERT INTO `qt_user` VALUES (420,'201105910715','陶佳杰','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:46:49',NULL,NULL,'531469','18868813253/531469',NULL,NULL,NULL,'工商管理1107','屏峰校区','西十五413',0,'梨雪漫倾',NULL,NULL,'1993-10-18','644386969','女');
INSERT INTO `qt_user` VALUES (421,'201109300601','包颖波','c1ae6056d71b1fb6f58b06955fa46a28','2011-09-25 15:47:09',NULL,NULL,'535487','18868815263',NULL,NULL,NULL,'英语1106','屏峰校区','西15#516',0,'小包纸',NULL,NULL,'1992-11-06','719648073','女');
INSERT INTO `qt_user` VALUES (422,'201104160226','郑宇俊','e29b064d7163806d6a53d381a5ce53c2','2011-09-25 15:47:46',NULL,NULL,'530059','18868812653',NULL,NULL,NULL,'土木02','屏峰校区','东六225',0,'',NULL,NULL,'8月18','124768134','-');
INSERT INTO `qt_user` VALUES (423,'201005910212','谭敏娜','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:47:57',NULL,NULL,'519803','18767124477',NULL,NULL,NULL,'工商管理工商管理1002班','屏峰校区','西15#311',0,'minnatan',NULL,NULL,'1992-07-29','1509681920','女');
INSERT INTO `qt_user` VALUES (424,'200910320127','张大庆','dec4f0aec7e144541b844ef8b0f016a3','2011-09-25 15:48:34',NULL,NULL,'517870','15068865627',NULL,NULL,NULL,'应用物理学应物0901（材料班）','屏峰校区','东1#522',0,'未竟',NULL,NULL,'1989-02-03','946247650','男');
INSERT INTO `qt_user` VALUES (425,'201108480115','唐瑜蔚','5a8afad8c7bba61552b85cbbc90db48a','2011-09-25 15:48:38',NULL,NULL,'534154','18868814754',NULL,NULL,NULL,'对外汉语1101','屏峰校区','东十一220',0,'小怿。',NULL,NULL,'1992-12-04','529949130','女');
INSERT INTO `qt_user` VALUES (426,'201126630214','刘凯','ddb0f2d4459ccaa91744862e923190b3','2011-09-25 15:48:40',NULL,NULL,'550165','18868831784',NULL,NULL,NULL,'软件工程1102','屏峰校区','东15  402',0,'lkason',NULL,NULL,'1993-02-25','506985755','男');
INSERT INTO `qt_user` VALUES (427,'201103120205','董烨林','1104959d53dc3b60f2d40cd4a47d79e7','2011-09-25 15:48:58',NULL,NULL,'529660','18758263250',NULL,NULL,NULL,'自动化1102','屏峰校区','18#410',0,'',NULL,NULL,'1993-07-28','470859302','男');
INSERT INTO `qt_user` VALUES (428,'201105650202','陈小飞','9c9da3e3d8a5a9a07487abd8d44aaff3','2011-09-25 15:49:19',NULL,NULL,'531716','18868813520',NULL,NULL,NULL,'金融1102','屏峰校区','西15',0,'灰来灰去',NULL,NULL,'1993-10-20','303167542','-');
INSERT INTO `qt_user` VALUES (429,'201107670130','叶婉雯','13d9a2e1c9d1c757f5c85653848c970b','2011-09-25 15:49:20',NULL,NULL,'533311','18868814440',NULL,NULL,NULL,'计算机科学与技术（师范）计师1101','屏峰校区','西15#112',0,'子丑寅卯',NULL,NULL,'1993-02-01','451823500','女');
INSERT INTO `qt_user` VALUES (430,'201118590116','林颖','74b9c19eec23940bcfdcb4599b2dfc55','2011-09-25 15:49:42',NULL,NULL,'538851','18868816417',NULL,NULL,NULL,'中药1101','屏峰校区','东11#515',0,'__暘子',NULL,NULL,'1993-07-31','382469021','女');
INSERT INTO `qt_user` VALUES (431,'201103440112','林琦','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:49:50',NULL,NULL,'529412','18758254590',NULL,NULL,NULL,'电子科学与技术01','屏峰校区','东苑18#302',0,'最爱小丫头',NULL,NULL,'1992-11-20','416713497','男');
INSERT INTO `qt_user` VALUES (432,'201103120219','王超','edc596996939005bd4a16492694d0b71','2011-09-25 15:50:02',NULL,NULL,'510086','18858121555',NULL,NULL,NULL,'自动化1102','屏峰校区','501',0,'201103120219',NULL,NULL,'农历11.29','996451072','男');
INSERT INTO `qt_user` VALUES (433,'201105910312','万佳丹','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:50:14',NULL,NULL,'531221','18868813072',NULL,NULL,NULL,'工商管理类1103','屏峰校区','西15楼407',0,'小丹',NULL,NULL,'1992-10-31','2272898956','女');
INSERT INTO `qt_user` VALUES (434,'201117330216','汤臣磊','474226dd88ca0bfdc301cedb19268891','2011-09-25 15:50:49',NULL,NULL,'536891','18868815961',NULL,NULL,NULL,'法学法学1102','屏峰校区','东18 513',0,'小骗子。',NULL,NULL,'1993-02-14','569577094','男');
INSERT INTO `qt_user` VALUES (436,'201110790224','章舒垚','2fa6672d908f70d85f35d44b0b93f04f','2011-09-25 15:51:25',NULL,NULL,'535741','18868815354',NULL,NULL,NULL,'应用数学1102','屏峰校区','西15_514',0,'毅阁007',NULL,NULL,'1993 8 13','782399029','女');
INSERT INTO `qt_user` VALUES (437,'201103120208','胡大卫','90543149381688ecae3b56fd685bcd6f','2011-09-25 15:51:31',NULL,NULL,'529664','18758263419',NULL,NULL,NULL,'自动化1102','屏峰校区','东18 410',0,'胡大卫',NULL,NULL,'1992-08-06','510999523','男');
INSERT INTO `qt_user` VALUES (438,'201002070119','吴凯伟','cefca82a4d70d5e1d180ea3fbb8c756c','2011-09-25 15:52:10',NULL,NULL,'515147','18767118764',NULL,NULL,NULL,'机械工程及其自动化机自1001','朝晖校区','尚九603#',0,'wuwufive',NULL,NULL,'1992-05-12','379312212','男');
INSERT INTO `qt_user` VALUES (439,'201017510223','徐王燊','b71522ab154c957a048efc01c5a8507a','2011-09-25 15:52:14',NULL,NULL,'526932','18767121178',NULL,NULL,NULL,'知识产权知识产权1002','屏峰校区','东四 304',0,'紫外线',NULL,NULL,'1992-10-23','907886915','男');
INSERT INTO `qt_user` VALUES (440,'201124450213','马建菲','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:52:46',NULL,NULL,'539511','18868816623',NULL,NULL,NULL,'1102','屏峰校区','西15    106',0,'黑夜の星星',NULL,NULL,'1992-10-04','429827793','女');
INSERT INTO `qt_user` VALUES (441,'201001390705','黄柯彬','2022e1c2f72552d3e7181414010b1f92','2011-09-25 15:52:59',NULL,NULL,'513440','18767116854',NULL,NULL,NULL,'应用化学应用电化学1001班','屏峰校区','S4#105',0,'onlywait',NULL,NULL,'1991-05-06','414797695','男');
INSERT INTO `qt_user` VALUES (442,'201108280106','梁洁颖','186a608855db7acfcc6c86aaf81d9c7a','2011-09-25 15:53:10',NULL,NULL,'534545','18868814884',NULL,NULL,NULL,'广告1101','屏峰校区','东11的323',0,'66',NULL,NULL,'2011-08-27','471318332','女');
INSERT INTO `qt_user` VALUES (443,'201124450204','方利苹','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:53:25',NULL,NULL,'539485','18868816612',NULL,NULL,NULL,'暂无健行理工二班','屏峰校区','西15#124',0,'放假了',NULL,NULL,'1993-02-28','951952731','女');
INSERT INTO `qt_user` VALUES (444,'201102060101','柴煜彬','877ddce69ebc5daa23af252fc4bbf52a','2011-09-25 15:54:30',NULL,NULL,'527787','18758233236',NULL,NULL,NULL,'过程装备与控制工程1101','屏峰校区','东17#320',0,'zx丶柴',NULL,NULL,'1993-07-31','765505482','男');
INSERT INTO `qt_user` VALUES (445,'201001390619','谢琴玲','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:54:36',NULL,NULL,'513372','18767116774',NULL,NULL,NULL,'化工精细化工1003','朝晖校区','尚三1057',0,'走。',NULL,NULL,'1991-11-23','1203507804','女');
INSERT INTO `qt_user` VALUES (446,'201101391422','张彬','5138dafb6ea3444d0a7e2b29f69998a2','2011-09-25 15:54:42',NULL,NULL,'524284','18758226393',NULL,NULL,NULL,'化学工程与材料化材1114班','屏峰校区','东6   206',1,'201101391422',NULL,NULL,'1992-10-23','863662847','男');
INSERT INTO `qt_user` VALUES (447,'201110800101','陈肖朴','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:55:34',NULL,NULL,'535969','18868815424',NULL,NULL,NULL,'物理系1101','屏峰校区','东17 114',0,'',NULL,NULL,'1993-02-23','425086181','男');
INSERT INTO `qt_user` VALUES (448,'201102750101','陈功超','bd26bf6f9633a192384d794ec0a4c709','2011-09-25 15:55:38',NULL,NULL,'526793','18758230845',NULL,NULL,NULL,'車輛工程1101','屏峰校区','東17 411',0,'',NULL,NULL,'1992-10-09','1522650806','男');
INSERT INTO `qt_user` VALUES (449,'201001390608','韩梦娜','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:55:40',NULL,NULL,'513310','18767116740',NULL,NULL,NULL,'','朝晖校区','',0,'lazy',NULL,NULL,'','506706249','女');
INSERT INTO `qt_user` VALUES (450,'201126630108','单栋','aaddad56dd284264f1aa8f2db8462f64','2011-09-25 15:55:57',NULL,NULL,'550123','18868831742',NULL,NULL,NULL,'实验班实验班','屏峰校区','东15 307#',0,'sd542927172',NULL,NULL,'1992-06-05','542927172','男');
INSERT INTO `qt_user` VALUES (451,'201109300617','汪祉原','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:56:05',NULL,NULL,'535541','18868815281',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (452,'201103120328','周栗刚','2f0ea30ed327664e7df3454a76abd8cd','2011-09-25 15:56:17',NULL,NULL,'529719','18758265145',NULL,NULL,NULL,'自动化1103','屏峰校区','东18#517',0,'',NULL,NULL,'1993-06-09','1015261475','男');
INSERT INTO `qt_user` VALUES (453,'201010790130','张翼','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:56:50',NULL,NULL,'528741','18767123729',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (454,'200901030101','陈其国','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:56:58',NULL,NULL,'517771','',NULL,NULL,NULL,'应用电化学','朝晖校区','尚德2',0,'歹紫格',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (455,'201027920409','贾丹','e46c5ed914d45c4cc2e86846b6e795f7','2011-09-25 15:57:17',NULL,NULL,'528333','18767123125',NULL,NULL,NULL,'公共管理类公管1004班','屏峰校区','西3,310',0,'在水',NULL,NULL,'1992-02-19','1143284692','女');
INSERT INTO `qt_user` VALUES (456,'201101391018','韦晓洁','296eac8afba73c3a8489c8bd5f09c86b','2011-09-25 15:57:28',NULL,NULL,'522967','18758221570',NULL,NULL,NULL,'化学工程与材料类10','屏峰校区','家和东苑11号526',0,'糖葫芦',NULL,NULL,'1992-03-05','1181060063','女');
INSERT INTO `qt_user` VALUES (457,'201026811609','李涛涛','2ae5891468287526b7f0e977d9d0e3ec','2011-09-25 15:57:29',NULL,NULL,'528136','18767122883',NULL,NULL,NULL,'计算机1016','屏峰校区','西13#202',0,'封天神奇',NULL,NULL,'1993-01-21','1539453195','男');
INSERT INTO `qt_user` VALUES (458,'200906230205','林梦雨','e0adb56994ea2af393ad34f47bd01ede','2011-09-25 15:57:44',NULL,NULL,'516255','15068823891',NULL,NULL,NULL,'','朝晖校区','',0,'linmy0577',NULL,NULL,'','404139105','女');
INSERT INTO `qt_user` VALUES (459,'201026811726','叶斌芳','7539dd941b82d7b486ba2d6bf977ccc6','2011-09-25 15:57:50',NULL,NULL,'528192','18767122952',NULL,NULL,NULL,'计算机科学与技术1002班','屏峰校区','西13#218',0,'ybf1220',NULL,NULL,'1990-12-20','437830015','男');
INSERT INTO `qt_user` VALUES (461,'201026811009','李方圆','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:58:33',NULL,NULL,'527933','18767122629',NULL,NULL,NULL,'软件工程软工1003','屏峰校区','西13#412',0,'lifangyuanaa',NULL,NULL,'1990-07-06','591345687','男');
INSERT INTO `qt_user` VALUES (462,'201107420217','姚俊杰','961766b4f4f5491708445aaf2cfe31b1','2011-09-25 15:58:59',NULL,NULL,'532805','18868814315',NULL,NULL,NULL,'安全工程1102','屏峰校区','东六530',0,'236961',NULL,NULL,'1992-07-17','294028083','男');
INSERT INTO `qt_user` VALUES (463,'201026811217','孙佳宁','a3c91819b02004c901e9b0f9bde4570f','2011-09-25 15:59:07',NULL,NULL,'528003','',NULL,NULL,NULL,'','屏峰校区','',0,'',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (464,'201108270122','魏佳丽','81e273b2d1b1be788eac4039ac8d318c','2011-09-25 15:59:18',NULL,NULL,'534347','18868814831',NULL,NULL,NULL,'广电1101','屏峰校区','东11#305',0,'夏日流苏',NULL,NULL,'1993-05-12','465065596','女');
INSERT INTO `qt_user` VALUES (465,'201026810911','罗白云','e3e7b746a988b833782efb5eb657465f','2011-09-25 15:59:29',NULL,NULL,'527901','18767122593',NULL,NULL,NULL,'软件工程计算机1009','屏峰校区','西10#107',0,'-独木舟-',NULL,NULL,'','845431040','女');
INSERT INTO `qt_user` VALUES (466,'201105910125','叶君','c8837b23ff8aaa8a2dde915473ce0991','2011-09-25 15:59:55',NULL,NULL,'531150','18868813001',NULL,NULL,NULL,'工商管理1101','屏峰校区','西15    405',0,'Aine',NULL,NULL,'1992-08-20','1262595481','女');
INSERT INTO `qt_user` VALUES (467,'201008580102','方俊滋','e10adc3949ba59abbe56e057f20f883e','2011-09-25 15:59:58',NULL,NULL,'523642','18767119620',NULL,NULL,NULL,'中文1001','屏峰校区','西六306',0,'夏芊眠',NULL,NULL,'1991-10-04','1468164238','女');
INSERT INTO `qt_user` VALUES (468,'201026810829','张晓瑶','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:00:11',NULL,NULL,'527887','18767122579',NULL,NULL,NULL,'计算机1008班','屏峰校区','西10 115',0,'闷油瓶小哥',NULL,NULL,'1992-01-07','1354097881','女');
INSERT INTO `qt_user` VALUES (469,'201008580215','温露露','cb68edfe92c56b4f809b2956a72cf58f','2011-09-25 16:00:37',NULL,NULL,'','523687',NULL,NULL,NULL,'中文1002','屏峰校区','322',0,'',NULL,NULL,'','664232521','-');
INSERT INTO `qt_user` VALUES (470,'201102070708','古宝胜','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:01:03',NULL,NULL,'529264','18758251057',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (471,'201108270205','方灵丹','0c9ec7767c1d38ef5e11784f288614b9','2011-09-25 16:01:14',NULL,NULL,'534409','18868814847',NULL,NULL,NULL,'广播电视新闻1102','屏峰校区','东11，325',0,'fabled2011',NULL,NULL,'1992-08-21','375186503','女');
INSERT INTO `qt_user` VALUES (472,'200904150320','翁鲁丹','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:01:45',NULL,NULL,'515530','',NULL,NULL,NULL,'建筑0903','朝晖校区','尚八#205',0,'苍澜',NULL,NULL,'','1025447394','女');
INSERT INTO `qt_user` VALUES (473,'201008580220','徐丽娜','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:01:54',NULL,NULL,'523693','18767119687',NULL,NULL,NULL,'汉语言文学中文1002班','屏峰校区','西6#322室',0,'栗子',NULL,NULL,'10.7','397476032','女');
INSERT INTO `qt_user` VALUES (474,'201108270218','宋明玥','eb33480e65e58d2f6e14a7282fa22d75','2011-09-25 16:02:52',NULL,NULL,'534461','18868814862',NULL,NULL,NULL,'广电1102班','屏峰校区','东11#324',0,'半纸听南',NULL,NULL,'1993-05-06','942029165','女');
INSERT INTO `qt_user` VALUES (475,'201008480112','李琴','ca45b15bcfeedf9085e134d4fe641cfd','2011-09-25 16:03:38',NULL,NULL,'523529','18767119382',NULL,NULL,NULL,'对外汉语1班','屏峰校区','西八',0,'',NULL,NULL,'1992-01-13','542548084','女');
INSERT INTO `qt_user` VALUES (476,'201117330201','边倩','653027816458c4e24f16d25126213ad2','2011-09-25 16:04:23',NULL,NULL,'536849','18868815943',NULL,NULL,NULL,'法学1102','屏峰校区','西十五522',0,'237523',NULL,NULL,'1992-12-11','561188658','女');
INSERT INTO `qt_user` VALUES (477,'201109300214','邵雯婷','3b1f27e009a96ab6122d2c5b34ca149c','2011-09-25 16:05:12',NULL,NULL,'535227','535227',NULL,NULL,NULL,'英语英语1102班','屏峰校区','西15区624',0,'',NULL,NULL,'1992-11-11','1464119658','-');
INSERT INTO `qt_user` VALUES (478,'201126630411','林杰','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:05:45',NULL,NULL,'550226','18868831849',NULL,NULL,NULL,'软件工程1104班','屏峰校区','东#405',0,'暴君',NULL,NULL,'1992-10-13','510604243','男');
INSERT INTO `qt_user` VALUES (479,'201102070126','郑晨亮','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:06:18',NULL,NULL,'528978','',NULL,NULL,NULL,'机械自动化1101','屏峰校区','4309',0,'阳关辰',NULL,NULL,'1993-08-09','775278882','男');
INSERT INTO `qt_user` VALUES (480,'201118360415','林玲','2713d81ebff164dcd5442b5834318fc5','2011-09-25 16:07:00',NULL,NULL,'538745','18868816384',NULL,NULL,NULL,'生物制药1102','屏峰校区','512',0,'木。木。',NULL,NULL,'1993-01-05','498392550','女');
INSERT INTO `qt_user` VALUES (481,'201110800104','高璇','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:07:46',NULL,NULL,'535982','535982',NULL,NULL,NULL,'物理1101','屏峰校区','西15 515',0,'gaoxuan',NULL,NULL,'1992-07-13','326776804','女');
INSERT INTO `qt_user` VALUES (482,'201110790207','金理宝','e9b9790731a6436b266bd150035b27ba','2011-09-25 16:30:31',NULL,NULL,'535673','18868815332',NULL,NULL,NULL,'数学类1102','屏峰校区','家和东苑17# 105',0,'M.R.',NULL,NULL,'1993-03-17','630894176','男');
INSERT INTO `qt_user` VALUES (483,'201110790316','王福东','d87bf4c85cb0e9760cd54a48513ba303','2011-09-25 16:37:14',NULL,NULL,'535801','18868815376',NULL,NULL,NULL,'数学3','屏峰校区','东17-109',0,'232641',NULL,NULL,'1993-03-06','524100457','男');
INSERT INTO `qt_user` VALUES (484,'20102681136','叶斌芳','7539dd941b82d7b486ba2d6bf977ccc6','2011-09-25 16:38:50',NULL,NULL,'528192','18767122952',NULL,NULL,NULL,'计算机科学1002','屏峰校区','西13幢218',0,'ybf1220',NULL,NULL,'1990-12-20','437830015','男');
INSERT INTO `qt_user` VALUES (486,'201126100417','沈哲斌','d17db008eac85f8fa546d9d79ec459d6','2011-09-25 16:41:49',NULL,NULL,'550056','18868831675',NULL,NULL,NULL,'计算机科学与技术1104','屏峰校区','东15#310',0,'一一；',NULL,NULL,'1992-08-27','445935348','男');
INSERT INTO `qt_user` VALUES (487,'201126630230','周云阁','41112dd74e5ac7316e68c0492e1784c5','2011-09-25 16:48:53',NULL,NULL,'550182','18868831803',NULL,NULL,NULL,'软件工程1102','屏峰校区','东15#426',1,'',NULL,NULL,'1992-06-15','820293829','男');
INSERT INTO `qt_user` VALUES (488,'20102681125','俞鹤程','e10adc3949ba59abbe56e057f20f883e','2011-09-25 16:50:11',NULL,NULL,'528013 ','18767122735',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (489,'201126680120','史慧波','c7b2a274d2bb8fe225855a7ab12741ef','2011-09-25 16:50:52',NULL,NULL,'550437','18868832061',NULL,NULL,NULL,'网络工程1101班','屏峰校区','东15#509',0,'天空下的云',NULL,NULL,'1993-06-10','799543617','男');
INSERT INTO `qt_user` VALUES (490,'201103120306','戴玮辰','f2cc8cf3c78a73a84dfa5581ed28aa41','2011-09-25 17:01:50',NULL,NULL,'540155','18868832985',NULL,NULL,NULL,'自动化1103','屏峰校区','东18 502',0,'',NULL,NULL,'1992-05-30','460358410','男');
INSERT INTO `qt_user` VALUES (491,'201136630701','蔡仕林','e10adc3949ba59abbe56e057f20f883e','2011-09-25 17:03:45',NULL,NULL,'','550313',NULL,NULL,NULL,'','-','',0,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (493,'201126100218','邵圣骋','80131e681a3cb1d1382a7ff47243f012','2011-09-25 17:07:57',NULL,NULL,'539928','18368816741',NULL,NULL,NULL,'计算机科学与技术计科1102','屏峰校区','东15#302',0,'黯淡星骋',NULL,NULL,'1992-03-30','136553869','男');
INSERT INTO `qt_user` VALUES (495,'200926100528','赵佳晖','1c625043d9e1edea85353e8d545c1b01','2011-09-26 23:26:34',NULL,NULL,'526275','15068808572',NULL,NULL,NULL,'计算机科学与技术计算机0905','屏峰校区','东14#417',0,'半夜学鬼叫',NULL,NULL,'1991-01-28','373415312','男');
INSERT INTO `qt_user` VALUES (497,'201126680127','郑毓波 ','463236a9ccecf2ab46f5c5f54ba4f1c4','2011-09-27 16:56:05',NULL,NULL,'550444','18868832069',NULL,NULL,NULL,'计算机实验班1101','屏峰校区','东15 320#',0,'',NULL,NULL,'1992-11-16','64046876','男');
INSERT INTO `qt_user` VALUES (500,'200926630722','姚运恒 ','4d42945f0eb3e8d284923f0b79187c2d','2011-09-27 17:05:57',NULL,NULL,'516132','15068822853',NULL,NULL,NULL,'软件工程软件工程0907','屏峰校区','东14-307#',0,'yyuboo',NULL,NULL,'1990-08-11','359788955','男');
INSERT INTO `qt_user` VALUES (501,'2111107033','孙健','b5d6653d83efdbdd4fa729e7d76a4199','2011-09-30 00:24:03',NULL,NULL,'','13625816334',NULL,NULL,NULL,'药物化学药物化学','朝晖校区','梦三211',0,'冷夜',NULL,NULL,'1988-07-12','605562919','男');
INSERT INTO `qt_user` VALUES (502,'201110800118','沈梦佳','ad87c2468d7b7227d83505a6eae5f667','2011-10-01 19:40:33',NULL,NULL,'536011','18868815445',NULL,NULL,NULL,'物理一班','屏峰校区','西15#516',0,'',NULL,NULL,'1992-07-15','617861584','女');
INSERT INTO `qt_user` VALUES (503,'201026811227','张宝文','526d25da2ae67ca43dc7faea41109a9c','2011-10-06 20:57:07',NULL,NULL,'528015','18767122737',NULL,NULL,NULL,'软件工程1012','屏峰校区','西13-302',0,'飞云零狼',NULL,NULL,'1992-04-06','348692659','男');
INSERT INTO `qt_user` VALUES (504,'200926630303','葛春霞','8d864b21a3632461494b734b73b31903','2011-10-06 23:19:08',NULL,NULL,'516961','15068821380',NULL,NULL,NULL,'软件工程软件工程0903','屏峰校区','西十#409',0,'crystal1380',NULL,NULL,'1990-06-07','649028270','女');
INSERT INTO `qt_user` VALUES (505,'201126630526','张帧','449ee88c74d7c0fd6ab4df902fba0a3f','2011-10-06 23:26:43',NULL,NULL,'550275','18868831899',NULL,NULL,NULL,'软件工程1105','屏峰校区','东15 419',0,'a370636536',NULL,NULL,'1992-10-19','370636536','男');
INSERT INTO `qt_user` VALUES (506,'201126630428','张添添','8eb4434485a7465d5a2f3fc103aac7c7','2011-10-06 23:42:17',NULL,NULL,'550244','18868831867',NULL,NULL,NULL,'软件工程1104班','屏峰校区','609',0,'望闻水蓝',NULL,NULL,'1992-11-29','396418062','女');
INSERT INTO `qt_user` VALUES (507,'201026810727','余秋婷','e10adc3949ba59abbe56e057f20f883e','2011-10-06 23:48:55',NULL,NULL,'527850','000000',NULL,NULL,NULL,'计算机实验班1001','屏峰校区','西10#522',0,'阿秋',NULL,NULL,'','1641263445','女');
INSERT INTO `qt_user` VALUES (509,'200902070820','翁水才','e10adc3949ba59abbe56e057f20f883e','2011-10-09 18:31:32',NULL,NULL,'526039','15068845276 ',NULL,NULL,NULL,'机械工程及自动化0908','朝晖校区','综合433',0,'',NULL,NULL,'1991-06-29','309074911','男');
INSERT INTO `qt_user` VALUES (510,'200902070819','王卓奇 ','e10adc3949ba59abbe56e057f20f883e','2011-10-09 18:32:07',NULL,NULL,'526018','15068844901 ',NULL,NULL,NULL,'机械工程及自动化0908','朝晖校区','综合433',0,'',NULL,NULL,'1991-02-09','184475460','男');
INSERT INTO `qt_user` VALUES (511,'200902070827','郑军 ','e10adc3949ba59abbe56e057f20f883e','2011-10-09 18:34:51',NULL,NULL,'526038','15068845267',NULL,NULL,NULL,'机械工程及自动化0908','朝晖校区','综合433',0,'',NULL,NULL,'1990-09-21','641082476','男');
INSERT INTO `qt_user` VALUES (512,'201026811225','俞鹤程 ','24b5aa9408da4df904252c918fc6c9be','2011-10-13 18:00:51',NULL,NULL,'528013','18767122735',NULL,NULL,NULL,' 软件工程06','屏峰校区','西十413',0,'',NULL,NULL,'1991-10-05','782943152','女');
INSERT INTO `qt_user` VALUES (513,'201126630701','蔡仕林 ','a01957ea64529ac2dc3e09698066ad77','2011-10-15 18:23:38',NULL,NULL,'550313','18868831937',NULL,NULL,NULL,'软件工程软工1107','屏峰校区','东15 418',0,'',NULL,NULL,'2011-06-30','986905763','男');
INSERT INTO `qt_user` VALUES (514,'201101391421','徐杨阳','e10adc3949ba59abbe56e057f20f883e','2011-10-18 17:13:05',NULL,NULL,'524273','18758226331',NULL,NULL,NULL,'化材1114班','屏峰校区','东六206',0,'Tady、',NULL,NULL,'1993-10-07','421741657','男');
INSERT INTO `qt_user` VALUES (515,'200926680217','王家栋','ee75a61089196f8d4ba234deba07979e','2011-10-18 18:10:45',NULL,NULL,'517153','15068851025',NULL,NULL,NULL,'网络工程0902','屏峰校区','东14#104',0,'desiveo',NULL,NULL,'1990-09-28','419290303','男');
INSERT INTO `qt_user` VALUES (516,'200910310202','陈涌','e10adc3949ba59abbe56e057f20f883e','2011-10-19 16:51:07',NULL,NULL,'517355','517355',NULL,NULL,NULL,'信息与计算科学信计0902','屏峰校区','',0,'',NULL,NULL,'','','男');
INSERT INTO `qt_user` VALUES (517,'200903090102','陈根荣','513955b473c1fc8f6d1d451622c6545a','2011-10-30 00:01:49',NULL,NULL,'514165','13758228735',NULL,NULL,NULL,'电子信息工程0901','屏峰校区','东2#301',0,'幻城',NULL,NULL,'2011-10-26','651197738','男');
INSERT INTO `qt_user` VALUES (518,'201103120206','顾超飞','24dcc9295447d79c11eece58140a0418','2011-10-30 13:36:03',NULL,NULL,'529661','18758263332',NULL,NULL,NULL,'自动化1102','屏峰校区','东18 410',0,'',NULL,NULL,'1993-01-05','852582592','男');
INSERT INTO `qt_user` VALUES (519,'201103120209','黄冠','64f80eebd5468c64d4a1b3a099f2175f','2011-10-30 13:41:23',NULL,NULL,'529665','18758263430',NULL,NULL,NULL,'自动化1102','屏峰校区','东18 410',0,'',NULL,NULL,'1993-02-11','501349526','男');
INSERT INTO `qt_user` VALUES (520,'201103120204','丁益','e10adc3949ba59abbe56e057f20f883e','2011-10-30 23:34:05',NULL,NULL,'','18758263246',NULL,NULL,NULL,'','-','',1,'',NULL,NULL,'','','-');
INSERT INTO `qt_user` VALUES (521,'201001390501','卞惟环','63d33a02572ae459776aacccd9d2ff95','2011-11-04 23:38:46',NULL,NULL,'513213','18767116540',NULL,NULL,NULL,'金属材料材料1005','朝晖校区','尚4#121',0,'青墨语',NULL,NULL,'1992-07-24','307395146','男');
/*!40000 ALTER TABLE `qt_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table qt_userrole
#

CREATE TABLE `qt_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL COMMENT '角色ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

#
# Dumping data for table qt_userrole
#
LOCK TABLES `qt_userrole` WRITE;
/*!40000 ALTER TABLE `qt_userrole` DISABLE KEYS */;

INSERT INTO `qt_userrole` VALUES (14,1,2);
INSERT INTO `qt_userrole` VALUES (15,6,3);
/*!40000 ALTER TABLE `qt_userrole` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
