-- Make most of the Murkblood Scavengers emote to work
DELETE FROM `creature_addon` WHERE `guid` IN (18963,18996,28678,28679,28680,28676,28677,68478,68478,68477,68476,68475,68474,60156,60153,60158,60163,60160,65621,65623,65622,65631,65632,65633);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(28678,0,0,0,0,234,''),(28679,0,0,0,0,234,''),(28680,0,0,0,0,234,''),(28676,0,0,0,0,234,''),(28677,0,0,0,0,234,''),
(60156,0,0,0,0,379,''),(60153,0,0,0,0,379,''),(60158,0,0,0,0,379,''),(60163,0,0,0,0,379,''),(60160,0,0,0,0,379,''), -- A few Windyreed Scavengers should be fishing,got to find their fishing pole in order for this to work
(68478,0,0,0,0,4,''),(68477,0,0,0,0,4,''),(68476,0,0,0,0,4,''),(68475,0,0,0,0,4,''),(68474,0,0,0,0,4,''), -- Make five mobs cheer for the Kurenai Pitfighter
(65621,0,0,0,0,4,''),(65623,0,0,0,0,4,''),(65622,0,0,0,0,4,''),(65631,0,0,0,0,4,''),(65632,0,0,0,0,4,''); -- Make five mobs cheer for the Kurenai Pitfighter
 
-- All Windroc Hunters and Huntresses were removed from the game in patch 2.2.x
DELETE FROM `creature` WHERE `id` IN (18963,18996);
 
-- The Windyreed Scavengers/Wretchs should never randomly walk around
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id` IN (17141,17139) AND `map`=530;
 
-- Double spawned Kil'sorrow Deathsworn
DELETE FROM `creature` WHERE `guid`=28648;
 
-- Spawn missing Grypgon Rider Guards and Bat Rider Guards
DELETE FROM `creature` WHERE `id` IN (15241,15242);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
-- Gryphon Rider Guard
(84492,15241,530,1,1,0,0,-2902.96,3932.89,38.9052,4.27606,120,5,0,13972,0,1,0,0,0),
(10024151,15241,530,1,1,0,0,-2617.43,7366.89,115.622,0.729426,300,5,0,13972,0,1,0,0,0),
(10024164,15241,530,1,1,0,0,-2687.94,7357.66,111.878,1.63263,300,5,0,13972,0,1,0,0,0),
(10024153,15241,530,1,1,0,0,-2535.98,7354.11,104.359,0.741994,300,5,0,13972,0,1,0,0,0),
(10024154,15241,530,1,1,0,0,-2493.26,7370.93,95.0513,3.9582,300,5,0,13972,0,1,0,0,0),
(10024155,15241,530,1,1,0,0,-2524.02,7282.75,97.7163,4.01318,300,5,0,13972,0,1,0,0,0),
(10024156,15241,530,1,1,0,0,-2542.03,7181.4,78.4844,4.97136,300,5,0,13972,0,1,0,0,0),
(10024157,15241,530,1,1,0,0,-2573.75,7144.77,100.122,2.95289,300,5,0,13972,0,1,0,0,0),
(10024158,15241,530,1,1,0,0,-2618.12,7174.62,102.004,2.21069,300,5,0,13972,0,1,0,0,0),
(10024166,15241,530,1,1,0,0,-2685.79,7196.22,111.657,2.25624,300,5,0,13972,0,1,0,0,0),
(10024160,15241,530,1,1,0,0,-2556.52,7214.67,99.8351,0.459248,300,5,0,13972,0,1,0,0,0),
(10024161,15241,530,1,1,0,0,-2523.46,7251.58,77.7602,0.946195,300,5,0,13972,0,1,0,0,0),
(10024162,15241,530,1,1,0,0,-2571.88,7285.83,87.4317,2.81544,300,5,0,13972,0,1,0,0,0),
(10024163,15241,530,1,1,0,0,-2629.83,7297.79,99.9096,2.12822,300,5,0,13972,0,1,0,0,0),
(10024165,15241,530,1,1,0,0,-2747.83,7317.09,170.925,4.71061,300,5,0,13972,0,1,0,0,0),
(10024167,15241,530,1,1,0,0,-2509.25,7322.7,54.6795,0.453753,300,5,0,13972,0,1,0,0,0),
-- Bat Rider Guard
(54839,15242,530,1,1,0,0,219.026,2561.37,170.895,3.98687,300,5,0,13972,0,1,0,0,0),
(54840,15242,530,1,1,0,0,165.559,2586.07,166.762,5.15224,300,5,0,13972,0,1,0,0,0),
(54841,15242,530,1,1,0,0,106.63,2678.7,163.675,0.511107,300,5,0,13972,0,1,0,0,0),
(54842,15242,530,1,1,0,0,237.938,2698.32,169.165,1.23918,300,5,0,13972,0,1,0,0,0),
(54843,15242,530,1,1,0,0,252.089,2798.81,221.462,4.43018,300,5,0,13972,0,1,0,0,0),
(54844,15242,530,1,1,0,0,150.654,2672.3,153.733,0.959931,300,5,0,13972,0,1,0,0,0),
(54845,15242,530,1,1,0,0,54.3604,2735.45,117.745,5.96903,300,5,0,13972,0,1,0,0,0),
(54846,15242,530,1,1,0,0,-3013,2633,126,5,300,5,0,13972,0,1,0,0,0),
(54847,15242,530,1,1,0,0,-3101,2598,109,1,300,5,0,13972,0,1,0,0,0),
(54848,15242,530,1,1,0,0,77.5297,5191.24,74.6276,1.8675,300,5,0,13972,0,1,0,0,0),
(54849,15242,530,1,1,0,0,-2581.9,4322.99,91.8055,0.314159,300,5,0,13972,0,1,0,0,0),
(54850,15242,530,1,1,0,0,-2551.02,4394.72,97.3171,2.58309,300,5,0,13972,0,1,0,0,0),
(54851,15242,530,1,1,0,0,-2666.96,4373.86,83.3874,2.18166,300,5,0,13972,0,1,0,0,0),
(54852,15242,530,1,1,0,0,-2619.77,4461.25,107.299,5.07891,300,5,0,13972,0,1,0,0,0),
(54853,15242,530,1,1,0,0,-2698.74,4431.72,91.5835,3.7001,300,5,0,13972,0,1,0,0,0),
(54854,15242,530,1,1,0,0,-1256.81,7064.48,110.597,5.61996,300,5,0,13972,0,1,0,0,0),
(54855,15242,530,1,1,0,0,-1280.78,7400.27,96.1799,5.02655,300,5,0,13972,0,1,0,0,0),
(54856,15242,530,1,1,0,0,-1236.64,7242.07,106.163,1.0821,300,5,0,13972,0,1,0,0,0),
(54857,15242,530,1,1,0,0,-1423.27,7268.78,106.089,1.09956,300,5,0,13972,0,1,0,0,0),
(10023896,15242,530,1,1,0,0,-1415.04,7225.14,105.457,0.266238,300,0,0,13972,0,0,0,0,0),
(10023897,15242,530,1,1,0,0,-1343.09,7254.79,112.943,0.0816694,300,0,0,13972,0,0,0,0,0),
(10023898,15242,530,1,1,0,0,-1404.97,7316.89,93.3587,2.61951,300,0,0,13972,0,0,0,0,0),
(10023899,15242,530,1,1,0,0,-1495.35,7290.33,132.08,4.44792,300,0,0,13972,0,0,0,0,0),
(10023900,15242,530,1,1,0,0,-1478.18,7189.64,127.441,5.10765,300,0,0,13972,0,0,0,0,0),
(10023901,15242,530,1,1,0,0,-1416.09,7119.11,105.577,5.46187,300,0,0,13972,0,0,0,0,0),
(10023902,15242,530,1,1,0,0,-1337.09,7076.68,96.4071,5.89776,300,0,0,13972,0,0,0,0,0),
(10023903,15242,530,1,1,0,0,-1311.28,7046.56,92.6635,4.83355,300,0,0,13972,0,0,0,0,0),
(10023904,15242,530,1,1,0,0,-1289.11,7013.95,105.944,0.922266,300,0,0,13972,0,0,0,0,0),
(10023905,15242,530,1,1,0,0,-1290.32,7101.96,107.905,2.09565,300,0,0,13972,0,0,0,0,0),
(10023906,15242,530,1,1,0,0,-1291.12,7200.02,98.0055,1.42414,300,0,0,13972,0,0,0,0,0),
(10023907,15242,530,1,1,0,0,-1193.21,7194.77,97.1206,1.42414,300,0,0,13972,0,0,0,0,0),
(10023908,15242,530,1,1,0,0,-1175.68,7313.49,85.4589,1.42414,300,0,0,13972,0,0,0,0,0),
(10023909,15242,530,1,1,0,0,-1222.41,7342.54,79.9972,2.68627,300,0,0,13972,0,0,0,0,0);
 
-- Enraged Crusher SAI
SET @ENTRY := 18062;
SET @SPELL_KNOCKDOWN := 32015; -- Knockdown
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_KNOCKDOWN,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Crusher - In Combat - Cast Knockdown"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Enraged Crusher - At 30% HP - Cast Enrage"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Enraged Crusher - At 30% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Enraged Crusher - At 30% HP - Say Line 0");
 
-- Living Cyclone SAI
SET @ENTRY := 17160;
SET @SPELL_LIGHTNING_SHIELD := 12550; -- Lightning Shield
SET @SPELL_MAGNETIC_PULL := 31705; -- Magnetic Pull
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=6 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_LIGHTNING_SHIELD,0,0,0,0,0,1,0,0,0,0,0,0,0,"Living Cyclone - On Aggro - Cast Lightning Shield"),
(@ENTRY,0,1,0,9,0,100,0,5,30,1500,2000,11,@SPELL_MAGNETIC_PULL,1,0,0,0,0,2,0,0,0,0,0,0,0,"Living Cyclone - On Player Range - Cast Magnetic Pull");
 
-- Aged Clefthoof SAI
SET @ENTRY := 17133;
SET @SPELL_RUSHING_CHARGE := 32021; -- Rushing Charge
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_RUSHING_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Aged Clefthoof - On Aggro - Cast Rushing Charge");
 
-- Murkblood Raider SAI
SET @ENTRY := 18203;
SET @SPELL_CLEAVE := 15496; -- Cleave
SET @SPELL_SUNDER_ARMOR := 11971; -- Sunder Armor
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,9000,10000,11,@SPELL_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Raider - In Combat - Cast Cleave"),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,3000,4000,11,@SPELL_SUNDER_ARMOR,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Raider - In Combat - Cast Sunder Armor");
 
-- Murkblood Brute SAI
SET @ENTRY := 18211;
SET @SPELL_BACKHAND := 32104; -- Cleave
SET @SPELL_KICK := 32105; -- Sunder Armor
UPDATE `creature_template` SET `AIName`='SmartAI',`spell3`=0 WHERE `entry`=@ENTRY; -- This mob had "Dual Wield" as Mind Control spell
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,6000,9000,10000,11,@SPELL_BACKHAND,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Brute - In Combat - Cast Backhand"),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,11000,13000,11,@SPELL_KICK,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Brute - In Combat - Cast Kick");
 
-- Murkblood Scavenger SAI
SET @ENTRY := 18207;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Murkblood Scavenger - On Aggro - Say Line 0");
 -- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Where do you think youre going? Kill them all!",12,0,100,0,0,0,"Murkblood Scavenger");
 
-- Murkblood Putrifier SAI
-- This creature casts a hurricane at a trigger which is spawned in the water out of combat
SET @ENTRY := 18202;
SET @TRIGGER := 14495;
SET @SPELL_TAINTED_CHAIN_LIGHTNING := 32132; -- Tainted Chain Lightning
SET @SPELL_CORRUPTED_EARTH := 32133; -- Corrupted Earth
SET @SPELL_PUTRID_CLOUD_NORMAL := 32134; -- Putrid Cloud - In Combat version
SET @SPELL_PUTRID_CLOUD_TRIGGER := 32087; -- Putrid Cloud - On Trigger version
UPDATE `creature_template` SET `AIName`='SmartAI',`MovementType`=0 WHERE `entry`=@ENTRY;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0,`position_x`=-1707.229980,`position_y`=8419.860352,`position_z`=-21.395399,`orientation`=3.767890 WHERE `guid`=28684;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,300000,300000,11,@SPELL_PUTRID_CLOUD_TRIGGER,1,0,0,0,0,10,10020224,@TRIGGER,0,0,0,0,0,"Murkblood Putrifier - Out of Combat - Cast Putrid Cloud - On Trigger"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,7000,8000,11,@SPELL_CORRUPTED_EARTH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Putrifier - In Combat - Cast Corrupted Earth"),
(@ENTRY,0,2,0,0,0,100,0,5000,6000,3000,5000,11,@SPELL_TAINTED_CHAIN_LIGHTNING,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Putrifier - In Combat - Cast Tainted Chain Lightning"),
(@ENTRY,0,3,0,0,0,100,1,9000,11000,0,0,11,@SPELL_PUTRID_CLOUD_NORMAL,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Putrifier - In Combat - Cast Putrid Cloud"); -- Bugged spell - interrupted by melee =/
 
-- Spawn a trigger in water
DELETE FROM `creature` WHERE `id`=@TRIGGER AND `guid`=10020224;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(10020224,@TRIGGER,530,1,1,0,0,-1714.75,8414.42,-24.6436,3.74875,300,0,0,42,0,0,0,33554432,0);
 
-- Spell Putrid Cloud can only be cast at 14495 trigger
DELETE FROM `conditions` WHERE `SourceEntry`=32087 AND `ConditionValue2`=@TRIGGER;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,32087,0,18,1,@TRIGGER,0,0,'',"Spell Putrid Cloud can only be cast at 14495 trigger");
 
-- Ortor of Murkblood SAI
-- No idea how to do these totems properly =/
SET @ENTRY := 18204;
SET @SPELL_CORRUPTED_AIR_TOTEM := 32137; -- Corrupted Air Totem
SET @SPELL_CORRUPTED_HEALING_STREAM_TOTEM := 32135; -- Corrupted Healing Stream Totem
SET @SPELL_TAINTED_CHAIN_LIGHTNING := 32132; -- Tainted Chain Lightning
SET @SPELL_TAINTED_EARTHGRAB_TOTEM := 31981; -- Tainted Earthgrab Totem
SET @SPELL_SNARE := 6474;
SET @SPELL_CORRUPTED_AIR := 32138;
SET @SPELL_CORRUPTED_HEALING := 32136;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|4,`spell1`=@SPELL_SNARE WHERE `entry`=18176;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|4,`spell1`=@SPELL_CORRUPTED_AIR WHERE `entry`=18236;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|4,`spell1`=@SPELL_CORRUPTED_HEALING WHERE `entry`=18235;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ortor - Out of Combat - Prevent Combat Movement"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_TAINTED_CHAIN_LIGHTNING,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ortor of Murkblood - In Combat - Cast Tainted Chain Lightning"),
(@ENTRY,0,2,0,0,0,100,1,4000,5000,0,0,11,@SPELL_TAINTED_EARTHGRAB_TOTEM,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ortor of Murkblood - In Combat - Cast Tainted Earthgrab Totem"),
(@ENTRY,0,3,0,0,0,100,1,6000,7000,0,0,11,@SPELL_CORRUPTED_AIR_TOTEM,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ortor of Murkblood - In Combat - Cast Corrupted Air Totem"),
(@ENTRY,0,4,0,0,0,100,1,9000,10000,0,0,11,@SPELL_CORRUPTED_HEALING_STREAM_TOTEM,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ortor of Murkblood - In Combat - Cast Corrupted Healing Stream Totem");
 
-- Make the two mobs infront of Ortor kneel
-- Also make one of them a Murkblood Putrifier instead
DELETE FROM `creature_addon` WHERE `guid` IN (28660,28659);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(28660,0,0,8,0,0,''),(28659,0,0,8,0,0,'');
UPDATE `creature` SET `id`=18202,`position_x`=-1517.381226,`position_y`=8585.116211,`position_z`=7.258063,`orientation`=1.541775 WHERE `guid`=28660;
UPDATE `creature` SET `position_x`=-1520.677490,`position_y`=8585.893555,`position_z`=7.258063,`orientation`=1.416111 WHERE `guid`=28659;
 
-- Goretooth (rare) SAI
SET @ENTRY := 17144;
SET @SPELL_BLOOD_LEECH := 38887; -- Blood Leech
SET @SPELL_GUSHING_WOUND := 39215; -- Gushing Wound
SET @SPELL_TENDON_RIP := 3604; -- Tendon Rip
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_BLOOD_LEECH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goretooth - In Combat - Cast Blood Leech"),
(@ENTRY,0,1,0,0,0,100,0,8000,9000,11000,12000,11,@SPELL_TENDON_RIP,1,0,0,0,0,2,0,0,0,0,0,0,0,"Goretooth - In Combat - Cast Tendon Rip"),
(@ENTRY,0,2,0,0,0,100,0,17000,19000,22000,24000,11,@SPELL_GUSHING_WOUND,1,0,0,0,0,2,0,0,0,0,0,0,0,"Goretooth - In Combat - Cast Gushing Wound");
 
-- Lake Surger SAI
SET @ENTRY := 17155;
SET @SPELL_SURGE := 32012; -- Surge
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=4 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_SURGE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lake Surger - On Aggro - Cast Surge");
 
-- Talbuk Thorngrazer SAI
SET @ENTRY := 17131;
SET @SPELL_GORE := 32019; -- Gore
SET @SPELL_TALBUK_STRIKE := 32020; -- Talbuk Strike
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_GORE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Talbuk Thorngrazer - In Combat - Cast Gore"),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,11000,12000,11,@SPELL_TALBUK_STRIKE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Talbuk Thorngrazer - In Combat - Cast Talbuk Strike");
 
-- Bachlor SAI
SET @ENTRY := 18258;
SET @SPELL_GORE := 32019; -- Gore
SET @SPELL_TALBUK_STRIKE := 32020; -- Talbuk Strike
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_GORE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bachlor - In Combat - Cast Gore"),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,11000,12000,11,@SPELL_TALBUK_STRIKE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bachlor - In Combat - Cast Talbuk Strike");
 
-- Felguard Legionnaire SAI
SET @ENTRY := 17152;
SET @SPELL_CLEAVE := 15496; -- Cleave
SET @SPELL_CUTDOWN := 32009; -- Cutdown
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,4000,5000,11,@SPELL_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Felguard Legionnaire - In Combat - Cast Cleave"),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,8000,9000,11,@SPELL_CUTDOWN,1,0,0,0,0,2,0,0,0,0,0,0,0,"Felguard Legionnaire - In Combat - Cast Cutdown");
 
-- Legion Fel Cannon SAI
SET @ENTRY := 21233;
SET @SPELL_FEL_CANNON_BLAST := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Legion Fel Cannon - Out of Combat - Prevent Combat Movement"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_FEL_CANNON_BLAST,1,0,0,0,0,2,0,0,0,0,0,0,0,"Legion Fel Cannon - In Combat - Cast Fel Cannon Blast");
 
-- Ganarg Tinkerer SAI
SET @ENTRY := 17151;
SET @SPELL_POWER_BURN := 32003; -- Power Burn
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,4000,5000,11,@SPELL_POWER_BURN,1,0,0,0,0,2,0,0,0,0,0,0,0,"Ganarg Tinkerer - In Combat - Cast Power Burn");
 
-- Moarg Engineer SAI
SET @ENTRY := 16945;
SET @SPELL_PUNCTURE := 15967; -- Puncture
SET @SPELL_THORIUM_DRILL := 32005; -- Thorium Drill
SET @SPELL_MAGNETIC_PULL := 31705; -- Magnetic Pull
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,4000,5000,11,@SPELL_PUNCTURE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Moarg Engineer - In Combat - Cast Power Burn"),
(@ENTRY,0,1,0,0,0,100,0,2000,2500,15000,16000,11,@SPELL_THORIUM_DRILL,1,0,0,0,0,2,0,0,0,0,0,0,0,"Moarg Engineer - In Combat - Cast Thorium Drill"),
(@ENTRY,0,2,0,9,0,100,0,5,30,1500,2000,11,@SPELL_MAGNETIC_PULL,1,0,0,0,0,2,0,0,0,0,0,0,0,"Moarg Engineer - On Player Range - Cast Magnetic Pull");
 
-- Fel Cannon: Hate SAI
SET @ENTRY := 19067;
SET @SPELL_FEL_CANNON_BLAST := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Cannon: Hate - Out of Combat - Prevent Combat Movement"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_FEL_CANNON_BLAST,1,0,0,0,0,2,0,0,0,0,0,0,0,"Fel Cannon: Hate - In Combat - Cast Fel Cannon Blast");
 
-- Demos, Overseer of Hate SAI
SET @ENTRY := 18535;
UPDATE `creature_template` SET `AIName`='SmartAI',`mechanic_immune_mask`=`mechanic_immune_mask`|8399955 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Demos, Overseer of Hate - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Demos will flense the flesh from your bones!",12,0,100,0,0,0,"Demos, Overseer of Hate");
 
-- Moarg Master Planner SAI
SET @ENTRY := 18567;
SET @SPELL_MAGNETIC_PULL := 31705; -- Magnetic Pull
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,30,1500,2000,11,@SPELL_MAGNETIC_PULL,1,0,0,0,0,2,0,0,0,0,0,0,0,"Moarg Master Planner - On Player Range - Cast Magnetic Pull");
 
-- Wild Elekk SAI
SET @ENTRY := 18334;
SET @SPELL_GORE := 32019; -- Gore
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_GORE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wild Elekk - In Combat - Cast Gore");
 
-- Warmaul Warlock SAI
SET @ENTRY := 18037;
SET @SPELL_SUMMON_IMP := 11939; -- Summon Imp
SET @SPELL_SHADOW_BOLT := 9613; -- Shadow Bolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_SUMMON_IMP,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Warlock - Out of Combat - Cast Summon Imp"),
(@ENTRY,0,1,0,0,0,100,0,0,1000,3500,3500,11,@SPELL_SHADOW_BOLT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Warlock - In Combat - Cast Shadow Bolt"),
(@ENTRY,0,2,0,2,0,100,0,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Warlock - At 15% HP - Flee For Assist"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warmaul Warlock - At 15% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s attempts to run away in fear!",16,0,100,0,0,0,"Warmaul Warlock");
 
-- Warmaul Brute SAI
SET @ENTRY := 18065;
SET @SPELL_UPPERCUT := 10966; -- Uppercut
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,1000,3500,3500,11,@SPELL_UPPERCUT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Brute - In Combat - Cast Uppercut"),
(@ENTRY,0,1,0,2,0,100,0,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Brute - At 15% HP - Flee For Assist"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warmaul Brute - At 15% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s attempts to run away in fear!",16,0,100,0,0,0,"Warmaul Brute");
 
-- Chowar the Pillager SAI
SET @ENTRY := 18423;
SET @SPELL_BATTLE_SHOUT := 31403; -- Battle Shout
SET @SPELL_CHARGE := 32323; -- Charge
SET @SPELL_MORTAL_STRIKE := 15708; -- Mortal Strike
SET @SPELL_SUNDERING_CLEAVE := 17963; -- Sundering Cleave
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_BATTLE_SHOUT,1,0,0,0,0,1,0,0,0,0,0,0,0,"Chowar the Pillager - On Aggro - Cast Battle Shout"),
(@ENTRY,0,1,0,9,0,100,0,5,30,1500,2000,11,@SPELL_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Chowar the Pillager - On Player Range - Cast Charge"),
(@ENTRY,0,2,0,0,0,100,0,3000,4000,6000,7000,11,@SPELL_MORTAL_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Chowar the Pillager - In Combat - Cast Mortal Strike"),
(@ENTRY,0,3,0,0,0,100,0,1000,1000,2500,2500,11,@SPELL_SUNDERING_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Chowar the Pillager - In Combat - Cast Sundering Cleave");
 
-- Gutripper SAI
SET @ENTRY := 18257;
SET @SPELL_GUT_RIP := 32022; -- Gut Rip
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,1000,0,0,11,@SPELL_GUT_RIP,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gutripper - In Combat - Cast Gut Rip"); -- Only once
 
-- Storm Rager SAI
SET @ENTRY := 17159;
SET @SPELL_CALL_LIGHTNING := 32018; -- Call Lightning
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,1000,3500,3500,11,@SPELL_CALL_LIGHTNING,1,0,0,0,0,2,0,0,0,0,0,0,0,"Storm Rager - In Combat - Cast Call Lightning");
 
-- Clefthoof Bull SAI
SET @ENTRY := 17132;
SET @SPELL_HOOF_STOMP := 32023; -- Hoof Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,1000,6000,7500,11,@SPELL_HOOF_STOMP,1,0,0,0,0,2,0,0,0,0,0,0,0,"Clefthoof Bull - In Combat - Cast Hoof Stomp");
 
-- Warmaul Reaver SAI
SET @ENTRY := 17138;
SET @SPELL_CLEAVE := 15496; -- Cleave
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,9000,10000,11,@SPELL_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Reaver - In Combat - Cast Cleave");
 
-- Warmaul Shaman SAI
SET @ENTRY := 18064;
SET @SPELL_HEALING_WAVE := 11986; -- Healing Wave
SET @SPELL_FROST_SHOCK := 12548; -- Frost Shock
SET @SPELL_SCORCHING_TOTEM := 15038; -- Scorching Totem
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_FROST_SHOCK,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Shaman - In Combat - Cast Frost Shock"),
(@ENTRY,0,1,0,0,0,100,1,2000,2000,20000,20000,11,@SPELL_SCORCHING_TOTEM,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Shaman - In Combat - Cast Scorching Totem"),
(@ENTRY,0,2,0,2,0,100,1,0,20,0,0,11,@SPELL_HEALING_WAVE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Shaman - At 20% HP - Cast Healing Wave");
 
-- Warmaul Chef Bufferlo SAI
SET @ENTRY := 18440;
SET @SPELL_SHOULDER_CHARGE := 31994; -- Shoulder Charge
SET @SPELL_FILET := 32378; -- Filet
SET @SPELL_TENDERIZE := 32376; -- Tenderize
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warmaul Chef Bufferlo - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,9,0,100,0,8,25,1500,2000,11,@SPELL_SHOULDER_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Chef Bufferlo - On Player Range - Cast Shoulder Charge"),
(@ENTRY,0,2,0,0,0,100,1,3000,4000,20000,20000,11,@SPELL_FILET,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Chef Bufferlo - In Combat - Cast Filet"),
(@ENTRY,0,3,0,0,0,100,0,1000,1000,4500,4500,11,@SPELL_TENDERIZE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Chef Bufferlo - In Combat - Cast Tenderize");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your daddy pay Warmaul and maybe we no eat you.",12,0,100,0,0,0,"Warmaul Chef Bufferlo");
 
-- Multiphase Disturbance SAI
SET @ENTRY := 25882;
SET @SPELL_SPELL_MULTIPHASE_READING := 46281; -- Take Multiphase Reading
SET @SPELL_DARK_FIRE_SHIELD := 46804; -- Dark Fire Shield
SET @SPELL_OSHUGUN_CLOUD_INVISIBILITY := 46272; -- Oshugun Cloud Invisiblity
UPDATE `creature_template` SET `AIName`='SmartAI',`MovementType`=0,`modelid1`=23489,`modelid2`=0,`unit_flags`=`unit_flags`|33554432 WHERE `entry`=@ENTRY; -- Is no longer sometimes a cow and unselectable
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,11,@SPELL_DARK_FIRE_SHIELD,1,0,0,0,0,1,0,0,0,0,0,0,0,"Multiphase Disturbance - Out of Combat - Cast Dark Fire Shield"),
(@ENTRY,0,1,0,1,0,100,0,0,0,0,0,11,@SPELL_OSHUGUN_CLOUD_INVISIBILITY,1,0,0,0,0,1,0,0,0,0,0,0,0,"Multiphase Disturbance - Out of Combat - Cast Oshugun Cloud Invisiblity");
 
-- Spell Take Multiphase Reading can only be cast at Multiphase Disturbance
DELETE FROM `conditions` WHERE `SourceEntry`=46281 AND `ConditionValue2`=25882;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,46281,0,18,1,25882,0,0,'',"Spell Take Multiphase Reading can only be cast at Multiphase Disturbance");
 
-- Voidspawn SAI
SET @ENTRY := 17981;
SET @SPELL_MIND_SEAR := 36447; -- Mind Sear
SET @SPELL_PAIN_SPIKE := 32026; -- Pain Spike
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=5 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2500,9700,6000,18900,11,@SPELL_MIND_SEAR,1,0,0,0,0,2,0,0,0,0,0,0,0,"Voidspawn - In Combat - Cast Mind Sear"),
(@ENTRY,0,1,0,0,0,100,0,8000,16500,17300,17300,11,@SPELL_PAIN_SPIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Voidspawn - In Combat - Cast Pain Spike");
 
-- Vir'aani Raider SAI
SET @ENTRY := 17149;
SET @SPELL_EVISCERATE := 15691; -- Eviscerate
SET @SPELL_GOUGE := 12540; -- Gouge
SET @SPELL_SINISTER_STRIKE := 14873; -- Sinister Strike
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,2000,2000,11,@SPELL_SINISTER_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Vir'aani Raider - In Combat - Cast Sinister Strike"),
(@ENTRY,0,1,0,0,0,100,0,5000,6000,11000,12000,11,@SPELL_EVISCERATE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Vir'aani Raider - In Combat - Cast Eviscerate"),
(@ENTRY,0,2,0,0,0,100,0,8000,9000,15000,16000,11,@SPELL_GOUGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Vir'aani Raider - In Combat - Cast Gouge");
 
-- Terrorguard SAI
SET @ENTRY := 18661;
SET @SPELL_WAR_STOMP := 11876; -- War Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,5000,6000,11,@SPELL_WAR_STOMP,1,0,0,0,0,2,0,0,0,0,0,0,0,"Terrorguard - In Combat - Cast War Stomp");
 
-- Bull Elekk SAI
SET @ENTRY := 18289;
SET @SPELL_TRAMPLE := 15550; -- Trample
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,9000,11,@SPELL_TRAMPLE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bull Elekk - In Combat - Cast Trample");
 
-- Tusker SAI
SET @ENTRY := 18290;
SET @SPELL_TRAMPLE := 15550; -- Trample
SET @SPELL_GORE := 32019; -- Gore
SET @SPELL_STOMP := 12612; -- Stomp
UPDATE `creature_template` SET `AIName`='SmartAI',`mechanic_immune_mask`=`mechanic_immune_mask`|536941650 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_TRAMPLE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tusker - In Combat - Cast Trample"),
(@ENTRY,0,1,0,0,0,100,0,3000,3500,23000,24000,11,@SPELL_GORE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tusker - In Combat - Cast Gore"),
(@ENTRY,0,2,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tusker - In Combat - Cast Stomp");
 
-- Banthar SAI
SET @ENTRY := 18259;
SET @SPELL_HOOF_STOMP := 32023; -- Hoof Stomp
SET @SPELL_RUSHING_CHARGE := 32021; -- Rushing Charge
UPDATE `creature_template` SET `AIName`='SmartAI',`mechanic_immune_mask`=`mechanic_immune_mask`|536941650 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_HOOF_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Banthar - In Combat - Cast Hoof Stomp"),
(@ENTRY,0,1,0,9,0,100,0,8,25,1500,2000,11,@SPELL_RUSHING_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Banthar - On Player Range - Cast Shoulder Charge");
 
-- Ravenous Windroc SAI
SET @ENTRY := 18220;
SET @SPELL_EAGLE_CLAW := 30285; -- Eagle Claw
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_EAGLE_CLAW,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ravenous Windroc - In Combat - Cast Eagle Claw");
 
-- Muck Spawn SAI
SET @ENTRY := 17154;
SET @SPELL_POISON_BOLT := 21067; -- Poison Bolt
SET @SPELL_MUCKY_SLUDGE := 32013; -- Mucky Sludge
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=4 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_POISON_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Muck Spawn - In Combat - Cast Poison Bolt"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,20000,20000,11,@SPELL_MUCKY_SLUDGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Muck Spawn - In Combat - Cast Mucky Sludge");
 
-- Boulderfist Mage SAI
SET @ENTRY := 17137;
SET @SPELL_FIRE_BLAST := 20795; -- Fire Blast
SET @SPELL_FROSTBOLT := 9672; -- Frostbolt
SET @SPELL_BLOODLUST := 6742; -- Blood Lust
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Boulderfist Warrior - On Aggro - Say Line 0 (random)"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_FROSTBOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Mage - In Combat - Cast Frostbolt"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_FIRE_BLAST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Mage - In Combat - Cast Fire Blast"),
(@ENTRY,0,3,0,0,0,100,1,5000,5000,20000,20000,11,@SPELL_BLOODLUST,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Mage - In Combat - Cast Bloodlust");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Me dont even want to eat him no more.",12,0,100,0,0,0,"Boulderfist Mage"),
(@ENTRY,0,1,"You shut up!",12,0,100,0,0,0,"Boulderfist Mage");
 
-- Boulderfist Warrior SAI
SET @ENTRY := 17136;
SET @SPELL_SHOULDER_CHARGE := 31994; -- Shoulder Charge
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Boulderfist Warrior - On Aggro - Say Line 0 (random)"),
(@ENTRY,0,1,0,9,0,100,0,8,25,1500,2000,11,@SPELL_SHOULDER_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Warrior - On Player Range - Cast Shoulder Charge");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Me dont even want to eat him no more.",12,0,100,0,0,0,"Boulderfist Warrior"),
(@ENTRY,0,1,"Me lose appetite. Corki is poop.",12,0,100,0,0,0,"Boulderfist Warrior"),
(@ENTRY,0,2,"Me no can take it no more!",12,0,100,0,0,0,"Boulderfist Warrior"),
(@ENTRY,0,3,"You shut up!",12,0,100,0,0,0,"Boulderfist Warrior");
 
-- Lake Spirit SAI
SET @ENTRY := 17153;
SET @SPELL_WATER_BOLT := 34425; -- Water Bolt
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=4 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_WATER_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lake Spirit - In Combat - Cast Water Bolt");
 
-- Guruk the Upsurper SAI
SET @ENTRY := 18182;
SET @SPELL_EARTH_SHOCK := 23114; -- Earth Shock
SET @SPELL_ENTANGLING_ROOTS := 22127; -- Entangling Roots
SET @SPELL_KNOCK_AWAY := 32959; -- Knock Away
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Guruk the Upsurper - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,12000,12000,11,@SPELL_EARTH_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guruk the Upsurper - In Combat - Cast Earth Shock"),
(@ENTRY,0,2,0,0,0,100,0,12000,12000,18000,18000,11,@SPELL_KNOCK_AWAY,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guruk the Upsurper - In Combat - Cast Knock Away"),
(@ENTRY,0,3,0,0,0,100,0,20000,20000,25000,25000,11,@SPELL_ENTANGLING_ROOTS,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guruk the Upsurper - In Combat - Cast Entanglin Roots");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"WHO DARES CALL GUROK FROM THE UNDERNEATH?",14,0,100,0,0,0,"Guruk the Upsurper");
 
-- Incineratus SAI
SET @ENTRY := 18100;
SET @SPELL_FIRE_BLOSSOM := 19636; -- Fire Blossom
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=2 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_FIRE_BLOSSOM,0,0,0,0,0,2,0,0,0,0,0,0,0,"Incineratus  - In Combat - Cast Fire Blossom");
 
-- Kalandrios SAI
SET @ENTRY := 18102;
SET @SPELL_SHOCK := 12553; -- Shock
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=6 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kalandrios  - In Combat - Cast Shock");
 
-- Aborius SAI
SET @ENTRY := 18101;
SET @SPELL_POISON_BOLT := 21067; -- Poison Bolt
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=4 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_POISON_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Aborius - In Combat - Cast Poison Bolt");
 
-- Windroc SAI
SET @ENTRY := 17128;
SET @SPELL_EAGLE_CLAW := 30285; -- Eagle Claw
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_EAGLE_CLAW,0,0,0,0,0,2,0,0,0,0,0,0,0,"Windroc - In Combat - Cast Eagle Claw");
 
-- Dust Howler SAI
SET @ENTRY := 17158;
SET @SPELL_HOWLING_DUST := 32017; -- Howling Dust
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=6 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,7000,10000,11,@SPELL_HOWLING_DUST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dust Howler - In Combat - Cast Howling Dust");
 
-- Talbuk Stag SAI
SET @ENTRY := 17130;
SET @SPELL_GORE := 32019; -- Gore
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,@SPELL_GORE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Talbuk Stag - In Combat - Cast Gore");
 
-- Clefthoof SAI
SET @ENTRY := 18205;
SET @SPELL_HOOF_STOMP := 32023; -- Hoof Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_HOOF_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Clefthoof - In Combat - Cast Hoof Stomp");
 
-- Clefthoof Calf SAI
SET @ENTRY := 19183;
SET @SPELL_HOOF_STOMP := 32023; -- Hoof Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_HOOF_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Clefthoof Calf - In Combat - Cast Hoof Stomp");
 
-- Tortured Earth Spirit SAI
SET @ENTRY := 17156;
SET @SPELL_EARTH_SHOCK := 13728; -- Earth Shock
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_EARTH_SHOCK,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Crusher - In Combat - Cast Earth Shock"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Enraged Crusher - At 30% HP - Cast Enrage"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Enraged Crusher - At 30% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Enraged Crusher - At 30% HP - Say Line 0");
 
-- Windyreed Wretch SAI
SET @ENTRY := 17141;
SET @SPELL_CREEPING_MOLD := 6278; -- Creeping Mold
SET @SPELL_DISEASE_TOUCH := 3234; -- Disease Touch
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,15000,15000,11,@SPELL_CREEPING_MOLD,0,0,0,0,0,2,0,0,0,0,0,0,0,"Windyreed Wretch - In Combat - Cast Creeping Mold"),
(@ENTRY,0,1,0,0,0,100,0,3000,3000,16000,16000,11,@SPELL_DISEASE_TOUCH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Windyreed Wretch - In Combat - Cast Disease Touch");
 
-- Gavaxi SAI
SET @ENTRY := 18298;
SET @SPELL_EVISCERATE := 15691; -- Eviscerate
SET @SPELL_GOUGE := 12540; -- Gouge
SET @SPELL_SINISTER_STRIKE := 14873; -- Sinister Strike
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,2000,2000,11,@SPELL_SINISTER_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gavaxi - In Combat - Cast Sinister Strike"),
(@ENTRY,0,1,0,0,0,100,0,5000,6000,11000,12000,11,@SPELL_EVISCERATE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gavaxi - In Combat - Cast Eviscerate"),
(@ENTRY,0,2,0,0,0,100,0,8000,9000,15000,16000,11,@SPELL_GOUGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gavaxi - In Combat - Cast Gouge");
 
-- Windyreed Scavenger SAI
SET @ENTRY := 17139;
SET @SPELL_NET := 12024; -- Net
SET @SPELL_THROW := 10277; -- Throw
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,20,1500,2000,11,@SPELL_NET,1,0,0,0,0,2,0,0,0,0,0,0,0,"Windyreed Scavenger - On Player Range - Cast Net"),
(@ENTRY,0,1,0,9,0,100,0,5,30,1500,2000,11,@SPELL_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,"Windyreed Scavenger - On Player Range - Cast Throw");
 
-- Boulderfist Mystic SAI
SET @ENTRY := 17135;
SET @SPELL_EARTH_SHOCK := 13281; -- Earth Shock
SET @SPELL_LIGHTNING_BOLT := 9532; -- Lightning Bolt
SET @SPELL_HEALING_TOUCH := 11431; -- Healing Touch
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Boulderfist Mystic - On Aggro - Say Line 0 (random)"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_LIGHTNING_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Mystic - In Combat - Cast Lightning Bolt"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,11000,13000,11,@SPELL_EARTH_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Mystic - In Combat - Cast Earth Shock"),
(@ENTRY,0,3,0,0,0,100,1,11000,11000,20000,20000,11,@SPELL_HEALING_TOUCH,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Mystic - In Combat - Cast Healing Touch");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Me dont even want to eat him no more.",12,0,100,0,0,0,"Boulderfist Mystic"),
(@ENTRY,0,1,"Me lose appetite. Corki is poop.",12,0,100,0,0,0,"Boulderfist Mystic"),
(@ENTRY,0,2,"Me no can take it no more!",12,0,100,0,0,0,"Boulderfist Mystic"),
(@ENTRY,0,3,"You shut up!",12,0,100,0,0,0,"Boulderfist Mystic");
 
-- Boulderfist Crusher SAI
SET @ENTRY := 17134;
SET @SPELL_PULVERIZE := 2676; -- Pulverize
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Boulderfist Crusher - On Aggro - Say Line 0 (random)"),
(@ENTRY,0,1,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_PULVERIZE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Crusher - In Combat - Cast Pulverize");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Me dont even want to eat him no more.",12,0,100,0,0,0,"Boulderfist Crusher"),
(@ENTRY,0,1,"Me lose appetite. Corki is poop.",12,0,100,0,0,0,"Boulderfist Crusher"),
(@ENTRY,0,2,"Me no can take it no more!",12,0,100,0,0,0,"Boulderfist Crusher"),
(@ENTRY,0,3,"You shut up!",12,0,100,0,0,0,"Boulderfist Crusher");
 
-- Boulderfist Hunter SAI
SET @ENTRY := 18352;
SET @SPELL_SPEAR_THROW := 32248; -- Spear Throw
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SPEAR_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Hunter - On Player Range - Cast Spear Throw");
 
-- Boulderfist Saboteur SAI
SET @ENTRY := 18396;
SET @SPELL_SPEAR_THROW := 32248; -- Spear Throw
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SPEAR_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Saboteur - On Player Range - Cast Spear Throw");
 
-- Deathsworn Archon SAI
SET @ENTRY := 22343;
SET @SPELL_BLOODTHIRST := 31997; -- Bloodthirst
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_BLOODTHIRST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathsworn Archon - In Combat - Cast Bloodthirst"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Deathsworn Archon - At 30% HP - Cast Enrage"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathsworn Archon - At 30% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Deathsworn Archon");
 
-- Deathshadow Hound SAI
SET @ENTRY := 22394;
SET @SPELL_CARNIVOROUS_BITE := 30639; -- Carnivorous Bite
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,16000,16000,11,@SPELL_CARNIVOROUS_BITE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Hound - In Combat - Cast Carnivorous Bite");
 
-- Deathshadow Overlord SAI
SET @ENTRY := 22393;
SET @SPELL_IMPENDING_DOOM := 37579; -- Impending Doom
SET @SPELL_SHADOW_BOLT := 15232; -- Shadow Bolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_IMPENDING_DOOM,1,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Overlord - On Aggro - Cast Impending Doom"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_SHADOW_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Overlord - In Combat - Cast Fireball");
 
-- Deathshadow Imp SAI
SET @ENTRY := 22362;
SET @SPELL_FIREBOLT := 20801; -- Firebolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature` WHERE `id`=@ENTRY; -- Remove already spawned imps. They are summoned
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathshadow Imp - Out of Combat - Prevent Combat Movement"),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL_FIREBOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Imp - In Combat - Cast Firebolt");
 
-- Deathshadow Warlock SAI
SET @ENTRY := 22363;
SET @SPELL_SUMMON_IMP := 38980; -- Summon Twilight Ridge Imp
SET @SPELL_SHADOW_BOLT := 9613; -- Shadow Bolt
SET @SPELL_DEMON_ARMOR := 13787; -- Demon Armor
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_DEMON_ARMOR,1,0,0,0,0,1,0,0,0,0,0,0,0,"Deathshadow Warlock - Out of Combat - Cast Demon Armor"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_SUMMON_IMP,0,0,0,0,0,0,0,0,0,0,0,0,0,"Deathshadow Warlock - On Aggro - Cast Summon Twilight Ridge Imp"),
(@ENTRY,0,2,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_SHADOW_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Warlock - In Combat - Cast Shadow Bolt");
 
-- Deathshadow Spellbinder SAI
SET @ENTRY := 22342;
SET @SPELL_CHAINS_OF_ICE := 22744; -- Chains of Ice
SET @SPELL_ARCANE_MISSILES := 34447; -- Arcane Missiles
SET @SPELL_COUNTSPELL := 31999; -- Countspell
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `guid`=78732;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@ENTRY,0,0,1,0,"39102"); -- Black and flashy aura
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_CHAINS_OF_ICE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Spellbinder - On Aggro - Cast Chains of Ice"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_ARCANE_MISSILES,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Spellbinder - In Combat - Cast Arcane Missiles"),
(@ENTRY,0,3,0,0,0,100,0,7000,8000,11000,12000,11,@SPELL_COUNTSPELL,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathshadow Spellbinder - In Combat - Cast Counterspell");
 
-- Kilsorrow Cultist SAI
SET @ENTRY := 17147;
SET @SPELL_SHADOWFORM := 16592; -- Shadowform
SET @SPELL_MIND_SEAR := 32000; -- Mind Sear
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_SHADOWFORM,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kilsorrow Cultist - Out of Combat - Cast Shadowform"),
(@ENTRY,0,1,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_MIND_SEAR,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Cultist - In Combat - Cast Mind Sear");
 
-- Kilsorrow Spellbinder SAI
SET @ENTRY := 17146;
SET @SPELL_CHAINS_OF_ICE := 22744; -- Chains of Ice
SET @SPELL_ARCANE_MISSILES := 34447; -- Arcane Missiles
SET @SPELL_COUNTSPELL := 31999; -- Countspell
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_CHAINS_OF_ICE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Spellbinder - On Aggro - Cast Chains of Ice"),
(@ENTRY,0,1,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_ARCANE_MISSILES,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Spellbinder - In Combat - Cast Arcane Missiles"),
(@ENTRY,0,2,0,0,0,100,0,7000,8000,11000,12000,11,@SPELL_COUNTSPELL,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Spellbinder - In Combat - Cast Counterspell");
 
-- Kilsorrow Deathsworn SAI
SET @ENTRY := 17148;
SET @SPELL_BLOODTHIRST := 31997; -- Bloodthirst
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,3000,3000,11,@SPELL_BLOODTHIRST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Deathsworn - In Combat - Cast Bloodthirst");
 
-- Kilsorrow Ritualist SAI
SET @ENTRY := 18658;
SET @SPELL_CORRUPTION := 32063; -- Corruption
SET @SPELL_SHADOW_BOLT := 9613; -- Shadow Bolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_CORRUPTION,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Ritualist - On Aggro - Cast Corruption"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,3500,3500,11,@SPELL_SHADOW_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kilsorrow Ritualist - In Combat - Cast Shadow Bolt");
 
-- Giselda the Crone SAI
SET @ENTRY := 18391;
SET @SPELL_SHADOWFORM := 16592; -- Shadowform
SET @SPELL_MIND_SEAR := 32000; -- Mind Sear
SET @SPELL_GISELDA_TRANSFORM := 33316; -- Giselda Transform DND
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Giselda the Crone - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,11,@SPELL_SHADOWFORM,0,0,0,0,0,1,0,0,0,0,0,0,0,"Giselda the Crone - Out of Combat - Cast Shadowform"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_MIND_SEAR,0,0,0,0,0,2,0,0,0,0,0,0,0,"Giselda the Crone - In Combat - Cast Mind Sear"),
(@ENTRY,0,3,0,2,0,100,1,0,65,0,0,11,@SPELL_GISELDA_TRANSFORM,1,0,0,0,0,1,0,0,0,0,0,0,0,"Giselda the Crone - At 65% HP - Cast Giselda Transform DND");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your blood will coat the walls of Kilsorrow!",12,0,100,0,0,0,"Giselda the Crone");
 
-- Dark Worg SAI
SET @ENTRY := 18033;
SET @SPELL_CARNIVOROUS_BITE := 30639; -- Carnivorous Bite
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,16000,16000,11,@SPELL_CARNIVOROUS_BITE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Worg - In Combat - Cast Carnivorous Bite");
 
-- Zorbo the Advisor SAI
SET @ENTRY := 18413;
SET @SPELL_HEALING_WAVE := 11986; -- Healing Wave
SET @SPELL_FROST_SHOCK := 12548; -- Frost Shock
SET @SPELL_SCORCHING_TOTEM := 15038; -- Scorching Totem
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_FROST_SHOCK,1,0,0,0,0,2,0,0,0,0,0,0,0,"Zorbo the Advisor - In Combat - Cast Frost Shock"),
(@ENTRY,0,1,0,0,0,100,1,2000,2000,20000,20000,11,@SPELL_SCORCHING_TOTEM,1,0,0,0,0,2,0,0,0,0,0,0,0,"Zorbo the Advisor - In Combat - Cast Scorching Totem"),
(@ENTRY,0,2,0,2,0,100,1,0,20,0,0,11,@SPELL_HEALING_WAVE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Zorbo the Advisor - At 20% HP - Cast Healing Wave");
 
-- Stabled Kurenai Lion SAI
SET @ENTRY := 19027;
SET @SPELL_SLEEPING_SLEEP := 42648; -- Sleeping Sleep
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_SLEEPING_SLEEP,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stabled Kurenai Lion - Out Of Combat - Cast Sleeping Sleep");
 
-- Stabled Kurenai Panther SAI
SET @ENTRY := 19030;
SET @SPELL_SLEEPING_SLEEP := 42648; -- Sleeping Sleep
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_SLEEPING_SLEEP,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stabled Kurenai Panther - Out Of Combat - Cast Sleeping Sleep");
 
-- Nagrand Target Dummy SAI
SET @ENTRY := 19139;
SET @SPELL_PUNCH := 33423; -- Punch
SET @SPELL_KICK := 33424; -- Kick
SET @SPELL_LIGHTS_OUT := 33425; -- Lights Out
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=`unit_flags`|33554694 WHERE `entry`=@ENTRY;
DELETE FROM `creature` WHERE `guid`=86753 AND `id`=17578; -- Remove Hellfire Training Dummy
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_PUNCH,0,0,0,5,34,0,0,0,0,0,0,0,0,0,0,0,0,0,"Nagrand Target Dummy - On Spellhit Punch - Emote Wound"),
(@ENTRY,0,1,0,8,0,100,0,@SPELL_KICK,0,0,0,5,34,0,0,0,0,0,0,0,0,0,0,0,0,0,"Nagrand Target Dummy - On Spellhit Kick - Emote Wound"),
(@ENTRY,0,2,0,8,0,100,0,@SPELL_LIGHTS_OUT,0,0,0,5,440,0,0,0,0,0,0,0,0,0,0,0,0,0,"Nagrand Target Dummy - On Spellhit Lights Out - Emote Wound");
 
-- Kurenai Pit Fighter SAI
SET @ENTRY := 19141;
SET @SPELL_PUNCH := 33423; -- Punch
SET @SPELL_KICK := 33424; -- Kick
SET @SPELL_LIGHTS_OUT := 33425; -- Lights Out
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,2500,3000,11,@SPELL_PUNCH,1,0,0,0,0,10,68444,19139,0,0,0,0,0,"Kurenai Pit Fighter - Out Of Combat - Cast Punch - At Nagrand Target Dummy"),
(@ENTRY,0,1,0,1,0,100,0,15000,15000,4500,4500,11,@SPELL_KICK,1,0,0,0,0,10,68444,19139,0,0,0,0,0,"Kurenai Pit Fighter - Out Of Combat - Cast Kick - At Nagrand Target Dummy"),
(@ENTRY,0,2,0,1,0,100,0,17000,17000,7500,7500,11,@SPELL_LIGHTS_OUT,1,0,0,0,0,10,68444,19139,0,0,0,0,0,"Kurenai Pit Fighter - Out Of Combat - Cast Lights Out - At Nagrand Target Dummy");
 
-- Maghar Pit Fighter SAI
SET @ENTRY := 19140;
SET @SPELL_PUNCH := 33423; -- Punch
SET @SPELL_KICK := 33424; -- Kick
SET @SPELL_LIGHTS_OUT := 33425; -- Lights Out
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,2500,3000,11,@SPELL_PUNCH,1,0,0,0,0,10,68445,19139,0,0,0,0,0,"Maghar Pit Fighter - Out Of Combat - Cast Punch - At Nagrand Target Dummy"),
(@ENTRY,0,1,0,1,0,100,0,15000,15000,4500,4500,11,@SPELL_KICK,1,0,0,0,0,10,68445,19139,0,0,0,0,0,"Maghar Pit Fighter - Out Of Combat - Cast Kick - At Nagrand Target Dummy"),
(@ENTRY,0,2,0,1,0,100,0,17000,17000,7500,7500,11,@SPELL_LIGHTS_OUT,1,0,0,0,0,10,68445,19139,0,0,0,0,0,"Maghar Pit Fighter - Out Of Combat - Cast Lights Out - At Nagrand Target Dummy");
 
-- Spells Punch,Kick and Lights Out can only be cast at Nagrand Target Dummy
DELETE FROM `conditions` WHERE `SourceEntry` IN (33423,33424,33425) AND `ConditionValue2` IN (19139);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,33423,0,18,1,19139,0,0,'',"Spell Punch can only be cast at Nagrand Target Dummy"),
(13,0,33424,0,18,1,19139,0,0,'',"Spell Kick can only be cast at Nagrand Target Dummy"),
(13,0,33425,0,18,1,19139,0,0,'',"Spell Lights Out can only be cast at Nagrand Target Dummy");
 
-- Sunspring Post Refugee SAI
SET @ENTRY := 18293;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `id`=@ENTRY WHERE `guid` IN (65612,65611);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,20000,40000,60000,180000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Sunspring Post Refugee - Timer - Say Line (random)");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I wanna be just like the pitfighter!",12,0,100,21,0,0,"Sunspring Post Refugee"),
(@ENTRY,0,1,"Hes so well diciplined!",12,0,100,14,0,0,"Sunspring Post Refugee"),
(@ENTRY,0,2,"Will he win? Can he win?",12,0,100,5,0,0,"Sunspring Post Refugee");
 
-- Garadar Guard Captaion SAI
SET @ENTRY := 19158;
SET @SPELL_SHOOT := 23337; -- Shoot
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SHOOT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Garadar Guard Captain - On Player Range - Cast Shoot");
 
-- Warden Bullrok SAI
SET @ENTRY := 19149;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,60000,60000,120000,240000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warden Bullrok - Out of Combat Timer - Say Line (random)");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Damn those ogres. Damn them to the Nether. Wont someone save us from these savages! This is the fifth kidnapping in as many days.",12,0,100,0,0,0,"Warden Bullrok"),
(@ENTRY,0,1,"Thats the best reward were going to be able to offer. Hopefully someone accepts the mission.",12,0,100,0,0,0,"Warden Bullrok");
 
-- Garadar Defender SAI
SET @ENTRY := 18489;
SET @SPELL_SHOOT := 23337; -- Shoot
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SHOOT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Garadar Defender - On Player Range - Cast Shoot");
 
-- Bat Rider Guard SAI
SET @ENTRY := 15242;
SET @SPELL_UNSTABLE_CONCOCTION := 38066; -- Unstable Concoction
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_UNSTABLE_CONCOCTION,1,0,0,0,0,2,0,0,0,0,0,0,0,"Bat Rider Guard - On Aggro - Cast Unstable Concoction"),
(@ENTRY,0,1,0,0,0,100,0,3000,3000,2500,2500,11,@SPELL_UNSTABLE_CONCOCTION,1,0,0,0,0,2,0,0,0,0,0,0,0,"Bat Rider Guard - In Combat - Cast Unstable Concoction");
 
-- Farseer Kurkush SAI
SET @ENTRY := 18066;
SET @SPELL_CALL_LIGHTNING := 32127; -- Call Lightning
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,1,9863,0,0,0,11,@SPELL_CALL_LIGHTNING,1,0,0,0,0,7,0,0,0,0,0,0,0,"Farseer Kurkush - On Quest Complete - Cast Call to Lightning");
 
-- Spell Call to Lightning can only be cast at player
DELETE FROM `conditions` WHERE `SourceEntry`=32127 AND `ConditionValue2`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,32127,0,18,1,0,0,0,'',"Spell Call to Lightning can only be cast at player");
 
-- Durn the Hungerer SAI
SET @ENTRY := 18411;
SET @SPELL_FORCE_PUNCH := 34771; -- Force Punch
SET @SPELL_ACID_SMASH := 28168; -- Acid Smash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,9000,10000,11,@SPELL_ACID_SMASH,1,0,0,0,0,2,0,0,0,0,0,0,0,"Durn the Hungerer - In Combat - Cast Arcing Smash"),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,23000,24000,11,@SPELL_FORCE_PUNCH,1,0,0,0,0,2,0,0,0,0,0,0,0,"Durn the Hungerer - In Combat - Cast Force Punch");
 
-- Telaari Watcher SAI
SET @ENTRY := 18488;
SET @SPELL_SHOOT := 23337; -- Shoot
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SHOOT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Telaari Watcher - On Player Range - Cast Shoot");
 
-- Telaar Citizien SAI
SET @ENTRY := 19149;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,20000,40000,60000,180000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Telaar Citizien - Timer - Say Line (random)");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I wanna be just like the pitfighter!",12,0,100,21,0,0,"Telaar Citizien"),
(@ENTRY,0,1,"Hes so well diciplined!",12,0,100,14,0,0,"Telaar Citizien"),
(@ENTRY,0,2,"Will he win? Can he win?",12,0,100,5,0,0,"Telaar Citizien");
 
-- Warden Moibff Jill SAI
SET @ENTRY := 18408;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,20000,40000,60000,180000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warden Moibff Jill - Out of Combat Timer - Say Line"),
(@ENTRY,0,1,0,11,0,100,0,20000,40000,60000,180000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warden Moibff Jill - Out of Combat Timer - Say Line");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"New posting going up! Adventurers and heroes,gather round the bulletin board!",12,0,100,21,0,0,"Warden Moibff Jill"),
(@ENTRY,1,1,"That should get Telaar the assistance it needs!",12,0,100,14,0,0,"Warden Moibff Jill");
 
-- Gryphon Rider Guard SAI
SET @ENTRY := 15241;
SET @SPELL_STORMHAMMER := 38182; -- Stormhammer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_STORMHAMMER,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gryphon Rider Guard - On Aggro - Cast Stormhammer"),
(@ENTRY,0,1,0,0,0,100,0,3000,3000,2500,2500,11,@SPELL_STORMHAMMER,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gryphon Rider Guard - In Combat - Cast Stormhammer");
 
-- Rumbling Earth-Heart SAI
SET @ENTRY := 22313;
SET @SPELL_ENRAGE := 8599; -- Enrage
SET @SPELL_EARTH_RUMBLE := 33840; -- Earth Rumble
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=3 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,9000,11,@SPELL_EARTH_RUMBLE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rumbling Earth-Heart - In Combat - Cast Earth Rumble"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Rumbling Earth-Heart - At 30% HP - Cast Enrage"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Rumbling Earth-Heart - At 30% HP - Say Line 0");
 
-- Raging Fire-Soul SAI
SET @ENTRY := 22311;
SET @SPELL_IMMOLATE := 29948; -- Immolate
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=2 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,1000,1000,0,0,11,@SPELL_IMMOLATE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Raging Fire-Soul - In Combat - Cast Immolate");
 
-- Storming Wind-Ripper SAI
SET @ENTRY := 22310;
SET @SPELL_LIGHTNING_SHIELD := 12550; -- Lightning Shield
SET @SPELL_LIGHTNING_BOLT := 20295; -- Lightning Bolt
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=6 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_LIGHTNING_SHIELD,0,0,0,0,0,1,0,0,0,0,0,0,0,"Storming Wind-Ripper - On Aggro - Cast Lightning Shield"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_LIGHTNING_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Storming Wind-Ripper - In Combat - Cast Lightning Bolt");
 
-- Crashing Wave-Spirit SAI
SET @ENTRY := 22309;
SET @SPELL_WATER_BOLT := 34425; -- Water Bolt
UPDATE `creature_template` SET `AIName`='SmartAI',`dmgschool`=4 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,3000,11,@SPELL_WATER_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crashing Wave-Spirit - In Combat - Cast Water Bolt");
 
-- Murkblood Invader SAI
SET @ENTRY := 18238;
SET @SPELL_CLEAVE := 15496; -- Cleave
SET @SPELL_SUNDER_ARMOR := 11971; -- Sunder Armor
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,9000,10000,11,@SPELL_CLEAVE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Invader - In Combat - Cast Cleave"),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,3000,4000,11,@SPELL_SUNDER_ARMOR,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Invader - In Combat - Cast Sunder Armor");

-- Kurenai Captive
UPDATE `creature_template` SET `ScriptName`='npc_kurenai_captive' WHERE `entry`=18209;
DELETE FROM `creature_template_addon` WHERE `entry`=18209;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (18209,0,0,8,0,0,''); -- Kneel
DELETE FROM `script_waypoint` WHERE `entry`=18209;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(18209,1,-1518.593872,8469.956055,-4.101756,0,''),
(18209,2,-1511.784546,8480.531250,-4.033919,0,''),
(18209,3,-1513.447754,8509.764698,-0.109888,0,''),
(18209,4,-1498.857788,8508.805664,0.844676,0,''),
(18209,5,-1454.215088,8495.808594,4.912439,0,''),
(18209,6,-1437.483521,8504.165039,6.879123,0,''),
(18209,7,-1382.29,8539.87,11.139,7500,''),
(18209,8,-1361.22,8521.44,11.144,0,''),
(18209,9,-1324.8,8510.69,13.05,0,''),
(18209,10,-1312.08,8492.71,14.235,0,'');
 
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000482 AND -1000488;
DELETE FROM `creature_text` WHERE `entry` IN (18209,18210);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Maghar Captive
(18210,0,0,"Look out!",12,0,100,0,0,0,"Maghar Captive"),
(18210,1,0,"Don't let them escape! Kill the strong one first!",12,0,100,0,0,0,"Maghar Captive"),
(18210,2,0,"More of them are coming! Watch out!",12,0,100,0,0,0,"Maghar Captive"),
(18210,3,0,"Where do you think you're going? Kill them all!",12,0,100,0,0,0,"Maghar Captive"),
(18210,4,0,"Ride the lightning, filth!",12,0,100,0,0,0,"Maghar Captive"),
(18210,5,0,"FROST SHOCK!",14,0,100,0,0,0,"Maghar Captive"),
(18210,6,0,"It is best that we split up now, in case they send more after us. Hopefully one of us will make it back to Garrosh. Farewell, stranger.",12,0,100,0,0,0,"Maghar Captive"),
-- Kurenai Captive
(18209,0,0,"Look out!",12,0,100,0,0,0,"Kurenai Captive"),
(18209,1,0,"Don't let them escape! Kill the strong one first!",12,0,100,0,0,0,"Kurenai Captive"),
(18209,2,0,"More of them are coming! Watch out!",12,0,100,0,0,0,"Kurenai Captive"),
(18209,3,0,"Where do you think you're going? Kill them all!",12,0,100,0,0,0,"Kurenai Captive"),
(18209,4,0,"Ride the lightning, filth!",12,0,100,0,0,0,"Kurenai Captive"),
(18209,5,0,"FROST SHOCK!",14,0,100,0,0,0,"Kurenai Captive"),
(18209,6,0,"Up ahead is the road to Telaar. We will split up when we reach the fork as they will surely send more Murkblood after us. Hopefully one of us makes it back to Telaar alive.",14,0,100,0,0,0,"Kurenai Captive");

SET @ENTRY := 18428;
UPDATE `gameobject_template` SET `ScriptName`='go_warmaul_prison' WHERE `entry` IN (182484,182486,182487,182488,182489,182490,182491,182492,182493,182494,182495,182496,182497,182498,182499,182501,182502,182503,182504);
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=9948;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Death to the ogres!",12,0,100,0,0,0,"Mag'har Prisoner"),
(@ENTRY,1,1,"Many thanks, hero!",12,0,100,0,0,0,"Mag'har Prisoner"),
(@ENTRY,2,2,"One day, a hero will rise and lift the orcs up to their former glory.",12,0,100,0,0,0,"Mag'har Prisoner"),
(@ENTRY,3,3,"Spirits watch over you, $R!",12,0,100,0,0,0,"Mag'har Prisoner"),
(@ENTRY,4,4,"Thank you, $R! Your service to the Mag'har will not be forgotten.",12,0,100,0,0,0,"Mag'har Prisoner");

-- Wazat SAI
SET @ENTRY := 19035;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,20000,40000,60000,80000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wazat - OOC - Say Text 0"),
(@ENTRY,0,1,0,1,0,100,0,60000,80000,80000,110000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wazat - OOC - Say Text 1"),
(@ENTRY,0,2,0,1,0,100,0,110000,130000,150000,170000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wazat - OOC - Say Text 2");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Oh sweet, delicious, spotted eggs - you will be mine...",12,0,100,0,0,0,"Wazat"),
(@ENTRY,1,1,"If only I could get this blasted machine working!",12,0,100,0,0,0,"Wazat"),
(@ENTRY,2,2,"They look so delicious...",12,0,100,0,0,0,"Wazat");
 
-- Wazat pathing: 11365
SET @GUID := 68343;
SET @PATH := @GUID * 10;
UPDATE `creature` SET `MovementType`=2,`position_x`=-2428.169922,`position_y`=6885.750000,`position_z`=4.196100 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2428.704590,6890.355469,4.297834,20000,0,0,100,0),
(@PATH,2,-2434.878418,6889.507813,4.266439,20000,0,0,100,0),
(@PATH,3,-2428.169922,6885.750000,4.196100,20000,0,0,100,0);
 
-- Windroc Matriarch SAI
SET @ENTRY := 19055;
SET @SPELL_EAGLE_CLAW := 30285; -- Eagle Claw
SET @SPELL_WING_BUFFET := 32914; -- Wing Buffet
UPDATE `creature_template` SET `AIName`='SmartAI',`InhabitType`=4,`spell1`=0 WHERE `entry`=@ENTRY; -- Always in air, of course - really? Albino Snake as mind control ability?
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Windroc Matriarch - Start WP movement'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Windroc Matriarch - On Spawn - Emote Text 0"),
(@ENTRY,0,2,0,40,0,100,0,3,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Windroc Matriarch - Load script 1 at WP 3"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,6000,6000,11,@SPELL_EAGLE_CLAW,0,0,0,0,0,2,0,0,0,0,0,0,0,"Giselda the Crone - In Combat - Cast Eagle Claw"),
(@ENTRY,0,2,0,0,0,100,0,7000,8000,11000,14000,11,@SPELL_WING_BUFFET,0,0,0,0,0,2,0,0,0,0,0,0,0,"Giselda the Crone - In Combat - Cast Wing Buffet"),
-- Script 1
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,1000000000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Windroc Matriarch - Script - Pause Path'),
(@ENTRY*100,9,1,0,0,0,100,1,0,0,0,0,2,17158,0,0,0,0,0,1,0,0,0,0,0,0,0,"Windroc Matriarch - On Script - Set Faction Aggressive"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Windroc Matriarch - Script - Remove unit_flag OOC_NOT_ATTACKABLE'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,20,1,0,0,0,0,0,21,0,0,0,0,0,0,0,'Windroc Matriarch - Script - Attack Nearest Player');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Emote blabla",16,0,100,0,0,0,"Windroc Matriarch");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-2422.512695,6910.643555,20.124718,'Windroc Matriarch WP 1'),
(@ENTRY,2,-2420.722168,6901.208008,15.225160,'Windroc Matriarch WP 2'),
(@ENTRY,3,-2400.643066,6887.521973,-1.384245,'Windroc Matriarch WP 3');

-- Windyreed Quest Credit (Hut 01) SAI
SET @ENTRY := 18142;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `gameobject` WHERE `id`=182146; -- Remove already spawned hut fires
SET @SPELL_LIVING_FIRE := 31927; -- Living Fire
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,@SPELL_LIVING_FIRE,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Windyreed Quest Credit - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1850.186401,6378.753906,49.132702,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1843.883911,6373.384277,46.005417,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1845.056030,6383.819336,56.662624,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1845.103638,6391.827148,53.700901,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1831.184937,6391.026855,45.671902,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,60165,17139,0,0,0,0,0,"Windyreed Quest Credit - Script - Kill Creature Inside Burning Hut");
 
-- Windyreed Quest Credit (Hut 02) SAI
SET @ENTRY := 18143;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
SET @SPELL_LIVING_FIRE := 31927; -- Living Fire
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,@SPELL_LIVING_FIRE,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Windyreed Quest Credit - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1915.344116,6350.488770,52.229897,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1907.135986,6353.901367,48.899532,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1911.698730,6354.161133,58.254566,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1926.308350,6360.901855,57.298611,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1921.458862,6367.373047,59.892593,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,60159,17139,0,0,0,0,0,"Windyreed Quest Credit - Script - Kill Creature Inside Burning Hut");
 
-- Windyreed Quest Credit (Hut 03) SAI
SET @ENTRY := 18144;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
SET @SPELL_LIVING_FIRE := 31927; -- Living Fire
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,@SPELL_LIVING_FIRE,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Windyreed Quest Credit - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1969.078369,6278.307129,56.866646,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1977.147461,6277.312988,59.912029,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1974.763306,6269.175781,51.401920,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1970.424805,6273.501953,61.741539,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,60157,17139,0,0,0,0,0,"Windyreed Quest Credit - Script - Kill Creature Inside Burning Hut");
 
-- Windyreed Quest Credit (Big Hut) SAI
SET @ENTRY := 18110;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
SET @SPELL_LIVING_FIRE := 31927; -- Living Fire
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,@SPELL_LIVING_FIRE,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Windyreed Quest Credit - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1816.939941,6283.669922,61.357101,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1816.94,6283.67,61.3571,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1819.71,6305.89,63.4012,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1819.55,6298.08,73.4331,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1801.45,6308.03,59.2728,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1808.88,6307.05,72.4877,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,50,182146,20000,0,0,0,0,8,0,0,0,-1794.54,6300.6,71.2263,0,"Windyreed Quest Credit - Script - Summon Hut Fire (Large)"),
(@ENTRY*100,9,7,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,60166,17139,0,0,0,0,0,"Windyreed Quest Credit - Script - Kill Creatures Inside Burning Hut"),
(@ENTRY*100,9,8,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,60167,17139,0,0,0,0,0,"Windyreed Quest Credit - Script - Kill Creatures Inside Burning Hut");

-- Voidwraith SAI
SET @ENTRY := 18659;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=91,`faction_H`=91,`dmgschool`=5 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,12,19480,3,120000,0,0,0,1,0,0,0,0,0,0,0,"Voidwraith - On Death - Summon Darkened Spirit");
 
-- Ancient Orc Ancestor SAI
SET @ENTRY := 18688;
SET @SPELL_SOUL_MIRROR := 34063; -- Soul Mirror
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_SOUL_MIRROR,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Ancient Orc Ancestor - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,1,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ancient Orc Ancestor - Script - Evade"),
(@ENTRY*100,9,1,0,0,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ancient Orc Ancestor - Script - Prevent Combat Movement"),
(@ENTRY*100,9,2,0,0,0,100,1,3000,3000,0,0,12,19480,3,120000,0,0,0,1,0,0,0,0,0,0,0,"Ancient Orc Ancestor - Script - Summon Darkened Spirit"),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,37,19480,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ancient Orc Ancestor - Script - Die");
 
-- Darkened Spirit SAI
SET @ENTRY := 19480;
SET @SPELL_CONSUMING_SHADOWS := 31293; -- Consuming Shadows
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=91,`faction_H`=91,`dmgschool`=5 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7000,11000,15000,11,@SPELL_CONSUMING_SHADOWS,0,0,0,0,0,2,0,0,0,0,0,0,0,"Darkened Spirit - In Combat - Cast Consuming Shadows"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darkened Spirit - Force Despawn 5 Seconds After Death");
 
-- Spell Soul Mirror can only be cast at Ancient Orc Spectator
DELETE FROM `conditions` WHERE `SourceEntry`=34063 AND `ConditionValue2`=18688;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,34063,0,18,1,18688,0,0,'',"Spell Soul Mirror can only be cast at Ancient Orc Spectator");
 
DELETE FROM `creature` WHERE `id`=18688;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(66946,18688,530,1,1,0,0,-2225.73,8586.74,-10.361,0.261799,300,0,0,6542,0,0,0,0,0),
(66947,18688,530,1,1,0,0,-1452.95,8533.52,12.8692,3.33358,300,0,0,6542,0,0,0,0,0),
(10025690,18688,530,1,1,0,0,-1637.01,8569.54,-12.3352,5.65003,300,0,0,6326,0,0,0,0,0),
(10025691,18688,530,1,1,0,0,-2300.29,8571.08,-22.0957,5.65003,300,0,0,6326,0,0,0,0,0),
(10025692,18688,530,1,1,0,0,-2407.95,8655.04,-19.7505,5.65003,300,0,0,6542,0,0,0,0,0),
(10025693,18688,530,1,1,0,0,-2530.94,8629.31,-25.5884,5.65003,300,0,0,6326,0,0,0,0,0),
(10025694,18688,530,1,1,0,0,-2571.84,8558.23,-33.6043,5.65003,300,0,0,6542,0,0,0,0,0),
(10025695,18688,530,1,1,0,0,-2218.21,8513.48,-17.1368,5.65003,300,0,0,6542,0,0,0,0,0),
(10025696,18688,530,1,1,0,0,-2114.42,8743.48,11.699,5.65003,300,0,0,6326,0,0,0,0,0),
(10025697,18688,530,1,1,0,0,-2017.31,8743.44,19.5169,5.65003,300,0,0,6542,0,0,0,0,0),
(10025698,18688,530,1,1,0,0,-1812.61,8813.18,30.2393,6.13478,300,0,0,6326,0,0,0,0,0),
(10025699,18688,530,1,1,0,0,-1750.87,8877.25,31.67,6.13478,300,0,0,6326,0,0,0,0,0),
(10025700,18688,530,1,1,0,0,-1539.61,8686.33,24.643,6.13478,300,0,0,6326,0,0,0,0,0),
(10025701,18688,530,1,1,0,0,-1653.31,8494.49,-12.8156,6.13478,300,0,0,6542,0,0,0,0,0),
(10025702,18688,530,1,1,0,0,-1579.32,8426.67,-9.33804,6.13478,300,0,0,6326,0,0,0,0,0),
(10025703,18688,530,1,1,0,0,-1040.87,7895.8,22.8202,6.13478,300,0,0,6326,0,0,0,0,0),
(10025704,18688,530,1,1,0,0,-1059.54,7750.35,25.8758,6.13478,300,0,0,6326,0,0,0,0,0),
(10025705,18688,530,1,1,0,0,-908.965,7783.44,40.1036,6.13478,300,0,0,6326,0,0,0,0,0),
(10025706,18688,530,1,1,0,0,-886.413,7824.75,40.0754,6.13478,300,0,0,6542,0,0,0,0,0),
(10025707,18688,530,1,1,0,0,-878.863,7881.25,38.6467,6.13478,300,0,0,6326,0,0,0,0,0),
(10025708,18688,530,1,1,0,0,-1866.27,8098.74,-20.3459,6.13478,300,0,0,6542,0,0,0,0,0),
(10025709,18688,530,1,1,0,0,-2106.82,8191.13,-15.5604,6.13478,300,0,0,6542,0,0,0,0,0),
(10025710,18688,530,1,1,0,0,-2084.75,8286.22,-11.4935,6.13478,300,0,0,6542,0,0,0,0,0),
(10025711,18688,530,1,1,0,0,-2206.14,8306.9,-26.191,6.13478,300,0,0,6542,0,0,0,0,0),
(10025712,18688,530,1,1,0,0,-2256,8478.68,-24.6155,6.13478,300,0,0,6542,0,0,0,0,0),
(10025713,18688,530,1,1,0,0,-2336.12,8477.34,-30.3842,6.13478,300,0,0,6326,0,0,0,0,0),
(10025714,18688,530,1,1,0,0,-2350.53,8641.59,-15.5674,6.13478,300,0,0,6326,0,0,0,0,0),
(10025715,18688,530,1,1,0,0,-2379.14,8531.65,-28.7321,6.13478,300,0,0,6326,0,0,0,0,0),
(10025716,18688,530,1,1,0,0,-2411.61,8492.45,-33.4541,6.13478,300,0,0,6542,0,0,0,0,0),
(10025717,18688,530,1,1,0,0,-2416.02,8330.76,-37.6002,6.13478,300,0,0,6542,0,0,0,0,0),
(10025718,18688,530,1,1,0,0,-2336.04,8288.74,-36.3567,1.72398,300,0,0,6326,0,0,0,0,0),
(10025719,18688,530,1,1,0,0,-2336.11,8225.27,-35.7699,1.72398,300,0,0,6326,0,0,0,0,0),
(10025720,18688,530,1,1,0,0,-2258.45,8221.08,-31.2193,3.93488,300,0,0,6326,0,0,0,0,0),
(10025721,18688,530,1,1,0,0,-2203.79,8149.55,-25.1002,3.93488,300,0,0,6326,0,0,0,0,0),
(10025722,18688,530,1,1,0,0,-2184.8,8029.08,-17.6373,3.93488,300,0,0,6542,0,0,0,0,0),
(10025723,18688,530,1,1,0,0,-2297.12,7848.94,-30.4255,3.93488,300,0,0,6326,0,0,0,0,0),
(10025724,18688,530,1,1,0,0,-2544.55,7818.57,-45.0012,3.93488,300,0,0,6326,0,0,0,0,0),
(10025725,18688,530,1,1,0,0,-2555.36,7930.22,-55.675,3.93488,300,0,0,6542,0,0,0,0,0),
(10025726,18688,530,1,1,0,0,-2622.32,7987.03,-48.9066,3.93488,300,0,0,6542,0,0,0,0,0),
(10025727,18688,530,1,1,0,0,-2126.06,8148.39,-15.8518,3.93488,300,0,0,6326,0,0,0,0,0);

-- Spell Place Kil'sorrow Banner can not only be cast on Warmaul Ogres
DELETE FROM `conditions` WHERE `SourceEntry` IN (32314) AND `ConditionValue2` IN (17138,18064);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,32314,0,18,1,17138,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Warmaul Ogres"), -- Warmaul Reaver
(13,0,32314,1,18,1,18064,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Warmaul Ogres"); -- Warmaul Shaman

-- Quest 'Ruthless Cunning' exploit fix
-- Spell Place Kil'sorrow Banner can not only be cast on Warmaul Ogres
DELETE FROM `conditions` WHERE `SourceEntry` IN (32307) AND `ConditionValue2` IN (17148,17147,17146,18391);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,32307,0,18,1,17148,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Kil'sorrow mobs"), -- Kil'sorrow Deathsworn
(13,0,32307,1,18,1,17147,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Kil'sorrow mobs"), -- Kil'sorrow Cultist
(13,0,32307,2,18,1,17146,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Kil'sorrow mobs"), -- Kil'sorrow Spellbinder
(13,0,32307,3,18,1,18391,0,0,'',"Spell Place Kil'sorrow Banner can not only be cast on Kil'sorrow mobs"); -- Giselda the Crone

-- Shattered Rumbler SAI
SET @ENTRY := 17157;
SET @ENTRY_MINION := 18181; -- Minion of Gurok
SET @SPELL_EARTH_RUMBLE := 33840; -- Earth Rumble
SET @SPELL_THROW_GORDAWGS_BULDER := 32001; -- Throw Gordawgs Boulder
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`=''WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,9000,11,@SPELL_EARTH_RUMBLE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shattered Rumbler - In Combat - Cast Earth Rumble"),
(@ENTRY,0,1,0,8,0,100,1,@SPELL_THROW_GORDAWGS_BULDER,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Shattered Rumbler - On Spellhit - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,@ENTRY_MINION,4,20000,0,0,0,1,0,0,0,0,0,0,0,"Shattered Rumbler - Script - Summon Minion of Gurok"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,12,@ENTRY_MINION,4,20000,0,0,0,1,0,0,0,0,0,0,0,"Shattered Rumbler - Script - Summon Minion of Gurok"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,12,@ENTRY_MINION,4,20000,0,0,0,1,0,0,0,0,0,0,0,"Shattered Rumbler - Script - Summon Minion of Gurok"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shattered Rumbler - Script - Die");
 
-- Minion of Gurok SAI
SET @ENTRY := 18181;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Minion of Gurok - Out of Combat - Set Random Movement");
 
-- Spell Throw Gordawgs Boulder can only be cast at Shattered Rumbler
DELETE FROM `conditions` WHERE `SourceEntry`=24501 AND `ConditionValue2`=17157;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,24501,0,24,1,17157,0,0,'',"Item Gordawgs Boulder can only be used if target is Shattered Rumbler");

-- Lump SAI
SET @ENTRY := 18351;
SET @QUEST := 9918;
SET @GOSSIP := 51000;
SET @SPELL_SLEEPING_SLEEP := 42648; -- Sleeping Sleep
SET @SPELL_SHOULDER_CHARGE := 31994; -- Shoulder Charge
SET @SPELL_SPEAR_THROW := 32248; -- Spear Throw
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='',`gossip_menu_id`=@GOSSIP+1,`faction_A`=1711,`faction_H`=1711,`unit_flags`=`unit_flags`|528 WHERE `entry`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_SLEEPING_SLEEP,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - Out Of Combat - Cast Sleeping Sleep"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Lump - On Aggro - Say Line (random)"),
(@ENTRY,0,2,0,62,0,100,0,@GOSSIP+4,0,0,0,33,18354,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lump - On Gossip Select - Give Quest Credit"),
(@ENTRY,0,3,0,2,0,100,1,0,20,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Lump - On 20% HP - Run Script"),
(@ENTRY*100,9,0,0,2,0,100,1,0,0,0,0,2,1080,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Set Faction Friendly"),
(@ENTRY*100,9,1,0,2,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Say Line 1"),
(@ENTRY*100,9,2,0,2,0,100,1,1000,1000,0,0,5,447,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Emote ONESHOT_FLY_SIT_GROUND_DOWN"), -- He wont sit down, no matter which emote I use - probably due evading
(@ENTRY*100,9,3,0,2,0,100,1,0,0,0,0,20,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Stop auto-attack"),
(@ENTRY*100,9,4,0,2,0,100,1,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Evade"),
(@ENTRY*100,9,5,0,2,0,100,1,0,0,0,0,28,@SPELL_SLEEPING_SLEEP,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lump - On Script - Remove Aura Sleeping Sleep"), -- Prevent gaining it - were leaving combat!
(@ENTRY,0,4,0,9,0,100,0,8,25,1500,2000,11,@SPELL_SHOULDER_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lump - On Player Range - Cast Shoulder Charge"),
(@ENTRY,0,5,0,9,0,100,0,5,40,1500,2000,11,@SPELL_SPEAR_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lump - On Player Range - Cast Spear Throw");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"In Nagrand,food hunt ogre!",12,0,100,0,0,0,"Lump"),
(@ENTRY,0,1,"You taste good with maybe a little salt and pepper.",12,0,100,0,0,0,"Lump"),
(@ENTRY,1,2,"OK,OK! Lump give up!",12,0,100,0,0,0,"Lump");
 
-- Actual story menu
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+1 AND `text_id`=9352;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+1,9352);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+2 AND `text_id`=9353;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+2,9353);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+3 AND `text_id`=9354;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+3,9354);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+4 AND `text_id`=9355;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+4,9355);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+5 AND `text_id`=9356;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+5,9356);
 
-- Insert option menu
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP+0 AND @GOSSIP+4;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@GOSSIP+1,0,0,"I need answers,ogre!",1,1,@GOSSIP+2),
(@GOSSIP+2,1,0,"Why are Boulderfist out this far? You know that this is Kurenai territory.",1,1,@GOSSIP+3),
(@GOSSIP+3,2,0,"And you think you can just eat anything you want? Youre obviously trying to eat the Broken of Telaar.",1,1,@GOSSIP+4),
(@GOSSIP+4,3,0,"This means war,Lump! War I say!",1,1,@GOSSIP+5);
 
-- Only show first gossip if player is on quest Not On My Watch!
DELETE FROM `conditions` WHERE `SourceGroup`=@GOSSIP+1 AND `ConditionValue1`=@QUEST;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP+1,0,0,9,@QUEST,0,0,0,'',"Only show first gossip if player is on quest Not On My Watch!");

-- Diplomatic Measures quest
SET @GOSSIP := 52000;
SET @QUEST_HORDE := 10107;
SET @QUEST_ALLIANCE := 10108;
 
-- Lantresor of the Blade SAI
SET @ENTRY := 18261;
SET @SPELL_BUNING_BLADE_BLADEMASTER := 32281; -- Burning Blade Blademaster
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP+0,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_BUNING_BLADE_BLADEMASTER,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lantrestor of the Blade - Out of Combat - Cast Burning Blade Blademaster"),
(@ENTRY,0,1,0,62,0,100,0,@GOSSIP+7,0,0,0,26,@QUEST_ALLIANCE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lantrestor of the Blade - On Gossip Select - Give Quest Credit"),
(@ENTRY,0,2,0,62,0,100,0,@GOSSIP+7,0,0,0,26,@QUEST_HORDE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lantrestor of the Blade - On Gossip Select - Give Quest Credit");
 
-- Make the npc_text entries work properly
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+1 AND `text_id`=9362;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+1,9362);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+2 AND `text_id`=9363;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+2,9363);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+3 AND `text_id`=9364;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+3,9364);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+4 AND `text_id`=9365;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+4,9365);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+5 AND `text_id`=9366;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+5,9366);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+6 AND `text_id`=9367;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+6,9367);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+7 AND `text_id`=9368;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+7,9368);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+8 AND `text_id`=9369;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+8,9369);
 
-- Insert menu options
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP+0 AND @GOSSIP+7;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@GOSSIP+0,0,0,"I have killed many of your ogres,Lantresor. I have no fear.",1,1,@GOSSIP+1),
(@GOSSIP+1,1,0,"Should I know? You look like an orc to me.",1,1,@GOSSIP+2),
(@GOSSIP+2,2,0,"And the other half?",1,1,@GOSSIP+3),
(@GOSSIP+3,3,0,"I have heard of your kind,but I never thought to see the day when I would meet a half-breed.",1,1,@GOSSIP+4),
(@GOSSIP+4,4,0,"My apologies. I did not mean to offend. I am here on behalf of my people.",1,1,@GOSSIP+5),
(@GOSSIP+5,5,0,"My people ask that you pull back your Boulderfist ogres and cease all attacks on our territories. In return,we will also pull back our forces.",1,1,@GOSSIP+6),
(@GOSSIP+6,6,0,"We will fight you until the end,then,Lantresor. We will not stand idly by as you pillage our towns and kill our people.",1,1,@GOSSIP+7),
(@GOSSIP+7,7,0,"What do I need to do?",1,1,@GOSSIP+8);
 
-- Conditions for gossip menu of quest Diplomatic Measures, they are grouped and thus ONE of them must be met in order for the gossip to become visible
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP+0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP+0,0,0,9,@QUEST_ALLIANCE,0,0,0,'',"Only show first gossip if player is on quest Diplomatic Measures (alliance)"),
(15,@GOSSIP+0,0,1,9,@QUEST_HORDE,0,0,0,'',"Only show first gossip if player is on quest Diplomatic Measures (horde)");

-- Wild Sparrowhawk SAI
SET @ENTRY := 22979;
SET @SPELL_SPARROWHAWK_NET := 39810; -- Sparrowhawk Net
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='',`InhabitType`=4 WHERE `entry`=@ENTRY; -- Always in air
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,@SPELL_SPARROWHAWK_NET,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Spellhit - Run Script"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,28,@SPELL_SPARROWHAWK_NET,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Death - Remove Aura Sparrowhawk Net"),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wild Sparrowhawk - Force Despawn 8 Seconds After Death'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Script - Flee For Assist"), -- This is how it should work - there is no flee function in event_scripts, so can't do it blizzlike (event_scripts 39812)
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,28,@SPELL_SPARROWHAWK_NET,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Script - Remove Aura Sparrowhawk Net"), -- Remove it and add it back later
(@ENTRY*100,9,2,0,0,0,100,0,11000,11000,0,0,56,32320,1,0,0,0,0,7,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Script - Add Item Captured Sparrowhawk"),
(@ENTRY*100,9,3,0,0,0,100,0,11000,11000,0,0,37,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Sparrowhawk - On Script - Die");
 
-- Spell Sparrowhawk Net can only be cast at Wild Sparrowhawk
DELETE FROM `conditions` WHERE `SourceEntry` IN (39810,32321) AND `ConditionValue2` IN (22979);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,39810,0,18,1,22979,0,0,'',"Spell Sparrowhawk Net can only be cast at Wild Sparrowhawk"),
(18,0,32321,0,24,1,22979,0,0,'',"Item Sparrowhawk Net can only be used if target is Wild Sparrowhawk");

-- Ring of Blood SAI
SET @ENTRY_GURTHOCK := 18471;
SET @ENTRY_BROKENTOE := 18398;
SET @ENTRY_TWIN := 18399;
SET @ENTRY_ROKDAR := 18400;
SET @ENTRY_SKRAGATH := 18401;
SET @ENTRY_WARMAUL := 18402;
SET @ENTRY_MOGOR := 18069;
-- Quest entries
SET @QUEST_BROKENTOE := 9962;
SET @QUEST_BLUE_BROTHERS := 9967;
SET @QUEST_ROKDAR := 9970;
SET @QUEST_SKRAGATH := 9972;
SET @QUEST_WARMAUL := 9973;
SET @QUEST_MOGOR := 9977;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY_GURTHOCK;
UPDATE `quest_template` SET `StartScript`=0 WHERE `entry`=@QUEST_BROKENTOE;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_MOGOR,@ENTRY_GURTHOCK,@ENTRY_GURTHOCK*100,@ENTRY_GURTHOCK*100+1,@ENTRY_GURTHOCK*100+2,@ENTRY_GURTHOCK*100+3,@ENTRY_GURTHOCK*100+4,@ENTRY_GURTHOCK*100+5,@ENTRY_MOGOR*100,@ENTRY_MOGOR*100+1,@ENTRY_GURTHOCK*1000);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY_GURTHOCK,0,0,0,19,0,100,1,@QUEST_BROKENTOE,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line"),
(@ENTRY_GURTHOCK,0,1,0,19,0,100,1,@QUEST_BROKENTOE,0,0,0,80,@ENTRY_GURTHOCK*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,2,0,19,0,100,1,@QUEST_BLUE_BROTHERS,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line"),
(@ENTRY_GURTHOCK,0,3,0,19,0,100,1,@QUEST_BLUE_BROTHERS,0,0,0,80,@ENTRY_GURTHOCK*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,4,0,19,0,100,1,@QUEST_ROKDAR,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line"),
(@ENTRY_GURTHOCK,0,5,0,19,0,100,1,@QUEST_ROKDAR,0,0,0,80,@ENTRY_GURTHOCK*100+2,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,6,0,19,0,100,1,@QUEST_SKRAGATH,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line"),
(@ENTRY_GURTHOCK,0,7,0,19,0,100,1,@QUEST_SKRAGATH,0,0,0,80,@ENTRY_GURTHOCK*100+3,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,8,0,19,0,100,1,@QUEST_WARMAUL,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line"),
(@ENTRY_GURTHOCK,0,9,0,19,0,100,1,@QUEST_WARMAUL,0,0,0,80,@ENTRY_GURTHOCK*100+4,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK*100,9,0,0,0,0,100,1,13000,13000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Timed Action List - Say Line 1 After 13 seconds"),
(@ENTRY_GURTHOCK*100,9,1,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_BROKENTOE,4,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - Script - Summon Brokentoe"),
(@ENTRY_GURTHOCK*100+1,9,0,0,0,0,100,1,13000,13000,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Timed Action List - Say Line 3 After 13 seconds"),
(@ENTRY_GURTHOCK*100+1,9,1,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_TWIN,4,120000,0,0,0,8,0,0,0,-717.852356,7877.326660,45.547367,1.599185,"Gurghthock - Script - Summon Murkblood Twin"),
(@ENTRY_GURTHOCK*100+1,9,2,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_TWIN,4,120000,0,0,0,8,0,0,0,-695.944275,7880.357910,47.097507,2.084561,"Gurghthock - Script - Summon Murkblood Twin"),
(@ENTRY_GURTHOCK*100+2,9,0,0,0,0,100,1,13000,13000,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Timed Action List - Say Line 5 After 13 seconds"),
(@ENTRY_GURTHOCK*100+2,9,1,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_ROKDAR,4,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - Script - Summon Rokdar the Sundered Lord"),
(@ENTRY_GURTHOCK*100+3,9,0,0,0,0,100,1,13000,13000,0,0,1,7,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Timed Action List - Say Line 7 After 13 seconds"),
(@ENTRY_GURTHOCK*100+3,9,1,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_SKRAGATH,4,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - Script - Summon Skra'gath"),
(@ENTRY_GURTHOCK*100+4,9,0,0,0,0,100,1,13000,13000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Timed Action List - Say Line 9 After 13 seconds"),
(@ENTRY_GURTHOCK*100+4,9,1,0,0,0,100,0,15000,15000,0,0,12,@ENTRY_WARMAUL,4,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - Script - Summon Warmaul Champion");



-- Altruis the Sufferer SAI
-- [Q] Survey the Land
-- [Q] Illidan's Pupil
SET @ENTRY := 18417;
SET @GOSSIP := 53000;
SET @QUEST_SURVEY := 9991;
SET @QUEST_PUPIL := 10646;
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry` IN (@QUEST_SURVEY,@QUEST_PUPIL);
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP+1,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Survey the Land
(@ENTRY,0,1,0,62,0,100,0,@GOSSIP+1,0,0,0,52,532,0,0,0,0,0,7,0,0,0,0,0,0,0,"Altruis the Sufferer - On Gossip Select - Activate Taxi Path"),
(@ENTRY,0,2,0,62,0,100,0,@GOSSIP+1,0,0,0,26,@QUEST_SURVEY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Altruis the Sufferer - On Gossip Select - Give Quest Credit"), -- Want to buy SMART_ACTION_TAXI_REACHED
-- Illidan's Pupil
(@ENTRY,0,3,0,62,0,100,0,@GOSSIP+15,0,0,0,26,@QUEST_PUPIL,0,0,0,0,0,7,0,0,0,0,0,0,0,"Altruis the Sufferer - On Gossip Select - Give Quest Credit");
 
-- Survey the Land
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+1 AND `text_id`=9427;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+1,9427);
-- Illidan's Pupil
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+11 AND `text_id`=10492;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+11,10492);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+12 AND `text_id`=10493;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+12,10493);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+13 AND `text_id`=10494;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+13,10494);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+14 AND `text_id`=10495;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+14,10495);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+15 AND `text_id`=10497;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+15,10497);
 
-- Insert menu options
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP+0 AND @GOSSIP+15;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
-- Survey the Land
(@GOSSIP+0,1,0,"Well?",1,3,@GOSSIP+1,0,0,0,''),
(@GOSSIP+1,1,0,"Ok.",1,3,@GOSSIP+11,0,0,0,''),
-- Illidan's Pupil
(@GOSSIP+10,2,0,"Tell me about the demon hunter training grounds at the Ruins of Karabor.",1,3,@GOSSIP+11,0,0,0,''),
(@GOSSIP+11,2,0,"I'm listening.",1,3,@GOSSIP+12,0,0,0,''),
(@GOSSIP+12,2,0,"Go on, please.",1,3,@GOSSIP+13,0,0,0,''),
(@GOSSIP+13,2,0,"Interesting.",1,3,@GOSSIP+14,0,0,0,''),
(@GOSSIP+14,2,0,"That's quite a story.",1,3,@GOSSIP+15,0,0,0,''),
(@GOSSIP+15,2,0,"There was something else I wanted to ask you, Altruis.",1,3,@GOSSIP+10,0,0,0,''); -- Back to first page
 
-- Conditions for gossip menu of quest Survey the Land
DELETE FROM `conditions` WHERE `SourceGroup` IN (@GOSSIP+0,@GOSSIP+10) AND `ConditionValue1` IN (@QUEST_SURVEY,@QUEST_PUPIL);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP+0,0,0,9,@QUEST_SURVEY,0,0,0,'',"Only show first gossip if player is on quest Survey the Land"),
(15,@GOSSIP+10,0,0,9,@QUEST_PUPIL,0,0,0,'',"Only show first gossip if player is on quest Illidans Pupil");