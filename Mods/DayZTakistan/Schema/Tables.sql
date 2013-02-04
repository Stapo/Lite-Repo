
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

INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.72', 2, '0.338583', '[[\"motor\",0.396978],[\"palivo\",0.0446855],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.491398]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.71', 2, '0.0748032', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.71', 1, '0.0629921', '[[\"glass5\",1],[\"glass6\",0.205741],[\"karoserie\",0.0447305],[\"palivo\",0.161715],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass3\",1],[\"glass4\",0.0576707]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.70', 3, '0.165354', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.70', 2, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.70', 1, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.71', 1, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.70', 2, '0.0354331', '[[\"glass5\",0.28032],[\"glass6\",0.138695],[\"karoserie\",0.119215],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",0.0134624],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",0.878418],[\"glass3\",0.477473],[\"glass4\",0.0820388]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.70', 2, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.70', 10, '0', '[]');

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

INSERT INTO `object_spawns` VALUES ('145', 'Ikarus', '[79,[5228.1963,6146.6855,-1.19209]]', NULL);
INSERT INTO `object_spawns` VALUES ('146', 'Volha_2_TK_CIV_EP1', '[334,[1399.4459,3464.3445,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('147', 'Ikarus', '[227,[4621.7837,649.05255,0.00663757]]', NULL);
INSERT INTO `object_spawns` VALUES ('148', 'Volha_2_TK_CIV_EP1', '[204,[5309.2461,6202.939,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('149', 'UH1H_DZ', '[132,[8189.5273,2064.668,0.00119019]]', NULL);
INSERT INTO `object_spawns` VALUES ('150', 'ATV_US_EP1', '[6,[6837.0986,4988.1509,0.000762939]]', NULL);
INSERT INTO `object_spawns` VALUES ('151', 'S1203_TK_CIV_EP1', '[219,[8263.0322,7730.8857,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('152', 'ATV_US_EP1', '[17,[11738.519,8349.665,0.0155945]]', NULL);
INSERT INTO `object_spawns` VALUES ('153', 'TT650_TK_CIV_EP1', '[169,[12313.892,10475.649,4.19617]]', NULL);
INSERT INTO `object_spawns` VALUES ('154', 'UH1H_DZ', '[18,[5843.7178,11336.136,0.00793457]]', NULL);
INSERT INTO `object_spawns` VALUES ('155', 'S1203_TK_CIV_EP1', '[353,[1497.7494,5739.3496,6.67572]]', NULL);
INSERT INTO `object_spawns` VALUES ('156', 'SkodaBlue', '[165,[9157.1348,6692.1816,0.00242615]]', NULL);
INSERT INTO `object_spawns` VALUES ('157', 'V3S_Civ', '[341,[2069.3496,7657.5806,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('158', 'UAZ_Unarmed_TK_EP1', '[130,[12242.198,11064.873,0.0706997]]', NULL);
INSERT INTO `object_spawns` VALUES ('159', 'UralCivil2', '[252,[10489.811,11066.72,0.000778198]]', NULL);
INSERT INTO `object_spawns` VALUES ('160', 'car_hatchback', '[310,[5298.9331,4714.4155,0.00106812]]', NULL);
INSERT INTO `object_spawns` VALUES ('161', 'Volha_2_TK_CIV_EP1', '[123,[4157.9121,11910.076,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('162', 'Old_bike_TK_CIV_EP1', '[51,[1914.0155,7597.2456,-1.52588]]', NULL);
INSERT INTO `object_spawns` VALUES ('163', 'Old_bike_TK_CIV_EP1', '[15,[5315.9443,6134.3672,0.0126953]]', NULL);
INSERT INTO `object_spawns` VALUES ('164', 'Old_bike_TK_CIV_EP1', '[211,[8495.876,2404.3872,0.00710678]]', NULL);
INSERT INTO `object_spawns` VALUES ('165', 'Old_bike_TK_CIV_EP1', '[108,[8464.3613,2459.9939,0.00117016]]', NULL);
INSERT INTO `object_spawns` VALUES ('166', 'UAZ_Unarmed_TK_EP1', '[123,[9946.1982,11338.414,0.00994873]]', NULL);
INSERT INTO `object_spawns` VALUES ('167', 'UH1H_DZ', '[300,[772.11139,10483.121,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('168', 'SkodaGreen', '[46,[2072.7871,299.8927,0.00143433]]', NULL);
INSERT INTO `object_spawns` VALUES ('169', 'Old_bike_TK_CIV_EP1', '[93,[5962.1055,1078.1791,6.10352]]', NULL);
INSERT INTO `object_spawns` VALUES ('170', 'UralCivil2', '[42,[6365.4731,11270.29,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('171', 'V3S_Civ', '[28,[5953.3921,11337.747,0.00424194]]', NULL);
INSERT INTO `object_spawns` VALUES ('172', 'Old_bike_TK_CIV_EP1', '[103,[11825.438,2588.1191,0.0188293]]', NULL);
INSERT INTO `object_spawns` VALUES ('173', 'Skoda', '[106,[1786.9825,11949.147,0.00014782]]', NULL);
INSERT INTO `object_spawns` VALUES ('174', 'Old_bike_TK_CIV_EP1', '[132,[12311.814,11033.296,0.0022583]]', NULL);
INSERT INTO `object_spawns` VALUES ('175', 'Old_bike_TK_CIV_EP1', '[101,[5591.5513,8915.2783,0.0133638]]', NULL);
INSERT INTO `object_spawns` VALUES ('176', 'Old_bike_TK_CIV_EP1', '[223,[7903.8716,3229.6731,0.0132484]]', NULL);
INSERT INTO `object_spawns` VALUES ('177', 'Old_bike_TK_CIV_EP1', '[182,[8346.94,2458.27,0.0158215]]', NULL);
INSERT INTO `object_spawns` VALUES ('178', 'V3S_Civ', '[84,[8101.6929,2026.0935,0.0254517]]', NULL);

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
