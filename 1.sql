/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.27 : Database - ringemployment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ringemployment` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ringemployment`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminaccount` varchar(255) DEFAULT NULL,
  `adminpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`adminaccount`,`adminpassword`) values (1,'123@admin.com','a123456'),(3,'456@admin.cn','a123456');

/*Table structure for table `companyaandp` */

DROP TABLE IF EXISTS `companyaandp`;

CREATE TABLE `companyaandp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `infoid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `companyaandp` */

insert  into `companyaandp`(`id`,`account`,`password`,`infoid`) values (1,'1@qq.com','a123456','1'),(2,'2@qq.com','a123456','2'),(3,'3@qq.com','a123456','3'),(4,'4@qq.com','a123456','4'),(5,'5@qq.com','a123456','5'),(6,'6@qq.com','a123456','6'),(7,'7@qq.com','a123456','7'),(30,'test@1.c','a23465','999'),(31,'test@1.c','a23465','999'),(32,'test@1.c','a23465','999'),(33,'test@1.c','a23465','999'),(34,'test@1.c','a23465','999'),(35,'test@1.c','a23465','999'),(36,'test@1.c','a23465','999'),(37,'test@1.c','a23465','999'),(38,'test@1.c','a23465','999'),(39,'test@1.c','a23465','999'),(40,'test@1.c','a23465','999'),(41,'test@1.c','a23465','999'),(42,'test@1.c','a23465','999'),(43,'test@1.c','a23465','999'),(44,'test@1.c','a23465','999'),(45,'test@1.c','a23465','999'),(46,'test@1.c','a23465','999'),(47,'test@1.c','a23465','999'),(48,'test@1.c','a23465','999'),(49,'test@1.c','a23465','999'),(50,'test@1.c','a23465','999'),(51,'test@1.c','a23465','999'),(52,'test@1.c','a23465','999'),(53,'test@1.c','a23465','999'),(54,'test@1.c','a23465','999'),(55,'test@1.c','a23465','999'),(56,'test@1.c','a23465','999'),(57,'test@1.c','a23465','999'),(58,'test@1.c','99999999','999'),(60,'a132456@aa.c','a123456','28'),(61,'10@qq.com','a123456','29'),(62,'11@qq.com','a123456','30');

/*Table structure for table `companyinfo` */

DROP TABLE IF EXISTS `companyinfo`;

CREATE TABLE `companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `legalrep` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `incortime` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `officeaddress` varchar(255) DEFAULT NULL,
  `officialWebsite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `companyinfo` */

insert  into `companyinfo`(`id`,`img`,`companyName`,`legalrep`,`capital`,`incortime`,`phone`,`email`,`officeaddress`,`officialWebsite`) values (1,'natgeo_20210409.jpg','华为上海','1','60000000000','2013-06','18565454564','1@qq.com','上海市辖区黄浦区','baidu.com'),(2,'canamoffroad_20210320.jpg','华为兰州','2','90000000000','2021','15996354561','2@qq.com','甘肃兰州市城关区','baidu.com'),(3,'logo.png','华为山东','123','60000000000','1998','15998766541','3@qq.com','山东荷泽市曹　县','baidu.com'),(4,'logo.png','华为曹县','123','60000000000','1998','15911111111','5@qq.com','山东荷泽市曹　县','baidu.com'),(6,'logo.png','华为上海','564','60000000000','1998','15996322323','4@qq.com','上海市辖区黄浦区','baidu.com'),(7,'techno_loverdj001_20201117.jpg','苹果','45','600000000','1998','15996966666','6@qq.com','西藏阿里地区日土县','02.com'),(28,'techno_loverdj001_20201117.jpg','苹果','安安',NULL,NULL,'15998366666','a132456@aa.c','中国',NULL),(29,'canamoffroad_20201222.jpg','三毛集团','阿道夫','50000','2021','15998753333','10@qq.com','河北邯郸市市辖区','baidu.com'),(30,NULL,'未命名','啊大师傅',NULL,NULL,'15996963333','11@qq.com','中国',NULL);

/*Table structure for table `interactive` */

DROP TABLE IF EXISTS `interactive`;

CREATE TABLE `interactive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

/*Data for the table `interactive` */

insert  into `interactive`(`id`,`com_id`,`user_id`,`content`) values (41,2,3,'123'),(42,2,3,'9999'),(44,2,3,'13123'),(45,2,3,'666'),(46,3,3,'123'),(47,3,3,'aa'),(48,61,95,'来我公司'),(49,1,3,'123'),(50,1,3,'341'),(51,1,3,'123456'),(52,3,3,'asfd'),(53,1,3,'asdfasdf'),(54,3,NULL,'000'),(55,3,NULL,'0000'),(56,2,51,'我想秃'),(57,2,51,'想着把');

/*Table structure for table `messagefound` */

DROP TABLE IF EXISTS `messagefound`;

CREATE TABLE `messagefound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `messagefound` */

insert  into `messagefound`(`id`,`com_id`,`u_id`,`name`,`content`,`time`) values (12,NULL,3,'姓名3','每天多一点点的努力，不为别的，只为了日后能够多一些选择，选择云卷云舒的小日子，选择自己喜欢的人。','2021-06-13'),(13,NULL,3,'姓名3','不必太纠结于当下，也不必太忧虑未来，当你经历过一些事情的时候，眼前的风景已经和从前不一样了。','2021-06-13'),(14,NULL,3,'姓名3','道理我都懂，但该怨的还是会怨，该骂的还是会骂，该哭的也还是会哭，毕竟心里的难受不是道理所能释怀的。','2021-06-13'),(15,NULL,3,'姓名3','曾经拥有的，不要忘记；已经得到的，更要珍惜；属于自己的，不能放弃；已经失去的，留作回忆。','2021-06-13'),(16,NULL,3,'姓名3','最终我们都将学会，与他人交往，最重要的不是甜言蜜语，不是容貌金钱，而是你和他对于这个世界的看法，对人生的态度是否一致。','2021-06-13'),(18,2,NULL,'华为兰州','最尴尬的莫过于高估自己在别人心里的位置其实你明明知道最卑贱不过感情最凉不过人心。','2021-06-13'),(19,NULL,3,'姓名3','messagefound','2021-06-13'),(20,NULL,3,'姓名3','messagefound','2021-06-13'),(21,NULL,3,'姓名3','messagefound','2021-06-13'),(22,NULL,3,'姓名3','messagefound','2021-06-13'),(23,NULL,3,'姓名3','messagefound','2021-06-13'),(25,NULL,3,'姓名3','最尴尬的莫过于高估自己在别人心里的位置其实你明明知道最卑贱不过感情最凉不过人心。','2021-06-19'),(26,NULL,3,'姓名3','曾经拥有的，不要忘记；已经得到的，更要珍惜；属于自己的，不能放弃；已经失去的，留作回忆。','2021-06-19'),(27,61,NULL,'三毛集团','每天多一点点的努力，不为别的，只为了日后能够多一些选择，选择云卷云舒的小日子，选择自己喜欢的人。','2021-06-19'),(28,NULL,3,'姓名3','每天多一点点的努力，不为别的，只为了日后能够多一些选择，选择云卷云舒的小日子，选择自己喜欢的人。','2021-06-19'),(29,1,NULL,'华为上海','不必太纠结于当下，也不必太忧虑未来，当你经历过一些事情的时候，眼前的风景已经和从前不一样了。','2021-06-21'),(30,1,NULL,'华为上海','道理我都懂，但该怨的还是会怨，该骂的还是会骂，该哭的也还是会哭，毕竟心里的难受不是道理所能释怀的。','2021-06-21'),(31,1,NULL,'华为上海','123','2021-09-03'),(32,NULL,3,'姓名3','vdsfafdasdf','2021-11-27'),(33,NULL,52,'未命名','asdfasdf','2022-02-04'),(34,NULL,53,'未命名','adfasdf','2022-04-12');

/*Table structure for table `real_timeinfo` */

DROP TABLE IF EXISTS `real_timeinfo`;

CREATE TABLE `real_timeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `real_timeinfo` */

insert  into `real_timeinfo`(`id`,`title`,`content`,`img`,`time`) values (1,'热烈欢迎华为入驻','热烈欢迎华为公司入驻我网站，华为手机  华为消费者业务产品全面覆盖手机、移动宽带终端、终端云等，凭借自身的全球化网络优势、全球化运营能力，致力于将最新的科技带给消费者，让世界各地享受到技术进步的喜悦，以行践言，实现梦想。','bg1.png','2021-5-31'),(2,'热烈欢迎华为入驻','热烈欢迎华为公司入驻我网站，华为手机  华为消费者业务产品全面覆盖手机、移动宽带终端、终端云等，凭借自身的全球化网络优势、全球化运营能力，致力于将最新的科技带给消费者，让世界各地享受到技术进步的喜悦，以行践言，实现梦想。','bg1.png','2021-5-31'),(3,'热烈欢迎华为入驻','热烈欢迎华为公司入驻我网站，华为手机  华为消费者业务产品全面覆盖手机、移动宽带终端、终端云等，凭借自身的全球化网络优势、全球化运营能力，致力于将最新的科技带给消费者，让世界各地享受到技术进步的喜悦，以行践言，实现梦想。','bg1.png','2021-5-31'),(4,'热烈欢迎华为入驻','热烈欢迎华为公司入驻我网站，华为手机  华为消费者业务产品全面覆盖手机、移动宽带终端、终端云等，凭借自身的全球化网络优势、全球化运营能力，致力于将最新的科技带给消费者，让世界各地享受到技术进步的喜悦，以行践言，实现梦想。','bg1.png','2021-5-31'),(5,'热烈欢迎华为入驻','热烈欢迎华为公司入驻我网站，华为手机  华为消费者业务产品全面覆盖手机、移动宽带终端、终端云等，凭借自身的全球化网络优势、全球化运营能力，致力于将最新的科技带给消费者，让世界各地享受到技术进步的喜悦，以行践言，实现梦想。','bg1.png','2021-5-31'),(8,'完成','本人于2021/6/19下午18时49分完成“招聘求职管理”项目三个模块。','g4.jpg','2021-06-19'),(11,'test2','测试用','techno_loverdj001_20201117.jpg','2021-06-19');

/*Table structure for table `recruitmentposition` */

DROP TABLE IF EXISTS `recruitmentposition`;

CREATE TABLE `recruitmentposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requirement` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `positionName` varchar(255) DEFAULT NULL,
  `subadge` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `com_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `recruitmentposition` */

insert  into `recruitmentposition`(`id`,`requirement`,`salary`,`positionName`,`subadge`,`address`,`com_id`) values (1,'前端','5000','web开发','全职','北京','2'),(2,'后端','5000','java开发','兼职','北京','2'),(3,'数据库','4000','数据库优化','兼职','北京','3'),(4,'java','3000','java实习生','实习','北京','3'),(5,'php','2000','php开发','全职','北京','2'),(6,'全栈','8000','全栈工程师','全职','上海','2'),(7,'java','90000','java开发','全职','上海','2'),(8,'数据库维护','80000','数据库架构','全职','重庆','2'),(9,'前端','9000','h5开发','全职','上海市辖区黄浦区','1'),(10,'前端','9000','h5开发','全职','上海县崇明县','1'),(11,'php','6000','php开发','实习','天津市辖区河东区','1'),(12,'前端','2000','web','全职','上海市辖区黄浦区','61'),(13,'前端','20000','web','全职','上海市辖区黄浦区','61'),(14,'java','5000','javaweb','全职','上海市辖区黄浦区','61');

/*Table structure for table `resume` */

DROP TABLE IF EXISTS `resume`;

CREATE TABLE `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `outlook` varchar(255) DEFAULT NULL,
  `household` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `edu_time` varchar(255) DEFAULT NULL,
  `schoolName` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `majorKnow` varchar(255) DEFAULT NULL,
  `position_time` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `certificateBookName` varchar(255) DEFAULT NULL,
  `Honor` varchar(255) DEFAULT NULL,
  `evaluation` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*Data for the table `resume` */

insert  into `resume`(`id`,`phone`,`email`,`img`,`name`,`birthday`,`sex`,`outlook`,`household`,`education`,`edu_time`,`schoolName`,`major`,`majorKnow`,`position_time`,`companyName`,`position`,`certificateBookName`,`Honor`,`evaluation`,`salary`) values (1,'15996666666','a123@qq.com','person_1.jpg','姓名1','2005-05-05','男','群众','山东菏泽曹县','中专','2019-2022','5','软件工程','java','无','无','无','java高级','优秀学生会干部','混吃等死，求包养','5000-10000'),(2,'15663253333','a235609797@qq.com','person_3.jpg','姓名2','2005-05-05','男','群众','山东菏泽曹县','中专','2019-2022','5','软件工程','java','无','无','无','java高级','优秀学生会干部','混吃等死，求包养','5000-10000'),(3,'15996322525','235609797@qq.com','00002.jpg','姓名3','2021-06-03','男','群众','重庆县大足县','博士','2022-07','5','软件工程','Java/Spring/Javaweb/Tomcat/','无','无','无','java高级','优秀学生会干部','混吃等死，求包养/熟练掌握Java/Spring/Javaweb/Tomcat/Springmvc/Mybatis/Mysql/Redis/Ps/Flash的拼写','5000-10000'),(4,'15996322525','55@qq.com','natgeo_20210409.jpg','姓名4','2005-05-05','男','群众','山东菏泽曹县','本科','2019-2022','5','软件工程','Springmvc/Mybatis/Mysql/Redis/Ps/Flash','无','无','无','java高级','优秀学生会干部','混吃等死，求包养，自学Java/Spring/Javaweb/Tomcat/Springmvc/Mybatis/Mysql/Redis/Ps/Flash的拼写','59999'),(5,'15996322525','a155@qq.com','person_4.jpg','姓名5','2005-05-05','男','群众','山东菏泽曹县','博士','2019-2022','5','软件工程','java','无','无','无','java高级','优秀学生会干部','混吃等死，求包养','5000-10000'),(6,'15996966666','66@qq.com','canamoffroad_20210320.jpg','姓名6','2005-05-05','男','群众','山东菏泽曹县','大专','2019-2022','5','软件工程','java/ssm','无','无','无','java高级','干饭第一','干啥啥不行，干饭第一名','2000000'),(8,'15996966666','99@qq.com','canamoffroad_20210320.jpg','姓名7','2005-05-05','男','群众','山东菏泽曹县','大专','2019-2022','5','软件工程','java/ssm','无','无','无','java高级','干饭第一','干啥啥不行，干饭第一名','2000000'),(9,'15996332323','22@qq.com','canamoffroad_20210320.jpg','姓名8','2005-05-05','男','群众','山东菏泽曹县','大专','2019-2022','5','软件工程','java/ssm','无','无','无','java高级','干饭第一','干啥啥不行，干饭第一名','2000000'),(10,'15996963333','5@6y.a','natgeo_20210409.jpg','姓名9','2005-05-05','男','群众','山东菏泽曹县','本科','2019-2022','5','软件工程','java/ssm','无','无','无','java高级','干饭第一','干啥啥不行，干饭第一名','2000000'),(93,'15996963333','a123456@qq.com','icon1.png','姓名10','2005-05-05',NULL,NULL,'山东菏泽曹县',NULL,NULL,NULL,'软件工程',NULL,NULL,NULL,NULL,NULL,NULL,'干啥啥不行，干饭第一名',NULL),(94,'15101200109','123@88.com','icon1.png','姓名11','2005-05-05',NULL,NULL,'山东菏泽曹县',NULL,NULL,NULL,'软件工程',NULL,NULL,NULL,NULL,NULL,NULL,'干啥啥不行，干饭第一名',NULL),(95,'15999877666','a123456789@qq.q','person_1.jpg','5','2005-05-05','男','群众','山东菏泽曹县','中专 ','2022','5','软件工程','java/吃/睡','','','','','','干啥啥不行，干饭第一名',''),(96,'15996336666','97973@qq.com','person_1.jpg','桑小白','2005-05-05','男','群众','上海市辖区黄浦区','本科','2022','5','软件工程','java/h5/lol','无','无','无','Java高级/lol黄金段位','嘴炮王','干啥啥不行，干饭第一名','5000'),(97,'15397291259','999@qq.com','person_1.jpg','999','2005-05-05','男','群众','黑龙江大庆市红岗区','中专','2021-05','家里蹲大学','软件工程','吹牛逼','老长了','家','发量最多','脱发证','干饭第一','干啥啥不行，干饭第一名','到秃头'),(98,'18109703343','2356532@qq.com','icon1.png','未命名',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'18889085454','234444@qq.com','icon1.png','未命名',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `useraandp` */

DROP TABLE IF EXISTS `useraandp`;

CREATE TABLE `useraandp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resumeid` varchar(255) DEFAULT NULL,
  `userinfoid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

/*Data for the table `useraandp` */

insert  into `useraandp`(`id`,`account`,`password`,`resumeid`,`userinfoid`) values (1,'a235609797@qq.com','a123456','1','2'),(2,'a23509797@qq.com','a123456','2','3'),(3,'55@qq.com','a123456','3','3'),(4,'66@qq.com','a123456','4','5'),(5,'99@qq.com','a123456','5','7'),(6,'22@qq.com','b123456','6','8'),(7,'5@6y.a','b44566','7','9'),(32,'a123456@qq.com','a123456','93','91'),(33,'123@88.com','QQ2094629698','94','92'),(34,'test2@aa.com','b44566','999','999'),(35,'test2@aa.com','b44566','999','999'),(36,'test2@aa.com','b44566','999','999'),(37,'test2@aa.com','b44566','999','999'),(38,'test2@aa.com','b44566','999','999'),(39,'test2@aa.com','b44566','999','999'),(40,'test2@aa.com','b44566','999','999'),(41,'test2@aa.com','b44566','999','999'),(42,'test2@aa.com','b44566','999','999'),(43,'test2@aa.com','b44566','999','999'),(44,'test2@aa.com','b44566','999','999'),(45,'test2@aa.com','b44566','999','999'),(46,'test2@aa.com','b44566','999','999'),(47,'test2@aa.com','b44566','999','999'),(48,'test2@aa.com','b44566','999','999'),(49,'a123456789@qq.q','a123456','95','93'),(50,'97973@qq.com','a123456','96','94'),(51,'999@qq.com','pppppp','97','95'),(52,'2356532@qq.com','a123456','98','96'),(53,'234444@qq.com','a123456','99','97');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `household` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`name`,`phone`,`email`,`sex`,`household`,`birthday`,`work`,`hobby`,`img`) values (1,'','15996666666','123@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(2,'','15663253333','235609797@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(3,'','15698721111','23509797@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(4,'','15955555555','55@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(5,'','15996966666','66@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(6,'','15996966666','66@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(7,'','15996966666','99@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(8,'','15996332323','2@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(9,'','15996963333','5@6y.a',NULL,NULL,NULL,NULL,NULL,NULL),(91,'','15996963333','a123456@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(92,'','15101200109','123@88.com',NULL,NULL,NULL,NULL,NULL,NULL),(93,'','15999877666','a123456789@qq.q',NULL,NULL,NULL,NULL,NULL,NULL),(94,NULL,'15996336666','97973@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,'15397291259','999@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(96,NULL,'18109703343','2356532@qq.com',NULL,NULL,NULL,NULL,NULL,NULL),(97,NULL,'18889085454','234444@qq.com',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `web` */

DROP TABLE IF EXISTS `web`;

CREATE TABLE `web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `java` varchar(255) DEFAULT NULL,
  `frame` varchar(255) DEFAULT NULL,
  `front_end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `web` */

insert  into `web`(`id`,`title`,`java`,`frame`,`front_end`) values (1,'ring聘','1.8','ssm','h5/jsp/css/jquery/bootstrap/vue等'),(2,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
