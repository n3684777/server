-- ------------------------------------------------------------------------------
-- 此脚本用于将 Pandas 的 WEB 接口数据库升级到 1.1.18 版本
-- 注意: 若存在更低版本且从未导入的升级脚本, 请按版本号从小到大依序导入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20221001.sql
-- -----------------------------------------------

ALTER TABLE `merchant_configs`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`world_name`, `account_id`, `char_id`, `store_type`)
;
