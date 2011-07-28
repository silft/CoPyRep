-- Hunter Scaling Bonus for abilities
UPDATE spell_bonus_data SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `comments` LIKE ('%Hunter%');
