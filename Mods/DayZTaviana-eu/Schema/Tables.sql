
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

INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '8', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat_DZ', '0.9', '7', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.66', '27', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.64', '39', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.69', '14', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.68', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.7', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.72', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.7', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.59', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.67', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.66', '8', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.71', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('PBX_DZ', '0.4', '5', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.05', '2', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.7', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.7', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.70', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.7', '5', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Lada', '0.70', '0', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.70', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian_DZ', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Roket_Maule_M7_STD', '0.5', '1', '0', '[]');
INSERT INTO `object_classes` VALUES ('SUV_Blue', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Green', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Yellow', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.70', '18', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Red', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_White', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Pink', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Charcoal', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Orange', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Silver', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Special', '0.7', '1', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.70', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Smallboat_1_DZ', '0.70', '5', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Smallboat_2_DZ', '0.70', '6', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.7', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.7', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.5', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.7', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Pickup_PK_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_MG_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Zodiac_DZ', '0.5', '2', '0.05', '[[\"motor\",0.8]]');

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

INSERT INTO `object_spawns` VALUES ('0000000000018', 'Old_bike_TK_CIV_EP1', '[210,[3910,7357,0]]', 'Motrovice Statue');
INSERT INTO `object_spawns` VALUES ('0000000000019', 'V3S_Civ', '[270,[3903,7069,0]]', 'Motrovice Fulestation');
INSERT INTO `object_spawns` VALUES ('0000000000020', 'tractor', '[80,[4580,6319,0]]', 'Barn in 045|192');
INSERT INTO `object_spawns` VALUES ('0000000000021', 'Old_bike_TK_CIV_EP1', '[290,[5394,5885,0]]', 'Silos in 053|197');
INSERT INTO `object_spawns` VALUES ('0000000000022', 'TT650_TK_CIV_EP1', '[90,[6174,5335,0]]', 'Lighthouse in 061|202');
INSERT INTO `object_spawns` VALUES ('0000000000023', 'ATV_CZ_EP1', '[135,[7950,5379,0]]', 'Castle Grad Bled');
INSERT INTO `object_spawns` VALUES ('0000000000025', 'Lada1_TK_CIV_EP1', '[145,[8780,2383,0]]', '087|232');
INSERT INTO `object_spawns` VALUES ('0000000000026', 'Ikarus', '[135,[8805,2318,0]]', 'Busstop near Hotel 087|232');
INSERT INTO `object_spawns` VALUES ('0000000000028', 'VWGolf', '[215,[8895,2265,0]]', 'Garage at 086|233');
INSERT INTO `object_spawns` VALUES ('0000000000029', 'MMT_Civ', '[1,[8987,2235,0]]', 'Close to Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000030', 'S1203_TK_CIV_EP1', '[120,[8978,2254,0]]', 'Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000031', 'LadaLM', '[300,[8995,2292,0]]', 'Firestation 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000032', 'car_hatchback', '[210,[8957,2343,0]]', '089|232');
INSERT INTO `object_spawns` VALUES ('0000000000033', 'Ikarus', '[320,[9922,1412,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000034', 'Ikarus', '[140,[9935,1391,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000035', 'datsun1_civil_2_covered', '[245,[10051,1375,0]]', '100|242');
INSERT INTO `object_spawns` VALUES ('0000000000037', 'tractor', '[310,[10495,1086,0]]', 'Barn 104|245');
INSERT INTO `object_spawns` VALUES ('0000000000038', 'Old_bike_TK_CIV_EP1', '[220,[10889,850,0]]', '108|247');
INSERT INTO `object_spawns` VALUES ('0000000000039', 'datsun1_civil_3_open', '[220,[10920,819,0]]', '109|248');
INSERT INTO `object_spawns` VALUES ('0000000000040', 'Ikarus', '[100,[10946,798,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000041', 'Ikarus', '[280,[10968,800,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000042', 'LadaLM', '[130,[10939,868,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000043', 'SkodaRed', '[250,[11175,715,0]]', '111|248');
INSERT INTO `object_spawns` VALUES ('0000000000044', 'SUV_Green', '[80,[11258,875,0]]', '112|247');
INSERT INTO `object_spawns` VALUES ('0000000000045', 'Ikarus', '[270,[11649,773,0]]', 'Fulestation 116|248');
INSERT INTO `object_spawns` VALUES ('0000000000046', 'SkodaGreen', '[120,[11701,749,0]]', '117|258');
INSERT INTO `object_spawns` VALUES ('0000000000047', 'Old_bike_TK_CIV_EP1', '[120,[11760,886,0]]', 'Hotel 117|247');
INSERT INTO `object_spawns` VALUES ('0000000000048', 'UralCivil2', '[320,[11414,1153,0]]', 'Hotel 114|244');
INSERT INTO `object_spawns` VALUES ('0000000000049', 'ATV_CZ_EP1', '[145,[11798,1452,0]]', 'Hotel 117|241');
INSERT INTO `object_spawns` VALUES ('0000000000050', 'Old_bike_TK_CIV_EP1', '[220,[10151,2906,0]]', 'Farm at 101|226');
INSERT INTO `object_spawns` VALUES ('0000000000051', 'tractor', '[130,[9903,3177,0]]', 'Cowshed at 099|224');
INSERT INTO `object_spawns` VALUES ('0000000000052', 'ATV_CZ_EP1', '[270,[9791,3913,0]]', 'Farm at 097|216 ');
INSERT INTO `object_spawns` VALUES ('0000000000053', 'Ikarus', '[180,[9705,4389,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000054', 'Ikarus', '[1,[9711,4404,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000056', 'car_sedan', '[270,[9675,4346,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000057', 'UralCivil', '[90,[9281,4389,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000060', 'UAZ_RU', '[120,[9309,5289,0]]', 'FOB at Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000061', 'SkodaBlue', '[270,[9172,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000062', 'Old_bike_TK_CIV_EP1', '[1,[9055,5393,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000063', 'Ikarus', '[270,[8997,5424,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000064', 'Ikarus', '[110,[9037,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000065', 'S1203_TK_CIV_EP1', '[1,[8958,5399,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000066', 'tractor', '[100,[8344,5538,0]]', '083|200');
INSERT INTO `object_spawns` VALUES ('0000000000067', 'Skoda', '[60,[8486,5592,0]]', 'Poljanka');
INSERT INTO `object_spawns` VALUES ('0000000000068', 'Ikarus', '[340,[8235,6094,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000069', 'Ikarus', '[160,[8228,6097,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000070', 'MMT_Civ', '[340,[8248,6115,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000071', 'SUV_Silver', '[60,[7838,6529,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000072', 'Old_bike_TK_CIV_EP1', '[320,[7914,6697,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000073', 'V3S_Civ', '[160,[7942,6909,0]]', 'Novi Dvor Factory');
INSERT INTO `object_spawns` VALUES ('0000000000074', 'ATV_CZ_EP1', '[180,[7566,7381,0]]', 'Barn South of Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000075', 'Ikarus', '[200,[7873,7799,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000076', 'Ikarus', '[20,[7880,7808,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000077', 'Mi17_Civilian_DZ', '[180,[6927,8343,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000078', 'LadaLM', '[210,[7453,8090,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000079', 'AN2_DZ', '[220,[7550,8009,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000080', 'tractor', '[1,[5180,8089,0]]', 'Barn near Primmorsk');
INSERT INTO `object_spawns` VALUES ('0000000000081', 'MMT_Civ', '[340,[5375,8484,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000086', 'Skoda', '[160,[5523,8957,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000087', 'Volha_2_TK_CIV_EP1', '[165,[5568,8952,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000001', 'TT650_Gue', '[140,[2114,7055,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000002', 'TT650_Gue', '[180,[2116,7062,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000003', 'MMT_Civ', '[240,[1361,7954,0]]', 'Lighthouse 013|176');
INSERT INTO `object_spawns` VALUES ('0000000000004', 'ATV_CZ_EP1', '[300,[3286,6879,0]]', 'Radiotower 032|187');
INSERT INTO `object_spawns` VALUES ('0000000000005', 'hilux1_civil_3_open_EP1', '[359,[3311,7870,0]]', 'Stangrad Port, between containers');
INSERT INTO `object_spawns` VALUES ('0000000000006', 'UralCivil', '[180,[3413,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000007', 'Ural_TK_CIV_EP1', '[180,[3427,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000009', 'S1203_TK_CIV_EP1', '[130,[334,7604,0]]', 'Stangrad in front of a garage');
INSERT INTO `object_spawns` VALUES ('0000000000010', 'Old_bike_TK_CIV_EP1', '[330,[3290,7529,0]]', 'Stangrad on plaza by church');
INSERT INTO `object_spawns` VALUES ('0000000000011', 'LadaLM', '[330,[3342,7396,0]]', 'Stangrad firestation');
INSERT INTO `object_spawns` VALUES ('0000000000012', 'Old_moto_TK_Civ_EP1', '[70,[2979,7437,0]]', 'Barn, west of Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000013', 'LadaLM', '[1,[3796,6887,0]]', 'Motrovice Fire Station');
INSERT INTO `object_spawns` VALUES ('0000000000014', 'Ikarus', '[180,[3785,6933,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000015', 'Ikarus', '[1,[3793,7072,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000016', 'VolhaLimo_TK_CIV_EP1', '[1,[3821,7129,0]]', 'Motrovice Hotel');
INSERT INTO `object_spawns` VALUES ('0000000000017', 'SkodaBlue', '[90,[3789,7278,0]]', 'Motrovice Supermarket');
INSERT INTO `object_spawns` VALUES ('0000000000089', 'Old_bike_TK_CIV_EP1', '[260,[5666,8826,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000090', 'SkodaRed', '[250,[5504,8802,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000091', 'tractor', '[320,[5987,9604,0]]', 'Barn near Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000092', 'SkodaBlue', '[270,[5980,9939,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000093', 'S1203_TK_CIV_EP1', '[140,[5895,9946,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000094', 'Old_bike_TK_CIV_EP1', '[270,[5850,9901,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000095', 'LadaLM', '[200,[5788,9981,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000096', 'Skoda', '[270,[5715,9903,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000097', 'Ikarus', '[180,[5689,9856,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000098', 'Ikarus', '[1,[5693,9880,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000099', 'UralCivil2', '[1,[5532,9750,0]]', 'Cernovar Port');
INSERT INTO `object_spawns` VALUES ('0000000000100', 'datsun1_civil_3_open', '[90,[6691,9909,0]]', 'Vedic');
INSERT INTO `object_spawns` VALUES ('0000000000101', 'Mi17_Civilian_DZ', '[180,[7799,9079,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000102', 'UAZ_RU', '[40,[7746,9082,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000103', 'ATV_CZ_EP1', '[320,[11010,6726,0]]', 'Grad Krkov');
INSERT INTO `object_spawns` VALUES ('0000000000104', 'UAZ_RU', '[60,[10395,6751,0]]', 'FOB near Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000105', 'Lada1', '[350,[10636,6518,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000106', 'LandRover_TK_CIV_EP1', '[300,[10644,6569,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000107', 'TowingTractor', '[270,[16529,10209,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000108', 'LadaLM', '[320,[16704,10623,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000109', 'Roket_Maule_M7_STD', '[270,[16730,10484,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000110', 'Mi17_Civilian_DZ', '[90,[16649,11577,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000111', 'AN2_DZ', '[240,[10285,18406,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000112', 'TowingTractor', '[160,[10233,18252,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000113', 'Mi17_Civilian_DZ', '[90,[10208,18667,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000114', 'ATV_CZ_EP1', '[20,[8126,21347,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000115', 'ATV_CZ_EP1', '[20,[8130,21345,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000116', 'tractor', '[150,[8878,19712,0]]', 'Barn North of Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000117', 'Ikarus', '[330,[8839,19446,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000118', 'Lada2_TK_CIV_EP1', '[40,[8836,19438,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000119', 'Old_moto_TK_Civ_EP1', '[160,[10379,19486,0]]', 'Barn North of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000120', 'tractor', '[300,[10408,19291,0]]', 'Barn Nort of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000121', 'Mi17_Civilian_DZ', '[290,[9983,18892,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000122', 'UAZ_RU', '[160,[9951,18910,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000123', 'V3S_Civ', '[30,[9937,19091,0]]', 'Lumbermill west of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000124', 'S1203_TK_CIV_EP1', '[20,[10163,18965,0]]', 'Yaroslav Firestation');
INSERT INTO `object_spawns` VALUES ('0000000000125', 'Ikarus', '[80,[10254,19037,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000126', 'Ikarus', '[260,[10238,19038,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000127', 'hilux1_civil_1_open', '[260,[10314,19140,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000128', 'V3S_Civ', '[250,[10177,19193,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000129', 'Ikarus', '[150,[10929,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000130', 'Ikarus', '[325,[10934,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000131', 'S1203_TK_CIV_EP1', '[150,[10970,18710,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000132', 'Lada1', '[300,[11056,18699,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000133', 'Old_bike_TK_CIV_EP1', '[60,[11022,18770,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000134', 'Ural_TK_CIV_EP1', '[100,[10976,19033,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000135', 'tractor', '[100,[11110,17900,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000136', 'Old_moto_TK_Civ_EP1', '[60,[12917,19178,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000137', 'MMT_Civ', '[90,[13248,19383,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000138', 'Ikarus', '[110,[13443,19388,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000139', 'tractor', '[100,[13502,19393,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000140', 'UAZ_RU', '[140,[14619,18538,0]]', 'FOB near Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000142', 'TT650_TK_CIV_EP1', '[230,[15135,18238,0]]', 'Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000143', 'hilux1_civil_1_open', '[280,[14849,18489,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000144', 'hilux1_civil_2_covered', '[320,[14881,18583,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000145', 'ATV_CZ_EP1', '[260,[15715,17082,0]]', 'Antenna at Zeleny Vrh');
INSERT INTO `object_spawns` VALUES ('0000000000146', 'UAZ_RU', '[220,[15077,15937,0]]', 'FOB near Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000147', 'PBX_DZ', '[330,[3735,2339,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000148', 'Smallboat_2_DZ', '[60,[3743,2331,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000149', 'Smallboat_1_DZ', '[270,[6085,1125,0]]', 'Ostrov Ash');
INSERT INTO `object_spawns` VALUES ('0000000000150', 'Smallboat_1_DZ', '[60,[957,14105,0]]', 'Isle Kres');
INSERT INTO `object_spawns` VALUES ('0000000000151', 'Smallboat_1_DZ', '[180,[11920,20885,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000152', 'PBX_DZ', '[90,[11930,20888,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000153', 'Fishing_Boat_DZ', '[280,[11695,18963,0]]', 'Ekatinburg Port');
INSERT INTO `object_spawns` VALUES ('0000000000154', 'Fishing_boat_DZ', '[90,[14753,18757,0]]', 'Balnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000155', 'Smallboat_2_DZ', '[90,[17420,12576,0]]', 'Molotovsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000156', 'Lada1_TK_CIV_EP1', '[0,[14574.9,10474.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000157', 'M1030_US_DES_EP1', '[183,[15005.3,10125,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000158', 'Old_bike_TK_CIV_EP1', '[2,[15160.3,9868.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000159', 'S1203_TK_CIV_EP1', '[181,[15445.5,9736.16,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000160', 'Ikarus_TK_CIV_EP1', '[274,[15547.1,9505.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000161', 'VolhaLimo_TK_CIV_EP1', '[4,[15474.3,9375.65,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000162', 'MMT_Civ', '[185,[15391.3,9277.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000163', 'M1030', '[24,[15465.2,9008.07,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000165', 'UralCivil', '[108,[15408.7,8961.51,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000167', 'UAZ_Unarmed_TK_CIV_EP1', '[93,[15655.4,9620.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000168', 'UAZ_Unarmed_TK_EP1', '[15,[14510.7,9801.27,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000169', 'Volha_2_TK_CIV_EP1', '[2,[14993.4,9260.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000170', 'Lada2_TK_CIV_EP1', '[208,[15186.7,9188.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000171', 'Mi17_Civilian_DZ', '[0,[17442,5212,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000172', 'UralOpen_CDF', '[171,[17473.5,5221.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000173', 'Old_bike_TK_CIV_EP1', '[5,[17464.2,4106.35,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000174', 'PBX_DZ', '[321,[17442,4035.92,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000175', 'Old_bike_TK_CIV_EP1', '[2,[18421.7,5059.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000176', 'HMMWV', '[174,[17172.8,5663.09,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000178', 'hilux1_civil_2_covered', '[0,[17683.4,6186.37,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000179', 'Old_bike_TK_CIV_EP1', '[275,[17694.9,6214.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000182', 'datsun1_civil_3_open', '[130,[17837.9,6490.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000183', 'V3S_Civ', '[272,[17508.4,7194.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000184', 'Old_bike_TK_CIV_EP1', '[84,[17167.6,7385.58,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000185', 'UAZ_RU', '[181,[17216.7,7662.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000187', 'Old_bike_TK_CIV_EP1', '[357,[16243.7,11497,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000188', 'Old_moto_TK_Civ_EP1', '[1,[16149.9,11571.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000189', 'S1203_TK_CIV_EP1', '[3,[16279.2,11705.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000190', 'Ural_TK_CIV_EP1', '[11,[16832.1,12608.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000191', 'Old_bike_TK_CIV_EP1', '[271,[16972.3,12761.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000192', 'UAZ_Unarmed_TK_EP1', '[181,[14473.2,11397.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000193', 'Lada1', '[178,[17244.4,7422.91,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000194', 'LadaLM', '[302,[16788,8455.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000195', 'Old_bike_TK_CIV_EP1', '[87,[16564.4,8259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000196', 'V3S_Civ', '[87,[16515.1,8085.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000197', 'Old_bike_TK_CIV_EP1', '[272,[16520,8380.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000198', 'TT650_Gue', '[261,[16877.2,8197.77,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000199', 'UralCivil2', '[167,[17301.6,8240.52,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000200', 'M1030', '[293,[15157.5,7825.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000201', 'UAZ_RU', '[130,[13405.5,8632.01,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000202', 'Old_bike_TK_CIV_EP1', '[88,[15526.4,8412.45,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000203', 'hilux1_civil_1_open', '[267,[15628.2,8506.59,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000204', 'datsun1_civil_3_open', '[267,[15627.7,8512.13,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000205', 'TT650_TK_CIV_EP1', '[108,[16432.5,6287.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000206', 'UralOpen_CDF', '[268,[16802.4,6322.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000207', 'UH1H_TK_EP1', '[9,[16773.2,6268.66,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000208', 'TT650_Gue', '[6,[16517.8,9661.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000209', 'HMMWV', '[181,[16247.4,10098.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000210', 'UH1H_TK_EP1', '[181,[16312.4,10029.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000211', 'UH1H_TK_EP1', '[140,[17479.9,9193.12,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000212', 'UH1H_TK_EP1', '[335,[3102.28,2469.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000213', 'UAZ_RU', '[267,[15457.4,10033.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000214', 'Ikarus_TK_CIV_EP1', '[272,[15840.5,9551.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000215', 'LadaLM', '[183,[15458.4,10112.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000216', 'Lada2_TK_CIV_EP1', '[107,[15799.4,9042.73,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000217', 'hilux1_civil_3_open_EP1', '[270,[14742,9858.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000218', 'Ikarus', '[290,[15089.2,9334.68,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000219', 'S1203_TK_CIV_EP1', '[183,[15442.3,9734.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000220', 'Ural_TK_CIV_EP1', '[183,[14533.3,10395.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000221', 'VolhaLimo_TK_CIV_EP1', '[180,[14860.6,9331.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000222', 'UAZ_RU', '[274,[14646.1,9984.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000223', 'VWGolf', '[269,[15480.1,9470.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000224', 'datsun1_civil_3_open', '[4,[15226.7,9457.74,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000225', 'hilux1_civil_3_open_EP1', '[92,[14968.4,10162.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000226', 'MMT_Civ', '[268,[15840.2,9385.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000227', 'MMT_Civ', '[94,[15234.6,10249.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000228', 'Old_bike_TK_CIV_EP1', '[3,[14736.3,9524.02,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000229', 'SUV_Yellow', '[0,[15161.2,10052.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000230', 'TT650_TK_CIV_EP1', '[0,[14719.8,10259,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000231', 'SkodaGreen', '[91,[14611.5,10154.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000232', 'SkodaRed', '[111,[15348.2,9014.43,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000233', 'car_sedan', '[269,[14730.8,9807.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000234', 'hilux1_civil_1_open', '[3,[15476.7,9622.34,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000235', 'SUV_Red', '[4,[15169.5,9692,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000236', 'SUV_White', '[358,[15086.7,9690.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000237', 'UralCivil', '[207,[15179.4,9174.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000238', 'Ural_TK_CIV_EP1', '[184,[15334.8,10203.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000239', 'Volha_2_TK_CIV_EP1', '[95,[15589.6,9575.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000240', 'hilux1_civil_3_open_EP1', '[90,[15624.2,9573.14,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000242', 'Lada2_TK_CIV_EP1', '[92,[14937.8,9863.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000243', 'MMT_Civ', '[184,[15415.4,9269.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000244', 'M1030', '[146,[12444.6,14987.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000245', 'SkodaRed', '[43,[12719.9,15140.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000246', 'VolhaLimo_TK_CIV_EP1', '[233,[12494.5,15017.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000247', 'MMT_Civ', '[224,[12617.1,15157.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000248', 'Old_bike_TK_CIV_EP1', '[184,[13583,13523.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000249', 'S1203_TK_CIV_EP1', '[272,[13591.4,13550.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000250', 'SUV_Special', '[84,[13715.5,13634.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000252', 'S1203_TK_CIV_EP1', '[272,[11225.3,15895.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000253', 'Skoda', '[272,[11225.3,15905.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000254', 'car_sedan', '[269,[11225.3,15922,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000255', 'VolhaLimo_TK_CIV_EP1', '[269,[11225,15951.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000256', 'Old_bike_TK_CIV_EP1', '[101,[11515.3,15963.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000257', 'Ikarus', '[180,[11634.9,15762.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000258', 'VWGolf', '[155,[11894.7,15692.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000259', 'LadaLM', '[326,[11922.9,15458,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000260', 'TT650_Ins', '[22,[11965.7,15478.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000261', 'UAZ_Unarmed_TK_EP1', '[126,[11720.4,14881.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000262', 'V3S_Civ', '[125,[11704.6,14860.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000263', 'Old_bike_TK_CIV_EP1', '[182,[11338.4,15214.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000264', 'ATV_US_EP1', '[301,[12340.2,15732.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000265', 'traktor', '[157,[12459.7,13732.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000266', 'LandRover_CZ_EP1', '[8,[12521.9,13577.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000267', 'Lada2_TK_CIV_EP1', '[80,[12627.7,13612.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000268', 'Old_bike_TK_CIV_EP1', '[271,[12445.2,13531.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000269', 'datsun1_civil_3_open', '[152,[12645.3,11818.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000270', 'Ikarus_TK_CIV_EP1', '[360,[12628.4,11741,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000271', 'Old_bike_TK_CIV_EP1', '[74,[12825.9,11892.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000272', 'hilux1_civil_2_covered', '[306,[16137.5,13478.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000273', 'Ikarus', '[360,[16282.4,13657.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000274', 'TT650_TK_CIV_EP1', '[8,[15724.4,13410.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000275', 'UralCivil', '[170,[14844.5,18574.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000276', 'S1203_TK_CIV_EP1', '[4,[15065.4,18458.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000278', 'LandRover_TK_CIV_EP1', '[296,[16716.2,10631.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000279', 'Old_bike_TK_CIV_EP1', '[359,[14462.5,11394.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000280', 'SUV_Blue', '[33,[14265.1,11259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000281', 'VolhaLimo_TK_CIV_EP1', '[255,[14494.9,11287.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000282', 'hilux1_civil_3_open_EP1', '[64,[14114.1,12135.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000283', 'Old_bike_TK_CIV_EP1', '[343,[14165,11955.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000284', 'Ikarus_TK_CIV_EP1', '[338,[14131.7,12000.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000285', 'tractor', '[222,[14076,12119.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000286', 'Lada1_TK_CIV_EP1', '[241,[13994.2,12219.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000288', 'Old_bike_TK_CIV_EP1', '[177,[13943.9,12323.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000289', 'V3S_Civ', '[135,[13755.5,12224.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000290', 'hilux1_civil_2_covered', '[1,[9650,6007,0]]', 'Barn north of Repkov');
INSERT INTO `object_spawns` VALUES ('0000000000291', 'Old_bike_TK_CIV_EP1', '[113,[3278.82,7485.31,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000292', 'MMT_Civ', '[339,[3281.25,7548.81,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000293', 'TT650_TK_CIV_EP1', '[58,[3301.71,7599.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000294', 'TT650_Gue', '[216,[3340.57,7630.28,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000295', 'Old_bike_TK_CIV_EP1', '[178,[3424.7,7552.19,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000296', 'MMT_Civ', '[4,[3804.54,7187.21,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000297', 'TT650_TK_CIV_EP1', '[138,[3799.18,7098.58,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000298', 'TT650_Gue', '[180,[3710.04,7017.32,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000299', 'Old_bike_TK_CIV_EP1', '[230,[3821.48,6877.06,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000300', 'MMT_Civ', '[335,[3934.06,6942.25,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000301', 'Old_bike_TK_CIV_EP1', '[20,[3905.72,7077.5,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000302', 'MMT_Civ', '[96,[3963.42,7156.45,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000303', 'Old_bike_TK_CIV_EP1', '[21,[3985.11,7341.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000304', 'Mi17_DZ', '[136,[7754.04,4266.49,0]]', 'Branibor Tv-tower');
INSERT INTO `object_spawns` VALUES ('0000000000305', 'UH1H_DZ', '[180,[9349.95,4662.88,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000306', 'AH6X_DZ', '[117,[11574.3,648.71,0]]', 'Shore at Blato');
INSERT INTO `object_spawns` VALUES ('0000000000307', 'Mi17_DZ', '[38,[9320.15,7765.53,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000308', 'UH1H_DZ', '[252,[5317.76,8620.61,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000309', 'AH6X_DZ', '[325,[5987.66,9657.02,0]]', 'Chernovar next to the broken barn');
INSERT INTO `object_spawns` VALUES ('0000000000310', 'Mi17_DZ', '[1,[15379.4,9707.99,0]]', 'Sabina Hospital');
INSERT INTO `object_spawns` VALUES ('0000000000311', 'UH1H_DZ', '[89,[11521.1,15306,0]]', 'Lypestok football stadium');
INSERT INTO `object_spawns` VALUES ('0000000000312', 'AH6X_DZ', '[269,[14520.7,11411.9,0]]', 'Novi Bor Construction Site');
INSERT INTO `object_spawns` VALUES ('0000000000313', 'Mi17_DZ', '[88,[16754.3,6317.61,0]]', 'Stare Pol military base');
INSERT INTO `object_spawns` VALUES ('0000000000314', 'UH1H_DZ', '[3,[16966.1,12568.3,0]]', 'Molotovsk hotel');
INSERT INTO `object_spawns` VALUES ('0000000000315', 'AH6X_DZ', '[338,[8109.2,21168,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000316', 'Mi17_DZ', '[90,[15439.5,16282.2,0]]', 'Sevastopol firestation');
INSERT INTO `object_spawns` VALUES ('0000000000317', 'UH1H_DZ', '[341,[12560.9,13713.4,0]]', 'Doriyanov military base');
INSERT INTO `object_spawns` VALUES ('0000000000318', 'AH6X_DZ', '[94,[17465.6,7161.06,0]]', 'Byelov inner yard');
INSERT INTO `object_spawns` VALUES ('0000000000319', 'Pickup_PK_DZ', '[229,[11035.2,6675.03,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000320', 'UAZ_MG_DZ', '[32,[9336.4,5230.6,0]]', 'military base east of Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000321', 'Pickup_PK_DZ', '[217,[7749.32,7894.98,0]]', 'Krasnoznamensk Airfield');
INSERT INTO `object_spawns` VALUES ('0000000000322', 'UAZ_MG_DZ', '[5,[5837.59,9956.13,0]]', 'Chernova Police Station');
INSERT INTO `object_spawns` VALUES ('0000000000323', 'Pickup_PK_DZ', '[9,[13368,8591.33,0]]', 'Chertova Styena');
INSERT INTO `object_spawns` VALUES ('0000000000324', 'UAZ_MG_DZ', '[163,[17207.3,5650.31,0]]', 'military base south of Stare Pole');
INSERT INTO `object_spawns` VALUES ('0000000000325', 'Pickup_PK_DZ', '[89,[16428.8,14267.4,0]]', 'Martin military base ( barracks)');
INSERT INTO `object_spawns` VALUES ('0000000000326', 'UAZ_MG_DZ', '[68,[12604.4,14406.3,0]]', 'Chrveni Gradok firestation');
INSERT INTO `object_spawns` VALUES ('0000000000327', 'Pickup_PK_DZ', '[59,[11098.3,18706.2,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000328', 'UAZ_MG_DZ', '[238,[14011.1,12408.4,0]]', 'Solibor military base');
INSERT INTO `object_spawns` VALUES ('0000500000329', 'PBX_DZ', '[210,[5305.11,9213.32,0]]', 'Shore near Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000500000330', 'Fishing_Boat_DZ', '[39,[4893.85,8662.77,0]]', 'Shore of Primorsk');
INSERT INTO `object_spawns` VALUES ('0000500000331', 'Smallboat_1_DZ', '[72,[5725.44,10986,0]]', 'Borovska Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000332', 'Smallboat_2_DZ', '[131,[7179.07,10223,0]]', 'Shore near Vucor');
INSERT INTO `object_spawns` VALUES ('0000500000333', 'Fishing_Boat_DZ', '[131,[9016.48,8918.07,0]]', 'Shore near Nekmir');
INSERT INTO `object_spawns` VALUES ('0000500000334', 'Zodiac_DZ', '[345,[11426,6967.47,0]]', 'Krkav Shore');
INSERT INTO `object_spawns` VALUES ('0000500000335', 'Fishing_Boat_DZ', '[148,[10850.9,6061.89,0]]', 'Komarovo Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000336', 'Smallboat_2_DZ', '[327,[11902.8,1556.55,0]]', 'Vodice');
INSERT INTO `object_spawns` VALUES ('0000500000337', 'Zodiac_DZ', '[90,[10120.1,5358.97,0]]', 'Bashka Luka shore');
INSERT INTO `object_spawns` VALUES ('0000500000338', 'Fishing_Boat_DZ', '[334,[16789.4,4734.12,0]]', 'Chertovo Oko Southwest shore');
INSERT INTO `object_spawns` VALUES ('0000500000339', 'Smallboat_1_DZ', '[188,[10521.4,16779.3,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000340', 'Smallboat_2_DZ', '[169,[10360.8,16778.9,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000341', 'Fishing_Boat_DZ', '[163,[9750.54,14107.1,0]]', 'Cherveny Les Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000342', 'PBX_DZ', '[219,[7449.91,22134,0]]', 'Helfenburg northern Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000343', 'Smallboat_2_DZ', '[332,[15919.9,6182.26,0]]', 'Stare pole Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000000000378', 'M1030_US_DES_EP1', '[135,[11747.2,15335,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000346', 'ATV_CZ_EP1', '[182,[5987.73,9882.42,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000347', 'car_sedan', '[271,[6681.98,9811.98,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000348', 'MMT_Civ', '[186,[6735.83,9889.73,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000349', 'datsun1_civil_3_open', '[130,[9057.69,8128.55,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000350', 'Lada2_TK_CIV_EP1', '[220,[9535.59,7952.92,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000351', 'TT650_Civ', '[228,[9080.3,7858.84,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000352', 'ATV_CZ_EP1', '[128,[8958.34,8343.56,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000353', 'SkodaRed', '[326,[8066.62,6557.08,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000354', 'MMT_Civ', '[60,[8483.98,5597.04,0]]', 'Polyanka');
INSERT INTO `object_spawns` VALUES ('0000000000355', 'Old_bike_TK_CIV_EP1', '[151,[9148.38,5465.5,0]]', 'Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000356', 'ATV_CZ_EP1', '[334,[11019.4,6679.71,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000357', 'datsun1_civil_2_covered', '[86,[10524.2,6581.97,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000358', 'ATV_CZ_EP1', '[263,[10655.4,6465.89,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000359', 'Old_bike_TK_CIV_EP1', '[48,[10862.9,6126.65,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000360', 'car_hatchback', '[228,[10017.9,1323.86,0]]', 'Marina');
INSERT INTO `object_spawns` VALUES ('0000000000361', 'S1203_TK_CIV_EP1', '[136,[9638.87,1751.53,0]]', 'Kosovo');
INSERT INTO `object_spawns` VALUES ('0000000000362', 'Ikarus_TK_CIV_EP1', '[221,[7582.17,4367.27,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000363', 'TT650_Civ', '[226,[7913.65,4156.75,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000364', 'Old_moto_TK_Civ_EP1', '[305,[7935.54,5362.72,0]]', 'Bled');
INSERT INTO `object_spawns` VALUES ('0000000000365', 'M1030_US_DES_EP1', '[260,[10272.3,19142.3,0]]', 'Yaroslaf');
INSERT INTO `object_spawns` VALUES ('0000000000366', 'ATV_CZ_EP1', '[326,[10919.7,18760.9,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000367', 'Skoda', '[282,[11295.9,17805.4,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000368', 'S1203_TK_CIV_EP1', '[28,[15335.2,16080.1,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000369', 'Old_moto_TK_Civ_EP1', '[359,[15455.9,16387.5,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000370', 'SUV_Pink', '[195,[12441.5,13807.4,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000371', 'Old_bike_TK_CIV_EP1', '[274,[12480.9,13607.9,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000372', 'VWGolf', '[0,[11690.2,15167.7,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000373', 'Lada1_TK_CIV_EP1', '[228,[11063.1,15440.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000374', 'hilux1_civil_3_open_EP1', '[186,[11485.4,15949.6,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000375', 'SUV_Charcoal', '[232,[12223.3,15500.4,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000376', 'TT650_Civ', '[315,[11776.9,15325.2,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000377', 'ATV_CZ_EP1', '[231,[12347.5,15379.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000343', 'ATV_CZ_EP1', '[132,[3334.44,7605.02,0]]', 'Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000344', 'MMT_Civ', '[353,[5335.44,8844.42,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000345', 'datsun1_civil_3_open', '[270,[5737.02,9900.18,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000379', 'ATV_CZ_EP1', '[92,[13551,13550.6,0]]', 'Vinograd');
INSERT INTO `object_spawns` VALUES ('0000000000380', 'Old_bike_TK_CIV_EP1', '[275,[16325.9,13604.8,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000381', 'MMT_Civ', '[271,[16326.1,13608.2,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000382', 'SUV_Orange', '[184,[16247.6,11578.6,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000383', 'hilux1_civil_3_open_EP1', '[90,[16163,11495.5,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000384', 'ATV_CZ_EP1', '[270,[16195.2,11601.9,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000385', 'M1030_US_DES_EP1', '[359,[17236.4,7617.03,0]]', 'Byelov');
INSERT INTO `object_spawns` VALUES ('0000000000386', 'UralCivil2', '[120,[15197.7,7772.87,0]]', 'Boye');
INSERT INTO `object_spawns` VALUES ('0000000000387', 'ATV_CZ_EP1', '[2,[16310.1,7380.83,0]]', 'Krushevich');
INSERT INTO `object_spawns` VALUES ('0000000000388', 'Ural_TK_CIV_EP1', '[78,[16464.1,9770.87,0]]', '');

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
