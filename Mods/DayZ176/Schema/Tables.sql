
DROP TABLE IF EXISTS `Character_DATA`;
CREATE TABLE `Character_DATA` (
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

INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', 6, '0.05000', '[[\"motor\",0.8],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.61', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.69', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.7', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.54', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', 2, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.59', 2, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.67', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.66', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.71', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', 5, '0.05000', '[[\"motor\",0.8],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.54', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('MH6J_EP1', '0.32', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.64', 4, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.64', 4, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('PBX', '0.59', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.68', 4, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.68', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.68', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.59', 2, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.59', 2, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', 0, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.72', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.72', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.72', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('UAZ_INS', '0.59', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.59', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.59', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.49', 2, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '1', 1, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Hedgehog_DZ', '0', 0, '0', '[]');
INSERT INTO `object_classes` VALUES ('Wire_cat1', '0', 0, '0', '[]');
INSERT INTO `object_classes` VALUES ('Sandbag1_DZ', '0', 0, '0', '[]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.48', 1, '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '0.59', 2, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.59', 3, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('M1030', '0.58', 2, '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '0.39', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.49', 1, '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Lada2', '0.59', 2, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.59', 3, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.59', 3, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');

DROP TABLE IF EXISTS `Object_DATA`;
CREATE TABLE `Object_DATA` (
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

INSERT INTO `object_spawns` VALUES ('348', 'LandRover_CZ_EP1', '[64,[9653.4443,13555.063,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('718', 'Tractor', '[-3,[11934.478,9518.6309,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('719', 'Tractor', '[-3,[12288.495,11094.473,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('347', 'hilux1_civil_3_open_EP1', '[-1,[12276.199,10586.779,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('720', 'Tractor', '[0,[6158.7725,9005.5732,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('717', 'Tractor', '[-3,[12118.503,9445.8721,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('716', 'Tractor', '[-3,[12090.864,9453.6055,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('811', 'UH1H_DZ', '[27,[9686.75,3604.3081,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('311', 'Volha_2_TK_CIV_EP1', '[124,[9676.3398,8880.75,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('111', 'ATV_US_EP1', '[84,[8837.4805,2844.75,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('112', 'ATV_US_EP1', '[294,[8830.5,2863.95,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('611', 'TT650_TK_CIV_EP1', '[13,[8783.2061,11723.631,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('612', 'TT650_TK_CIV_EP1', '[-17,[8636.0049,6856.8818,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('511', 'Old_bike_TK_CIV_EP1', '[160,[8346.9404,2458.27,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('512', 'Old_bike_TK_CIV_EP1', '[197,[8342.5996,2460.51,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('211', 'Fishing_Boat', '[253,[8299.9502,2358.95,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('312', 'UAZ_Unarmed_TK_EP1', '[160,[8115.6299,9295.5,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('513', 'Old_bike_TK_CIV_EP1', '[285,[8091.2998,3350.3101,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('313', 'Volha_2_TK_CIV_EP1', '[185,[8039.1299,2916.3899,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('514', 'Old_bike_TK_CIV_EP1', '[4,[8027.8701,7076.1699,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('314', 'Skoda', '[49,[8001.5898,3342.51,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('515', 'Old_bike_TK_CIV_EP1', '[130,[7919.9063,7231.3369,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('315', 'datsun1_civil_3_open', '[215,[7807.3442,3539.9856,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('812', 'UH1H_DZ', '[-23,[7154.9399,8157.1401,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('316', 'UAZ_Unarmed_TK_EP1', '[340,[6850.1362,2480.0134,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('411', 'Ikarus', '[202,[6575.8828,2868.105,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('613', 'TT650_TK_CIV_EP1', '[46,[6404.5347,3209.2341,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('813', 'UH1H_DZ', '[34,[6360.2271,2767.6943,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('317', 'UAZ_Unarmed_TK_EP1', '[231,[6319.1499,7733.6499,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('516', 'Old_bike_TK_CIV_EP1', '[70,[6294.96,7833.77,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('318', 'SkodaGreen', '[99,[6293.1201,7827.1201,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('412', 'Ikarus', '[102,[6237.4902,7705.6602,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('319', 'Volha_2_TK_CIV_EP1', '[222,[5136.8501,2362.4299,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('320', 'datsun1_civil_3_open', '[246,[4952.6401,5616.5098,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('814', 'AH6X_DZ', '[2,[12010.7,12637.2,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('321', 'UAZ_Unarmed_TK_EP1', '[226,[4790.1299,2571.3501,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('413', 'Ikarus', '[304,[4564.6948,4506.1382,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('815', 'Mi17_DZ', '[156,[7660.271,3982.0063,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('911', 'AN2_DZ', '[252,[4530.52,10785.1,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('816', 'UH1H_DZ', '[268,[4238.04,10781.7,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('113', 'ATV_US_EP1', '[313,[4087.0901,11669.4,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('114', 'ATV_US_EP1', '[121,[4059.3201,11658.4,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('711', 'tractor', '[-32,[3790.79,8961.0898,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('115', 'ATV_US_EP1', '[274,[3748.5901,5990.8701,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('414', 'Ikarus', '[180,[3728.0701,8669.0098,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('322', 'BAF_Offroad_D', '[162,[3702.04,6044.3101,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('517', 'Old_bike_TK_CIV_EP1', '[51,[3572.6201,2545.29,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('323', 'BAF_Offroad_W', '[71,[3708.5,5999.4199,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('518', 'Old_bike_TK_CIV_EP1', '[202,[2947.2,2036.92,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('519', 'Old_bike_TK_CIV_EP1', '[-3,[2882.28,5270.4902,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('520', 'Old_bike_TK_CIV_EP1', '[-149,[2792.48,3114.03,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('415', 'Ikarus', '[309,[2768.26,6000.1602,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('324', 'Volha_2_TK_CIV_EP1', '[82,[2578.5901,5084.1099,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('325', 'BAF_Offroad_D', '[141,[11953.279,9107.3896,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('326', 'car_hatchback', '[287,[1967.1801,9147.2197,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('416', 'UralCivil2', '[233,[1915.7,12442.2,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('417', 'S1203_TK_CIV_EP1', '[183,[13367.5,6601.1099,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('327', 'UAZ_Unarmed_TK_EP1', '[89,[13127.792,11561.818,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('418', 'V3S_Civ', '[330,[13088.4,7108.5698,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('328', 'SkodaBlue', '[186,[12903.9,4431.3799,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('419', 'S1203_TK_CIV_EP1', '[-38,[12167.4,9748.5498,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('420', 'S1203_TK_CIV_EP1', '[376,[12130.7,3516.8899,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('817', 'UH1H_DZ', '[7,[12057.56,12626.336,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('614', 'TT650_TK_CIV_EP1', '[272,[11945.3,9130.3398,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('116', 'ATV_US_EP1', '[-37,[11483.7,11382.7,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('421', 'S1203_TK_CIV_EP1', '[245,[11463.3,7545.9302,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('117', 'ATV_US_EP1', '[42,[11461.1,11380.5,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('712', 'tractor', '[191,[11424.036,7355.7295,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('329', 'datsun1_civil_3_open', '[210,[11351.6,6633.52,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('818', 'UH1H_DZ', '[160,[11216.4,4234.8101,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('330', 'BAF_Offroad_W', '[322,[7201.5181,3034.3232,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('331', 'Volha_2_TK_CIV_EP1', '[189,[10812.7,2686.29,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('422', 'Ikarus', '[241,[10641.2,8073.2202,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('332', 'Volha_2_TK_CIV_EP1', '[306,[10454.8,8872.0996,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('423', 'Ikarus', '[62,[10320.025,2157.7627,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('819', 'AH6X_DZ', '[113,[6880.2007,11454.291,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('820', 'Mi17_DZ', '[-188,[7220.6538,9116.3428,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('333', 'SUV_TK_EP1', '[-93,[9157.7549,11019.93,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('334', 'car_sedan', '[-68,[7438.0454,5180.8857,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('615', 'M1030', '[-71,[8330.4639,5971.6885,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('335', 'Lada1_TK_CIV_EP1', '[-120,[8440.3926,5975.1753,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('521', 'Old_bike_TK_INS_EP1', '[-138,[8511.4111,6044.689,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('336', 'datsun1_civil_1_open', '[-134,[6448.6953,6543.1836,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('337', 'VolhaLimo_TK_CIV_EP1', '[-14,[6208.9775,10403.117,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('338', 'Lada1_TK_CIV_EP1', '[105,[6027.7988,10459.635,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('522', 'Old_bike_TK_CIV_EP1', '[-63,[5986.3462,10373.445,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('339', 'datsun1_civil_1_open', '[7,[5969.1924,10313.057,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('118', 'ATV_US_EP1', '[-32,[5984.6064,10161.703,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('340', 'SkodaBlue', '[-163,[9691.2695,6551.8672,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('821', 'Mi17_DZ', '[4,[13584.044,3199.9648,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('912', 'AN2_DZ', '[134,[5172.3457,2172.7046,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('913', 'AN2_DZ', '[108,[5260.3203,2261.9851,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('914', 'AN2_DZ', '[-212,[5156.3555,2651.9055,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('915', 'AN2_DZ', '[-125,[4809.2461,2539.2903,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('341', 'BAF_Offroad_W', '[-95,[4713.7666,2616.6179,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('616', 'M1030', '[37,[4360.8408,2482.9688,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('342', 'car_sedan', '[19,[4454.373,2453.6816,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('119', 'ATV_US_EP1', '[-190,[4564.9624,2371.521,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('523', 'Old_bike_TK_INS_EP1', '[-56,[4570.3975,2421.6531,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('822', 'AH6X_DZ', '[-190,[13112.096,10432.461,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('343', 'hilux1_civil_3_open', '[-161,[13145.874,10416.225,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('424', 'UralCivil2', '[108,[13109.942,10302.45,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('425', 'UralCivil2', '[-161,[13098.729,10248.01,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('426', 'S1203_TK_CIV_EP1', '[-3,[12996.397,10078.24,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('344', 'Lada2', '[-171,[12989.563,10075.743,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('345', 'datsun1_civil_1_open', '[-75,[12987.494,10039.641,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('713', 'Tractor', '[-75,[12670.277,10015.792,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('714', 'Tractor', '[108,[12684.55,10074.417,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('427', 'UralCivil', '[-25,[12683.362,9825.7119,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('346', 'Lada1_TK_CIV_EP1', '[-122,[12283.381,9464.5566,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('715', 'Tractor', '[-3,[12102.996,9451.2998,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('823', 'AH6X_DZ', '[-117,[9698.9893,13686.655,0]]', NULL);

DROP TABLE IF EXISTS `Player_DATA`;
CREATE TABLE `Player_DATA` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `PlayerName` varchar(24) NOT NULL DEFAULT '',
  `PlayerSex` int(1) DEFAULT NULL,
  PRIMARY KEY (`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Player_LOGIN`;
CREATE TABLE `Player_LOGIN` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) DEFAULT '',
  `CharacterID` int(10) DEFAULT NULL,
  `Action` tinyint(3) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
