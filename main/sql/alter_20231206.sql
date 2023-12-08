ALTER TABLE `vo_movie` ADD COLUMN `updateweekly` VARCHAR(64) NULL COMMENT '是否每周更新' AFTER `is_all`, ADD COLUMN `is_serial` TINYINT(4) NULL COMMENT '是否是一个序列 1是 0 否' AFTER `updateweekly`, ADD COLUMN `serial_count` INT NULL COMMENT '序列集数' AFTER `is_serial`, ADD COLUMN `key_word` VARCHAR(512) NULL COMMENT '关键词' AFTER `serial_count`;
ALTER TABLE `vo_movie` ADD COLUMN `key` VARCHAR(128) NULL COMMENT '编号' AFTER `key_word`;
ALTER TABLE `vo_movie_resource` ADD COLUMN `key` VARCHAR(128) NULL COMMENT '编号' AFTER `movie_resource_id`, ADD COLUMN `update_date` DATETIME NULL COMMENT '更新时间' AFTER `source`;

ALTER TABLE `vo_category` ADD COLUMN `code` VARCHAR(64) NULL COMMENT '编号' AFTER `icon`;


ALTER TABLE`vo_part_num` ADD INDEX `idx_movie_id` (`movie_id`);
ALTER TABLE`vo_part_num` ADD INDEX `idx_name` (`name`);
ALTER TABLE`vo_movie_resource` ADD INDEX `idex_movie_resourse_id` (`movie_id`), 
    ADD INDEX `idex_resource_id` (`resource_id`, `part_id`), 
    ADD INDEX `idex_movie_resource_key` (`key`);

ALTER TABLE `vo_classify` DROP INDEX `uq_name`, ADD UNIQUE INDEX `uq_name` (`name`, `category_id`, `types`);

-- json 解析调度
insert into `sys_job` ( `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) values('json解析','DEFAULT','movieTask.jsonTask()','* * 0/1 * * ?','3','1','1','admin','2023-12-08 14:35:26','',NULL,'');
