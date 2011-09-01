-- Lower chance of Random bg choosing alterac valley
UPDATE `battleground_template` SET `Weight` = 2 WHERE `id` != 1; 