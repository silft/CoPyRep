-- Disable these spells for rogues, since they are leaving them in a rather overpowered state.
DELETE FROM `disables` WHERE `entry` IN (67209,14179,58422,58423,58424,58425);
INSERT INTO `disables` VALUES
(0,67209,1,0,0,'Disable T9 2P bonus for rogues');
