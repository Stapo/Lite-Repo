
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCleanup`()
BEGIN

	CALL pCleanupOOB();

	DELETE
		FROM object_data 
		WHERE Damage = '1';	

	DELETE
		FROM object_data
		WHERE DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Classname != 'dummy'
			AND Classname != 'TentStorage'
			AND Classname != 'Hedgehog_DZ'
			AND Classname != 'Wire_cat1'
			AND Classname != 'Sandbag1_DZ'
			AND Classname != 'TrapBear';

	DELETE
		FROM object_data
		USING object_data, character_data
		WHERE object_data.Classname = 'TentStorage'
			AND object_data.CharacterID = character_data.CharacterID
			AND character_data.Alive = 0
			AND DATE(character_data.Datestamp) < CURDATE() - INTERVAL 4 DAY;

	DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';			
	
	DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Inventory = '[]';		

	DELETE
		FROM object_data
		WHERE Classname = 'Wire_cat1'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 3 DAY;

	DELETE
		FROM object_data
		WHERE Classname = 'Hedgehog_DZ'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 4 DAY;

	DELETE
		FROM object_data
		WHERE Classname = 'Sandbag1_DZ'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY;

	DELETE
		FROM object_data
		WHERE Classname = 'TrapBear'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 5 DAY;

END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCleanupOOB`()
BEGIN
 
    DECLARE intLineCount    INT DEFAULT 0;
    DECLARE intDummyCount    INT DEFAULT 0;
    DECLARE intDoLine            INT DEFAULT 0;
    DECLARE intWest                INT DEFAULT 0;
    DECLARE intNorth            INT DEFAULT 0;
 
    SELECT COUNT(*)
        INTO intLineCount
        FROM object_data;
 
    SELECT COUNT(*)
        INTO intDummyCount
        FROM object_data
        WHERE Classname = 'dummy';
 
    WHILE (intLineCount > intDummyCount) DO
   
        SET intDoLine = intLineCount - 1;
 
        SELECT ObjectUID, Worldspace
            INTO @rsObjectUID, @rsWorldspace
            FROM object_data
            LIMIT intDoLine, 1;
 
        SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
        SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
        SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
        SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;
 
        SELECT INSTR(@West, '-') INTO intWest;
        SELECT INSTR(@North, '-') INTO intNorth;
 
        IF (intNorth = 0) THEN
            IF (@North = NULL) THEN
                SET @North = '';
                SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
            END IF;
            IF (@North != NULL) THEN
                SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
            END IF;
        END IF;
 
        IF (intWest > 0 OR intNorth > 15360) THEN
            DELETE FROM object_data
                WHERE ObjectUID = @rsObjectUID;
        END IF;
       
        SET intLineCount = intLineCount - 1;
 
    END WHILE;
 
END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pFixMaxNum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pFixMaxNum`()
BEGIN

	DECLARE iCounter INT DEFAULT 0;

	SELECT COUNT(*) INTO @iClassesCount FROM object_classes WHERE Classname<>'';
	WHILE (iCounter < @iClassesCount) DO
		SELECT Classname, MaxNum INTO @Classname, @MaxNum FROM object_classes LIMIT iCounter,1;
		SELECT COUNT(*) INTO @iMaxClassSpawn FROM object_spawns WHERE Classname LIKE @Classname;
		IF (@MaxNum > @iMaxClassSpawn) THEN
			UPDATE object_classes SET MaxNum = @iMaxClassSpawn WHERE Classname = @Classname;
		END IF;
		SET iCounter = iCounter + 1;
	END WHILE;

END
;;
DELIMITER ;


DROP FUNCTION IF EXISTS `fGetClassCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetClassCount`(`clname` varchar(32)) RETURNS smallint(3)
    READS SQL DATA
BEGIN

	DECLARE iClassCount SMALLINT(3) DEFAULT 0;

	SELECT COUNT(*) 
		INTO iClassCount 
		FROM object_data 
		WHERE Classname = clname;

	RETURN iClassCount;
END
;;
DELIMITER ;


DROP FUNCTION IF EXISTS `fGetSpawnFromChance`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetSpawnFromChance`(`chance` double) RETURNS tinyint(1)
    NO SQL
BEGIN

	DECLARE bspawn TINYINT(1) DEFAULT 0;

	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;

	RETURN bspawn;

END
;;
DELIMITER ;


DROP FUNCTION IF EXISTS `fGetVehCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetVehCount`() RETURNS smallint(3)
    READS SQL DATA
BEGIN

	DECLARE iVehCount	SMALLINT(3) DEFAULT 0;

	SELECT COUNT(*) 
		INTO iVehCount
		FROM object_data 
		WHERE Classname != 'dummy'
			AND Classname != 'TentStorage'  
			AND Classname != 'Hedgehog_DZ'	
			AND Classname != 'Wire_cat1'		
			AND Classname != 'Sandbag1_DZ'	
			AND Classname != 'TrapBear';		

	RETURN iVehCount;
END
;;
DELIMITER ;
