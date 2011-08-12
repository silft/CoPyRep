-- Spellscripts ToCR
DELETE FROM `spell_script_names` WHERE `spell_id` IN (67590,67602,67603,67604) AND `ScriptName`='spell_powering_up';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (66316,67100,67101,67102) AND `ScriptName`='spell_spinning_pain_strike';
DELETE FROM `spell_script_names` WHERE `spell_id` = 68576 AND `ScriptName` = 'spell_eject_all_passengers';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(66316, 'spell_spinning_pain_strike'),
(67100, 'spell_spinning_pain_strike'),
(67101, 'spell_spinning_pain_strike'),
(67102, 'spell_spinning_pain_strike'),
(68576, 'spell_eject_all_passengers'),
(67590, 'spell_powering_up'),
(67602, 'spell_powering_up'),
(67603, 'spell_powering_up'),
(67604, 'spell_powering_up');
-- Increase loot on ToCR Bosses
UPDATE creature_loot_template SET `maxcount` = 4 WHERE `item` IN (1, 2) AND `entry` IN
(35448, -- Icehowl 25N
 35449, -- Icehowl 25H
 35268, -- Jaraxxus 25N
 35269, -- Jaraxxus 25H
 35351, -- Fjola 25N
 35352, -- Fjola 25H
 35348, -- Eydis 25N
 35349, -- Eydis 25H
 35615, -- Anub'arak 25N
 35616); -- Anub'arak 25H

-- Increase the loot only on the 10M valks, since i was not able to remove the damage requirement to evercome
-- the ugly workaround used for healthsharing
UPDATE creature_loot_template SET `maxcount` = 2 WHERE `item` IN (1,2) AND `entry` IN
(34497,  -- Fjola 10N
 34496,  -- Eydis 10N
 35347,  -- Eydis 10H
 35350); -- Fjola 10H

-- Increase loot on champions cache ToCR
UPDATE gameobject_loot_template SET `maxcount` = 4 WHERE `item` IN (1, 2) AND `entry` IN
(27503, -- Champions Cache 25N
 27356);  -- Champions Cache 25H
 
-- Increase recipe drop chance on ToCR bosses
UPDATE creature_loot_template SET `ChanceOrQuestChance` = 5, `maxcount` = 2 WHERE `item` IN (3, 4) AND `entry` IN
(35447, -- Icehowl 10H
 35448, -- Icehowl 25N
 35449, -- Icehowl 25H
 35216, -- Jaraxxus 10H
 35268, -- Jaraxxus 25N
 35269, -- Jaraxxus 25H
 35350, -- Fjola 10H
 35351, -- Fjola 25N
 35352, -- Fjola 25H
 35347, -- Eydis 10H
 35348, -- Eydis 25N
 35349, -- Eydis 25H
 34566, -- Anub'arak 10H
 35615, -- Anub'arak 25N
 35616); -- Anub'arak 25H
 
-- Increase recipe drop chance on ToCR champions cache
UPDATE gameobject_loot_template SET `ChanceOrQuestChance` = 5, `maxcount` = 2 WHERE `item` IN (3, 4) AND `entry` IN
(27335,
 27503,
 27356);
 
-- Immune masks nether portal + infernal volcano + Bosses, LOL
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299803 WHERE `entry` IN
(34813, -- Infernal Volcano 10N
 35265, -- Infernal Volcano 10H
 35266, -- Infernal Volcano 25N
 35267, -- Infernal Volcano 25H
 34825, -- Nether Portal 10N
 35278, -- Nether Portal 10H
 35279, -- Nether Portal 25N
 35280, -- Nether Portal 25H
 34796, -- Gormok 10N
 35438, -- Gormok 25N
 35439, -- Gormok 10H
 35440, -- Gormok 25H
 34797, -- Icehowl 10N
 35447, -- Icehowl 25N
 35448, -- Icehowl 10H
 35449, -- icehowl 25H
 35144, -- Acidmaw 10N
 35511, -- Acidmaw 25N
 35512, -- Acidmaw 10H
 35513, -- Acidmaw 25H
 34799, -- Dreadscale 10N
 35514, -- Dreadscale 25N
 35515, -- Dreadscale 10H
 35516, -- Dreadscale 25H
 34780, -- Jaraxxus 10N
 35216, -- Jaraxxus 25N
 35268, -- Jaraxxus 10H
 35269, -- Jaraxxus 25H
 34497, -- Fjola 10N
 35350, -- Fjola 25N
 35351, -- Fjola 10H
 35352, -- Fjola 25H
 34496, -- Eydis 10N
 35347, -- Eydis 25N
 35348, -- Eydis 10H
 35349, -- Eydis 25H
 34564, -- Anub'arak 10N
 34566, -- Anub'arak 25N
 35615, -- Anub'arak 10H
 35616); -- Anub'arak 25H
 