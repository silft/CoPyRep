-- Book "Soothsaying for Dummies" gossip menu text
INSERT INTO `gossip_menu` (entry, text_id) VALUES (7058, 8321);
-- Book "Soothsaying for Dummies" script
UPDATE `gameobject_template` SET `ScriptName`='obj_soothsaying_for_dummies' WHERE `entry`=177226;