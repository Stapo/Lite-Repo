
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

INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.72', 1, '0.338583', '[[\"motor\",0.396978],[\"palivo\",0.0446855],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.491398]]');
INSERT INTO `object_classes` VALUES ('BW_Ikarus1', '0.71', 1, '0.0748032', '[[\"glass5\",0.28032],[\"glass6\",0.138695],[\"karoserie\",0.119215],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",0.0134624],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",0.878418],[\"glass3\",0.477473],[\"glass4\",0.0820388]]');
INSERT INTO `object_classes` VALUES ('BW_Ikarus2', '0.71', 1, '0.0629921', '[[\"glass5\",1],[\"glass6\",0.205741],[\"karoserie\",0.0447305],[\"palivo\",0.161715],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass3\",1],[\"glass4\",0.0576707]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.70', 1, '0.165354', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('kpfs_golf_g', '0.70', 1, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('kpfs_golf_p', '0.70', 2, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('kpfs_golf_post', '0.71', 2, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('kpfs_golf_tk', '0.71', 1, '0.072542', '[[\"wheel_1_2_steering\",0.16142],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",0.97512],[\"motor\",0.161344],[\"karoserie\",0.0587171],[\"palivo\",0.8],[\"glass1\",1],[\"glass2\",0.659401]]');
INSERT INTO `object_classes` VALUES ('Lada1_GDR', '0.70', 1, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Lada2_GDR', '0.70', 1, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.70', 2, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Lada4_GDR', '0.70', 1, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('Lada5_GDR', '0.70', 1, '0.0354331', '[[\"motor\",0.160118],[\"karoserie\",0.078272],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.0617056]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.71', 2, '0.122047', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.70', 6, '0', '[]');
INSERT INTO `object_classes` VALUES ('PBX', '0.70', 1, '0', '[]');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.70', 1, '0', '[]');
INSERT INTO `object_classes` VALUES ('smallboat_2', '0.70', 1, '0', '[]');
INSERT INTO `object_classes` VALUES ('Tractor', '0.70', 4, '0.0433071', '[[\"motor\",0.701606],[\"karoserie\",0.39137],[\"palivo\",0.621727],[\"glass1\",1],[\"glass2\",0.285629],[\"glass3\",0.27514],[\"glass4\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.70', 2, '0.011811', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.70', 1, '0.011811', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.70', 2, '0.011811', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.70', 1, '0.011811', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.70', 3, '0.011811', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.73', 3, '0.00393701', '[[\"glass1\",1],[\"glass2\",0.0393701],[\"glass3\",1],[\"glass4\",0.0520385],[\"motor\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1]]');
INSERT INTO `object_classes` VALUES ('MTVR', '0.71', 1, '0.122047', '[[\"wheel_1_1_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_1_steering\",0.413386],[\"wheel_2_2_steering\",1],[\"wheel_2_3_steering\",1],[\"motor\",0.373254],[\"glass1\",1]]');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW_DZ', '0.30', 1, '0.05', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('LandRover_Special_CZ_EP1_DZ', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('V3S_TK_EP1', '0.30', 1, '0.05', '[[\"wheel_1_1_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_1_steering\",0.413386],[\"wheel_2_2_steering\",1],[\"wheel_2_3_steering\",1],[\"motor\",0.373254],[\"glass1\",1]]');
INSERT INTO `object_classes` VALUES ('M1030', '0.30', 1, '0.05', '[[\"Pravy predni tlumic\",1],[\"Pravy zadni tlumic\",0.521203]]');
INSERT INTO `object_classes` VALUES ('policecar', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('HMMWV_DZ', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.30', 1, '0.05', '[[\"glass5\",1],[\"glass6\",0.205741],[\"karoserie\",0.0447305],[\"palivo\",0.161715],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass3\",1],[\"glass4\",0.0576707]]');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_TK_DZ', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.139803],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",0.0982511]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.30', 1, '0.05', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.30', 1, '0.05', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');
INSERT INTO `object_classes` VALUES ('GazelleUN', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",0.0393701],[\"glass3\",1],[\"glass4\",0.0520385],[\"motor\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1]]');
INSERT INTO `object_classes` VALUES ('BAF_Merlin_DZC', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",0.0393701],[\"glass3\",1],[\"glass4\",0.0520385],[\"motor\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1]]');
INSERT INTO `object_classes` VALUES ('AW159_Lynx_DZC', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",0.0393701],[\"glass3\",1],[\"glass4\",0.0520385],[\"motor\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1]]');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.30', 1, '0.05', '[[\"glass1\",1],[\"glass2\",0.0393701],[\"glass3\",1],[\"glass4\",0.0520385],[\"motor\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.30', 1, '0.05', '[[\"karoserie\",1],[\"palivo\",0.397638],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass2\",0.254926],[\"glass3\",0.412207]]');

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

INSERT INTO `object_spawns` VALUES ('275712139056978', 'MTVR', '[71,[2094.65,7619.18,-0.00772476]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('501096747219146', 'Old_bike_TK_CIV_EP1', '[0,[2319.8,1213.5911,4.0054321e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('261237809192726', 'Lada2_TK_CIV_EP1', '[360,[8516.86,2148.63,0.0001297]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('120282463783439', 'Lada1_GDR', '[35,[1671.69,2091.84,0.000419617]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('202362405635843', 'kpfs_golf_p', '[81,[2360.87,1208.99,0.00244331]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('281210304526260', 'TT650_Civ', '[310,[409.376,3768.02,-0.00925827]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('548923174282435', 'Tractor', '[152,[4736.75,3007.69,-1.33514e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('303807518502464', 'TT650_TK_EP1', '[0,[1625.8889,2078.1746,1.335144e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('523939458641812', 'kpfs_golf_tk', '[27,[367.971,3718.82,-6.67572e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('868653281640975', 'Old_bike_TK_CIV_EP1', '[88,[6140.061,2629.8596,-3.8146973e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('985904989849897', 'Tractor', '[120,[6078.4307,2745.4111,-3.0517578e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('491739801957404', 'Lada4_GDR', '[7,[8918.93,2126.1,7.34329e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('781310451283912', 'Old_bike_TK_INS_EP1', '[0,[8923.083,2139.8386,-5.7220459e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('679487521848370', 'UH1H_DZ', '[94,[8777.93,2076.05,-0.0491714]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('895141268351018', 'Tractor', '[0,[8843.0586,2538.1528,-1.9073486e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('712135912809784', 'PBX', '[299,[8613.07,2467.64,0.175663]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('679070547102578', 'Tractor', '[0,[8766.1475,2672.552,5.7220459e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('727250510564253', 'Smallboat_1', '[0,[6771.4668,3383.1628,0.084204674]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('963162503592142', 'UH1H_DZ', '[162,[7797.06,1508.78,0.0114393]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('927143052013578', 'Old_bike_TK_CIV_EP1', '[0,[10837.63,876.93933]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('417401507075939', 'TT650_Gue', '[0,[7489.06,1447.57,0.0154333]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('604825712975092', 'smallboat_2', '[0,[10773.651,975.24237, 0.23155731]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('731424190561753', 'Old_bike_TK_CIV_EP1', '[45,[10976.697,885.80438,9.5367432e-007]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('180419189762523', 'ATV_CZ_EP1', '[149,[2629.24,4096.96,0.000131607]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('751679394615836', 'TT650_Ins', '[27,[10973.6,906.303,-0.0132909]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('308743910519483', 'hilux1_civil_3_open_EP1', '[33,[2437.44,4242.37,0]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('927627024243540', 'Lada5_GDR', '[210,[561.609,5010.75,5.91278e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('157395436901308', 'TT650_Civ', '[1,[583.873,4999.42,-0.0209208]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('902680958603981', 'kpfs_golf_post', '[0,[657.07629,5135.0928,6.6757202e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('856738026952474', 'TT650_TK_CIV_EP1', '[360,[8531.11,8107.91,0.00588608]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('985604816178165', 'Post_bike_E', '[0,[8482.4492,8107.7109,-2.4795532e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('783957532461074', 'kpfs_golf_g', '[82,[8884.36,2633.27,0.12]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('363692473154025', 'Lada2_GDR', '[41,[6677.15,8072.63,3.8147e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('692901593294321', 'Tractor', '[327,[6876.86,11167,2.76566e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('318624702975093', 'TT650_TK_EP1', '[0,[3008.2402,11027.495]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('912093136062654', 'Old_bike_TK_CIV_EP1', '[0,[6852.0908,11166.002,-1.9073486e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('209295367276546', 'BW_Ikarus1', '[355,[2902.24,10913.6,-0.000387192]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('357043178936313', 'kpfs_golf_post', '[39,[3072.7,11002.3,0.000118256]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('308989131319287', 'BW_Ikarus2', '[360,[8852.78,2168.46,-1.90735e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('410572563091062', 'LandRover_CZ_EP1', '[358,[10465.1,11582.3,-1.52588e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('535957160540729', 'TT650_TK_EP1', '[274,[10446.7,11510.6,-0.00825787]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('342942428769020', 'UH1H_DZ', '[152,[10976,11109.1,-0.0227766]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('875028261682834', 'Old_bike_TK_CIV_EP1', '[0,[10507.803,10731.588,-5.3405762e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('142350738124794', 'TT650_Ins', '[0,[10478.332,10651.773,-4.0054321e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('541094508320513', 'Lada2_TK_CIV_EP1', '[0,[9081.3779,8934.1094]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('525040203254316', 'LandRover_CZ_EP1', '[358,[10465.1,11582.3,-1.52588e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('10', 'HMMWV_TOW_DZ', '[-23,[9276.4336,2112.4519,2.4795532e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('11', 'LandRover_Special_CZ_EP1_DZ', '[170,[7844.7803,1498.9258,7.6293945e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('12', 'V3S_TK_EP1', '[-69,[8305.6396,1294.4105,1.335144e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('13', 'M1030', '[-70,[8305.4111,1339.8181,-3.8146973e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('14', 'policecar', '[161,[7205.1147,2582.7334,-8.5830688e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('15', 'S1203_TK_CIV_EP1', '[-131,[7216.3608,2578.7273,6.6757202e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('16', 'HMMWV_DZ', '[147,[6174.8984,2597.9565,9.5367432e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('17', 'Ikarus', '[-59,[4635.6636,3050.8481,1.1444092e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('18', 'Offroad_DSHKM_TK_DZ', '[88,[5611.3462,3799.2632,0]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('19', 'VolhaLimo_TK_CIV_EP1', '[-166,[9328.3389,3236.498,3.8146973e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('20', 'LandRover_TK_CIV_EP1', '[82,[8463.5254,3227.5415,-2.2888184e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('21', 'GazelleUN', '[172,[740.5824,11074.482,-2.2888184e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('22', 'BAF_Merlin_DZC', '[27,[2924.5859,10879.61,14.051692]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('23', 'AW159_Lynx_DZC', '[0,[11064.193,11194.265,-2.8610229e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('24', 'AW159_Lynx_DZC', '[62,[510.33176,5083.3687,1.335144e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('25', 'MH6J_DZ', '[-19,[11702.963,5788.7017,1.7166138e-005]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('26', 'SkodaBlue', '[161,[6020.3052,2740.155,-9.5367432e-006]]', 'TBA');
INSERT INTO `object_spawns` VALUES ('27', 'kpfs_golf_p', '[-124,[6824.5977,2604.1848,-2.0980835e-005]]', 'TBA');

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