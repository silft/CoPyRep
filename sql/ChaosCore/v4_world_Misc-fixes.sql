-- Startup errors
DELETE FROM `spell_script_names` WHERE `spell_id`=29371;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(29371,'spell_heigan_eruption');

DELETE FROM `disables` WHERE `entry` IN (7264,7548);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7264,7548) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(7264,11,0,0,'achievement_safety_dance'),
(7548,11,0,0,'achievement_safety_dance');
 
 -- Immune Mask Ancient Conservator
 UPDATE `creature_template` SET `mechanic_immune_mask` = 650853983 WHERE `entry` IN (33203,33376);
 
 -- Immune mask volkhan
 UPDATE `creature_template` SET `mechanic_immune_mask` = 617299803 WHERE `entry` IN (28587,31536);
 