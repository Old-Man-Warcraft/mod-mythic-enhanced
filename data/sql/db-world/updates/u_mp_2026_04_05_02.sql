INSERT INTO `mythic_plus_level` (`lvl`, `timelimit`, `random_affix_count`) VALUES (8, 60*40, 0)
ON DUPLICATE KEY UPDATE
	`timelimit` = VALUES(`timelimit`),
	`random_affix_count` = VALUES(`random_affix_count`);

DELETE FROM `mythic_plus_affix` WHERE `lvl` = 8;
DELETE FROM `mythic_plus_level_rewards` WHERE `lvl` = 8;

INSERT INTO `mythic_plus_affix` (`lvl`, `affixtype`, `val1`, `val2`) VALUES (8, 9, 0.20, 15);
INSERT INTO `mythic_plus_affix` (`lvl`, `affixtype`, `val1`, `val2`) VALUES (8, 10, 0.20, 15);
INSERT INTO `mythic_plus_affix` (`lvl`, `affixtype`, `val1`, `val2`) VALUES (8, 11, 0.15, 10);

INSERT INTO `mythic_plus_level_rewards` (`lvl`, `rewardtype`, `val1`, `val2`) VALUES (8, 0, 35000000, null);
INSERT INTO `mythic_plus_level_rewards` (`lvl`, `rewardtype`, `val1`, `val2`) VALUES (8, 1, 70002, 35);
