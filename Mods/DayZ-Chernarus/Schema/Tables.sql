
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

DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `object_spawns` VALUES ('114843113836021', 'ATV_US_EP1', '[319,[7079.04,2384.41,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('100', 'Ka137_PMC', '[244,[3067.12,6049.15,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('11461311380706', 'ATV_US_EP1', '[187,[6311.05,3011.38,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('114234734790213', 'tractor', '[322,[8557.06,3271.87,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('112164423480132', 'UH1H_DZ', '[1,[5856.15,6152.95,0.082]]', null);
INSERT INTO `object_spawns` VALUES ('106412807320227', 'Ikarus', '[273,[3200.67,2663.46,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('10314121553079', 'Ikarus', '[179,[5629.8,5241.39,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('119453913030169', 'TT650_TK_CIV_EP1', '[111,[1350.76,7709.48,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('120126126401018', 'UH1H_DZ', '[1,[4125.92,2142.68,0.082]]', null);
INSERT INTO `object_spawns` VALUES ('129039443140165', 'SkodaBlue', '[271,[5312.41,4637.68,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('130884710860341', 'V3S_Civ', '[344,[4781.32,5202.23,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('1312901155970100', 'UAZ_Unarmed_TK_EP1', '[6,[1998.27,1180.25,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('191571244220252', 'UralCivil2', '[87,[4932.16,6644.79,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('19672914720310', 'car_hatchback', '[133,[5444.1,2618.43,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('2792531140051', 'Old_bike_TK_CIV_EP1', '[280,[6085.62,1085.74,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('2882352705015', 'Old_bike_TK_CIV_EP1', '[294,[8433.76,4582.39,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('29472203690211', 'Old_bike_TK_CIV_EP1', '[191,[3642.14,6373.97,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('35726254530108', 'Old_bike_TK_CIV_EP1', '[72,[4204.25,5931.08,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('37022604400122', 'UAZ_Unarmed_TK_EP1', '[180,[8555.86,3201.93,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('519849819841961', 'UH1H_DZ', '[273,[9156.93,1223.25,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('3790889611021', 'tractor', '[10,[4262.39,6825.31,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('6293178271046', 'SkodaGreen', '[303,[6729.6,4169.59,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('6295078338093', 'Old_bike_TK_CIV_EP1', '[251,[3534.74,5155.14,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('80016334250106', 'Skoda', '[359,[4817.26,5104.12,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('82999235890260', 'PBX', '[222,[9027.57,1459.93,20.651]]', null);
INSERT INTO `object_spawns` VALUES ('83469245830182', 'Old_bike_TK_CIV_EP1', '[186,[1769.48,2072.96,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('101', 'Ka137_PMC', '[359,[4068.25,2157.1,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('102', 'Ka137_PMC', '[57,[7084.56,2392.1,13.093]]', null);
INSERT INTO `object_spawns` VALUES ('104', 'Ka137_PMC', '[0,[5952.37,6116.48,0.082]]', null);
INSERT INTO `object_spawns` VALUES ('200', 'datsun1_civil_3_open', '[96,[4483.63,6717.29,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('202', 'datsun1_civil_3_open', '[359,[5231.67,3363.97,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('201', 'datsun1_civil_3_open', '[356,[8415.58,3369.29,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('300', 'LadaLM', '[182,[1297.18,743.875,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('301', 'LadaLM', '[312,[1228.38,8801.06,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('400', 'MMT_USMC', '[131,[7479.44,6082.06,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('401', 'MMT_USMC', '[179,[8128.92,7004.63,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('402', 'MMT_USMC', '[271,[6798.2,7629.56,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('403', 'MMT_USMC', '[260,[4509.49,1486.43,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('404', 'MMT_USMC', '[308,[4472.49,2582.05,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('405', 'MMT_USMC', '[78,[3624.89,8076.16,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('406', 'MMT_USMC', '[233,[1456.64,7127.89,8.85e-04]]', null);
INSERT INTO `object_spawns` VALUES ('407', 'MMT_USMC', '[350,[834.42,9077.37,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('408', 'MMT_USMC', '[239,[8105.26,5678.54,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('409', 'MMT_USMC', '[68,[6093.32,7728.83,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('500', 'An2_1_TK_CIV_EP1', '[88,[4067.36,2192.8,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('501', 'An2_1_TK_CIV_EP1', '[331,[7283.27,2208.09,0.001]]', null);

DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.7', '2', '0.05', '[[\"motor\",1],[\"palivo\",0.368047],[\"wheel_1_1_steering\",0.331809],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0473658],[\"wheel_2_2_steering\",0.332376],[\"karoserie\",0.355141],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('PBX', '0.7', '1', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('Ka137_PMC', '0.40', '4', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.5', '1', '0.05', '[[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",0.9],[\"wheel_2_2_steering\",0.9],[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.6', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.66', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('MMT_USMC', '1.0', '10', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('An2_1_TK_CIV_EP1', '0.5', '2', '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.7', '1', '0.05', '[[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",0.9],[\"wheel_2_2_steering\",0.9],[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.72', '1', '0.05', '[[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_1_steering\",0.0156045],[\"wheel_2_3_steering\",1],[\"motor\",0.8],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.7', '2', '0.05', '[[\"motor\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.67', '0', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.60', '3', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.59', '2', '0.05', '[[\"motor\",1],[\"sklo predni P\",0.0275828],[\"karoserie\",1],[\"palivo\",0.00205799],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",0.0161143],[\"wheel_1_2_steering\",0.0082898],[\"glass1\",1],[\"glass3\",0.0224173]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.61', '3', '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');

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
