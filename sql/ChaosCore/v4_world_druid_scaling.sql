UPDATE spell_bonus_data SET `direct_bonus` = 0 WHERE `direct_bonus` = -1 AND `comments` LIKE ('%Druid%');
UPDATE spell_bonus_data SET `dot_bonus` = 0 WHERE `dot_bonus` = -1 AND `comments` LIKE ('%Druid%');
UPDATE spell_bonus_data SET `ap_bonus` = 0 WHERE `ap_bonus` = -1 AND `comments` LIKE ('%Druid%');
UPDATE spell_bonus_data SET `ap_dot_bonus` = 0 WHERE `ap_dot_bonus` = -1 AND `comments` LIKE ('%Druid%');