
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

INSERT INTO `object_classes` VALUES ('I44_Car_A_WillysMB_Army', '0.5', 2, '0.5', '[[\"engine\",0.8],[\"windshield_L\",0.2],[\"windshield_R\",0.3],[\"body\",0.8],[\"Wheel_LF\",0.6],[\"Wheel_RF\",1],[\"Wheel_LB\",1],[\"Wheel_RB\",0.6]]');
INSERT INTO `object_classes` VALUES ('I44_Truck_A_GMC_CCKW_Army', '0.5', 1, '0.5', '[[\"engine\",0.264],[\"windshield_L\",0.151],[\"windshield_R\",0.151],[\"body\",1],[\"fuel\",0.033],[\"Wheel_LF\",0.408],[\"Wheel_RF\",0.316],[\"Wheel_LB2\",1],[\"Wheel_RB2\",0.763],[\"Wheel_LB\",1],[\"Wheel_RB\",0.72]]');
INSERT INTO `object_classes` VALUES ('I44_Truck_A_GMC_CCKW_Open_Army', '0.5', 1, '0.5', '[[\"engine\",0.264],[\"windshield_L\",0.151],[\"windshield_R\",0.151],[\"body\",1],[\"fuel\",0.033],[\"Wheel_LF\",0.408],[\"Wheel_RF\",0.316],[\"Wheel_LB2\",1],[\"Wheel_RB2\",0.763],[\"Wheel_LB\",1],[\"Wheel_RB\",0.72]]');
INSERT INTO `object_classes` VALUES ('I44_Boat_A_InflatableBoat_Army', '0.5', 3, '0.5', '[]');
INSERT INTO `object_classes` VALUES ('I44_Boat_A_M1_AssaultBoat_Army', '0.5', 2, '0.5', '[]');
INSERT INTO `object_classes` VALUES ('I44_P47', '0.5', 1, '0.5', '[]');
INSERT INTO `object_classes` VALUES ('I44_Car_B_WillysAB_Army', '0.5', 2, '0.5', '[[\"engine\",0.8],[\"windshield_L\",0.2],[\"windshield_R\",0.3],[\"body\",0.8],[\"Wheel_LF\",0.6],[\"Wheel_RF\",1],[\"Wheel_LB\",1],[\"Wheel_RB\",0.6]]');
INSERT INTO `object_classes` VALUES ('I44_Plane_B_SpitfireMk1a_RAF', '0.5', 1, '0.5', '[]');
INSERT INTO `object_classes` VALUES ('I44_motorcycle_G_BMWR75_SS', '0.5', 7, '0.5', '[[\"engine\",0.8],[\"body\",0.8]]');
INSERT INTO `object_classes` VALUES ('I44_Car_G_Kfz1_Camo_SS', '0.5', 1, '0.5', '[[\"engine\",0.8],[\"windshield_L\",0.2],[\"body\",0.8],[\"Wheel_LF\",0.6],[\"Wheel_RF\",1],[\"Wheel_LB\",1],[\"Wheel_RB\",0.6]]');
INSERT INTO `object_classes` VALUES ('I44_Car_G_Kfz1_CamoOpen_SS', '0.5', 1, '0.5', '[[\"engine\",0.8],[\"windshield_L\",0.2],[\"body\",0.8],[\"Wheel_LF\",0.6],[\"Wheel_RF\",1],[\"Wheel_LB\",1],[\"Wheel_RB\",0.6]]');
INSERT INTO `object_classes` VALUES ('I44_Car_G_Kfz1_Gray_SS', '0.5', 1, '0.5', '[[\"engine\",0.8],[\"windshield_L\",0.2],[\"body\",0.8],[\"Wheel_LF\",0.6],[\"Wheel_RF\",1],[\"Wheel_LB\",1],[\"Wheel_RB\",0.6]]');

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

INSERT INTO `object_spawns` VALUES ('1000', 'I44_Car_A_WillysMB_Army', '[232,[12056,12626.4,-0.0578766]]', NULL);
INSERT INTO `object_spawns` VALUES ('1001', 'I44_Car_A_WillysMB_Army', '[238,[4719.98,10232.7,-0.000854492]]', NULL);
INSERT INTO `object_spawns` VALUES ('1002', 'I44_Truck_A_GMC_CCKW_Army', '[238,[4142.23,8935.61,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1003', 'I44_Truck_A_GMC_CCKW_Open_Army', '[237,[5981.99,7700.6,0.2677]]', NULL);
INSERT INTO `object_spawns` VALUES ('1004', 'I44_Boat_A_InflatableBoat_Army', '[275,[13416,2851.79,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1005', 'I44_Boat_A_InflatableBoat_Army', '[279,[9798.89,1743.48,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1006', 'I44_Boat_A_InflatableBoat_Army', '[270,[7967.78,2902.91,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1007', 'I44_Boat_A_M1_AssaultBoat_Army', '[147,[13099.8,10165,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1008', 'I44_Boat_A_M1_AssaultBoat_Army', '[220,[5981.66,1987.14,0]]', NULL);
INSERT INTO `object_spawns` VALUES ('1009', 'I44_P47', '[150,[4190.49,10870.3,-0.78183]]', NULL);
INSERT INTO `object_spawns` VALUES ('1010', 'I44_Car_B_WillysAB_Army', '[152,[5764.95,4585.35,-0.00127411]]', NULL);
INSERT INTO `object_spawns` VALUES ('1011', 'I44_Car_B_WillysAB_Army', '[59,[2575.63,5059.93,-0.00128174]]', NULL);
INSERT INTO `object_spawns` VALUES ('1012', 'I44_Plane_B_SpitfireMk1a_RAF', '[118,[11781.7,12831.4,0.588364]]', NULL);
INSERT INTO `object_spawns` VALUES ('1013', 'I44_motorcycle_G_BMWR75_SS', '[8,[11135.4,11978.2,0.0272827]]', NULL);
INSERT INTO `object_spawns` VALUES ('1014', 'I44_motorcycle_G_BMWR75_SS', '[21,[9940.85,10376.4,0.0435333]]', NULL);
INSERT INTO `object_spawns` VALUES ('1015', 'I44_motorcycle_G_BMWR75_SS', '[315,[9387.32,8931.08,0.00671387]]', NULL);
INSERT INTO `object_spawns` VALUES ('1016', 'I44_motorcycle_G_BMWR75_SS', '[268,[4084.76,11660.9,0.00384521]]', NULL);
INSERT INTO `object_spawns` VALUES ('1017', 'I44_motorcycle_G_BMWR75_SS', '[261,[1618.11,7798.04,0.00637817]]', NULL);
INSERT INTO `object_spawns` VALUES ('1018', 'I44_motorcycle_G_BMWR75_SS', '[153,[2214.26,5149.57,-0.000732422]]', NULL);
INSERT INTO `object_spawns` VALUES ('1019', 'I44_motorcycle_G_BMWR75_SS', '[273,[2616.93,3469.31,0.0944977]]', NULL);
INSERT INTO `object_spawns` VALUES ('1020', 'I44_Car_G_Kfz1_Camo_SS', '[170,[995.718,2160.6,-2.19345e-005]]', NULL);
INSERT INTO `object_spawns` VALUES ('1021', 'I44_Car_G_Kfz1_CamoOpen_SS', '[285,[3659.32,2177.24,0.00407028]]', NULL);
INSERT INTO `object_spawns` VALUES ('1022', 'I44_Car_G_Kfz1_Gray_SS', '[28,[4759.09,2612.64,-0.0570087]]', NULL);

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
