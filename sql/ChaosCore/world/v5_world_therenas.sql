DELETE FROM `spell_script_names` WHERE `spell_id` IN (69397,69382);
INSERT INTO `spell_script_names` VALUES
(69382,'spell_terenas_light_favor'),
(69397,'spell_spirit_warden_soul_rip');

UPDATE `creature_template` SET `dmg_multiplier` = 12.5 WHERE `entry` = 36823;