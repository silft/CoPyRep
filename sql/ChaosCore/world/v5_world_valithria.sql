DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_twisted_nightmares';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(71941, 'spell_dreamwalker_twisted_nightmares');

- Valithria Missing difficulty spawn
DELETE FROM `creature_template` WHERE `entry` IN (39175,39176);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES 
(39175, 0, 0, 0, 0, 0, 30318, 0, 0, 0, 'Valithria Dreamwalker (2)', '', '', 0, 83, 83, 2, 1665, 1665, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 35, 2000, 0, 1, 536870912, 8, 0, 0, 0, 0, 0, 371, 535, 135, 2, 67113036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 860.524, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 12340),
(39176, 0, 0, 0, 0, 0, 30318, 0, 0, 0, 'Valithria Dreamwalker (3)', '', '', 0, 83, 83, 2, 1665, 1665, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 2000, 0, 1, 536870912, 8, 0, 0, 0, 0, 0, 371, 535, 135, 2, 67113036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2581.57, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 12340);

-- Update missing difficulty entry
UPDATE `creature_template` SET `difficulty_entry_2` = 39175, `difficulty_entry_3` = 39176 WHERE `entry` = 36789;
-- Update valithria
UPDATE `creature` SET `spawnMask` = 15, `phaseMask` = 5, curhealth = 12000007 WHERE `guid` = 137747; 
DELETE FROM `creature` WHERE `guid` = 137746;

-- Update Creature template addons for missing entries
DELETE FROM `creature_template_addon` WHERE `entry` IN (39175,39176);
INSERT INTO `creature_template_addon` VALUES 
(39175, 0, 0, 0, 1, 0, '72724 70904'),
(39176, 0, 0, 0, 1, 0, '72724 70904');
