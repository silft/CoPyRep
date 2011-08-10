DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10451,10462);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10451,10462) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10451,11,0,0, 'achievement_i_love_the_smell_of_saronite_in_the_morning'),
(10462,11,0,0, 'achievement_i_love_the_smell_of_saronite_in_the_morning'),
(10451,12,0,0, ''),
(10462,12,1,0, '');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10173,10306);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10173,10306) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10173,11,0,0, 'achievement_shadowdodger'),
(10306,11,0,0, 'achievement_shadowdodger'),
(10173,12,0,0, ''),
(10306,12,1,0, '');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10290,10133);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10290,10133) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10290,11,0,0, 'achievement_rubble_and_roll'),
(10133,11,0,0, 'achievement_rubble_and_roll'),
(10290,12,0,0, ''),
(10133,12,1,0, '');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10284,10722);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10284,10722) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10284,11,0,0, 'achievement_disarmed'),
(10722,11,0,0, 'achievement_disarmed'),
(10284,12,0,0, ''),
(10722,12,1,0, '');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10285,10095);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10285,10095) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10285,11,0,0, 'achievement_with_open_arms'),
(10095,11,0,0, 'achievement_with_open_arms'),
(10285,12,0,0, ''),
(10095,12,1,0, '');