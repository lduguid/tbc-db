UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `guid` IN
(6417, 6418, 6419, 6420, 6421, 6422, 6423, 6424, 6425, 6426, 7333, 7334, 7335, 7336, 7337, 7338, 7339, 7340, 7341, 7342, 7880, 7882, 7883, 7884, 7885, 7897, 7898, 7899, 7900, 7901, 8428, 8429); -- identical
UPDATE `creature_template` SET `MechanicImmuneMask`=16 WHERE `entry` IN (3197, 3198);

