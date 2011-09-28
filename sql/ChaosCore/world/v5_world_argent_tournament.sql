-- Quest: The Back Knights Orders (13663)
-- Black Knights Camp Spawns
DELETE FROM gameobject WHERE `id` IN (194357,194394,195011,300007);
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(194357,571,1,1,9070.324,2050.733,67.21755,0,0,0,0,1,0,0,0),
(194357,571,1,1,9073.764,2050.12,68.15718,0,0,0,0,1,0,0,0),
(194357,571,1,1,9074.699,2050.709,68.17049,0,0,0,0,1,0,0,0),
(194357,571,1,1,9069.595,2050.349,67.21755,0,0,0,0,1,0,0,0),
(194394,571,1,1,9083.578,2041.696,67.81812,0,0,0,0,1,0,0,0),
(194357,571,1,1,9069.961,2050.538,67.21755,0,0,0,0,1,0,0,0),
(194357,571,1,1,9072.077,2049.292,67.78963,0,0,0,0,1,0,0,0),
(195011,571,1,1,9078.471,2057.547,67.21606,0,0,0,0.9981346,0.06105176,0,0,0),
(194357,571,1,1,9065.68,2052.618,67.28638,3.019413,0,0,0,1,0,0,0),
(300007,571,1,1,8523.900,566.635010,552.921,0,0,0,0,0,0,0,0);

DELETE FROM creature WHERE id=33537;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
(33537,571,1,1,0,0,9071.043,2075.388,67.21542,4.93598,120,0,0,1,0,0,0,0,0),
(33537,571,1,1,0,0,9074.414,2049.259,67.34636,2.181662,120,0,0,1,0,0,0,0,0),
(33537,571,1,1,0,0,9081.28,2058.925,67.38979,3.612832,120,0,0,1,0,0,0,0,0);

-- Template updates
UPDATE creature_template SET speed_run=4, AIName = '', InhabitType=5, IconName='vehichleCursor', ScriptName = 'npc_black_knight_gryphon' WHERE entry=33519; -- Black Knight's Gryphon
UPDATE creature_template SET faction_A=2080,faction_H=2080,unit_flags=unit_flags|32768,equipment_id=823 WHERE entry=33537; -- Cult Conspirator

-- Addon data
DELETE FROM creature_template_addon WHERE entry IN (33519,33537);
INSERT INTO creature_template_addon (entry,mount,bytes1,bytes2,emote,auras) VALUES
(33519,0,0,2049,0,NULL),-- Black Knight's Gryphon
(33537,0,1,1,0,NULL); -- Cult Conspirator

-- SAI for Black Knight's Gryphon (unused for now, its scripted on C++)
SET @entry :=33519;
UPDATE creature_template SET AIName='' WHERE entry=@entry;
DELETE FROM smart_scripts WHERE source_type=0 AND entryorguid=@entry;

DELETE FROM waypoints WHERE entry=33519;
