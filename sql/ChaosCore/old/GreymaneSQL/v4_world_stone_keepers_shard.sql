-- Remove condition for stone keepers shard drop, since we have no wintergrasp.
DELETE FROM `conditions` WHERE `SourceEntry` = 43228;