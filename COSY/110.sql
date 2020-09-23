/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: cosy
Date: 2018/12/19 16:21:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `tbgoodsadd`
-- ----------------------------
DROP TABLE IF EXISTS `tbgoodsadd`;
CREATE TABLE `tbgoodsadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` varchar(11) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `newprice` varchar(255) DEFAULT NULL,
  `useprice` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `counts` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbpiclist`
-- ----------------------------
DROP TABLE IF EXISTS `tbpiclist`;
CREATE TABLE `tbpiclist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `pixel` varchar(255) DEFAULT NULL,
  `where` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `tbgoodsadd` VALUES ('36','宠物狗狗','博美犬','500','1000','涪陵','100','博美犬是一种紧凑、短背、活跃的玩赏犬，是德国狐狸犬的一种，原产自德国。','20181217174342333.jpg'), ('37','宠物狗狗','柴犬','1000','1500','重庆渝北','50','柴犬是体型中等并且又最古老的犬。','20181217174550969.jpg'), ('38','宠物狗狗','贵宾犬','1000','3000','重庆璧山','30','贵宾犬也称“贵妇犬”，属于非常聪明且喜欢狩猎的犬种，据猜测贵妇犬起源于德国，在那儿它以水中捕猎犬而著称。','20181217174726760.jpg'), ('39','宠物狗狗','吉娃娃','200','500','重庆巴南','10','吉娃娃（西班牙语：Chihuahueño，英语：Chihuahua），也译作芝娃娃、奇娃娃、齐花花，以墨西哥奇瓦瓦州命名。','20181217174833353.jpg'), ('40','宠物狗狗','松狮','1000','1000','北京','5','松狮犬，英文名称Chow或Chowdren，是一种原产于中国的古老犬种，至少已经有2000年的历史，在一些出土的汉代陶器和雕塑品中也可见到。','20181217174959913.jpg'), ('41','宠物狗狗','英国斗牛犬','9500','10000','英国','10','又名老虎狗、斗牛犬，起源于英国。英国斗牛犬成年犬体高35-50cm左右，重量约20-30公斤，属中型犬。','20181217175349815.jpg'), ('44','宠物狗狗','惠比特犬','1899','1999','99','564','惠比特犬是真正的运动型猎犬，中型视觉猎犬，能以最少的动作，跑完最大的距离。','20181217180155156.jpg'), ('45','宠物狗狗','腊肠犬','799','999','贵州','99','腊肠犬（Dachshund）是一种短腿，长身的猎犬。其名源于德国，嗅猎，追踪，及捕杀獾类及其他穴居的动物。','20181217180321815.jpg'), ('46','宠物狗狗','二哈','9.9','999','火星','0','太蠢了，没人要','20181219152209370.jpg');
INSERT INTO `tbmember` VALUES ('1','user1','123456','王刚','1590000111x','重庆市巴南区学堂湾'), ('2','user2','123456','李冰','1590000112x','重庆市巴南区渔胡路'), ('3','user3','123456','霄凌','1590000113x','重庆市巴南区九公里'), ('4','user5','123456','伍思凯','15900000001','成都市高新区XX路3-3-2'), ('6','11','22','33','44','55'), ('7','123','123','423','123','1345'), ('8','10','11','12','13','14'), ('9','zz','xx','cc','vv','bb'), ('10','sc','sc','sc','sc','sc'), ('11','svb','sb','sb','sb','sb'), ('12','sbdx','sbdx','sbdx','sbdx','sbdx'), ('13','01','123','44','55','66'), ('14','jimo','19971231','刘文超','17671466232','重庆市巴南区九公里');
INSERT INTO `tborderhead` VALUES ('23','20181219160630644','刘文超','17671466232','重庆市巴南区九公里','20','14','2018-12-19 16:06:30'), ('24','20181219161650274','刘文超','17671466232','重庆市巴南区九公里','9500','14','2018-12-19 16:16:50');
INSERT INTO `tborderitems` VALUES ('16','20181127085617282','4','小米 max3','100','3',NULL), ('17','20181127085617282','8','惜艾蜜','2112','2',NULL), ('18','20181127092921877','14','小米 max3  1','2222','1',NULL), ('19','20181127092921877','2','小米 max3','100','2',NULL), ('20','20181217173926708','34','刘涵茜','1','2',NULL), ('21','20181218144917444','45','腊肠犬','799','5',NULL), ('22','20181218144917444','41','英国斗牛犬','9500','1',NULL), ('23','20181218161854045','45','腊肠犬','799','8',NULL), ('24','20181218162034442','44','惠比特犬','1899','1',NULL), ('25','20181218164323487','44','惠比特犬','1899','1',NULL), ('26','20181218193438363','37','柴犬','1000','1','20181217174550969.jpg'), ('27','20181218215954981','45','腊肠犬','799','1','20181217180321815.jpg'), ('28','20181219123354222','45','腊肠犬','799','3','20181217180321815.jpg'), ('29','20181219123524294','45','腊肠犬','799','2','20181217180321815.jpg'), ('30','20181219124156855','44','惠比特犬','1899','1','20181217180155156.jpg'), ('31','20181219141949118','45','腊肠犬','799','2','20181217180321815.jpg'), ('32','20181219142824851','45','腊肠犬','799','1','20181217180321815.jpg'), ('33','20181219160630644','46','二哈','10','2','20181219152209370.jpg'), ('34','20181219161650274','41','英国斗牛犬','9500','1','20181217175349815.jpg');
INSERT INTO `tbshoppingcar` VALUES ('78','496A6816E6031B2271DC0A63322D0CBB','111111','32','4','2018-12-13 12:03:43','20181212190410825.jpg','199'), ('79','CDE4E0BF5623AFE1BE95A99A9489D0A0','刘涵茜','34','2','2018-12-13 21:47:29','20181213214601584.jpg','1'), ('80','44F9653D930CCDD5B4E85CAF7B01BD82','刘涵茜','34','1','2018-12-13 22:00:12','20181213214601584.jpg','1'), ('81','1A21B5DD02A2175807CCFD9F5E63E4D2','刘涵茜','34','4','2018-12-13 22:07:10','20181213214601584.jpg','1'), ('82','9C97972990223CE9EA99EA71C304288A','刘涵茜','34','1','2018-12-14 13:12:53','20181213214601584.jpg','1'), ('83','541678BBA562E5910E79AC1992A95FED','刘涵茜','34','2','2018-12-14 13:31:02','20181213214601584.jpg','1'), ('84','3356B526A6B4C48124796EA2399414C8','刘涵茜','34','3','2018-12-17 16:35:53','20181213214601584.jpg','1'), ('85','E06B6EABE478E1FA771034E7170A10EA','刘涵茜','34','2','2018-12-17 17:29:22','20181213214601584.jpg','1'), ('86','5F277082DA03204E4207F9799411F429','贵宾犬','38','5','2018-12-17 18:31:25','20181217174726760.jpg','1000'), ('87','1CF94A81F70441DA5C5CDF571D3F29A7','贵宾犬','38','1','2018-12-17 19:06:22','20181217174726760.jpg','1000'), ('88','1CF94A81F70441DA5C5CDF571D3F29A7','惠比特犬','44','4','2018-12-17 19:07:09','20181217180155156.jpg','1899'), ('91','E94B68738D109402EBCFC48C39062E62','腊肠犬','45','4','2018-12-18 15:54:06','20181217180321815.jpg','799'), ('96','49ACBA8B9DAEC6F9504649DD7DF02764','腊肠犬','45','2','2018-12-18 20:02:13','20181217180321815.jpg','799'), ('97','49ACBA8B9DAEC6F9504649DD7DF02764','苏志宇','43','2','2018-12-18 20:03:32','20181217180046752.jpg','99'), ('98','49ACBA8B9DAEC6F9504649DD7DF02764','惠比特犬','44','13','2018-12-18 20:04:42','20181217180155156.jpg','1899'), ('99','49ACBA8B9DAEC6F9504649DD7DF02764','英国斗牛犬','41','4','2018-12-18 20:08:03','20181217175349815.jpg','9500'), ('104','96661E4ADADD7D8199B41826F3F30588','惠比特犬','44','1','2018-12-19 12:40:12','20181217180155156.jpg','1899'), ('105','96661E4ADADD7D8199B41826F3F30588','刘涵茜','42','1','2018-12-19 12:40:20','20181217175918775.jpg','1'), ('106','96661E4ADADD7D8199B41826F3F30588','英国斗牛犬','41','1','2018-12-19 12:40:46','20181217175349815.jpg','9500'), ('109','52D88C6DE1A8577FA9E68069C12C2882','腊肠犬','45','3','2018-12-19 15:09:19','20181217180321815.jpg','799'), ('110','52D88C6DE1A8577FA9E68069C12C2882','惠比特犬','44','1','2018-12-19 15:17:06','20181217180155156.jpg','1899'), ('111','52D88C6DE1A8577FA9E68069C12C2882','二哈','46','1','2018-12-19 15:24:53','20181219152209370.jpg','10'), ('112','FE26CDD8A33E9D3658C50B8227B922DD','二哈','46','3','2018-12-19 15:28:30','20181219152209370.jpg','10'), ('113','FE26CDD8A33E9D3658C50B8227B922DD','腊肠犬','45','4','2018-12-19 15:30:44','20181217180321815.jpg','799'), ('114','A39EE7BB0048A9ABD673F1FCAAFD3F50','二哈','46','1','2018-12-19 15:56:54','20181219152209370.jpg','10');
