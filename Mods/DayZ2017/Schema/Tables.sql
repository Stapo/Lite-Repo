
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

INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.5', 1, '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.5', 1, '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('apoc_tank', '0.4', 2, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('datsun_civil_apoc', '0.4', 3, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('ice_apo_car_skoda', '0.6', 2, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('ice_apo_car_skoda_enhanced', '0.6', 2, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.4', 2, '0.05', '[[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"palivo\",0.8],[\"motor\",0.8],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1]]');
INSERT INTO `object_classes` VALUES ('2017_Ikarus1', '0.4', 2, '0.05', '[[\"glass5\",1],[\"glass6\",1],[\"motor\",0.051],[\"karoserie\",0.045],[\"palivo\",0.162],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.5', 0, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('2017_Old_bike', '0.5', 9, '0.05', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.4', 1, '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.5', 1, '0', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.4', 1, '00.5', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('An22017', '0.7', 2, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.125]]');
INSERT INTO `object_classes` VALUES ('csj_gyropboat', '0.5', 2, '0', '[]');
INSERT INTO `object_classes` VALUES ('csj_gyrop', '0.5', 1, '0', '[]');
INSERT INTO `object_classes` VALUES ('csj_gyroc', '0.5', 1, '0', '');

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

INSERT INTO `object_spawns` VALUES ('211', 'Fishing_Boat', '[260,[8299.95,2358.95,1.28169]]', 'Off the coast of Cap Golova');
INSERT INTO `object_spawns` VALUES ('212', 'Smallboat_2', '[270,[13097.3,8225.83,1.15926]]', NULL);
INSERT INTO `object_spawns` VALUES ('213', 'Smallboat_1', '[359,[13108.4,8252.91,1.5956]]', NULL);
INSERT INTO `object_spawns` VALUES ('311', 'apoc_tank', '[341,[13088.4,7108.57,0]]', 'In the Quarry at Solnichniy');
INSERT INTO `object_spawns` VALUES ('312', 'ice_apo_car_skoda', '[123,[3702.04,6044.31,0.00994873]]', 'Green Mountain');
INSERT INTO `object_spawns` VALUES ('313', 'datsun_civil_apoc', '[255,[11351.6,6633.52,0]]', 'In the large sheet-metal building in Dolina ');
INSERT INTO `object_spawns` VALUES ('315', 'ice_apo_car_skoda_enhanced', '[184,[4790.13,2571.35,0]]', 'In a hangar at Balota airfield');
INSERT INTO `object_spawns` VALUES ('316', 'ice_apo_car_skoda', '[266,[6319.15,7733.65,0.000366211]]', 'At Stary Sobor Military Camp');
INSERT INTO `object_spawns` VALUES ('317', 'ice_apo_car_skoda_enhanced', '[168,[6846.48,2476.5,0]]', 'At International Hotel in Chernogorsk');
INSERT INTO `object_spawns` VALUES ('410', 'datsun_civil_apoc', '[151,[8115.63,9295.5,0.00604248]]', 'r West of Gorka at the end of the Dirt Road at Altar');
INSERT INTO `object_spawns` VALUES ('412', '2017_Ikarus1', '[79,[10314.1,2155.32,-1.19209]]', 'On the Main road in Elektrozavodsk');
INSERT INTO `object_spawns` VALUES ('413', '2017_Ikarus1', '[227,[10641.2,8073.22,0.00663757]]', 'At the Polana general store');
INSERT INTO `object_spawns` VALUES ('510', '2017_Old_bike', '[215,[2946.61,1992.54,0.395748]]', NULL);
INSERT INTO `object_spawns` VALUES ('511', '2017_Old_bike', '[46,[2922.7,1977.51,0.00515544]]', NULL);
INSERT INTO `object_spawns` VALUES ('512', '2017_Old_bike', '[319,[2796.72,3117.71,-0.00357056]]', NULL);
INSERT INTO `object_spawns` VALUES ('513', '2017_Old_bike', '[33,[2748.42,5225.86,0.0098114]]', NULL);
INSERT INTO `object_spawns` VALUES ('514', '2017_Old_bike', '[10,[2822.48,5411.56,-0.00445557]]', NULL);
INSERT INTO `object_spawns` VALUES ('515', '2017_Old_bike', '[29,[8352.92,2477.35,0.343582]]', NULL);
INSERT INTO `object_spawns` VALUES ('516', '2017_Old_bike', '[52,[8356.22,2474.87,0.195236]]', NULL);
INSERT INTO `object_spawns` VALUES ('517', '2017_Old_bike', '[142,[8047.32,7081.3,0.00152588]]', NULL);
INSERT INTO `object_spawns` VALUES ('518', '2017_Old_bike', '[183,[12929.4,12758.7,0.00158691]]', NULL);
INSERT INTO `object_spawns` VALUES ('610', 'TT650_TK_CIV_EP1', '[7,[8635.13,6858.49,0.035614]]', 'On the Dirt Road North of Guglovo that leads to Gorka ');
INSERT INTO `object_spawns` VALUES ('611', 'Old_moto_TK_Civ_EP1', '[186,[8783.76,11725.8,0.00302124]]', 'South East of Gvozdno in the field, near a building ');
INSERT INTO `object_spawns` VALUES ('810', 'apoc_tank', '[252,[1915.7,12442.2,0.000778198]]', 'In the Quarry at Solnichniy');
INSERT INTO `object_spawns` VALUES ('910', 'datsun_civil_apoc', '[224,[4952.64,5616.51,0.00234985]]', 'Beside a house near the southern barns/factory area (? Pulkovo ?) ');
INSERT INTO `object_spawns` VALUES ('1010', 'datsun_civil_apoc', '[251,[7802.95,3535.03,2.81334]]', 'In a gated/fenced-off area on the west-side of Prigorodki ');
INSERT INTO `object_spawns` VALUES ('214', 'Volha_2_TK_CIV_EP1', '[334,[10454.8,8872.1,0]]', 'At the gas station east of Gorka');
INSERT INTO `object_spawns` VALUES ('300', 'Volha_2_TK_CIV_EP1', '[245,[2576.12,5083.89,0]]', 'Zelenogorsk supermarket');
INSERT INTO `object_spawns` VALUES ('519', 'An22017', '[62,[4121.51,10844.4,0.011]]', 'End of the runway at the North West airfield.');
INSERT INTO `object_spawns` VALUES ('520', 'An22017', '[111,[12053,12664.3,0.001]]', 'In the hanger at the North East Airstrip');
INSERT INTO `object_spawns` VALUES ('521', 'csj_gyropboat', '[288,[12405.4,3373.57,0.002]]', 'Beach of the small island near Kamyshovo');
INSERT INTO `object_spawns` VALUES ('522', 'csj_gyrop', '[258,[12338.5,9117.3,0.001]]', 'Ground of the farm to the east of Berezino');
INSERT INTO `object_spawns` VALUES ('523', 'csj_gyroc', '[212,[4815.72,10246.1,0.001]]', 'Near the firestation of the North East Airfield ');
INSERT INTO `object_spawns` VALUES ('524', 'csj_gyropboat', '[31,[13008,8460.09,0.002]]', '');

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
