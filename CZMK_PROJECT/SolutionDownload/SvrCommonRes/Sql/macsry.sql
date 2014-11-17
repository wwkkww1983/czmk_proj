/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : macsry

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2012-08-09 08:57:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `kjinfo`
-- ----------------------------
DROP TABLE IF EXISTS `kjinfo`;
CREATE TABLE `kjinfo` (
  `KJINFOID` int(11) NOT NULL,
  `KJINFONAME` varchar(50) NOT NULL,
  `MEMO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KJINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kjinfo
-- ----------------------------
INSERT INTO `kjinfo` VALUES ('1', '煤矿全称', null);
INSERT INTO `kjinfo` VALUES ('2', '煤矿简称', null);
INSERT INTO `kjinfo` VALUES ('3', '矿长姓名', null);
INSERT INTO `kjinfo` VALUES ('4', '详细地址', null);
INSERT INTO `kjinfo` VALUES ('5', '核定生产能力', '万吨');
INSERT INTO `kjinfo` VALUES ('6', '实际生产能力', '万吨');
INSERT INTO `kjinfo` VALUES ('7', '核定下井人数', '人');
INSERT INTO `kjinfo` VALUES ('8', '核定每班下井时间', '小时');
INSERT INTO `kjinfo` VALUES ('9', '矿联系电话', null);
INSERT INTO `kjinfo` VALUES ('10', '井田面积', '平方公里');
INSERT INTO `kjinfo` VALUES ('11', '可采煤层', null);
INSERT INTO `kjinfo` VALUES ('12', '采矿许可证编号', null);
INSERT INTO `kjinfo` VALUES ('13', '安全生产许可证编号', null);
INSERT INTO `kjinfo` VALUES ('14', '煤炭生产许可证编号', null);
INSERT INTO `kjinfo` VALUES ('15', '矿长安全生产许可资格证编号', null);
INSERT INTO `kjinfo` VALUES ('16', '矿长资格证编号', null);
INSERT INTO `kjinfo` VALUES ('17', '工商执照编号', null);
INSERT INTO `kjinfo` VALUES ('18', '矿井瓦斯等级', null);
INSERT INTO `kjinfo` VALUES ('19', '绝对瓦斯涌出量', '立方米/分钟');
INSERT INTO `kjinfo` VALUES ('20', '相对瓦斯涌出量', '立方米/吨');
INSERT INTO `kjinfo` VALUES ('21', '主用服务器IP地址', null);
INSERT INTO `kjinfo` VALUES ('22', '备用服务器IP地址', null);
INSERT INTO `kjinfo` VALUES ('23', '备用IP地址', null);
INSERT INTO `kjinfo` VALUES ('24', '主井口Y坐标', null);
INSERT INTO `kjinfo` VALUES ('25', '主井口X坐标', null);
INSERT INTO `kjinfo` VALUES ('26', '备注', null);

-- ----------------------------
-- Table structure for `rybh`
-- ----------------------------
DROP TABLE IF EXISTS `rybh`;
CREATE TABLE `rybh` (
  `BHID` int(11) NOT NULL,
  `KJID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `REACHTIME` datetime NOT NULL,
  PRIMARY KEY (`BHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rybh
-- ----------------------------

-- ----------------------------
-- Table structure for `rycs`
-- ----------------------------
DROP TABLE IF EXISTS `rycs`;
CREATE TABLE `rycs` (
  `CSID` int(11) NOT NULL AUTO_INCREMENT,
  `FILECREATETIME` datetime NOT NULL,
  `KJID` int(11) NOT NULL,
  `QYID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `ALARMBEGINTIME` datetime NOT NULL,
  `ALARMENDTIME` datetime DEFAULT NULL,
  `INWELLTIME` datetime NOT NULL,
  `INQYTIME` datetime NOT NULL,
  `INFZTIME` datetime NOT NULL,
  PRIMARY KEY (`CSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rycs
-- ----------------------------

-- ----------------------------
-- Table structure for `rycy`
-- ----------------------------
DROP TABLE IF EXISTS `rycy`;
CREATE TABLE `rycy` (
  `CYID` int(11) NOT NULL AUTO_INCREMENT,
  `FILECREATETIME` datetime NOT NULL,
  `KJID` int(11) NOT NULL,
  `QYID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `CYTYPE` varchar(30) NOT NULL,
  `DYS` int(11) NOT NULL,
  `ZRS` int(11) NOT NULL,
  `FZZRS` int(11) NOT NULL,
  `ALARMBEGINTIME` datetime NOT NULL,
  `ALARMENDTIME` datetime DEFAULT NULL,
  `INWELLTIME` datetime NOT NULL,
  `INQYTIME` datetime NOT NULL,
  `INFZTIME` datetime NOT NULL,
  PRIMARY KEY (`CYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rycy
-- ----------------------------

-- ----------------------------
-- Table structure for `ryfz`
-- ----------------------------
DROP TABLE IF EXISTS `ryfz`;
CREATE TABLE `ryfz` (
  `KJID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `FZTYPE` int(11) NOT NULL,
  `FZNAME` varchar(50) NOT NULL,
  `FZXCOR` float NOT NULL,
  `FZYCOR` float NOT NULL,
  `MEMO` varchar(50) NOT NULL,
  PRIMARY KEY (`KJID`,`FZID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryfz
-- ----------------------------

-- ----------------------------
-- Table structure for `rygc`
-- ----------------------------
DROP TABLE IF EXISTS `rygc`;
CREATE TABLE `rygc` (
  `GCID` int(11) NOT NULL AUTO_INCREMENT,
  `KJID` int(11) NOT NULL,
  `KJJC` varchar(20) DEFAULT NULL,
  `QYID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `GCTIME` datetime NOT NULL,
  `GCZRS` int(11) NOT NULL,
  `GCTAG` int(11) NOT NULL,
  `INWELLTIME` datetime DEFAULT NULL,
  `OUTWELLTIME` datetime DEFAULT NULL,
  `INQYZRS` int(11) NOT NULL,
  `INQYTIME` datetime DEFAULT NULL,
  `INFZZRS` int(11) NOT NULL,
  `INFZTIME` datetime DEFAULT NULL,
  `GJFZ` varchar(1000) NOT NULL,
  PRIMARY KEY (`GCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rygc
-- ----------------------------

-- ----------------------------
-- Table structure for `rygj`
-- ----------------------------
DROP TABLE IF EXISTS `rygj`;
CREATE TABLE `rygj` (
  `GJID` int(11) NOT NULL AUTO_INCREMENT,
  `RYCARDID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `INFZTIME` datetime NOT NULL,
  PRIMARY KEY (`GJID`,`RYCARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rygj
-- ----------------------------

-- ----------------------------
-- Table structure for `rygz`
-- ----------------------------
DROP TABLE IF EXISTS `rygz`;
CREATE TABLE `rygz` (
  `KJID` int(11) NOT NULL,
  `GZID` int(11) NOT NULL,
  `GZNAME` varchar(20) NOT NULL,
  `MEMO` varchar(100) NOT NULL,
  PRIMARY KEY (`KJID`,`GZID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rygz
-- ----------------------------

-- ----------------------------
-- Table structure for `rykj`
-- ----------------------------
DROP TABLE IF EXISTS `rykj`;
CREATE TABLE `rykj` (
  `KJID` int(11) NOT NULL,
  `KJINFOID` int(11) NOT NULL,
  `KJINFONAME` varchar(50) NOT NULL,
  `KJINFOVALUE` varchar(50) DEFAULT NULL,
  `MEMO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KJID`,`KJINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rykj
-- ----------------------------

-- ----------------------------
-- Table structure for `ryqd`
-- ----------------------------
DROP TABLE IF EXISTS `ryqd`;
CREATE TABLE `ryqd` (
  `KJID` int(11) NOT NULL,
  `QDID` int(11) NOT NULL,
  `QDNAME` varchar(20) NOT NULL,
  `MEMO` varchar(100) NOT NULL,
  PRIMARY KEY (`KJID`,`QDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryqd
-- ----------------------------

-- ----------------------------
-- Table structure for `ryqy`
-- ----------------------------
DROP TABLE IF EXISTS `ryqy`;
CREATE TABLE `ryqy` (
  `KJID` int(11) NOT NULL,
  `QYID` int(11) NOT NULL,
  `QYNAME` varchar(50) NOT NULL,
  `QYTYPE` int(11) NOT NULL,
  `QYRYNUM` int(11) NOT NULL,
  PRIMARY KEY (`KJID`,`QYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryqy
-- ----------------------------

-- ----------------------------
-- Table structure for `ryrtdbref`
-- ----------------------------
DROP TABLE IF EXISTS `ryrtdbref`;
CREATE TABLE `ryrtdbref` (
  `POINTNAME` varchar(64) NOT NULL,
  `POINTTYPE` int(11) NOT NULL,
  `IDNUMBER` int(11) DEFAULT NULL,
  `USESTATUS` int(11) DEFAULT '0',
  PRIMARY KEY (`POINTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryrtdbref
-- ----------------------------

-- ----------------------------
-- Table structure for `ryry`
-- ----------------------------
DROP TABLE IF EXISTS `ryry`;
CREATE TABLE `ryry` (
  `KJID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `RYNAME` varchar(50) NOT NULL,
  `RYIDNUMBER` varchar(30) NOT NULL,
  `RYGZID` varchar(30) NOT NULL,
  `RYGROUP` varchar(30) NOT NULL,
  `RYMAINADDR` varchar(50) NOT NULL,
  `RYMAXTIME` int(11) NOT NULL,
  `RYBIRTHDAY` varchar(20) NOT NULL,
  `RYSEX` varchar(20) NOT NULL,
  `RYBLOOD` varchar(10) NOT NULL,
  `RYXL` varchar(20) NOT NULL,
  `RYHY` varchar(20) NOT NULL,
  `RYTELEPHONE` varchar(50) NOT NULL,
  `RYCELLPHONE` varchar(50) NOT NULL,
  `RYHOMEADDR` varchar(50) NOT NULL,
  `RYCER` varchar(50) NOT NULL,
  `RYCERDATE` varchar(20) NOT NULL,
  `MEMO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`KJID`,`RYCARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryry
-- ----------------------------
INSERT INTO `ryry` VALUES ('1', '100001', '赵方', '110101197901015014', '掘进', '掘进', '掘进工作面', '8', '1979-01-01', '男', 'A', '大学', '已婚', '6898766', '13878569099', '山东莱雾', '人员卡00100001', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100002', '王刚', '310126196902156328', '维修', '维修', '掘进工作面', '8', '1969-02-15', '男', 'B', '高中', '未婚', '2588866', '13695869987', '河北邯郸靳庄1组389', '人员卡00100002', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100003', '张强', '120218197504057981', '检修', '检修', '掘进工作面', '6', '1975-04-05', '男', 'A', '大学', '已婚', '6898766', '13878569299', '山西太原', '人员卡00100003', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100004', '李刚', '410106198006256058', '检修', '检修', '掘进工作面', '8', '1980-06-25', '男', 'B', '高中', '未婚', '2588866', '13695869987', '河南郑州', '人员卡00100004', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100005', '王一', '510353197601215014', '检修', '检修', '掘进工作面', '8', '1976-01-21', '男', 'O', '大学', '已婚', '6898766', '13878569979', '广东深圳', '人员卡00100005', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100006', '张涵', '710421197805156328', '掘进', '掘进', '掘进工作面', '8', '1978-05-15', '男', 'B', '高中', '未婚', '2588866', '13695869987', '内蒙古包头', '人员卡00100006', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100007', '孙进', '260134197406165014', '掘进', '掘进', '掘进工作面', '8', '1974-06-06', '男', 'A', '大学', '已婚', '6898766', '13878569599', '山东济宁', '人员卡00100007', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100008', '华强', '320231198106306328', '掘进', '掘进', '掘进工作面', '8', '1981-06-30', '男', 'B', '高中', '未婚', '2588866', '13695869987', '河北石家庄', '人员卡00100008', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100009', '李永', '640122197508055014', '维修', '维修', '掘进工作面', '8', '1975-08-05', '男', 'A', '大学', '已婚', '6898766', '13878564999', '江苏南京', '人员卡00100009', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100010', '李伟', '150213197407256328', '维修', '维修', '掘进工作面', '8', '1974-07-25', '男', 'B', '高中', '未婚', '2588866', '13695869987', '陕西西安', '人员卡00100010', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100011', '刘佳', '260323197906191014', '维修', '维修', '掘进工作面', '8', '1979-06-19', '男', 'A', '大学', '已婚', '6898766', '13878563999', '甘肃兰州', '人员卡00100011', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100012', '张楠', '330431198202176328', '检修', '检修', '掘进工作面', '8', '1982-02-17', '男', 'B', '高中', '未婚', '2588866', '13695869987', '浙江杭州', '人员卡00100012', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100013', '张洋', '340512198310015018', '检修', '检修', '掘进工作面', '8', '1983-10-01', '男', 'A', '大学', '已婚', '6898766', '13878569099', '江西景德镇', '人员卡00100013', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100014', '孙阳', '260203197609236328', '掘进', '掘进', '掘进工作面', '8', '1976-09-23', '男', 'O', '高中', '未婚', '2588866', '13695869987', '云南昆明', '人员卡00100014', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100015', '王瑞', '650214197711115014', '检修', '检修', '掘进工作面', '8', '1977-11-11', '男', 'A', '大学', '已婚', '6898766', '13878569599', '湖北武汉', '人员卡00100015', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100017', '周建', '430426198105150000', '掘进', '掘进', '掘进工作面', '2', '1981-05-15', '女', 'A', '大学', '已婚', '6890000', '13878569499', '四川成都', '人员卡00100017', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100018', '周伟', '620531198508200000', '检修', '检修', '掘进工作面', '2', '1985-08-20', '女', 'B', '大专', '未婚', '2580000', '13695869987', '重庆永川', '人员卡00109999', '2016-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100019', '孙伟', '210341197311220000', '掘进', '掘进', '掘进工作面', '2', '1973-11-22', '女', 'A', '大学', '已婚', '6890000', '13878569999', '青海西宁', '人员卡00106541', '2018-01-01\r', null);
INSERT INTO `ryry` VALUES ('1', '100020', '王伟', '222223196904076156', '掘进', '掘进', '掘进工作面', '3', '1969-12-07', '女', 'B', '高中', '未婚', '7770000', '18790223232', '安徽芜湖', '人员卡00102222', '2016-12-01', null);
INSERT INTO `ryry` VALUES ('1', '101216', '李强', '540722197312061234', '掘进', '掘进', '掘进工作面', '2', '1973-12-06', '男', 'B', '高中', '未婚', '2588866', '13695860000', '湖南长沙', '人员卡00101235', '2016-01-01\r', null);

-- ----------------------------
-- Table structure for `ryss`
-- ----------------------------
DROP TABLE IF EXISTS `ryss`;
CREATE TABLE `ryss` (
  `KJID` int(11) NOT NULL,
  `RYCARDID` int(11) NOT NULL,
  `QYID` int(11) DEFAULT NULL,
  `FZID` int(11) NOT NULL,
  `INFZTIME` datetime NOT NULL,
  PRIMARY KEY (`RYCARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryss
-- ----------------------------

-- ----------------------------
-- Table structure for `rytj`
-- ----------------------------
DROP TABLE IF EXISTS `rytj`;
CREATE TABLE `rytj` (
  `KJID` int(11) NOT NULL,
  `TJID` int(11) NOT NULL,
  `RYNUM` int(11) NOT NULL,
  PRIMARY KEY (`KJID`,`TJID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rytj
-- ----------------------------

-- ----------------------------
-- Table structure for `ryyc`
-- ----------------------------
DROP TABLE IF EXISTS `ryyc`;
CREATE TABLE `ryyc` (
  `YCID` int(11) NOT NULL AUTO_INCREMENT,
  `FILECREATETIME` datetime NOT NULL,
  `KJID` int(11) NOT NULL,
  `FZID` int(11) NOT NULL,
  `FZSTATUS` varchar(64) NOT NULL,
  `YCBEGINTIME` datetime NOT NULL,
  `YCENDTIME` datetime DEFAULT NULL,
  `YCDESCRIBE` varchar(64) NOT NULL,
  PRIMARY KEY (`YCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ryyc
-- ----------------------------
