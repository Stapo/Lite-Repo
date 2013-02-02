
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

INSERT INTO `object_classes` VALUES ('Ka60_GL_NAC', '0.25', 1, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.65', 6, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.55', 4, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.55', 4, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.55', 5, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.75', 1, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.95', 5, '0', '[]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.55', 4, '0', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian_Nam', '0.25', 1, '0', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('PBX', '0.55', 4, '0', '[[\"motor\",0.8]]');

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

INSERT INTO `object_spawns` VALUES ('4578512', 'Ka60_GL_NAC', '[219,[4148.12,6579.55,4]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578513', 'UAZ_RU', '[182,[4127.6,6703.51,0.00146484]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578514', 'UAZ_RU', '[93,[3552.5,6675.55,0.00143433]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578515', 'UralCivil2', '[220,[3941.47,7595.37,0.00143814]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578516', 'UralCivil2', '[180,[5849.93,8659.4,0.00143814]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578517', 'UralCivil', '[90,[4837.61,6145.8,0.00143814]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578518', 'hilux1_civil_3_open_EP1', '[90,[7051.95,5777.77,0.00144196]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578519', 'UralCivil', '[180,[7894.81,7718.42,0.00142384]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578520', 'hilux1_civil_3_open_EP1', '[52,[7358.11,7984.73,0.00138092]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578521', 'UralCivil2', '[351,[7685.47,8729.3,0.00157166]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578522', 'UAZ_RU', '[23,[5975.07,6690.23,0.00141525]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578523', 'hilux1_civil_3_open_EP1', '[255,[5748.33,9844.07,0.00140762]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578524', 'tractor', '[296,[8252.9,10792.1,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578525', 'Old_bike_TK_CIV_EP1', '[22,[8957.08,10629.1,0.00132465]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578526', 'Fishing_Boat', '[110,[9134.51,10091.7,4.11368]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578527', 'Old_bike_TK_CIV_EP1', '[81,[7209.53,10848.4,0.00142956]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578528', 'UralCivil', '[270,[6739.51,11323.5,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578529', 'hilux1_civil_3_open_EP1', '[74,[7029.23,11540.7,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578530', 'Old_bike_TK_CIV_EP1', '[11,[6665.94,11022.5,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578532', 'hilux1_civil_3_open_EP1', '[278,[5796.78,10761.3,0.00142288]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578533', 'UAZ_RU', '[203,[4849.06,10858.9,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578534', 'UAZ_RU', '[280,[4418.92,10748.9,0.00143909]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578535', 'Mi17_Civilian_Nam', '[47,[4521,11230,3.81583]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578536', 'PBX', '[55,[4525.93,11255.1,0.001692]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578537', 'Fishing_Boat', '[92,[4387.41,11293.1,7.2188]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578538', 'Fishing_Boat', '[0,[4430.48,11303.5,8.4149]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578539', 'UAZ_RU', '[250,[4090.02,9225.91,0.00144958]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578540', 'Fishing_Boat', '[180,[4306.51,4719.16,5.83564]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578541', 'Old_bike_TK_CIV_EP1', '[34,[2197.75,5762.33,0.00141096]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578542', 'PBX', '[88,[2144.77,5754.73,1.84505]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578543', 'PBX', '[245,[5031.6,6100.52,5.8214]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578544', 'Old_bike_TK_CIV_EP1', '[6,[4877.88,6215.15,0.00143814]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578545', 'PBX', '[228,[6044.81,6760.48,2.24013]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578546', 'UralCivil2', '[126,[7647.15,7406.74,0.00144958]]', 'N/A');
INSERT INTO `object_spawns` VALUES ('4578531', 'UralCivil', '[1,[4991.09,8165.97,0.00148773]]', 'N/A');

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
