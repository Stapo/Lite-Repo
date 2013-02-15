DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE PROCEDURE `pMain`()
BEGIN

	DECLARE iSpawnNumVeh SMALLINT(3) DEFAULT 40;		
	
	CALL pCleanup();
	CALL pFixMaxNum;

	SELECT SUM(MaxNum) FROM object_classes WHERE Chance >= '0.1' INTO @iMaxNumTotal;
	IF (ISNULL(@iMaxNumTotal)) THEN
		SET @iMaxNumTotal = 0;
	END IF;
	IF (iSpawnNumVeh > @iMaxNumTotal) THEN
		SET iSpawnNumVeh = @iMaxNumTotal;
	END IF;

	WHILE (fGetVehCount() < iSpawnNumVeh) DO
		CALL pSpawn();
	END WHILE;

END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pSpawn`;
DELIMITER ;;
CREATE PROCEDURE `pSpawn`()
BEGIN
    DECLARE bSpawned        TINYINT(1) DEFAULT 0;
    DECLARE iLID                INT DEFAULT 0;
 
    WHILE (bSpawned = 0) DO
 
        SET iLID = LAST_INSERT_ID();
 
        INSERT INTO Object_DATA (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
        SELECT ot.ObjectUID, '1', ot.Classname, ot.Damage, '0', ot.Worldspace, '[]', ot.Hitpoints, '0.05', SYSDATE()
            FROM (SELECT oc.Classname, oc.Chance, oc.MaxNum, oc.Damage, oc.Hitpoints, os.ObjectUID, os.Worldspace
                FROM object_classes AS oc
                INNER JOIN object_spawns AS os
                ON oc.Classname = os.Classname
                ORDER BY RAND()) AS ot
            WHERE NOT EXISTS (SELECT od.ObjectUID
                            FROM Object_DATA AS od
                            WHERE ot.ObjectUID = od.ObjectUID)
            AND fGetClassCount(ot.Classname) < ot.MaxNum
            AND fGetSpawnFromChance(ot.Chance) = 1
            LIMIT 1;
     
            IF (LAST_INSERT_ID() <> iLID) THEN
                SET bSpawned = 1;
            END IF;
     
    END WHILE;
END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE PROCEDURE `pCleanup`()
BEGIN

	CALL pCleanupOOB();

	DELETE
		FROM Object_DATA 
		WHERE Damage = '1';	

	DELETE
		FROM Object_DATA
		WHERE DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Classname != 'dummy'
			AND Classname != 'TentStorage'
			AND Classname != 'Hedgehog_DZ'
			AND Classname != 'Wire_cat1'
			AND Classname != 'Sandbag1_DZ'
			AND Classname != 'TrapBear';

	DELETE
		FROM Object_DATA
		USING Object_DATA, Character_DATA
		WHERE Object_DATA.Classname = 'TentStorage'
			AND Object_DATA.CharacterID = Character_DATA.CharacterID
			AND Character_DATA.Alive = 0
			AND DATE(Character_DATA.Datestamp) < CURDATE() - INTERVAL 4 DAY;

	DELETE
		FROM Object_DATA
		WHERE Classname = 'TentStorage'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';			
	
	DELETE
		FROM Object_DATA
		WHERE Classname = 'TentStorage'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY
			AND Inventory = '[]';		

	DELETE
		FROM Object_DATA
		WHERE Classname = 'Wire_cat1'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 3 DAY;

	DELETE
		FROM Object_DATA
		WHERE Classname = 'Hedgehog_DZ'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 4 DAY;

	DELETE
		FROM Object_DATA
		WHERE Classname = 'Sandbag1_DZ'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 8 DAY;

	DELETE
		FROM Object_DATA
		WHERE Classname = 'TrapBear'
			AND DATE(Datestamp) < CURDATE() - INTERVAL 5 DAY;

END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE PROCEDURE `pCleanupOOB`()
BEGIN
 
    DECLARE intLineCount    INT DEFAULT 0;
    DECLARE intDummyCount    INT DEFAULT 0;
    DECLARE intDoLine            INT DEFAULT 0;
    DECLARE intWest                INT DEFAULT 0;
    DECLARE intNorth            INT DEFAULT 0;
 
    SELECT COUNT(*)
        INTO intLineCount
        FROM Object_DATA;
 
    SELECT COUNT(*)
        INTO intDummyCount
        FROM Object_DATA
        WHERE Classname = 'dummy';
 
    WHILE (intLineCount > intDummyCount) DO
   
        SET intDoLine = intLineCount - 1;
 
        SELECT ObjectUID, Worldspace
            INTO @rsObjectUID, @rsWorldspace
            FROM Object_DATA
            LIMIT intDoLine, 1;
 
        SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
        SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
        SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
        SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;
 
        SELECT INSTR(@West, '-') INTO intWest;
        SELECT INSTR(@North, '-') INTO intNorth;
 
        IF (intNorth = 0) THEN
            IF (ISNULL(@North)) THEN
                SET @North = '';
                SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
            END IF;
            IF (!ISNULL(@North))THEN
                SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
            END IF;
        END IF;
 
        IF (intWest > 0 OR intNorth > 13000) THEN
            DELETE FROM Object_DATA
                WHERE ObjectUID = @rsObjectUID;
        END IF;
       
        SET intLineCount = intLineCount - 1;
 
    END WHILE;
 
END
;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `pFixMaxNum`;
DELIMITER ;;
CREATE PROCEDURE `pFixMaxNum`()
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
CREATE FUNCTION `fGetClassCount`(`clname` varchar(32)) RETURNS smallint(3)
    READS SQL DATA
BEGIN

	DECLARE iClassCount SMALLINT(3) DEFAULT 0;

	SELECT COUNT(*) 
		INTO iClassCount 
		FROM Object_DATA 
		WHERE Classname = clname;

	RETURN iClassCount;
END
;;
DELIMITER ;


DROP FUNCTION IF EXISTS `fGetSpawnFromChance`;
DELIMITER ;;
CREATE FUNCTION `fGetSpawnFromChance`(`chance` double) RETURNS tinyint(1)
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
CREATE FUNCTION `fGetVehCount`() RETURNS smallint(3)
    READS SQL DATA
BEGIN

	DECLARE iVehCount	SMALLINT(3) DEFAULT 0;

	SELECT COUNT(*) 
		INTO iVehCount
		FROM Object_DATA 
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
