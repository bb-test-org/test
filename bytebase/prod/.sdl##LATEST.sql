CREATE TABLE `111` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;
CREATE TABLE `1t` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;
CREATE TABLE `t1` (
  `a` INT NOT NULL,
  `b` INT NOT NULL,
  `c` INT DEFAULT NULL,
  `d` INT DEFAULT NULL,
  PRIMARY KEY (`a`, `b`),
  CONSTRAINT `check_t1_1` CHECK((`b`>0)) ENFORCED,
  CONSTRAINT `check_t1_2` CHECK((`c`>0)) ENFORCED
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;
CREATE UNIQUE INDEX `uk_t1_a_c` ON `t1` (`a`, `c`);
CREATE UNIQUE INDEX `c` ON `t1` (`c`);
CREATE TABLE `tT` (
  `A` INT DEFAULT NULL,
  `b` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;
CREATE TABLE `table` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;
CREATE TABLE `tttt` (
  `a` INT DEFAULT NULL,
  `c1` TEXT,
  `c2` VARCHAR(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;
CREATE TABLE `user` (
  `id` INT NOT NULL COMMENT 'comment',
  `name` VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'comment',
  `room_id` INT NOT NULL DEFAULT '0' COMMENT 'comment',
  `creator_id` INT NOT NULL DEFAULT '0' COMMENT 'comment',
  `created_ts` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'comment',
  `updater_id` INT NOT NULL DEFAULT '0' COMMENT 'comment',
  `updated_ts` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() COMMENT 'comment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI COMMENT='comment';
CREATE UNIQUE INDEX `uk_user_id_name` ON `user` (`id`, `name`);
CREATE INDEX `idx_user_name` ON `user` (`name`);
CREATE TABLE `x` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;
CREATE TABLE `x1x` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;
CREATE TABLE `zxc` (
  `id` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;
