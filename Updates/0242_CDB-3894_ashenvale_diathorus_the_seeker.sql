-- i think this spawn might even be randomized with otherwise spawning infernals/etc
SET @GROUP_ID := 10048;

SET @CREATURE_1 := 108916;
SET @CREATURE_2 := 108917;
SET @CREATURE_3 := 108918;
SET @CREATURE_4 := 108919;
SET @CREATURE_5 := 20029; -- TBC ONLY???

DELETE FROM `creature` WHERE (`guid` = '20029'); -- reuse guid for unsure tbc spawn

INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_1, 6072, 1, 1418.3494873047, -2852.9987792969, 133.3512115479, 1.518436431884770, 300, 300, 0, 0),
(@CREATURE_2, 6072, 1, 1374.1871337891, -2832.6206054688, 108.3551635742, 0.575958669185638, 300, 300, 0, 0),
(@CREATURE_3, 6072, 1, 1550.6004638672, -2884.1059570313, 133.0384368896, 3.438298702239990, 300, 300, 0, 0),
(@CREATURE_4, 6072, 1, 1498.5527343750, -2835.1359863281, 111.7669067383, 5.550147056579590, 300, 300, 0, 0),
(@CREATURE_5, 6072, 1, 1456.8688964843, -2798.2102050781, 158.7535705566, 3.438298702239990, 300, 300, 0, 0); -- xyz might be after it was already in combat

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Ashenvale - Diathorus the Seeker (1) Standing 000', '0', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@GROUP_ID, @CREATURE_1, '0', '0'),
(@GROUP_ID, @CREATURE_2, '1', '0'),
(@GROUP_ID, @CREATURE_3, '2', '0'),
(@GROUP_ID, @CREATURE_4, '3', '0'),
(@GROUP_ID, @CREATURE_5, '4', '0');

