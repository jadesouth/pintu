CREATE DATABASE `pintu`;

CREATE TABLE `category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '类别名',
  `is_show` TINYINT NOT NULL DEFAULT 1 COMMENT '是否显示[0:否,1:是]',
  `sort` TINYINT NOT NULL DEFAULT 0 COMMENT '排序,从大到小',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHAR SET utf8;

CREATE TABLE `icon` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属分类',
  `name` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '图片名',
  `e_name` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '图片英文名',
  `url` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `icon_url` VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'icon地址',
  `sort` TINYINT NOT NULL DEFAULT 0 COMMENT '排序,从大到小',
  `is_show` TINYINT NOT NULL DEFAULT 1 COMMENT '是否显示[0:否,1:是]',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY `id` (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHAR SET utf8;