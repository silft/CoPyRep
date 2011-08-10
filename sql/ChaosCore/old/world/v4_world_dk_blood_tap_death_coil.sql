-- Blood tap SpellScript
DELETE FROM `spell_script_names` WHERE `spell_id` = 45529;
INSERT INTO `spell_script_names` VALUES
(45529,'spell_dk_blood_tap');

-- Workaround for death knight death coil heal
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.45 WHERE `entry` = 47633;