-- Slithering Scar Ore Nodes (Basically all Ooze Covered Nodes in Un'goro Crater)

-- DELETE FROM `gameobject` WHERE (`guid` IN (15423, 15426, 15427, 15460, 15461, 15462, 15463, 15464, 15465, 15466, 15467, 15469, 15470, 15472, 15473, 17751, 17754));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (15460, 15461, 15462, 15463, 15464, 15465, 15466, 15467, 15469, 15470, 15472, 15473, 17751, 17754));

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110892 AND 110931;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110892 AND 110931;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8916 AND 8935;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8916 AND 8935;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 108707 AND 108714;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108707 AND 108714;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9250 AND 9253;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9250 AND 9253;

-- Now Empty, substituted by spawn_group
DELETE FROM `pool_template` WHERE `entry` = 2059; -- 2059	6	Master Mineral Pool - Un'Goro Crater (Ooze Covered Mineral GOs)

-- DELETE FROM `gameobject` WHERE (`guid` IN (359, 9495, 9527)); -- unsure if these are legit (in the hive area), most likely not (never seen them and they are not shown on wowhead
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (359, 9495, 9527)); -- we have some more nodes in front of the entrance, keeping them for now

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110432 AND 110436;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110432 AND 110436;
DELETE FROM `pool_template` WHERE `entry` = 8824;
DELETE FROM `pool_pool` WHERE `pool_id` = 8824;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110677 AND 110681;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110677 AND 110681;
DELETE FROM `pool_template` WHERE `entry` = 8873;
DELETE FROM `pool_pool` WHERE `pool_id` = 8873;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110687 AND 110691;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110687 AND 110691;
DELETE FROM `pool_template` WHERE `entry` = 8875;
DELETE FROM `pool_pool` WHERE `pool_id` = 8875;

-- UPDATE `pool_template` SET `max_limit` = '1' WHERE (`entry` = 6488); -- Terror Run?
-- 18430 -8223	-1041	-184
-- 120747 -8105.24	-1286.48	-266.778
-- 120780 -8055.6	-1025.24	-261.376

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15423;
SET @OBJECT_2 = 15426;
SET @OBJECT_3 = 15427;
SET @OBJECT_4 = 15460;
SET @OBJECT_5 = 15461;

SET @GROUP_ID = 10016;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7970.74316406250, -1310.6855468750000, -312.589660644531250, 5.34070873260498046875, 0, 0, -0.45398998260498046875, 0.8910067677497863769531250, 900, 1800, 100, 1),
(@OBJECT_2, 0, 1, 1, -8062.86962890625, -1248.5235595703125, -331.333709716796875, 4.01426029205322265625, 0, 0, -0.90630722045898437500, 0.4226194918155670166015625, 900, 1800, 100, 1),
(@OBJECT_3, 0, 1, 1, -8014.10351562500, -1299.9166259765625, -320.585906982421875, 2.05948829650878906250, 0, 0, 0.857167243957519531250, 0.5150381922721862792968750, 900, 1800, 100, 1),
(@OBJECT_4, 0, 1, 1, -7981.69433593750, -1252.0499267578125, -323.312194824218750, 0.83775746822357177734, 0, 0, 0.406736373901367187500, 0.9135455489158630371093750, 900, 1800, 100, 1),
(@OBJECT_5, 0, 1, 1, -7945.00634765625, -1286.7802734375000, -278.139282226562500, 2.61798930168151855469, 0, 0, 0.965925216674804687500, 0.2588213086128234863281250, 900, 1800, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, 123309), (@OBJECT_1, 123848),
(@OBJECT_2, 123309), (@OBJECT_2, 123848),
(@OBJECT_3, 123309), (@OBJECT_3, 123848),
(@OBJECT_4, 123309), (@OBJECT_4, 123848),
(@OBJECT_5, 123309), (@OBJECT_5, 123848);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, -1),
(@GROUP_ID, @OBJECT_2, -1),
(@GROUP_ID, @OBJECT_3, -1),
(@GROUP_ID, @OBJECT_4, -1),
(@GROUP_ID, @OBJECT_5, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Un\'goro Crater - Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 000', 1, 1, 0, 0);

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15462;
SET @OBJECT_2 = 15463;
SET @OBJECT_3 = 15464;
SET @OBJECT_4 = 15465;
SET @OBJECT_5 = 15466;

SET @GROUP_ID = 10017;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8008.18945312500, -1194.4592285156250, -322.099517822265625, 2.07693934440612792969, 0, 0, 0.861628532409667968750, 0.5075393915176391601562500, 900, 1800, 100, 1),
(@OBJECT_2, 0, 1, 1, -8026.94775390625, -1132.6629638671875, -318.218383789062500, 2.04203510284423828125, 0, 0, 0.852640151977539062500, 0.5224986076354980468750000, 900, 1800, 100, 1),
(@OBJECT_3, 0, 1, 1, -7963.21337890625, -1072.9023437500000, -326.897857666015625, 1.51843619346618652344, 0, 0, 0.688354492187500000000, 0.7253744602203369140625000, 900, 1800, 100, 1),
(@OBJECT_4, 0, 1, 1, -8054.03808593750, -1181.9097900390625, -331.592620849609375, 2.23401784896850585938, 0, 0, 0.898793220520019531250, 0.4383728206157684326171875, 900, 1800, 100, 1),
(@OBJECT_5, 0, 1, 1, -8118.18847656250, -1238.7950439453125, -339.222045898437500, 4.29351329803466796875, 0, 0, -0.83866977691650390625, 0.5446402430534362792968750, 900, 1800, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, 123309), (@OBJECT_1, 123848),
(@OBJECT_2, 123309), (@OBJECT_2, 123848),
(@OBJECT_3, 123309), (@OBJECT_3, 123848),
(@OBJECT_4, 123309), (@OBJECT_4, 123848),
(@OBJECT_5, 123309), (@OBJECT_5, 123848);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, -1),
(@GROUP_ID, @OBJECT_2, -1),
(@GROUP_ID, @OBJECT_3, -1),
(@GROUP_ID, @OBJECT_4, -1),
(@GROUP_ID, @OBJECT_5, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Un\'goro Crater - Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 001', 1, 1, 0, 0);

