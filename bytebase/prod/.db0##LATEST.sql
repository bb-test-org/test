CREATE TABLE `t_partner_residence_scene` (
  `id` bigint(20) unsigned NOT NULL  COMMENT 'ID(自增主键)',
  `scene_id` varchar(191) NOT NULL COMMENT '',
  `scene_layout_id` varchar(191) NOT NULL COMMENT '',
  `residence_id` varchar(191) DEFAULT NULL COMMENT '',
  `content` mediumtext COMMENT '',
  `remark` mediumtext COMMENT 'remark',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0' COMMENT '',
  `created_by` varchar(191) NOT NULL COMMENT '',
  `created_at` datetime NOT NULL COMMENT '',
  `updated_by` varchar(191) NOT NULL COMMENT '',
  `updated_at` datetime NOT NULL COMMENT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
