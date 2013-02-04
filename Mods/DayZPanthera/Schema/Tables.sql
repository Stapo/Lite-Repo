
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

INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.72', 5, '0.338583', '[[\"motor\",0.396978],[\"palivo\",0.0446855],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.491398]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.71', 5, '0.0748032', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.71', 2, '0.0629921', '[[\"glass5\",1],[\"glass6\",0.205741],[\"karoserie\",0.0447305],[\"palivo\",0.161715],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass3\",1],[\"glass4\",0.0576707]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.70', 1, '0.165354', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.70', 5, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.70', 1, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.71', 2, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.71', 2, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.70', 2, '0.0354331', '[[\"glass5\",0.28032],[\"glass6\",0.138695],[\"karoserie\",0.119215],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",0.0134624],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",0.878418],[\"glass3\",0.477473],[\"glass4\",0.0820388]]');
INSERT INTO `object_classes` VALUES ('PBX', '0.70', 2, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.70', 3, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.70', 6, '0', '[]');

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

INSERT INTO `object_spawns` VALUES ('179', 'UAZ_Unarmed_TK_EP1', '[225,[6140,5668,0]]', 'Radovna');
INSERT INTO `object_spawns` VALUES ('180', 'UAZ_Unarmed_TK_EP1', '[0,[4029,7226,0]]', 'Arnoldstein');
INSERT INTO `object_spawns` VALUES ('181', 'UralCivil2', '[270,[8601,4809,0]]', 'Lesce Airport');
INSERT INTO `object_spawns` VALUES ('182', 'UralCivil2', '[180,[7920,1267,0]]', 'New Skooma');
INSERT INTO `object_spawns` VALUES ('183', 'V3S_Civ', '[110,[5394,3899,0]]', 'Ukanc');
INSERT INTO `object_spawns` VALUES ('184', 'ATV_US_EP1', '[140,[6053,5085,0]]', 'Radovna');
INSERT INTO `object_spawns` VALUES ('185', 'ATV_US_EP1', '[140,[4266,3929,0]]', 'Radovna');
INSERT INTO `object_spawns` VALUES ('187', 'ATV_US_EP1', '[140,[4265,3925,0]]', 'Krsnka Koca');
INSERT INTO `object_spawns` VALUES ('188', 'ATV_US_EP1', '[180,[7241,6009,0]]', 'Jesenice');
INSERT INTO `object_spawns` VALUES ('189', 'ATV_US_EP1', '[180,[5334,2567,0]]', 'Sela');
INSERT INTO `object_spawns` VALUES ('190', 'S1203_TK_CIV_EP1', '[320,[4676,5020,0]]', 'Trenta');
INSERT INTO `object_spawns` VALUES ('191', 'S1203_TK_CIV_EP1', '[180,[6741,1593,0]]', 'Belley');
INSERT INTO `object_spawns` VALUES ('192', 'S1203_TK_CIV_EP1', '[0,[8718,3981,0]]', 'Kropa');
INSERT INTO `object_spawns` VALUES ('193', 'Skoda', '[0,[7288,1369,0]]', 'Rockburn');
INSERT INTO `object_spawns` VALUES ('194', 'S1203_TK_CIV_EP1', '[90,[3094,5878,0]]', 'Cave del Predil');
INSERT INTO `object_spawns` VALUES ('195', 'S1203_TK_CIV_EP1', '[185,[6072,7455,0]]', 'Senzatoka');
INSERT INTO `object_spawns` VALUES ('196', 'car_hatchback', '[275,[6752,6876,0]]', 'Kleinfort');
INSERT INTO `object_spawns` VALUES ('197', 'car_hatchback', '[180,[6416,6210,0]]', 'Dovje');
INSERT INTO `object_spawns` VALUES ('198', 'Fishing_Boat', '[180,[7922,1230,0]]', 'Hafen New Skooma');
INSERT INTO `object_spawns` VALUES ('199', 'PBX', '[180,[3465,2459,0]]', 'Bucht südlich von Livek');
INSERT INTO `object_spawns` VALUES ('200', 'Fishing_Boat', '[180,[3900,2214,0]]', 'Bucht bei Bolhovo');
INSERT INTO `object_spawns` VALUES ('201', 'PBX', '[180,[3197,4531,0]]', 'Landeinwärts Ende des Flusses');
INSERT INTO `object_spawns` VALUES ('202', 'UH1H_DZ', '[0,[4141,7466,0]]', 'Nördlichstes Airfield im Hangar');
INSERT INTO `object_spawns` VALUES ('203', 'UH1H_DZ', '[315,[6921,793,0]]', 'Helipad im Süden');
INSERT INTO `object_spawns` VALUES ('204', 'UH1H_DZ', '[0,[2674,3406,0]]', 'Helipad westliches AF');
INSERT INTO `object_spawns` VALUES ('205', 'UH1H_DZ', '[270,[6702,7344,0]]', 'Firestation Rennstrecke');
INSERT INTO `object_spawns` VALUES ('206', 'UH1H_DZ', '[180,[5573,4968,0]]', 'Dom Planika');
INSERT INTO `object_spawns` VALUES ('207', 'Old_bike_TK_CIV_EP1', '[340,[4752,1864,0]]', 'Taff Grove');
INSERT INTO `object_spawns` VALUES ('208', 'Old_bike_TK_CIV_EP1', '[335,[6530,3734,0]]', 'Boh. Bistrica');
INSERT INTO `object_spawns` VALUES ('209', 'Old_bike_TK_CIV_EP1', '[180,[5052,6404,0]]', 'Kranjska Gora');
INSERT INTO `object_spawns` VALUES ('210', 'Old_bike_TK_CIV_EP1', '[270,[8767,3107,0]]', 'Selca Leuchtturm');
INSERT INTO `object_spawns` VALUES ('211', 'Old_bike_TK_CIV_EP1', '[90,[6672,394,0]]', 'Cato');
INSERT INTO `object_spawns` VALUES ('212', 'Old_bike_TK_CIV_EP1', '[40,[5218,3867,0]]', 'Ukanc');
INSERT INTO `object_spawns` VALUES ('213', 'Ikarus', '[90,[5889,894,0]]', 'Tankstelle Zappado');
INSERT INTO `object_spawns` VALUES ('214', 'Ikarus', '[0,[7872,1567,0]]', 'Tankstelle New Skooma');
INSERT INTO `object_spawns` VALUES ('215', 'Ikarus', '[90,[7988,4925,0]]', 'Bled');
INSERT INTO `object_spawns` VALUES ('216', 'UAZ_Unarmed_TK_EP1', '[90,[3406,2473,0]]', 'Livek');
INSERT INTO `object_spawns` VALUES ('217', 'UAZ_Unarmed_TK_EP1', '[270,[8677,5631,0]]', '086|046');
INSERT INTO `object_spawns` VALUES ('218', 'UAZ_Unarmed_TK_EP1', '[270,[5007,5127,0]]', 'Trenta');

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
