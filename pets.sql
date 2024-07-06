/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : pets

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2024-01-21 11:44:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_comment` char(40) DEFAULT NULL,
  `c_coment_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `t_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `t_addresses`;
CREATE TABLE `t_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(22) DEFAULT NULL,
  `rphone` varchar(22) DEFAULT NULL,
  `local` varchar(22) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `isEnable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_addresses
-- ----------------------------
INSERT INTO t_addresses VALUES ('56', '安安', '1500', '华为', '等待', '31', '1');
INSERT INTO t_addresses VALUES ('57', '安安', '159999988', '华信区', '顶顶顶顶', '38', '1');
INSERT INTO t_addresses VALUES ('58', '安安', '159988', '指针', '赛事', '44', '1');
INSERT INTO t_addresses VALUES ('59', '', 'aa', '', '', '45', '1');
INSERT INTO t_addresses VALUES ('60', '从不那边', '2335316489', '岳麓区', '岳麓区', '36', '1');

-- ----------------------------
-- Table structure for `t_admins`
-- ----------------------------
DROP TABLE IF EXISTS `t_admins`;
CREATE TABLE `t_admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admins
-- ----------------------------
INSERT INTO t_admins VALUES ('4', '123@qq.com', '小J', '155555', null, '1');
INSERT INTO t_admins VALUES ('50', 'admin', 'admin', 'admin', 'admin', '0');
INSERT INTO t_admins VALUES ('51', 'bbb@qq.com', 'bbb', '123', '1234567', '1');
INSERT INTO t_admins VALUES ('52', 'admin2@qq.com', '123', '123123', 'admin123', '1');
INSERT INTO t_admins VALUES ('53', 'admin@qq.com', 'admin', '123', 'admin', '1');
INSERT INTO t_admins VALUES ('54', '9867715700@qq.com', '123', '44', '123456', '1');

-- ----------------------------
-- Table structure for `t_evaluates`
-- ----------------------------
DROP TABLE IF EXISTS `t_evaluates`;
CREATE TABLE `t_evaluates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `petsid` (`petsid`),
  CONSTRAINT `t_evaluates_ibfk_1` FOREIGN KEY (`petsid`) REFERENCES `t_pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evaluates
-- ----------------------------
INSERT INTO t_evaluates VALUES ('190', '31', '46', 'cccc', '123', 'xxx', '0', '啊啊啊');
INSERT INTO t_evaluates VALUES ('191', '31', '46', '66', '123', '55', '0', '10000元');
INSERT INTO t_evaluates VALUES ('192', '36', '46', '我喜欢金毛,重金求黑金毛', '超人强', '重金求狗', '0', '10000元');

-- ----------------------------
-- Table structure for `t_messages`
-- ----------------------------
DROP TABLE IF EXISTS `t_messages`;
CREATE TABLE `t_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_messages
-- ----------------------------
INSERT INTO t_messages VALUES ('76', '36', '<p>金毛好可爱啊!!!<br/></p><p><img src=\"/PetsBuyFront//ueditor/jsp/upload/image/20240113/1705131153738044668.jpg\" title=\"1705131153738044668.jpg\" alt=\"R-C.jpg\"/></p>', '超人强');
INSERT INTO t_messages VALUES ('77', '36', '<p>我哈大将军也未尝不可爱~</p><p><img src=\"/PetsBuyFront//ueditor/jsp/upload/image/20240113/1705131322854036324.jpg\" title=\"1705131322854036324.jpg\" alt=\"哈士奇.jpg\"/></p>', '超人强');
INSERT INTO t_messages VALUES ('78', '36', '<p>狗哥哥在说什么呀,本猫猫听不懂<br/></p><p><img src=\"/PetsBuyFront//ueditor/jsp/upload/image/20240113/1705131430726036716.jpg\" title=\"1705131430726036716.jpg\" alt=\"猫猫.jpg\"/></p>', '超人强');

-- ----------------------------
-- Table structure for `t_orders`
-- ----------------------------
DROP TABLE IF EXISTS `t_orders`;
CREATE TABLE `t_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orders
-- ----------------------------
INSERT INTO t_orders VALUES ('99', '31', '1', '1');
INSERT INTO t_orders VALUES ('100', '31', '1', '1');
INSERT INTO t_orders VALUES ('101', '31', '1', '1');
INSERT INTO t_orders VALUES ('102', '31', '2', '1');
INSERT INTO t_orders VALUES ('103', '31', '1', '1');
INSERT INTO t_orders VALUES ('104', '31', '2', '1');
INSERT INTO t_orders VALUES ('105', '31', '3', '1');
INSERT INTO t_orders VALUES ('106', '34', '1', '0');
INSERT INTO t_orders VALUES ('107', '34', '2', '0');
INSERT INTO t_orders VALUES ('108', '34', '1', '0');
INSERT INTO t_orders VALUES ('109', '35', '15', '1');
INSERT INTO t_orders VALUES ('110', '35', '2', '1');
INSERT INTO t_orders VALUES ('111', '35', '3', '1');
INSERT INTO t_orders VALUES ('112', '35', '1', '1');
INSERT INTO t_orders VALUES ('113', '31', '46', '1');
INSERT INTO t_orders VALUES ('114', '31', '46', '1');
INSERT INTO t_orders VALUES ('115', '31', '46', '1');
INSERT INTO t_orders VALUES ('116', '31', '46', '1');
INSERT INTO t_orders VALUES ('117', '31', '46', '1');
INSERT INTO t_orders VALUES ('118', '31', '45', '1');
INSERT INTO t_orders VALUES ('119', '31', '45', '1');
INSERT INTO t_orders VALUES ('120', '31', '47', '1');
INSERT INTO t_orders VALUES ('121', '31', '45', '1');
INSERT INTO t_orders VALUES ('122', '31', '47', '1');
INSERT INTO t_orders VALUES ('123', '31', '48', '1');
INSERT INTO t_orders VALUES ('124', '31', '48', '1');
INSERT INTO t_orders VALUES ('125', '31', '48', '1');
INSERT INTO t_orders VALUES ('126', '31', '46', '1');
INSERT INTO t_orders VALUES ('127', '31', '45', '1');
INSERT INTO t_orders VALUES ('128', '31', '45', '1');
INSERT INTO t_orders VALUES ('129', '31', '45', '1');
INSERT INTO t_orders VALUES ('130', '31', '47', '1');
INSERT INTO t_orders VALUES ('131', '31', '48', '1');
INSERT INTO t_orders VALUES ('132', '31', '48', '1');
INSERT INTO t_orders VALUES ('133', '31', '48', '1');
INSERT INTO t_orders VALUES ('134', '31', '45', '1');
INSERT INTO t_orders VALUES ('135', '31', '46', '1');
INSERT INTO t_orders VALUES ('136', '44', '48', '1');
INSERT INTO t_orders VALUES ('137', '44', '49', '1');
INSERT INTO t_orders VALUES ('138', '31', '47', '1');
INSERT INTO t_orders VALUES ('139', '31', '46', '1');
INSERT INTO t_orders VALUES ('140', '6', '48', '0');
INSERT INTO t_orders VALUES ('141', '31', '46', '1');
INSERT INTO t_orders VALUES ('142', '31', '46', '1');
INSERT INTO t_orders VALUES ('143', '31', '55', '1');
INSERT INTO t_orders VALUES ('144', '31', '47', '1');
INSERT INTO t_orders VALUES ('145', '31', '46', '1');
INSERT INTO t_orders VALUES ('146', '31', '46', '1');
INSERT INTO t_orders VALUES ('147', '31', '46', '1');
INSERT INTO t_orders VALUES ('148', '31', '48', '1');
INSERT INTO t_orders VALUES ('149', '31', '47', '1');
INSERT INTO t_orders VALUES ('150', '31', '48', '1');
INSERT INTO t_orders VALUES ('151', '31', '49', '1');
INSERT INTO t_orders VALUES ('152', '31', '60', '1');
INSERT INTO t_orders VALUES ('153', '31', '47', '1');
INSERT INTO t_orders VALUES ('154', '31', '46', '1');
INSERT INTO t_orders VALUES ('155', '31', '46', '1');
INSERT INTO t_orders VALUES ('156', '31', '46', '1');
INSERT INTO t_orders VALUES ('157', '31', '51', '0');
INSERT INTO t_orders VALUES ('158', '36', '47', '1');
INSERT INTO t_orders VALUES ('159', '36', '47', '1');
INSERT INTO t_orders VALUES ('160', '36', '47', '1');
INSERT INTO t_orders VALUES ('161', '36', '48', '1');
INSERT INTO t_orders VALUES ('162', '36', '47', '1');
INSERT INTO t_orders VALUES ('163', '36', '48', '1');
INSERT INTO t_orders VALUES ('164', '36', '47', '1');
INSERT INTO t_orders VALUES ('165', '36', '48', '1');
INSERT INTO t_orders VALUES ('166', '36', '47', '1');
INSERT INTO t_orders VALUES ('167', '36', '54', '1');
INSERT INTO t_orders VALUES ('168', '36', '47', '1');
INSERT INTO t_orders VALUES ('169', '36', '46', '1');
INSERT INTO t_orders VALUES ('170', '36', '47', '1');
INSERT INTO t_orders VALUES ('171', '36', '48', '1');
INSERT INTO t_orders VALUES ('172', '36', '52', '1');
INSERT INTO t_orders VALUES ('173', '36', '2', '0');
INSERT INTO t_orders VALUES ('174', '36', '4', '0');
INSERT INTO t_orders VALUES ('175', '36', '2', '0');
INSERT INTO t_orders VALUES ('176', '36', '52', '0');
INSERT INTO t_orders VALUES ('177', '36', '2', '0');

-- ----------------------------
-- Table structure for `t_pets`
-- ----------------------------
DROP TABLE IF EXISTS `t_pets`;
CREATE TABLE `t_pets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` float(20,0) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `sale` float DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pets
-- ----------------------------
INSERT INTO t_pets VALUES ('1', '哈士奇', '2', 'dog', '西伯利亚哈士奇的特色气质是友好、温和，但也不失机警、热情、聪明、温顺、热心，饲养的城乡均可，宽敞为佳。最好是住在郊区，有一个有围栏的院子更佳。也适合居住小区空地较多的饲养者、害怕孤单须有人陪伴、精力旺盛运动量大。不适宜老年人和休闲时间不多的上班族和学生饲养。', 'https://img.zcool.cn/community/0162725e4e965fa801216518afb1bf.jpg@1280w_1l_2o_100sh.jpg', '500.2', '0');
INSERT INTO t_pets VALUES ('2', '博美犬', '3', 'dog', '博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。', 'https://scpic.chinaz.net/files/pic/pic9/201607/fpic5648.jpg', '400', '0');
INSERT INTO t_pets VALUES ('3', '小狗玩具', '0', 'play', '狗骨头', 'https://cbu01.alicdn.com/img/ibank/2017/473/360/4133063374_813356358.jpg', '22', '0');
INSERT INTO t_pets VALUES ('4', '小狸花', '2', 'cat', '狸花猫的原产地是中国，属于自然猫，是在千百年中经过许多品种的自然淘汰而保留下来的品种。人们最熟悉的就要算是“狸猫换太子”（宋朝）的故事了，这也是能够找到的最早有关于狸花猫的记录了，所以，狸花猫就有了一个这样的英文名字DragonLi，由CFA猫会授予。它非常受百姓们喜欢，因为它有漂亮、厚实的皮毛，健康的身体。容易喂养，并且对捕捉老鼠十分擅长', 'https://pic1.zhimg.com/v2-ff6348a79b2bb94d3156e777fc11c5cf_r.jpg', '100', '0');
INSERT INTO t_pets VALUES ('5', '小花猫', '1', 'cat', '狸花猫的原产地是中国，属于自然猫，是在千百年中经过许多品种的自然淘汰而保留下来的品种。人们最熟悉的就要算是“狸猫换太子”（宋朝）的故事了，这也是能够找到的最早有关于狸花猫的记录了，所以，狸花猫就有了一个这样的英文名字DragonLi，由CFA猫会授予。它非常受百姓们喜欢，因为它有漂亮、厚实的皮毛，健康的身体。容易喂养，并且对捕捉老鼠十分擅长', 'https://pic4.zhimg.com/v2-97dcbb845ed0d09a89da1e595afe4132_r.jpg', '25', '0');
INSERT INTO t_pets VALUES ('10', '旺财', '1', 'dog', '中华田园犬', 'https://pic4.zhimg.com/v2-a654f0d0901b9beca41bd8cfd4bde131_r.jpg?source=1940ef5c', '500', '0');
INSERT INTO t_pets VALUES ('11', '小橘', '1', 'cat', '橘猫，是食肉目猫科动物。橘猫的全身为黄色，大多为短毛，有极少数是长毛，是中华田园猫中较为常见的毛色；身上的斑纹极像虎皮的纹路，所以又被称为虎斑猫。 公橘猫诞生的概率是母橘猫的三倍，体重比其他花色的公猫较重。 因为全身为黄色而得名，又被称作黄猫，黄狸猫。', 'https://img.zcool.cn/community/01cba55bb60cd8a801213deaf83bb5.jpg@2o.jpg', '99', '0');
INSERT INTO t_pets VALUES ('15', '大花猫', '2', 'cat', '狸花猫的原产地是中国,属于自然猫,是在千百年中经过许多品种的自然淘汰而保留下来的品种。人们最熟悉的就要算是“狸猫换太子”(宋朝)的故事了,这也是能够找到的最早有关于狸花猫的记录了,所以,狸花猫就有了一个这样的英文名字DragonLi,由CFA猫会授予。它非常受百姓们喜欢,因为它有漂亮、厚实的皮毛,健康的身体。容易喂养,并且对捕捉老鼠十分在行。[1]', 'https://server.xmyeditor.com/uploads/colorstyle/20200407/0325156b98c054533f3dce88b092ca0a.jpg ', '100', '0');
INSERT INTO t_pets VALUES ('18', '波斯猫', '1', 'cat', '波斯猫(Persian cat)是以阿富汗的土种长毛猫和土耳其的安哥拉长毛猫为基础,在英国经过100多年的选种繁殖,于1860年诞生的一个品种。 波斯猫是最常见的长毛猫,波斯猫有一张讨人喜爱的面庞,长而华丽的背毛,优雅的举止,故有“猫中王子”、“王妃”之称,是世界上爱猫者最喜欢的纯种猫之一,占有极其重要的地位。', 'https://img.zcool.cn/community/019d365d392896a80120695c31ef16.jpg@2o.jpg', '1111', '0');
INSERT INTO t_pets VALUES ('19', '猫粮', '1', 'play', '猫粮', 'https://img.zcool.cn/community/0151025d811244a8012060be1ce977.jpg@1280w_1l_2o_100sh.jpg', '33', '0');
INSERT INTO t_pets VALUES ('27', '二哈', '1', 'dog', '西伯利亚雪橇犬(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。...', 'https://pic4.zhimg.com/v2-a482a31f313ce3aa98f5dc1c87972fbd_r.jpg', '5000', '0');
INSERT INTO t_pets VALUES ('28', '博美', '1', 'dog', '博美是一种紧凑、短背、活泼的一种狗狗。学名哈多利系博美犬，俗称英系博美犬，是德国狐狸犬的一种。原产德国。以白色和棕色的居多。', 'https://n.ikafan.com/static/www.petking.cn/upload/20200806/65c04c85e0589e836c38304f26b63967.jpg', '200', '0');
INSERT INTO t_pets VALUES ('31', '哈士奇', '12', 'dog', '西伯利亚雪橇犬(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。...', 'https://img.zcool.cn/community/0162725e4e965fa801216518afb1bf.jpg@1280w_1l_2o_100sh.jpg', '100', '0');
INSERT INTO t_pets VALUES ('34', '波斯猫', '12', 'cat', '波斯猫(Persian cat)是以阿富汗的土种长毛猫和土耳其的安哥拉长毛猫为基础,在英国经过100多年的选种繁殖,于1860年诞生的一个品种。 波斯猫是最常见的长毛猫,波斯猫有一张讨人喜爱的面庞,长而华丽的背毛,优雅的举止,故有“猫中王子”、“王妃”之称,是世界上爱猫者最喜欢的纯种猫之一,占有极其重要的地位。', 'https://img.zcool.cn/community/01e63c5d3901e4a8012187f40308ea.jpg@2o.jpg', '100', '0');
INSERT INTO t_pets VALUES ('39', '波斯猫', '123', 'cat', '波斯猫(Persian cat)是以阿富汗的土种长毛猫和土耳其的安哥拉长毛猫为基础,在英国经过100多年的选种繁殖,于1860年诞生的一个品种。 波斯猫是最常见的长毛猫,波斯猫有一张讨人喜爱的面庞,长而华丽的背毛,优雅的举止,故有“猫中王子”、“王妃”之称,是世界上爱猫者最喜欢的纯种猫之一,占有极其重要的地位。', 'https://img.zcool.cn/community/0131aa5d391e62a8012187f4623fef.jpg@1280w_1l_2o_100sh.jpg', '500', '0');
INSERT INTO t_pets VALUES ('40', '博美', '2', 'dog', '博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。', 'https://scpic.chinaz.net/files/pic/pic9/202105/hpic3990.jpg', '500', '0');
INSERT INTO t_pets VALUES ('45', '一牧', '19', 'dog', '边牧', 'https://pic.ntimg.cn/file/20160406/20616631_131808974000_2.jpg', '123', '0');
INSERT INTO t_pets VALUES ('46', '暖男', '2', 'dog22', '金毛寻回犬(英语:Golden Retriever)是比较现代并很流行的狗的品种,是单猎犬,作为用来在猎捕野禽的寻回犬而培养出来的,游泳的续航力极佳。 金毛寻回犬它是最常见的家犬之一,因为它很容易养,有耐心并且对主人要求不多,只要定期的运动,食物和兽医体检就可以了。金毛的独特之处在于它讨人喜欢的性格,是属于匀称、有力、活泼的一个犬种,特征是稳固、身体各部位配合合理,腿既不太长也不笨拙,表情友善,个性热情、机警、自信而且不怕生。金毛犬最早是一种寻回猎犬。现在大多作为导盲犬与宠物狗。对小孩子或者婴儿十分友善。金毛犬是位列世界犬种智商排行的第四名。', 'https://img.zcool.cn/community/011b675dcea68aa8012129e202843d.jpg@1280w_1l_2o_100sh.jpg', '5000', '0');
INSERT INTO t_pets VALUES ('47', '哈士奇聪聪', '1', 'dog', '(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。', 'https://pic.52112.com/180303/180303_59/moRJZ96Kxf.jpg', '50005', '0');
INSERT INTO t_pets VALUES ('48', '猫咪', '1', 'cat', '属于猫科动物,分家猫、野猫,是全世界家庭中较为广泛的宠物。家猫的祖先据推测是起源于古埃及的沙漠猫,波斯...  物种始源 形态特征 生活习性 驯养方法 主要品种 更', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2247692397,1189743173&fm=5', '100', '1');
INSERT INTO t_pets VALUES ('50', '贵宾犬', '1', 'dog', '宾犬(Poodle),也称“贵妇犬”,又称“卷毛狗”,在德语中,Pudel是“水花飞溅”的意思,是犬亚科犬属的一种动物。贵宾犬的来源就像它为了拖出猎禽所涉过的水一样浑浊不清...', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1610289311,943304439&fm=200&gp=0.jpg', '100', '1');
INSERT INTO t_pets VALUES ('51', '猫', '2', 'cat', '一只猫', 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=0d45beaf41fbfbeddc59317940cb900b/a2cc7cd98d1001e96eeb3b9fb20e7bec55e7974e.jpg', '233', '1');
INSERT INTO t_pets VALUES ('52', '苏格兰猫', '12', 'cat', '苏格兰猫,是短毛猫的一种。 [6]其体型丰满,呈半圆形;毛色常见深褐色、咖啡色等;体毛柔软、浓密;眼睛颜色因体毛的不同而异,双目圆睁有神;头圆而大,鼻子宽直,尾巴肥胖。弯曲的耳朵是其最大特征,又称“苏格兰塌耳猫”。 [7] 苏格兰猫原产于英国。 [7]苏格兰猫留恋家庭,依赖主人,性格平静、懒动,但遇到猎物时会迅速出击, [6]抗病力强,耐寒。苏格兰猫每窝平均产3-4仔,但其后代并不一定都是塌耳,幼猫出生时,两耳直立状,4周之后,耳才向前垂下,随着年龄的增长,耳朵越垂越低。 [8] 苏格兰猫的祖先来自苏格兰严寒的斯德哥尔摩地区,1961年由当地一个农场猫突变生下一只雌猫,因其具独特的弯耳而备受珍爱,并得以繁衍。苏格兰猫曲折耳朵的遗传基因是因耳朵的不洁等情况造成,在英国一段时间内中止其登记和展示,直至1978年才以新的面貌进入群众视野。', 'https://img.zcool.cn/community/0126a35652fdb632f87512f6883726.jpg@1280w_1l_2o_100sh.jpg', '5001', '0');
INSERT INTO t_pets VALUES ('53', '英国猫', '2', 'cat', '英国猫', 'https://img.zcool.cn/community/015aa55c7cda32a801213f262841d7.jpg@1280w_1l_2o_100sh.jpg', '200', '0');
INSERT INTO t_pets VALUES ('54', '波斯猫', '1', 'cat', '波斯猫', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3935878919,2632259825&fm=58', '120', '1');
INSERT INTO t_pets VALUES ('55', '宠物饲料', '1', 'play', '皇家饲料', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2819942671,3998183454&fm=58&bpow=500&bpoh=396', '150', '1');
INSERT INTO t_pets VALUES ('56', '哈士奇', '1', 'dog', '哈士奇', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3807093741,2063253365&fm=200&gp=0.jpg', '5001', '1');

-- ----------------------------
-- Table structure for `t_petstousers`
-- ----------------------------
DROP TABLE IF EXISTS `t_petstousers`;
CREATE TABLE `t_petstousers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `petsName` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `sale` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_petstousers
-- ----------------------------
INSERT INTO t_petstousers VALUES ('22', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('23', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('24', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('25', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('26', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('27', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('28', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('29', 'a', '博美犬', '1', '会员', '啊啊', '啊啊', 'aa', '400');
INSERT INTO t_petstousers VALUES ('30', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO t_petstousers VALUES ('31', 'a', '博美犬', '1', '会员', '啊啊', '啊啊', 'aa', '400');
INSERT INTO t_petstousers VALUES ('32', 'a', '玩具', '1', '会员', '啊啊', '啊啊', 'aa', '22');
INSERT INTO t_petstousers VALUES ('33', '海淀', '哈士奇', '1', 'xiaoJ啊', '150091', '小J', '北京', '500.2');
INSERT INTO t_petstousers VALUES ('34', '海淀区', '大花猫', '1', '会员', '150091', '大肥', '北京', '100');
INSERT INTO t_petstousers VALUES ('35', '海淀区', '博美犬', '1', '会员', '150091', '大肥', '北京', '400');
INSERT INTO t_petstousers VALUES ('36', '海淀区', '玩具', '1', '会员', '150091', '大肥', '北京', '22');
INSERT INTO t_petstousers VALUES ('37', '海淀区', '哈士奇', '1', '会员a', '150091', '大肥', '北京', '500.2');
INSERT INTO t_petstousers VALUES ('38', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('39', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('40', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('41', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('42', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('43', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('44', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('45', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('46', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('47', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('48', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('49', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('50', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('51', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('52', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('53', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('54', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('55', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('56', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('57', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('58', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('59', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('60', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('61', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('62', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO t_petstousers VALUES ('63', '123123', '啊钩子', '1', '赛亚人', '123123', '123123', '123123', '123');
INSERT INTO t_petstousers VALUES ('64', '请问', '金毛', '1', '赛亚人', '15008121886', '超级赛亚人', '二货2', '5000');
INSERT INTO t_petstousers VALUES ('65', '赛事', '猫咪', '1', '只是一个测试', '159988', '安安', '指针', '100');
INSERT INTO t_petstousers VALUES ('66', '赛事', '狗骨头', '1', '只是一个测试', '159988', '安安', '指针', '33');
INSERT INTO t_petstousers VALUES ('67', '等待', '哈士奇', '1', '赛亚人23', '1500', '安安', '华为', '50005');
INSERT INTO t_petstousers VALUES ('68', '等待', '金毛212', '1', '赛亚人23', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('69', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('70', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('71', '等待', '宠物饲料', '1', '123', '1500', '安安', '华为', '150');
INSERT INTO t_petstousers VALUES ('72', '等待', '哈士奇', '1', '123', '1500', '安安', '华为', '50005');
INSERT INTO t_petstousers VALUES ('73', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('74', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('75', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('76', '等待', '猫咪', '1', '123', '1500', '安安', '华为', '100');
INSERT INTO t_petstousers VALUES ('77', '等待', '哈士奇', '1', '123', '1500', '安安', '华为', '50005');
INSERT INTO t_petstousers VALUES ('78', '等待', '猫咪', '1', '123', '1500', '安安', '华为', '100');
INSERT INTO t_petstousers VALUES ('79', '等待', '狗骨头1', '1', '123', '1500', '安安', '华为', '33.05');
INSERT INTO t_petstousers VALUES ('80', '等待', '123', '0', '123', '1500', '安安', '华为', '12');
INSERT INTO t_petstousers VALUES ('81', '等待', '哈士奇', '0', '123', '1500', '安安', '华为', '50005');
INSERT INTO t_petstousers VALUES ('82', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('83', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('84', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO t_petstousers VALUES ('85', '等待', '猫', '0', '123', '1500', '安安', '华为', '233');
INSERT INTO t_petstousers VALUES ('86', '岳麓区', '哈士奇', '1', '超人强', '2335316489', '从不那边', '岳麓区', '50005');
INSERT INTO t_petstousers VALUES ('87', '岳麓区', '猫咪', '1', '超人强', '2335316489', '从不那边', '岳麓区', '100');
INSERT INTO t_petstousers VALUES ('88', '岳麓区', '哈士奇', '0', '超人强', '2335316489', '从不那边', '岳麓区', '50005');
INSERT INTO t_petstousers VALUES ('89', '岳麓区', '波斯猫25', '0', '超人强', '2335316489', '从不那边', '岳麓区', '120');
INSERT INTO t_petstousers VALUES ('90', '岳麓区', '哈士奇', '1', '超人强', '2335316489', '从不那边', '岳麓区', '50005');
INSERT INTO t_petstousers VALUES ('91', '岳麓区', '金毛', '1', '超人强', '2335316489', '从不那边', '岳麓区', '5000');
INSERT INTO t_petstousers VALUES ('92', '岳麓区', '哈士奇', '0', '超人强', '2335316489', '从不那边', '岳麓区', '50005');
INSERT INTO t_petstousers VALUES ('93', '岳麓区', '猫咪', '0', '超人强', '2335316489', '从不那边', '岳麓区', '100');
INSERT INTO t_petstousers VALUES ('94', '岳麓区', '苏格兰猫', '0', '超人强', '2335316489', '从不那边', '岳麓区', '5001');
INSERT INTO t_petstousers VALUES ('95', '岳麓区', '博美犬', '0', '超人强', '2335316489', '从不那边', '岳麓区', '400');
INSERT INTO t_petstousers VALUES ('96', '岳麓区', '小狸花', '0', '超人强', '2335316489', '从不那边', '岳麓区', '100');
INSERT INTO t_petstousers VALUES ('97', '岳麓区', '博美犬', '0', '超人强', '2335316489', '从不那边', '岳麓区', '400');
INSERT INTO t_petstousers VALUES ('98', '岳麓区', '苏格兰猫', '0', '超人强', '2335316489', '从不那边', '岳麓区', '5001');
INSERT INTO t_petstousers VALUES ('99', '岳麓区', '博美犬', '0', '超人强', '2335316489', '从不那边', '岳麓区', '400');

-- ----------------------------
-- Table structure for `t_shopcars`
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcars`;
CREATE TABLE `t_shopcars` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `isEnale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `petsid` (`petsid`),
  CONSTRAINT `t_shopcars_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_users` (`id`),
  CONSTRAINT `t_shopcars_ibfk_2` FOREIGN KEY (`petsid`) REFERENCES `t_pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcars
-- ----------------------------
INSERT INTO t_shopcars VALUES ('118', '35', '19', null);

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adressId` bigint(20) DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL,
  `score` varchar(22) DEFAULT NULL,
  `money` float(22,0) DEFAULT NULL,
  `name` varchar(22) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adressId` (`adressId`),
  CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`adressId`) REFERENCES `t_addresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO t_users VALUES ('6', null, '12345678@qq.com', '123123', '1000', null, '我是好人232', null, '180000000035', null, null);
INSERT INTO t_users VALUES ('30', null, '123456789@qq.com', '123123', '1000', null, '上帝', null, null, null, null);
INSERT INTO t_users VALUES ('31', null, '9867715700@qq.com', '123456', '1060', null, '123', null, '122', '简单简单3t', '啊');
INSERT INTO t_users VALUES ('32', null, '123@qq.ocm', '123123', '1000', null, '无敌', null, null, null, null);
INSERT INTO t_users VALUES ('33', null, 'abc1@a.com', '123123', '1000', null, '会员2', null, '123123', '123', '123');
INSERT INTO t_users VALUES ('34', null, '12345@qq.com', '123456', '1000', null, '会员', null, null, null, null);
INSERT INTO t_users VALUES ('35', null, '1234567@qq.com', '123456', '1000', null, '会员a', null, '1500111', null, null);
INSERT INTO t_users VALUES ('36', null, '986771570@qq.com', '123', '1060', null, '超人强', null, '150081', '', '学生');
INSERT INTO t_users VALUES ('37', null, 'abc3@a.com', '123456', '1000', null, '会员', null, '1500', null, null);
INSERT INTO t_users VALUES ('38', null, 'abcd@qq.com', '123456', '1000', null, '会员33355', null, '1500', '444', '22');
INSERT INTO t_users VALUES ('39', null, '986@qq.com', '123456', '1000', null, '会员', null, '1500', '123123123', '123');
INSERT INTO t_users VALUES ('40', null, 'a@qq.com', '2', '1000', null, '会员', null, '1', null, null);
INSERT INTO t_users VALUES ('41', null, 'ab@qq.com', '123123', '1000', null, '用户啊', null, '15002', '呃呃呃', '啊');
INSERT INTO t_users VALUES ('42', null, 'test@qq.com', '123123', '1000', null, '会员3123', null, '1555', '啊啊啊啊啊啊啊', '自已');
INSERT INTO t_users VALUES ('43', null, 'test2@qq.com', '123123', '1000', null, '123123', null, '12323', '123123', '123123');
INSERT INTO t_users VALUES ('44', null, 'test3@qq.com', '123123', '1000', null, '只是一个测试2', null, '1500995555', '123', '测试');
INSERT INTO t_users VALUES ('45', null, '989@qq.com', '989', '1000', null, '会员2', null, '98955a', '12333', '123');
INSERT INTO t_users VALUES ('46', null, '123456781@qq.com', '123456', '1000', null, '会员', null, '12345678@qq.com', null, null);
INSERT INTO t_users VALUES ('47', null, '2335316489@qq.com', '123', '1000', null, '会员', null, '18525922837', null, null);
