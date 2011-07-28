-- General Vezax
UPDATE creature_template SET scriptname = 'boss_general_vezax' WHERE entry = 33271;
UPDATE creature_template SET scriptname = 'mob_saronit_vapor' WHERE entry = 33488;
UPDATE creature_template SET scriptname = 'mob_saronit_animus' WHERE entry = 33524;
DELETE FROM spell_script_names WHERE spell_id = 62692;
INSERT INTO spell_script_names VALUE (62692,'spell_general_vezax_aura_of_despair_aura');
DELETE FROM spell_script_names WHERE spell_id = 63276;
INSERT INTO spell_script_names VALUE (63276,'spell_general_vezax_mark_of_the_faceless_aura');