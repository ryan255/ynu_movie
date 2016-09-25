/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : moviesys_db

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-09-25 13:13:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_pw` varchar(45) NOT NULL,
  `admin_phone` varchar(45) DEFAULT NULL,
  `admin_identity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`),
  KEY `fk_idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '王丽', '123', '14254675366', '984702375802375044');
INSERT INTO `admin` VALUES ('2', '1', '李青', '1234', '73947390483', '50010319950826004x');
INSERT INTO `admin` VALUES ('3', '1', '武力', '12345', '13738494729', '846482749287848337');
INSERT INTO `admin` VALUES ('4', '2', '米提', '123456', '16252363780', '982348698254624723');
INSERT INTO `admin` VALUES ('5', '2', '王鸥', '111', '17373837238', '234726409257628473');
INSERT INTO `admin` VALUES ('6', '3', '何炅', '1111', '17363536939', '234827592634823874');
INSERT INTO `admin` VALUES ('7', '3', '谢娜', '11111', '19837389832', '234692834778345709');
INSERT INTO `admin` VALUES ('8', '4', '杜海涛', '111112', '15283036949', '827458334928734820');
INSERT INTO `admin` VALUES ('9', '5', '李莉', '1234567', '17384737997', '234786759283754072');

-- ----------------------------
-- Table structure for auditorium
-- ----------------------------
DROP TABLE IF EXISTS `auditorium`;
CREATE TABLE `auditorium` (
  `idAuditorium` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `auditorium_num` int(11) DEFAULT NULL,
  `auditorium_col` int(11) DEFAULT NULL,
  `auditorium_row` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAuditorium`),
  KEY `idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_auditorium_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditorium
-- ----------------------------
INSERT INTO `auditorium` VALUES ('1', '1', '35', '7', '5');
INSERT INTO `auditorium` VALUES ('2', '1', '30', '6', '5');
INSERT INTO `auditorium` VALUES ('3', '1', '48', '8', '6');
INSERT INTO `auditorium` VALUES ('4', '2', '48', '8', '5');
INSERT INTO `auditorium` VALUES ('5', '3', '49', '7', '7');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `idCity` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idCity`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '昆明');
INSERT INTO `city` VALUES ('2', '北京');
INSERT INTO `city` VALUES ('3', '上海');
INSERT INTO `city` VALUES ('4', '重庆');
INSERT INTO `city` VALUES ('5', '湖南');
INSERT INTO `city` VALUES ('6', '浙江');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `idClass` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idClass`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '喜剧');
INSERT INTO `classification` VALUES ('2', '科幻');
INSERT INTO `classification` VALUES ('3', '恐怖');
INSERT INTO `classification` VALUES ('4', '青春');
INSERT INTO `classification` VALUES ('5', '动作');
INSERT INTO `classification` VALUES ('6', '奇幻');
INSERT INTO `classification` VALUES ('7', '冒险');
INSERT INTO `classification` VALUES ('8', '动画');

-- ----------------------------
-- Table structure for edition
-- ----------------------------
DROP TABLE IF EXISTS `edition`;
CREATE TABLE `edition` (
  `idEdition` int(11) NOT NULL AUTO_INCREMENT,
  `edition_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idEdition`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edition
-- ----------------------------
INSERT INTO `edition` VALUES ('1', '2D');
INSERT INTO `edition` VALUES ('2', '3D');
INSERT INTO `edition` VALUES ('3', 'IMAX');

-- ----------------------------
-- Table structure for film_infor
-- ----------------------------
DROP TABLE IF EXISTS `film_infor`;
CREATE TABLE `film_infor` (
  `idFilm` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `f_director` varchar(45) DEFAULT NULL,
  `f_star` text,
  `idClass` int(11) NOT NULL,
  `f_country` varchar(45) DEFAULT NULL,
  `f_time` int(11) NOT NULL,
  `f_level` int(11) DEFAULT NULL,
  `f_click` int(11) DEFAULT NULL,
  `f_comment` text,
  `f_introduce` text,
  `f_cover_s` varchar(255) DEFAULT NULL,
  `f_cover_b` varchar(255) DEFAULT NULL,
  `f_online` int(11) DEFAULT '1',
  `f_ontime` date DEFAULT NULL,
  PRIMARY KEY (`idFilm`),
  KEY `idClass_idx` (`idClass`),
  CONSTRAINT `fk_film_idClass` FOREIGN KEY (`idClass`) REFERENCES `classification` (`idClass`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film_infor
-- ----------------------------
INSERT INTO `film_infor` VALUES ('1', '大话西游3', '刘镇伟', '唐嫣、韩庚、莫文蔚', '1', '中国', '93', '3', '1000', '整体来说，这个电影可以去看看，首先剧情来说有点夸张但是挺幽默，其次，这个电影特效方面不错，可以给人不错的视觉效果，最后，通过这个电影的剧情可以给你一个你想要的结局', '在《大话西游之大圣娶亲》中死在牛魔王叉下的紫霞仙子（唐嫣 饰），将会通过月光宝盒预先看到这一下场，为了避免惨剧发生，她选择回到从前不让至尊宝（韩庚 饰）爱上自己。而至尊宝又再次重逢一直在等待他的白晶晶（莫文蔚 饰）。前世今生的种种爱恨纠葛再次在九道轮回里最后一次上演。', 'r2.jpg', 'b1.jpg', '1', '2016-09-14');
INSERT INTO `film_infor` VALUES ('2', '追凶者也', '曹保平', '刘烨、段博文、张译', '1', '中国', '110', '4', '5000', '一部黑色幽默的电影竟然可以让人笑出声音来，那一刻真的有些尴尬了，并且有些笑点有意而为之，这...一种另类迎合观众口味的电影，为什么只有故事开场长镜头不断，其实我觉得导演也不喜欢，但可以解释说片段一中有很多小细节，然后提议二刷。张译让我尴尬。', '影片讲了一个追捕杀人犯的故事。一桩残忍凶案悄然发生在偏远的西部村寨，憨包汽修工宋老二（刘烨 饰）被警方推为首要疑凶。这让本来萍水相逢的三人：憨包汽修工宋老二、落魄古惑仔王友全（段博文 饰）、夜总会领班董小凤（张译 饰）命运彼此牵连在一起，在荒蛮西部上演了一场充满嬉笑怒骂的黑色逃杀。', 'r9.jpg', 'b2.jpg', '1', '2016-09-14');
INSERT INTO `film_infor` VALUES ('3', '爵迹', '郭敬明', '范冰冰、吴亦凡、陈伟霆、陈学冬', '6', '中国', '116', null, null, '想想北欧奇幻故事中国人来拍，由一群中国人来演，说着中文，我也是醉了。', '传说中的神话奥汀大陆分为水、风、火、地四个国家，每个国家都有精通魂术的人，其中最厉害的七个被称为王爵。水国普通男孩麒零（陈学冬 饰）离奇地被七度王爵银尘（吴亦凡 饰）收为使徒，卷入了这场魂术的风暴，水国隐藏的秘密也渐渐浮出水面。在奥汀大陆这个神秘的世界里，西之亚斯兰帝国七度王爵银尘寻找到自己的使徒麒零，却无意中发现了上代一度王爵吉尔伽美什可能还活着的秘密，于是义无反顾的投入到追寻之中，而与此同时作为侵蚀者的王爵幽冥（陈伟霆 饰）、特蕾娅（郭采洁 饰）也收到了对银尘和鬼山莲泉（范冰冰 饰）等人的杀戮红讯。一场王爵和使徒们为了真相和荣誉的战役一触即发。', 'r4.jpg', 'b3.jpg', '2', '2016-09-30');
INSERT INTO `film_infor` VALUES ('4', '巴黎危机', '詹姆斯·瓦特金斯', '伊德瑞斯·艾尔巴、理查德·麦登、夏洛特·莱本、凯利·蕾莉', '5', '美国、法国', '90', '4', '508', '看着电影分分钟跳戏到权力的游戏和雷神，罗伯斯塔克真是帅！情节一般，场面还可以，动作设计也还行，海姆达尔作为传说中的邦德接班人，摸底考试还算及格吧！', '一名执行卧底行动的美国中情局特工接到了一个新任务：他必须调查一个年轻的美国职业骗子，因为这位年轻人可能会让美国官方遭受恐怖袭击巴黎的错误指控。但随着巴黎恐怖袭击的升级，特工意识到这位年轻人是无辜的，并且是他找到幕后真凶的唯一线索……', 'r5.jpg', 'b4.jpg', '1', '2016-09-20');
INSERT INTO `film_infor` VALUES ('5', '樱桃小丸子：来自意大利的少年', '高木淳', 'TARAKO、屋良有作、一龙斋贞友、島田敏', '8', '日本', '95', null, null, '其实想看中文配音的，说实话小丸子是日漫中少有的国人配音超越原配音的', '影片以清水市为起点，讲述了史上第一次的大阪京都旅行。六位来自世界各地的小伙伴来到小丸子的家乡清水市，小丸子（TARAKO 配音）将会和他们一起到东京和大阪旅行。其中小丸子将被一名来自意大利的小伙伴表白！', 'r8.jpg', 'b5.jpg', '2', '2016-09-23');
INSERT INTO `film_infor` VALUES ('6', '九条命', '巴里·索南菲尔德', '凯文·史派西、珍妮弗·加纳、罗比·阿梅尔、会说话的汤姆猫', '6', '法国', '87', '4', '1000', '特别好看！！！！ 我们专门跑的很远地方去看的首映！！！真的很棒！！！导演很用心', '电影讲述了作为一名商业精英的Tom brand（凯文·史派西 饰）是彻头彻尾的工作狂，却时常忽视家庭与亲情。女儿生日这一天，因公迟到的他匆忙赶去宠物店，为女儿买了一只她喜欢的喵星人 ，却被宠物店老板（克里斯托弗·沃肯 饰）用魔法将他的躯体困在一只宠物猫体内。被困于宠物猫的Tom大声呼救，然而这对于听不懂猫语的人类只是“喵喵”的叫声。这时沃肯出现在它的笼前，告知它自己是“猫语者”，但沃肯此次并非来救他，只是让他思考自己被变成猫的原因。绝望的史派西惊呼“我讨厌猫”，却得知猫的生命很短暂，很有可能一辈子被困在这里，而回归原型的条件则是要做回一个称职的老公和父亲。随后便发生了一系列令人啼笑皆非的故事。', 'r1.jpg', 'b6.jpg', '1', '2016-09-09');
INSERT INTO `film_infor` VALUES ('7', '反贪风暴2', '林德禄', '古天乐 、 张智霖 、 周渝民 、 蔡少芬 、 林保怡 、 陈静 、 盛君', '5', '中国', '92', '4', '999', '男神的showtime，爱死了', '由古天乐领衔的廉政公署调查员，包括欧锦棠、曾国祥、张松枝、盛君和田学维，携手将罪犯绳之以法。而林家栋带领的警方团队亦正亦邪，与属下姜皓文等，周旋于古天乐与罪犯之间。', 's7.jpg', 'b7.jpg', '2', '2016-09-14');
INSERT INTO `film_infor` VALUES ('8', '七月与安生', '曾国祥', '周冬雨 、马思纯 、 李程彬', '8', '中国', '110', '3', '567', '不得不佩服陈可辛，将矫情的原著拍的一点都不矫情。电影的本质还是国产青春片，老套但不狗血。值得一看。', ' 七月（马思纯 饰）与安生（周冬雨 饰）从踏入中学校门的一刻起，便宿命般地成为了朋友。她们一个恬静如水，一个张扬似火，性格截然不同、却又互相吸引。她们以为会永远陪伴在彼此的生命里，然而青春的阵痛带来的不是别的，而是对同一个男生的爱——18 岁那年，她们遇见了苏家明，至此，成长的大幕轰然打开……', 's8.jpg', 'b8.jpg', '1', '2016-09-14');
INSERT INTO `film_infor` VALUES ('9', '从你的全世界路过', '张一白', '邓超 、 白百何 、 杨洋 、 张天爱 、 岳云鹏 、 杜鹃 、 柳岩', '6', '中国', '120', '5', '1098', '小说改编的，特别期待', '人气作家张嘉佳根据自己同名畅销小说集倾情改编并由张一白导演的一部让人笑出声来流下泪来的暖心之作。 电台里收听率最差的DJ——陈末，被迫要和一个“菜鸟”女DJ——幺鸡合作一档节目。其实，陈末不知道幺鸡是有目的而进入他的生活，更不知道他的生活和工作都将因为幺鸡而变得大有不同。', 's9.jpg', 'b9.jpg', '2', '2016-09-14');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `idLevel` int(11) NOT NULL AUTO_INCREMENT,
  `level_point` int(11) NOT NULL,
  `level_discount` float NOT NULL,
  PRIMARY KEY (`idLevel`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', '50', '0.98');
INSERT INTO `level` VALUES ('2', '100', '0.95');
INSERT INTO `level` VALUES ('3', '200', '0.9');
INSERT INTO `level` VALUES ('4', '350', '0.85');
INSERT INTO `level` VALUES ('5', '550', '0.8');
INSERT INTO `level` VALUES ('6', '800', '0.75');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idprice` int(11) NOT NULL,
  `true_price` decimal(10,0) NOT NULL,
  `order_number` int(11) NOT NULL,
  `order_total` decimal(10,0) NOT NULL,
  `order_state` int(11) NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_order_idUser_idx` (`idUser`),
  KEY `fk_order_state_idx` (`order_state`),
  KEY `fk_order_idPrice` (`idprice`),
  CONSTRAINT `fk_order_idPrice` FOREIGN KEY (`idprice`) REFERENCES `price` (`idPrice`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_state` FOREIGN KEY (`order_state`) REFERENCES `state` (`idState`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2', '1', '38', '2', '76', '1');

-- ----------------------------
-- Table structure for orderseat
-- ----------------------------
DROP TABLE IF EXISTS `orderseat`;
CREATE TABLE `orderseat` (
  `idorderSeat` int(11) NOT NULL,
  `fk_orderSeat_idOrder` int(11) DEFAULT NULL,
  `fk_orderSeat_idSeat` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorderSeat`),
  KEY `fk_orderSeat_idSeat_idx` (`fk_orderSeat_idSeat`),
  KEY `fk_orderSeat_idOrder_idx` (`fk_orderSeat_idOrder`),
  CONSTRAINT `fk_orderSeat_idOrder` FOREIGN KEY (`fk_orderSeat_idOrder`) REFERENCES `order` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderSeat_idSeat` FOREIGN KEY (`fk_orderSeat_idSeat`) REFERENCES `seat` (`idSeat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderseat
-- ----------------------------
INSERT INTO `orderseat` VALUES ('1', '1', '2');

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play` (
  `idPlay` int(11) NOT NULL AUTO_INCREMENT,
  `idStudio` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `play_on` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `play_ontime` datetime NOT NULL,
  `play_uptime` datetime NOT NULL,
  PRIMARY KEY (`idPlay`),
  KEY `fk_play_idFilm_idx` (`idFilm`),
  KEY `fk_play_idStudio_idx` (`idStudio`),
  CONSTRAINT `fk_play_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `film_infor` (`idFilm`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_play_idStudio` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of play
-- ----------------------------
INSERT INTO `play` VALUES ('1', '2', '3', '是', '2016-09-23 00:00:00', '2016-10-10 00:00:00');
INSERT INTO `play` VALUES ('2', '1', '4', '是', '2016-09-23 00:00:00', '2016-10-10 00:00:00');
INSERT INTO `play` VALUES ('3', '3', '3', '是', '2016-09-23 00:00:00', '2016-10-10 00:00:00');
INSERT INTO `play` VALUES ('4', '2', '1', '是', '2016-09-23 00:00:00', '2016-10-09 00:00:00');
INSERT INTO `play` VALUES ('5', '4', '4', '是', '2016-09-23 00:00:00', '2016-10-09 00:00:00');

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `idPrice` int(11) NOT NULL AUTO_INCREMENT,
  `idPlay1` int(11) NOT NULL,
  `idAuditorium1` int(11) NOT NULL,
  `idEdition1` int(11) NOT NULL,
  `price_screens` varchar(45) NOT NULL,
  `prices` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idPrice`),
  KEY `fk_price_idPlay_idx` (`idPlay1`),
  KEY `fk_price_idAuditorium_idx` (`idAuditorium1`),
  KEY `fk_price_idEdition_idx` (`idEdition1`),
  CONSTRAINT `fk_price_idAuditorium` FOREIGN KEY (`idAuditorium1`) REFERENCES `auditorium` (`idAuditorium`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_price_idEdition` FOREIGN KEY (`idEdition1`) REFERENCES `edition` (`idEdition`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_price_idPlay` FOREIGN KEY (`idPlay1`) REFERENCES `play` (`idPlay`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES ('1', '1', '2', '1', '45', '45');

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `idSeat` int(11) NOT NULL,
  `seat_num` int(11) DEFAULT NULL,
  `seat_state` varchar(45) DEFAULT NULL,
  `seat_order` varchar(45) DEFAULT NULL,
  `fk_seat_idAuditorium` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSeat`),
  KEY `idAuditorium_idx` (`fk_seat_idAuditorium`),
  CONSTRAINT `idAuditorium` FOREIGN KEY (`fk_seat_idAuditorium`) REFERENCES `auditorium` (`idAuditorium`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES ('1', '1', '1', '4', '2');

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `idState` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idState`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES ('1', '订单已提交');
INSERT INTO `state` VALUES ('2', '支付成功');
INSERT INTO `state` VALUES ('3', '取票成功');

-- ----------------------------
-- Table structure for studio
-- ----------------------------
DROP TABLE IF EXISTS `studio`;
CREATE TABLE `studio` (
  `idStudio` int(11) NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(45) NOT NULL,
  `studio_online` varchar(45) NOT NULL,
  `studio_address` varchar(45) NOT NULL,
  `studio_phone` varchar(45) NOT NULL,
  `studio_text` varchar(1000) NOT NULL,
  PRIMARY KEY (`idStudio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studio
-- ----------------------------
INSERT INTO `studio` VALUES ('1', '昆明呈贡横店电影城', '是', '呈贡县春融街昆百大新都会4楼', '0871-65919223', '由横店集团旗下的横店电影院线有限公司投资建设的五星级影城—昆明呈贡横店电影城，归属横店院线，位于昆明呈贡百大新都会4楼。影城按照国际影院建设最高 标准五星级设计、建造，装修豪华，设施高档，环境一流，观影舒适。影音设备采用了代表当今电影工业最高技术的，国际上的最先进的数码视听设备，影城大厅宽 敞明亮，先进的售票系统，种类丰富的卖品，尽显人性化的设计极显国际影院的气派。影城建筑面积几千平方米，建有8个全数字3D影厅，共设有1500余个座位。');
INSERT INTO `studio` VALUES ('2', 'SFC上影-昆明永华店', '是', '昆明市东风西路99号百大新天地7楼', '0871-63623676', '昆明上影永华国际影城地处昆明市东风西路1号，坐落在昆明繁华的南屏步行街中心“百大新天地”7楼，建筑面积达3000平方米。“百大新天地“在昆明是一个集餐饮、购物、娱乐、休闲为一体，时尚前卫，店铺精致，格调高雅的shopping mall。上影永华国际影城所处地是昆明唯一的步行街区最大的商业汇聚地，使上影永华国际影城的交通四通八达，便捷顺畅，公交3路、4路、62路、73路、90路、98路到金马坊站下车，向北步行500米，公交118路、71路到南屏街东口，向西行走300米，公交10路、82路、84路到南屏街西口下车即可到达。');
INSERT INTO `studio` VALUES ('3', '昆明17.5影城-世纪城店', '是', '官渡区金源购物中心二区一楼', '0871-67235388 67235088', ' 位于昆明世纪城金源购物二区一层的17.5影城（官渡区世纪城店）耗资近2500万元，采用美国原装进口影院专用吸声软椅，具备了接待高等级商务峰会和举办影片首映式的能力，拥有容纳人数达到420人的豪华大厅、数码立体声厅等，共7个影厅，同时观影人数近1400人，它将成为目前昆明市最大的影城。');
INSERT INTO `studio` VALUES ('4', '昆明耀莱成龙国际影城-白塔路店', '是', '昆明市盘龙区白塔路399号七彩ME TOWN购物中心5楼', '0871-63106116', ' 昆明耀莱成龙国际影城拥有顶级的影城放映设备。采用了比利时巴可放映机、美国Daoraimi服务器；座位全部采用最新型豪华航空座椅，并采用无遮挡设计。为残疾人提供了无障碍通道，配备了无线发射系统，恒温的中央空调系统，进口的放映系统，超大无缝银幕给观众提供最舒适的国际一流的观看环境。');
INSERT INTO `studio` VALUES ('5', '星美国际影城-昆明金鹰店', '是', '云南省昆明市威远街168号金鹰购物广场B座7层', '0871-8330111', ' 昆明金鹰星美国际影城坐落在昆明核心青年路商圈，昆明市五华区威远街168号金鹰购物广场B座7层，地理位置优越。金鹰购物广场B座承载了6万5千平方米的雍容体量，8层30米高恢弘中庭，120余家国际一、二线品牌的强势入驻，集结百货、酒店、娱乐、餐饮多种业态，铸就休闲购物一体化。市内乘车路线：112路、4路、3路（金鹰购物中心站）78路、74路（小花园青年路站）、K1路、K2（护国桥（新世界百货）站）、54路、83路（小花园站） 昆明金鹰星美国际影城由星美传媒集团投资打造的超五星级标准影城星美影城，投资额超过5000万元人民币，影城共有6个标准放映厅，其中包括了4个标准放映厅，一个可容纳300人左右的超大巨幕厅，一个VIP厅，其中3个标准厅均为3D电影放映厅，总座位数约900个，建筑面积约4000平方米。 昆明金鹰影城放映设备采用比利时巴可（BARCO）进口顶级数字放映机；音响采用JBL豪华立体环绕声音响，银幕采用进口Harkness2.4的数字银幕。影院超大厅配备了进口巨幅无缝银幕，每个厅的音响设备和声学环境全部采用进口设备，全面超过五星级标准，座椅全部采用最新型豪华航空座椅，每个座椅间的间隔也比普通影院的大能让观众有更多的活动空间，为您提供了舒适的国际一流视觉效果，带来无与伦比的视听享受和超乎想象的震撼效果，让观众在享受美轮美奂的视觉效果同时，感受到无与伦比的震撼音效，切身体会电影带来的饕餮盛宴。 另外影城还会不定期举行独一无二的私人观影会及明星见面会，让你成为不折不扣的疯狂粉丝，为你制造零距离的接触，为观众提供一种全新文化娱乐消费理念及尊贵享受。 电影衍生品区域更完善了观众享受电影的完整，其精美的电影衍生工艺品独特的魅力吸引着广大影迷的眼球。本影城将不定期推出各类优惠套餐选择以实现真正意义上的物超所值，使观众在享受超低票价的同时感受昆明金鹰星美国际影城为您提供的超值体验。 星级的硬件、星级的服务、打造星级的旗舰，昆明金鹰星美国际影城秉成：“诚信、专业”的精神，让观众体会到宾至如归，提供优质服务，是昆明金鹰星美国际影城的始终追求的目标，也是昆明金鹰星美国际影城与消费者的约定。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_pw` varchar(45) NOT NULL,
  `usersex` varchar(45) DEFAULT NULL,
  `user_birth` varchar(45) DEFAULT NULL,
  `user_phone` varchar(45) NOT NULL,
  `user_mail` varchar(45) DEFAULT NULL,
  `user_point` int(11) NOT NULL DEFAULT '0',
  `idLevel` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUser`),
  KEY `fk_user_idLevel_idx` (`idLevel`),
  CONSTRAINT `fk_user_idLevel` FOREIGN KEY (`idLevel`) REFERENCES `level` (`idLevel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '111111', '男', null, '110', null, '0', '1');
INSERT INTO `user` VALUES ('2', '李四', '111111', '男', null, '120', null, '0', '1');
INSERT INTO `user` VALUES ('3', 'qqqq', 'wwww', '女', null, '13333', null, '0', '1');
INSERT INTO `user` VALUES ('4', '未命名', '11', null, null, '11', null, '0', '1');
INSERT INTO `user` VALUES ('5', '未命名', 'qqqqq', null, null, '12345', null, '0', '1');
INSERT INTO `user` VALUES ('6', '未命名', 'qqqqq', null, null, '12345566', null, '0', '1');
INSERT INTO `user` VALUES ('7', '未命名', 'qqq', null, null, '12345', null, '0', '1');
INSERT INTO `user` VALUES ('8', '未命名', '23', null, null, '23', null, '0', '1');
INSERT INTO `user` VALUES ('9', '未命名', '12', null, null, '23', null, '0', '1');
