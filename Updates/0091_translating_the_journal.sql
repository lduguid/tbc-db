/*
Translating the Journal (2338) - Jarkal Mossmeld (6868)
16:44:06.344 CMSG_QUEST_GIVER_CHOOSE_REWARD
16:44:06.953 move X: -6673.226 Y: -2180.4727 Z: 243.9145
16:44:07.172 npc flags 0
16:44:07.281 say text 1: Allow me to get some water for the inking reagent.
16:44:26.078 move X: -6679.262 Y: -2170.4294 Z: 244.22798
16:44:32.234 Emote ID: 16 (OneShotKneel)
16:44:32.375 say text 2: This will do nicely.  Now to the task at hand!
16:44:34.656 move X: -6653.346 Y: -2139.3271 Z: 251.90773
16:44:41.906 FaceDirection: 5.480333805084228515
16:44:44.359 cast 9744 on self
16:44:48.906 SMSG_SPELL_GO 9744
16:44:49.391 say text 3: There we go, all finished.  The journal has been translated for you.
16:44:50.484 npc flags 2
*/
UPDATE quest_template SET CompleteScript=2338 WHERE entry=2338; -- Translating the Journal
DELETE FROM dbscripts_on_quest_end WHERE id=2338;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2338, 600, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Set waypoint movement (Remainder of script handled there)'),
(2338, 800, 0, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Remove NpcFlags'),
(2338, 900, 0, 0, 0, 0, 0, 0, 0, 0, 3082, 0, 0, 0, 0, 0, 0, 0, 0,'Translating the Journal: Jarkal Mossmeld - Say text 1');
-- Not sure what blizz was thinking on the path for this guy, he walks through objects & other NPCs on retail to reach the water outside the inn...
-- I've added some points and slightly adjusted one point to circumvent these problems
DELETE FROM `creature_movement_template` WHERE `Entry`=6868;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(6868, 0, 1, -6654.75, -2145.6396, 251.954498, 100, 0, 0, 'custom'),
(6868, 0, 2, -6656.993, -2147.749, 249.6267, 100, 0, 0, 'custom'),
(6868, 0, 3, -6657.808, -2158.299, 245.3514, 100, 0, 0, 'custom'),
(6868, 0, 4, -6673.226, -2180.4727, 243.9145, 100, 0, 0, ''),
(6868, 0, 5, -6681.091, -2169.716, 244.14854, 1.244383, 4000, 686801, 'custom, blizzlike: -6679.262, -2170.4294, 244.22798'),
(6868, 0, 6, -6673.226, -2180.4727, 243.9145, 100, 0, 0, 'custom'),
(6868, 0, 7, -6657.808, -2158.299, 245.3514, 100, 0, 0, 'custom'),
(6868, 0, 8, -6656.993, -2147.749, 249.6267, 100, 0, 0, 'custom'),
(6868, 0, 9, -6654.75, -2145.6396, 251.954498, 100, 0, 0, 'custom'),
(6868, 0, 10, -6653.346, -2139.3271, 251.90773, 5.480333805084228515, 5000, 686802, '');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (686801,686802);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(686801, 1000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Emote OneShotKneel'),
(686801, 1100, 0, 0, 0, 0, 0, 0, 0, 0, 3084, 0, 0, 0, 0, 0, 0, 0, 0,'Translating the Journal: Jarkal Mossmeld - Say text 2'),
(686802, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Set idle movement'),
(686802, 3000, 0, 15, 9744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Cast Jarkal''s Translation'),
(686802, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 3085, 0, 0, 0, 0, 0, 0, 0, 0,'Translating the Journal: Jarkal Mossmeld - Say text 3'),
(686802, 9000, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Translating the Journal: Jarkal Mossmeld - Add NpcFlags');


