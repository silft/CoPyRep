-- Disable these spells for rogues, since they are leaving them in a rather overpowered state.
DELETE FROM `disables` WHERE `entry` IN (67209,14179,58422,58423,58424,58425);
INSERT INTO `disables` VALUES
(0,67209,1,0,0,'Disable T9 2P bonus for rogues'),
(0,14179,1,0,0,'Disable Relentless strikes rank 1'),
(0,58422,1,0,0,'Disable Relentless strikes rank 2'),
(0,58423,1,0,0,'Disable Relentless strikes rank 3'),
(0,58424,1,0,0,'Disable Relentless strikes rank 4'),
(0,58425,1,0,0,'Disable Relentless strikes rank 5');
