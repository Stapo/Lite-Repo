DROP PROCEDURE IF EXISTS `pSpawn`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pSpawn`()
BEGIN
    DECLARE bSpawned        TINYINT(1) DEFAULT 0;
    DECLARE iLID                INT DEFAULT 0;
 
    WHILE (bSpawned = 0) DO
 
        SET iLID = LAST_INSERT_ID();
 
        INSERT INTO object_data (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
        SELECT ot.ObjectUID, '2', ot.Classname, ot.Damage, '0', ot.Worldspace, '[]', ot.Hitpoints, '0.05', SYSDATE()
            FROM (SELECT oc.Classname, oc.Chance, oc.MaxNum, oc.Damage, oc.Hitpoints, os.ObjectUID, os.Worldspace
                FROM object_classes AS oc
                INNER JOIN object_spawns AS os
                ON oc.Classname = os.Classname
                ORDER BY RAND()) AS ot
            WHERE NOT EXISTS (SELECT od.ObjectUID
                            FROM object_data AS od
                            WHERE ot.ObjectUID = od.ObjectUID)
            AND fGetClassCount(ot.Classname) < ot.MaxNum
            AND fGetSpawnFromChance(ot.Chance) = 1
            LIMIT 1;
     
            IF (LAST_INSERT_ID() <> iLID) THEN
                SET bSpawned = 1;
            END IF;
     
    END WHILE;
END
;