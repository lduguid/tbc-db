DELETE FROM `gameobject` WHERE (`guid` IN (49456, 49457, 49458, 49459, 120469, 120470, 120659, 120660));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (49456, 49457, 49458, 49459, 120469, 120470, 120659, 120660));

DELETE FROM `gameobject` WHERE `guid` BETWEEN 49456 AND 49459;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 49501 AND 49517;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 104756 AND 104787;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104756 AND 104787;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7859 AND 7866;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7859 AND 7866;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 104616 AND 104619;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104616 AND 104619;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7824 AND 7824;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7824 AND 7824;

-- dont delete as some are obv missing
-- https://github.com/cmangos/classic-db/commit/1800127db2e11c73d47a2ee001ea1424d3e1dc54#commitcomment-72510006
-- 7816	1	Mineral Spawn Point 1 - Silithus
-- 7817	1	Mineral Spawn Point 2 - Silithus
-- 7818	1	Mineral Spawn Point 3 - Silithus
-- 7819	1	Mineral Spawn Point 4 - Silithus
-- 7820	1	Mineral Spawn Point 5 - Silithus
-- 7821	1	Mineral Spawn Point 6 - Silithus
-- 7822	1	Mineral Spawn Point 7 - Silithus
-- 7823	1	Mineral Spawn Point 8 - Silithus
-- 7825	1	Mineral Spawn Point 10 - Silithus
-- 7826	1	Mineral Spawn Point 11 - Silithus
-- 7827	1	Mineral Spawn Point 12 - Silithus
-- 7828	1	Mineral Spawn Point 13 - Silithus
-- 7829	1	Mineral Spawn Point 14 - Silithus
-- 7830	1	Mineral Spawn Point 15 - Silithus
-- 7831	1	Mineral Spawn Point 16 - Silithus
-- 7832	1	Mineral Spawn Point 17 - Silithus
-- 7833	1	Mineral Spawn Point 18 - Silithus
-- 7834	1	Mineral Spawn Point 19 - Silithus
-- 7835	1	Mineral Spawn Point 20 - Silithus
-- 7836	1	Mineral Spawn Point 21 - Silithus
-- 7837	1	Mineral Spawn Point 22 - Silithus
-- 7838	1	Mineral Spawn Point 23 - Silithus
-- 7839	1	Mineral Spawn Point 24 - Silithus
-- 7840	1	Mineral Spawn Point 25 - Silithus
-- 7841	1	Mineral Spawn Point 26 - Silithus
-- 7842	1	Mineral Spawn Point 27 - Silithus
-- 7843	1	Mineral Spawn Point 28 - Silithus
-- 7844	1	Mineral Spawn Point 29 - Silithus
-- 7845	1	Mineral Spawn Point 30 - Silithus
-- 7846	1	Mineral Spawn Point 31 - Silithus
-- 7847	1	Mineral Spawn Point 32 - Silithus
-- 7848	1	Mineral Spawn Point 33 - Silithus
-- 7849	1	Mineral Spawn Point 34 - Silithus
-- 7850	1	Mineral Spawn Point 35 - Silithus
-- 7851	1	Mineral Spawn Point 36 - Silithus
-- 7852	1	Mineral Spawn Point 37 - Silithus
-- 7853	1	Mineral Spawn Point 38 - Silithus
-- 7854	1	Mineral Spawn Point 39 - Silithus
-- 7855	1	Mineral Spawn Point 40 - Silithus
-- 7856	1	Mineral Spawn Point 41 - Silithus
-- 7857	1	Mineral Spawn Point 42 - Silithus
-- 7858	1	Mineral Spawn Point 43 - Silithus
-- 7867	1	Mineral Spawn Point 52 - Silithus
-- 7868	1	Mineral Spawn Point 53 - Silithus
-- 7869	1	Mineral Spawn Point 54 - Silithus
-- 7870	1	Mineral Spawn Point 55 - Silithus
-- 7871	1	Mineral Spawn Point 56 - Silithus
-- 7872	1	Mineral Spawn Point 57 - Silithus
-- 7873	1	Mineral Spawn Point 58 - Silithus - down to 49 from 58
UPDATE `pool_template` SET `max_limit` = 12 WHERE `entry` = 2048; -- 2048	15	Master Mineral Pool - Silithus

SET @OBJECT_1 = 49456;
SET @OBJECT_2 = 49457;
SET @OBJECT_3 = 49458;
SET @OBJECT_4 = 49459;
SET @OBJECT_5 = 49501;

SET @GROUP_ID = 10018;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8053.12939453125, 1759.93444824218750, 10.079547882080078120, 3.141592741012573242, 0, 0, -0000000000000000001, 0.000000000000000000, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7635.37744140625, 1600.22045898437500, 14.711617469787597650, 6.091200351715087890, 0, 0, -0.09584522247314453, 0.995396256446838378, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -8009.26464843750, 1984.93493652343750, 15.742464065551757810, 4.485496520996093750, 0, 0, -0.78260803222656250, 0.622514784336090087, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7723.86718750000, 1732.58142089843750, 12.293322563171386710, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -7780.07031250000, 1925.89538574218750, 12.701610565185546870, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Gold Vein | Mithril Deposit | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 49502;
SET @OBJECT_2 = 49503;
SET @OBJECT_3 = 49504;
SET @OBJECT_4 = 49505;
SET @OBJECT_5 = 49506;

SET @GROUP_ID = 10019;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6530.45605468750, 199.050781250000000, 17.179752349853515620, 1.797688722610473632, 0, 0, 0.782608032226562500, 0.622514784336090087, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6240.54589843750, 354.439788818359375, 33.452899932861328120, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -6273.09912109375, 791.249572753906250, 18.360862731933593750, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.507539391517639160, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -6402.55273437500, 581.806091308593750, 2.7852749824523925780, 1.082102894783020019, 0, 0, 0.515037536621093750, 0.857167601585388183, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -6725.38085937500, 362.288421630859375, 5.9588208198547363280, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Gold Vein | Mithril Deposit | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 49507;
SET @OBJECT_2 = 49508;
SET @OBJECT_3 = 49509;
SET @OBJECT_4 = 49510;
SET @OBJECT_5 = 49511;

SET @GROUP_ID = 10020;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6892.37695312500, 12.93424510955810546, 12.10299396514892578, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7318.66650390625, 377.4346923828125000, 18.00469779968261718, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7098.65869140625, 153.3947448730468750, 12.91739654541015625, 5.934120178222656250, 0, 0, -0.17364788055419921, 0.984807789325714111, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7037.15869140625, 615.4843750000000000, 9.913235664367675781, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -7149.12939453125, 489.4420471191406250, 6.869507789611816406, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Gold Vein | Mithril Deposit | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 49512;
SET @OBJECT_2 = 49513;
SET @OBJECT_3 = 49514;
SET @OBJECT_4 = 49515;
SET @OBJECT_5 = 49516;
SET @OBJECT_6 = 49517;

SET @GROUP_ID = 10021;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6480.21533203125, 1923.43859863281250, 13.148053169250488280, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6277.09960937500, 1250.14282226562500, 18.535409927368164060, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -6209.18603515625, 1580.28039550781250, 17.112623214721679680, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.874620079994201660, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -6215.61181640625, 1863.73156738281250, 39.809772491455078120, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -6324.73876953125, 1631.31030273437500, 25.682792663574218750, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 600, 1200, 100, 1),
(@OBJECT_6, 0, 1, 1, -6556.39306640625, 1668.63537597656250, 34.708236694335937500, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047'),
(@OBJECT_6, '1734'), (@OBJECT_6, '2040'), (@OBJECT_6, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_6, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Gold Vein | Mithril Deposit | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE `spawn_group` SET `Name` = 'Un\'goro Crater - The Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 000' WHERE (`Id` = '10016'); -- Un'goro Crater - Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 000
UPDATE `spawn_group` SET `Name` = 'Un\'goro Crater - The Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 001' WHERE (`Id` = '10017'); -- Un'goro Crater - Slithering Scar - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 001

