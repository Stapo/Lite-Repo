
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

INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.7', 2, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.7', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.40', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.5', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.7', 4, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.7', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.7', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.6', 2, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.66', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.7', 2, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '1.0', 1, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.35', 2, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.65', 2, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.35', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.5', 1, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.5', 1, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.7', 3, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.72', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.7', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.67', 3, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.60', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.59', 2, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.61', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.75', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.75', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Tractor', '0.95', 2, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.65', 4, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.55', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.95', 2, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('PBX', '0.75', 1, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('MV22_DZ', '0.75', 1, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '1.0', 2, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('Volha_1_TK_CIV_EP1', '0.70', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.90', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');

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

INSERT INTO `object_spawns` VALUES ('74', 'UAZ_Unarmed_TK_EP1', '[130,[13129.8,11560,0.0706997]]', NULL);
INSERT INTO `object_spawns` VALUES ('75', 'UAZ_Unarmed_TK_CIV_EP1', '[3,[7107.41,5825.43,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('76', 'UAZ_Unarmed_UN_EP1', '[271,[6424,6777.25,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('77', 'UAZ_RU', '[5,[4150.78,1426.02,0.0821762]]', NULL);
INSERT INTO `object_spawns` VALUES ('78', 'UAZ_Unarmed_TK_CIV_EP1', '[87,[2476.24,4105.05,0.00119781]]', NULL);
INSERT INTO `object_spawns` VALUES ('79', 'UAZ_Unarmed_TK_CIV_EP1', '[177,[4073.41,5156.29,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('80', 'SUV_TK_CIV_EP1', '[9,[6457.83,6660.57,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('81', 'ATV_US_EP1', '[355,[6888.25,3147.13,0.00132751]]', NULL);
INSERT INTO `object_spawns` VALUES ('82', 'ATV_US_EP1', '[17,[5968.15,6595.98,0.00117016]]', NULL);
INSERT INTO `object_spawns` VALUES ('83', 'ATV_CZ_EP1', '[186,[3546.66,3740.02,0.00143433]]', NULL);
INSERT INTO `object_spawns` VALUES ('84', 'ATV_US_EP1', '[75,[3287.92,6434.28,0.00110245]]', NULL);
INSERT INTO `object_spawns` VALUES ('85', 'ATV_CZ_EP1', '[51,[5927.38,6616.12,0.00140476]]', NULL);
INSERT INTO `object_spawns` VALUES ('86', 'SkodaBlue', '[3,[5805.57,4727.47,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('87', 'Skoda', '[0,[6115.49,5859.39,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('88', 'UH1H_DZ', '[208,[1748.81,642.642,14.1062]]', NULL);
INSERT INTO `object_spawns` VALUES ('89', 'ATV_US_EP1', '[323,[1199.85,5270.49,10.8326]]', NULL);
INSERT INTO `object_spawns` VALUES ('90', 'TT650_Ins', '[267,[4080.74,1130.51,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('91', 'TT650_TK_EP1', '[-209,[6592.686, 2906.8245,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('92', 'TT650_TK_CIV_EP1', '[179,[5802.9,4712.73,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('93', 'TT650_TK_CIV_EP1', '[97,[4589.57,2616.75,0.00136948]]', NULL);
INSERT INTO `object_spawns` VALUES ('95', 'UralCivil2', '[90,[6821.08,2497.89,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('96', 'LandRover_CZ_EP1', '[294,[3143.17,7997.26,0.00159264]]', NULL);
INSERT INTO `object_spawns` VALUES ('97', 'Old_bike_TK_INS_EP1', '[254,[3933.37,4220.77,0.00143433]]', NULL);
INSERT INTO `object_spawns` VALUES ('98', 'Old_bike_TK_INS_EP1', '[184,[3551.31,3739.72,0.0010376]]', NULL);
INSERT INTO `object_spawns` VALUES ('99', 'hilux1_civil_3_open_EP1', '[163,[5985.63,5351.37,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('100', 'Old_bike_TK_CIV_EP1', '[10,[8819.02,8023.86,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('101', 'Old_bike_TK_INS_EP1', '[279,[5796.81,4688.25,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('102', 'Old_bike_TK_CIV_EP1', '[0,[5671.37,796.868,0.00129175]]', NULL);
INSERT INTO `object_spawns` VALUES ('103', 'ATV_CZ_EP1', '[0,[969.451,1275.39,0.00255895]]', NULL);
INSERT INTO `object_spawns` VALUES ('104', 'SUV_TK_CIV_EP1', '[9,[6593.81,5728.57,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('105', 'Volha_2_TK_CIV_EP1', '[94,[621.466,4631.81,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('106', 'UH1H_DZ', '[5,[3360.08,1126.39,0.00143862]]', NULL);
INSERT INTO `object_spawns` VALUES ('107', 'UH1H_DZ', '[18,[3956.76,4229.46,0.00143433]]', NULL);
INSERT INTO `object_spawns` VALUES ('108', 'UH1H_DZ', '[168,[602.249,4686.56,6.81655]]', NULL);
INSERT INTO `object_spawns` VALUES ('109', 'UH1H_DZ', '[89,[6597.37,6767.08,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('110', 'UH1H_DZ', '[274,[6863.03,4451.83,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('111', 'Ikarus_TK_CIV_EP1', '[79,[3472.71,1374.62,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('112', 'Ikarus', '[79,[3572.71,1374.62,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('113', 'Ikarus', '[180,[5775.69,4724.98,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('114', 'Ikarus_TK_CIV_EP1', '[209,[835.536,5520.96,7.97942]]', NULL);
INSERT INTO `object_spawns` VALUES ('115', 'Ikarus', '[9,[6572.64,5970.13,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('116', 'Ikarus_TK_CIV_EP1', '[9,[6472.64,5970.13,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('117', 'TT650_TK_CIV_EP1', '[272,[2837.28,5328.06,0.373938]]', NULL);
INSERT INTO `object_spawns` VALUES ('118', 'Tractor', '[89,[7971.34,1091.71,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('119', 'Tractor', '[317,[2645.8,6945.16,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('120', 'S1203_TK_CIV_EP1', '[285,[4290.23,4935.53,0.00152206]]', NULL);
INSERT INTO `object_spawns` VALUES ('121', 'S1203_TK_CIV_EP1', '[5,[4198.66,4442.61,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('122', 'S1203_TK_CIV_EP1', '[3,[5796.71,4721.43,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('123', 'S1203_TK_CIV_EP1', '[167,[13367.5,6601.11,0.0126638]]', NULL);
INSERT INTO `object_spawns` VALUES ('124', 'V3S_Civ', '[4,[4401.8,1702.02,0.121414]]', NULL);
INSERT INTO `object_spawns` VALUES ('125', 'Fishing_Boat', '[137,[3800.27,2307.3,4.6834]]', NULL);
INSERT INTO `object_spawns` VALUES ('126', 'Fishing_Boat', '[137,[3700.27,2307.3,4.6834]]', NULL);
INSERT INTO `object_spawns` VALUES ('127', 'PBX', '[291,[5873.05,5326.02,0.00148487]]', NULL);
INSERT INTO `object_spawns` VALUES ('128', 'Smallboat_1', '[147,[8433.71,7797.2,2.1895]]', NULL);
INSERT INTO `object_spawns` VALUES ('129', 'Smallboat_1', '[310,[3822.1,2299.23,0.000923157]]', NULL);
INSERT INTO `object_spawns` VALUES ('131', 'Volha_1_TK_CIV_EP1', '[272,[6827.53,5927.34,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('132', 'Volha_1_TK_CIV_EP1', '[356,[8039.13,2916.39,0.00257635]]', NULL);
INSERT INTO `object_spawns` VALUES ('133', 'Volha_2_TK_CIV_EP1', '[274,[3697.02,1404.02,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('134', 'Volha_1_TK_CIV_EP1', '[260,[8299.95,2358.95,1.28169]]', NULL);
INSERT INTO `object_spawns` VALUES ('135', 'Volha_2_TK_CIV_EP1', '[47,[4149.76,1537.27,0.0821762]]', NULL);
INSERT INTO `object_spawns` VALUES ('136', 'SUV_TK_CIV_EP1', '[183,[5784.84,4712.17,0.00143814]]', NULL);
INSERT INTO `object_spawns` VALUES ('137', 'car_sedan', '[222,[9120.468,8667.882,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('138', 'Fishing_Boat', '[273,[8842.5,921.916,0.00130701]]', NULL);
INSERT INTO `object_spawns` VALUES ('139', 'UAZ_Unarmed_TK_EP1', '[249,[7563.33,1693.72,0.00143909]]', NULL);
INSERT INTO `object_spawns` VALUES ('140', 'Fishing_Boat', '[195,[6800.51,2828.05,0.00150663]]', NULL);
INSERT INTO `object_spawns` VALUES ('141', 'MV22_DZ', '[90,[5986.6792,7027.0684,4.863739e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('142', 'AN2_DZ', '[0,[3055.7537,6474.4546,-0.70897663]]', NULL);
INSERT INTO `object_spawns` VALUES ('143', 'AN2_DZ', '[180,[4318.3994,1878.7593,-0.66435003]]', NULL);
INSERT INTO `object_spawns` VALUES ('144', 'AH6X_DZ', '[180,[1301.7004,1455.2246,-4.7683716e-006]]', NULL);
INSERT INTO `object_spawns` VALUES ('145', 'AH6X_DZ', '[0,[6081.769,1671.0074,-1.0490417e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('146', 'AH6X_DZ', '[150,[5508.1572,5060.7256,-1.2397766e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('147', 'MH6J_DZ', '[180,[7519.2031,8273.2949,-2.1934509e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('148', 'MH6J_DZ', '[90,[6952.7598,6430.978,9.5367432e-006]]', NULL);
INSERT INTO `object_spawns` VALUES ('149', 'MH6J_DZ', '[90,[4183.8716,7572.7285,1.1444092e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('150', 'Mi17_DZ', '[75,[3064.6106,7974.1719,-0.51635265]]', NULL);

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
