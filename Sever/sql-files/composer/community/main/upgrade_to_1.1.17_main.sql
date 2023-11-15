-- ------------------------------------------------------------------------------
-- 此脚本用于将 Pandas 的主数据库升级到 1.1.17 版本
-- 注意: 若存在更低版本且从未导入的升级脚本, 请按版本号从小到大依序导入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20220818.sql
-- -----------------------------------------------

UPDATE `mail`
SET `send_id`='0'
WHERE `send_id` NOT IN (
	select `char_id`
	from `char`
)
;

-- -----------------------------------------------
-- upgrade_20220830.sql
-- -----------------------------------------------

ALTER TABLE `char`
	ADD COLUMN `body_direction` tinyint unsigned NOT NULL default '0'
;

-- -----------------------------------------------
-- upgrade_20220831.sql
-- -----------------------------------------------

ALTER TABLE `char`
	ADD COLUMN `disable_call` tinyint unsigned NOT NULL default '0'
;
