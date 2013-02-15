
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

INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '1', '5', '0.05000', '[[\"motor\",1],[\"palivo\",0.368047],[\"wheel_1_1_steering\",0.331809],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0473658],[\"wheel_2_2_steering\",0.332376],[\"karoserie\",0.355141],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('M1030', '1', '5', '0.05000', '[[\"motor\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '1', '5', '0.05000', '[[\"motor\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '1', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('S1203_ambulance_EP1', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '1', '10', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '1', '5', '0.05000', '[[\"motor\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_1_TK_CIV_EP1', '1', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('HMMWV', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '1', '3', '0.05000', '[[\"motor\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_3_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('LadaLM', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '1', '5', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Lada2', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('Skoda', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaRed', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '1', '4', '0.05000', '[[\"motor\",1],[\"sklo predni P\",0.0275828],[\"karoserie\",1],[\"palivo\",0.00205799],[\"wheel_2_1_steering\",0.0156045],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",0.0161143],[\"wheel_1_2_steering\",0.0082898],[\"glass1\",1],[\"glass3\",0.0224173]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '1', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '1', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('VWGolf', '1', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '1', '2', '0.05000', '[[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_1_steering\",0.0156045],[\"wheel_2_3_steering\",1],[\"motor\",0.8],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '1', '1', '0.05000', '[[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_1_steering\",0.0156045],[\"wheel_2_3_steering\",1],[\"motor\",0.8],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('UralOpen_CDF', '1', '1', '0.05000', '[[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_1_3_steering\",0.0401988],[\"wheel_2_1_steering\",0.0156045],[\"wheel_2_3_steering\",1],[\"motor\",0.8],[\"palivo\",0.8]]');
INSERT INTO `object_classes` VALUES ('DZP_Mi17', '1', '1', '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');
INSERT INTO `object_classes` VALUES ('DZP_AN2', '1', '1', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('PBX', '1', '4', '0.05000', '[[\"motor\",1]]');
INSERT INTO `object_classes` VALUES ('DZP_MH6J', '1', '2', '0.05000', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]');

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

INSERT INTO `object_spawns` VALUES ('8', 'MMT_Civ', '[251,[10638.8,2194.2,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('7', 'MMT_Civ', '[315,[6121.42,1988.55,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('6', 'MMT_Civ', '[209,[4731.62,2591.81,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('5', 'Old_bike_TK_CIV_EP1', '[60,[13403.6,5421.38,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('4', 'Old_bike_TK_CIV_EP1', '[3,[7260.84,2227.81,0.001]]', '');
INSERT INTO `object_spawns` VALUES ('3', 'Old_bike_TK_CIV_EP1', '[179,[3559.78,2127.87,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('2', 'Old_bike_TK_CIV_EP1', '[168,[2949.83,1994.81,0.002]]', '');
INSERT INTO `object_spawns` VALUES ('1', 'Old_bike_TK_CIV_EP1', '[191,[1643.65,2207.32,0.002]]', '');
INSERT INTO `object_spawns` VALUES ('9', 'MMT_Civ', '[59,[13481.6,6354.5,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('10', 'MMT_Civ', '[250,[13053.6,8168.36,8.636e-04]]', null);
INSERT INTO `object_spawns` VALUES ('11', 'ATV_US_EP1', '[338,[12263.1,9143.23,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('12', 'ATV_US_EP1', '[199,[3692.9,8259.88,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('13', 'ATV_US_EP1', '[96,[8841.3,11683,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('14', 'M1030', '[313,[11271.5,12159,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('15', 'M1030', '[183,[4407.17,6028.14,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('16', 'M1030', '[128,[3662.62,8595.8,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('17', 'Old_moto_TK_Civ_EP1', '[142,[2860.47,9732.08,0.78]]', null);
INSERT INTO `object_spawns` VALUES ('18', 'Old_moto_TK_Civ_EP1', '[36,[5071.65,12477.9,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('19', 'Old_moto_TK_Civ_EP1', '[230,[9712.91,6514.9,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('20', 'TT650_TK_CIV_EP1', '[351,[11373.6,5560.45,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('21', 'TT650_TK_CIV_EP1', '[202,[13135.7,10377.3,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('22', 'TT650_TK_CIV_EP1', '[298,[12936.4,12757.8,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('23', 'Ikarus', '[189,[10232.4,1880.31,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('24', 'Ikarus', '[41,[12081.9,9116.05,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('25', 'tractor', '[60,[9905.65,10340,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('26', 'tractor', '[31,[5283.24,5515.52,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('27', 'DZP_Mi17', '[21,[12045.4,12667,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('28', 'DZP_MH6J', '[149,[13695.7,2896.75,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('29', 'LandRover_CZ_EP1', '[110,[6364.82,7780.03,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('30', 'Lada2_TK_CIV_EP1', '[234,[2565.8,5076.3,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('31', 'LandRover_TK_CIV_EP1', '[287,[6942.73,11393.4,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('32', 'S1203_TK_CIV_EP1', '[293,[3212.5,3993.08,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('33', 'SUV_TK_CIV_EP1', '[8,[5765.73,4588,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('34', 'S1203_ambulance_EP1', '[10,[11949.9,9092.38,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('35', 'UAZ_Unarmed_TK_CIV_EP1', '[108,[11456.4,7505.86,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('36', 'Volha_1_TK_CIV_EP1', '[219,[10655.8,4516.13,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('37', 'Volha_2_TK_CIV_EP1', '[177,[9267.7,4951.18,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('38', 'VolhaLimo_TK_CIV_EP1', '[178,[7592.21,5274.22,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('39', 'hilux1_civil_3_open_EP1', '[143,[2565.08,6304.64,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('40', 'HMMWV', '[60,[4714.98,10227.2,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('41', 'Lada1', '[183,[4422.16,4578.02,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('42', 'LadaLM', '[80,[3411.67,4925.84,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('43', 'Lada2', '[360,[8483.49,6660.94,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('44', 'Skoda', '[258,[9587.22,6632.03,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('45', 'SkodaBlue', '[294,[12377.1,10986.3,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('46', 'SkodaGreen', '[156,[13373.7,12834.3,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('47', 'SkodaRed', '[168,[12957.3,13489.1,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('48', 'hilux1_civil_2_covered', '[136,[10999.8,13382,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('49', 'hilux1_civil_1_open', '[122,[9663.96,13560.1,9.918e-04]]', null);
INSERT INTO `object_spawns` VALUES ('50', 'datsun1_civil_3_open', '[223,[6535.07,9277.51,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('51', 'datsun1_civil_2_covered', '[231,[7116.86,7783.26,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('52', 'datsun1_civil_1_open', '[179,[6586.44,3409.16,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('53', 'car_sedan', '[221,[5455.4,3785.44,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('54', 'car_hatchback', '[264,[6902.23,4513.05,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('55', 'VWGolf', '[166,[13387.7,6604.86,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('56', 'V3S_Civ', '[352,[11463.2,11375.6,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('57', 'UralCivil2', '[101,[11974.4,3573.93,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('58', 'UralOpen_CDF', '[268,[4798.11,2621.55,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('59', 'DZP_AN2', '[151,[4195.31,10860.5,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('60', 'PBX', '[175,[1304.27,2263.14,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('61', 'PBX', '[177,[5947.77,2004.61,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('62', 'PBX', '[336,[13061,8448.32,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('63', 'PBX', '[109,[13903.7,11713.7,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('64', 'DZP_MH6J', '[241,[4520.36,10779.9,0.082]]\r\n', null);
INSERT INTO `object_spawns` VALUES ('65', 'UAZ_Unarmed_TK_CIV_EP1', '[238,[9254.46,4979.14,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('66', 'hilux1_civil_3_open_EP1', '[326,[9615.27,6521.02,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('67', 'VWGolf', '[204,[9689.23,8921.35,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('68', 'SUV_TK_CIV_EP1', '[228,[10321.9,12085.8,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('69', 'LandRover_CZ_EP1', '[202,[5075.77,12468.5,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('70', 'Skoda', '[248,[2715.5,10032.6,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('71', 'HMMWV', '[344,[1944.02,12468.3,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('72', 'tractor', '[247,[6606.28,9322.9,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('73', 'tractor', '[314,[12523.6,4338.32,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('74', 'hilux1_civil_2_covered', '[139,[9419.81,4045.35,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('75', 'ATV_US_EP1', '[352,[7817.9,3532.67,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('76', 'ATV_US_EP1', '[59,[5823.91,4978.11,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('77', 'M1030', '[323,[5003.47,5562.11,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('78', 'M1030', '[322,[4554.07,6405.57,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('79', 'Old_bike_TK_CIV_EP1', '[132,[3718.23,6013.37,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('80', 'Old_bike_TK_CIV_EP1', '[276,[2282.28,5373.99,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('81', 'Old_bike_TK_CIV_EP1', '[206,[1894.84,3896.62,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('82', 'Old_bike_TK_CIV_EP1', '[36,[1115.4,2247.52,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('83', 'Old_bike_TK_CIV_EP1', '[297,[3614.31,2225.83,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('84', 'Volha_1_TK_CIV_EP1', '[329,[10450,8866.46,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('85', 'Volha_1_TK_CIV_EP1', '[310,[12672.5,12897.8,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('86', 'Volha_1_TK_CIV_EP1', '[192,[3984.59,9184.06,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('87', 'Volha_1_TK_CIV_EP1', '[147,[5763.34,8670.6,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('88', 'S1203_TK_CIV_EP1', '[77,[10898.9,11608,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('89', 'S1203_TK_CIV_EP1', '[128,[9132.12,7162.11,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('90', 'V3S_Civ', '[165,[8553.66,8353.09,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('91', 'VWGolf', '[24,[10415.5,2567.03,0.039]]', null);
INSERT INTO `object_spawns` VALUES ('92', 'Lada2', '[185,[8860.32,2883.55,8.545e-04]]', null);
INSERT INTO `object_spawns` VALUES ('93', 'Ikarus', '[83,[2008.02,2262.69,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('94', 'Old_moto_TK_Civ_EP1', '[245,[3204.73,4548.16,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('95', 'Old_moto_TK_Civ_EP1', '[211,[2526.91,7561.16,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('96', 'TT650_TK_CIV_EP1', '[47,[1975.27,9150.2,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('97', 'TT650_TK_CIV_EP1', '[184,[4203.95,10344.7,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('98', 'S1203_ambulance_EP1', '[162,[5599.2,12035,0.001]]', null);
INSERT INTO `object_spawns` VALUES ('99', 'datsun1_civil_1_open', '[38,[8074.92,11256,0.002]]', null);
INSERT INTO `object_spawns` VALUES ('100', 'tractor', '[332,[6922.72,10751.2,0.001]]', null);

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
