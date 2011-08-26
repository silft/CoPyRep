DELETE FROM `creature_template` WHERE (`entry`=97015);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES (97015, 0, 0, 0, 0, 0, 30859, 30987, 30861, 30862, 'Recuperador de anéis de Ashen Verdict', 'Fale comigo caso esteja com problema no anel', '', 0, 80, 80, 2, 35, 35, 1, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 75, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2354, 0, 2, 'npc_argent_ring_restorer', 12340);
UPDATE creature_template SET npcflag=1, gossip_menu_id=61001 WHERE entry=97015;
DELETE FROM gossip_menu WHERE entry=61001;
INSERT INTO gossip_menu VALUES (61001,537006);
DELETE FROM npc_text WHERE id=537006;
INSERT INTO npc_text (id, text0_0) VALUES (537006,'Olá!, Voce perdeu o anel de ashen verdict? Aqui voce pode receber devolta o anel de acordo com o seu nivel de reputação em ashen verdict =), Caso depois de subir de nível de reputação nao apareça mais nenhuma quest, delete o anel que você tem que eu lhe darei outro :D');
DELETE FROM creature WHERE id=97015;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecs) VALUES
(NULL,97015,631,15,1,-59.922218,2191.048340,27.902630,0.235823,100);