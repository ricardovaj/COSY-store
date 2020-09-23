/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: cosy
Date: 2018/12/19 17:30:55
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `tbgoodsadd` VALUES ('36','宠物狗狗','博美犬','500','1000','涪陵','100','博美犬是一种紧凑、短背、活跃的玩赏犬，是德国狐狸犬的一种，原产自德国。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217174342333.jpg'), ('37','宠物狗狗','柴犬','1000','1500','重庆渝北','50','柴犬是体型中等并且又最古老的犬。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217174550969.jpg'), ('38','宠物狗狗','贵宾犬','1000','3000','重庆璧山','30','贵宾犬也称“贵妇犬”，属于非常聪明且喜欢狩猎的犬种，据猜测贵妇犬起源于德国，在那儿它以水中捕猎犬而著称。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217174726760.jpg'), ('39','宠物狗狗','吉娃娃','200','500','重庆巴南','10','吉娃娃（西班牙语：Chihuahueño，英语：Chihuahua），也译作芝娃娃、奇娃娃、齐花花，以墨西哥奇瓦瓦州命名。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217174833353.jpg'), ('40','宠物狗狗','松狮','1000','1000','北京','5','松狮犬，英文名称Chow或Chowdren，是一种原产于中国的古老犬种，至少已经有2000年的历史，在一些出土的汉代陶器和雕塑品中也可见到。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217174959913.jpg'), ('41','宠物狗狗','英国斗牛犬','9500','10000','英国','10','又名老虎狗、斗牛犬，起源于英国。英国斗牛犬成年犬体高35-50cm左右，重量约20-30公斤，属中型犬。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217175349815.jpg'), ('44','宠物狗狗','惠比特犬','1899','1999','美国','564','惠比特犬是真正的运动型猎犬，中型视觉猎犬，能以最少的动作，跑完最大的距离。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217180155156.jpg'), ('45','宠物狗狗','腊肠犬','799','999','贵州','99','腊肠犬（Dachshund）是一种短腿，长身的猎犬。其名源于德国，嗅猎，追踪，及捕杀獾类及其他穴居的动物。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181217180321815.jpg'), ('47','宠物狗狗','哈士奇','899','999','云南大理','999','西伯利亚雪橇犬（俄语：Сибирский хаски，英语：Siberian husky），常见别名哈士奇，昵称为二哈。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181219164429301.jpg'), ('48','宠物狗狗','惠比特犬2','899','999','云南大理','999','惠比特犬是真正的运动型猎犬，中型视觉猎犬，能以最少的动作，跑完最大的距离。给人的印象是漂亮而和谐，肌肉发达，强壮而有力','20181219165054478.jpg'), ('50','宠物狗狗','博美犬','999','9999','四川','99','博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。','20181219171600278.png'), ('51','宠物狗狗','超级恶霸犬','899','999','中国大陆','99','美国恶霸这个犬种创立于90年代中期，以培育成家庭伴侣犬为最终目的。通过多年的选育相结合，综合了美国比特斗牛梗犬和美国斯塔福郡梗犬所具有的特点。','20181219171748892.jpg');
INSERT INTO `tbmember` VALUES ('1','user1','123456','王刚','1590000111x','重庆市巴南区学堂湾'), ('2','user2','123456','李冰','1590000112x','重庆市巴南区渔胡路'), ('3','user3','123456','霄凌','1590000113x','重庆市巴南区九公里'), ('4','user5','123456','伍思凯','1590000000x','成都市高新区12路3-3-2'), ('14','jimo','19971231','雷文超','1767146666x','重庆市巴南区九公里');
