
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(16) NOT NULL DEFAULT '',
  `Alive` tinyint(1) NOT NULL DEFAULT '1',
  `InstanceID` varchar(4) NOT NULL DEFAULT '',
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` varchar(2048) NOT NULL DEFAULT '[]',
  `Backpack` varchar(2048) NOT NULL DEFAULT '[]',
  `Medical` varchar(256) NOT NULL DEFAULT '[]',
  `Generation` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Datestamp` timestamp NULL DEFAULT NULL,
  `LastLogin` timestamp NULL DEFAULT NULL,
  `LastAte` timestamp NULL DEFAULT NULL,
  `LastDrank` timestamp NULL DEFAULT NULL,
  `Humanity` mediumint(6) DEFAULT NULL,
  `KillsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `distanceFoot` bigint(15) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '0',
  `currentState` varchar(256) NOT NULL DEFAULT '[]',
  `KillsH` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `KillsB` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(32) NOT NULL DEFAULT '"Survivor1_DZ"',
  PRIMARY KEY (`CharacterID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dbver`;
CREATE TABLE `dbver` (
  `version` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `dbver` VALUES ('123');

DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `object_classes` VALUES ('Skoda', '0.68', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.67', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.66', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.50', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.59', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.59', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('HMMWV_DZ', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_DZ', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.68', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.69', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('CH47_DZ', '1', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('tractor', '0.7', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.59', 2, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.71', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.72', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.72', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Policecar', '0.59', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '1', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Buggy_DZ', '0.78', 2, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('CSJ_GyroP', '0.78', 2, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('oring_Ikarus', '0.59', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', 4, '0.05000', '[[\"motor\",0.8],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.64', 4, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.69', 4, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.72', 4, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('PBX', '1', 16, '0.05000', '[]');

DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` varchar(20) DEFAULT NULL,
  `Instance` varchar(4) DEFAULT NULL,
  `Classname` varchar(32) DEFAULT NULL,
  `Damage` varchar(20) DEFAULT NULL,
  `CharacterID` int(10) unsigned DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` varchar(999) DEFAULT NULL,
  `Hitpoints` varchar(999) DEFAULT NULL,
  `Fuel` varchar(20) DEFAULT NULL,
  `Datestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `object_spawns`;
CREATE TABLE `object_spawns` (
  `ObjectUID` varchar(20) NOT NULL DEFAULT '',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `object_spawns` VALUES ('1', 'AH6X_DZ', '[357,[4380.51,8895.41,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('2', 'AN2_DZ', '[180,[4347.28,9265.54,0.084]]', '');
INSERT INTO `object_spawns` VALUES ('3', 'ATV_US_EP1', '[6,[1743.411,5748.4785,0.00016784668]]', '');
INSERT INTO `object_spawns` VALUES ('4', 'ATV_US_EP1', '[17,[1750.7186,5749.0093,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('5', 'ATV_US_EP1', '[166,[4875.1318,7618.1313,-1.9073486e-005]]', '');
INSERT INTO `object_spawns` VALUES ('6', 'ATV_US_EP1', '[347,[6456.584,2267.022,-1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('7', 'ATV_US_EP1', '[337,[5012.6519,5082.9287,-1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('8', 'BAF_Offroad_D', '[130,[1209.9349,7917.9858,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('9', 'BAF_Offroad_D', '[182,[8435.72,5095.56,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('10', 'BAF_Offroad_W', '[356,[4248.8735,1890.5995,3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('11', 'BAF_Offroad_W', '[312,[9288.9326,4164.9165,3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('12', 'Buggy_DZ', '[79,[1707.5416,2695.47,3.0517578e-005]]', '');
INSERT INTO `object_spawns` VALUES ('13', 'Buggy_DZ', '[158,[8490.25,3509.75,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('14', 'CH47_DZ', '[89,[8485.89,4675.91,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('15', 'CSJ_GyroP', '[-91,[9808.4111,9781.4395,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('16', 'CSJ_GyroP', '[-129,[1524.9277,7393.7603,0]]', '');
INSERT INTO `object_spawns` VALUES ('17', 'datsun1_civil_3_open', '[312,[1560.1385,7308.5776,-0.061935633]]', '');
INSERT INTO `object_spawns` VALUES ('18', 'datsun1_civil_3_open', '[224,[6882.1421,1675.225,-2.2888184e-005]]', '');
INSERT INTO `object_spawns` VALUES ('19', 'datsun1_civil_3_open', '[251,[7253.2622,3378.6277,2.2888184e-005]]', '');
INSERT INTO `object_spawns` VALUES ('20', 'HMMWV_Ambulance_DZ', '[263,[9471.5186,2632.8706,3.0517578e-005]]', '');
INSERT INTO `object_spawns` VALUES ('21', 'HMMWV_DZ', '[263,[7753.18,6037.44,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('22', 'Mi17_DZ', '[194,[9223.34,9905.49,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('23', 'Old_bike_TK_CIV_EP1', '[51,[2054.6228,3023.3125,0]]', '');
INSERT INTO `object_spawns` VALUES ('24', 'Old_bike_TK_CIV_EP1', '[15,[5117.4453,4214.7856,3.8146973e-006,0]]', '');
INSERT INTO `object_spawns` VALUES ('25', 'Old_bike_TK_CIV_EP1', '[211,[7321.8452,3374.7991,1.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('26', 'Old_bike_TK_CIV_EP1', '[108,[4924.7495,7642.0996,7.6293945e-006]]', '');
INSERT INTO `object_spawns` VALUES ('27', 'Oring_Ikarus', '[227,[5042,4276.5322,-3.8146973e-006,0]]', '');
INSERT INTO `object_spawns` VALUES ('28', 'Oring_Ikarus', '[178,[7815.98,2224.75,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('29', 'Oring_Ikarus', '[224,[7205.4194,6918.8848,3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('30', 'PBX', '[251,[5409.1597,9000.8125,-0.061935633]]', '');
INSERT INTO `object_spawns` VALUES ('31', 'PBX', '[271,[3231.43,3469.04,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('32', 'PBX', '[322,[1456.4495,9546.2178,-0.037422478]]', '');
INSERT INTO `object_spawns` VALUES ('33', 'PBX', '[184,[3198.1931,3470.3611,-0.12466601]]', '');
INSERT INTO `object_spawns` VALUES ('34', 'PBX', '[182,[3651.491,6920.1299,-0.11030695]]', '');
INSERT INTO `object_spawns` VALUES ('35', 'PBX', '[182,[3584.8032,6900.7397,0.15780739]]', '');
INSERT INTO `object_spawns` VALUES ('36', 'PBX', '[182,[4543.4072,7255.2817,-0.064389706]]', '');
INSERT INTO `object_spawns` VALUES ('37', 'PBX', '[182,[2094.144,8124.1089,0.16282895]]', '');
INSERT INTO `object_spawns` VALUES ('38', 'PBX', '[182,[6414.2158,8175.4214,-0.16484454]]', '');
INSERT INTO `object_spawns` VALUES ('39', 'PBX', '[182,[5848.9888,8024.4097,-0.13885543]]', '');
INSERT INTO `object_spawns` VALUES ('40', 'PBX', '[182,[5340.9038,8009.46,-0.047540933]]', '');
INSERT INTO `object_spawns` VALUES ('41', 'PBX', '[182,[4631.875,7770.9951,-0.10723543]]', '');
INSERT INTO `object_spawns` VALUES ('42', 'PBX', '[182,[5088.4731,6881.9619,-0.11727634]]', '');
INSERT INTO `object_spawns` VALUES ('43', 'PBX', '[182,[6966.3584,6755.5,-0.0059608817]]', '');
INSERT INTO `object_spawns` VALUES ('44', 'PBX', '[182,[8049.2544,8506.3066,-9.7990036e-005]]', '');
INSERT INTO `object_spawns` VALUES ('45', 'PBX', '[182,[4428.2676,6056.1694,0]]', '');
INSERT INTO `object_spawns` VALUES ('46', 'Policecar', '[151,[7117.9419,6931.9429,3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('47', 'Policecar', '[123,[2979.083,3310.2827,7.6293945e-006]]', '');
INSERT INTO `object_spawns` VALUES ('48', 'S1203_TK_CIV_EP1', '[159,[8114.57,6320.51,0]]', '');
INSERT INTO `object_spawns` VALUES ('49', 'S1203_TK_CIV_EP1', '[64,[8020.3711,6302.4082,8.392334e-005]]', '');
INSERT INTO `object_spawns` VALUES ('50', 'S1203_TK_CIV_EP1', '[12,[7973.2017,6307.0542,3.8146973e-005]]', '');
INSERT INTO `object_spawns` VALUES ('51', 'S1203_TK_CIV_EP1', '[167,[8162.8818,6491.6909,8.392334e-005]]', '');
INSERT INTO `object_spawns` VALUES ('52', 'Skoda', '[106,[8500.8057,6159.0762,2.2888184e-005]]', '');
INSERT INTO `object_spawns` VALUES ('53', 'SkodaBlue', '[165,[8463.0762,6296.7925,4.5776367e-005]]', '');
INSERT INTO `object_spawns` VALUES ('54', 'SkodaGreen', '[46,[8752.1797,5309.9009,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('55', 'SUV_TK_EP1', '[132,[8490.8828,4999.3003,0]]', '');
INSERT INTO `object_spawns` VALUES ('56', 'SUV_TK_EP1', '[284,[7833.9082,7684.7305,-3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('57', 'tractor', '[213,[799.47467,2015.9839,1.9073486e-005]]', '');
INSERT INTO `object_spawns` VALUES ('58', 'tractor', '[21,[7246.8252,3374.0684,3.4332275e-005]]', '');
INSERT INTO `object_spawns` VALUES ('59', 'TT650_TK_CIV_EP1', '[169,[3358.9548, 7150.1113,3.8146973e-006]]', '');
INSERT INTO `object_spawns` VALUES ('60', 'TT650_TK_CIV_EP1', '[215,[4956.0283,4196.7695,0]]', '');
INSERT INTO `object_spawns` VALUES ('61', 'TT650_TK_CIV_EP1', '[7,[8340.0908,3471.0654,0]]', '');
INSERT INTO `object_spawns` VALUES ('62', 'TT650_TK_CIV_EP1', '[186,[9137.3906,4102.564,-6.4849854e-005]]', '');
INSERT INTO `object_spawns` VALUES ('63', 'UAZ_Unarmed_TK_EP1', '[130,[4930.2964,5747.2734,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('64', 'UAZ_Unarmed_TK_EP1', '[123,[2069.5313,3070.6426,-1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('65', 'UAZ_Unarmed_TK_EP1', '[266,[8401.4082,3518.4219,3.0517578e-005]]', '');
INSERT INTO `object_spawns` VALUES ('66', 'UH1H_DZ', '[234,[1726.5,7429.56,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('67', 'UH1H_DZ', '[271,[8487.4,5282.99,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('68', 'UralCivil2', '[0,[8411.13,4803.1,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('69', 'UralCivil2', '[334,[1708.3884,2693.572,1.5258789e-005]]', '');
INSERT INTO `object_spawns` VALUES ('70', 'V3S_Civ', '[64,[2970.2014,3495.2651,-5.7220459e-006]]', '');
INSERT INTO `object_spawns` VALUES ('71', 'Volha_2_TK_CIV_EP1', '[204,[899.92743,1880.0015,3.8146973e-005]]', '');
INSERT INTO `object_spawns` VALUES ('72', 'Volha_2_TK_CIV_EP1', '[356,[7820.2842,2307.7539,1.5258789e-005]]', '');

DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `PlayerName` varchar(24) NOT NULL DEFAULT '',
  `PlayerSex` int(1) DEFAULT NULL,
  PRIMARY KEY (`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) DEFAULT '',
  `CharacterID` int(10) DEFAULT NULL,
  `Action` tinyint(3) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
