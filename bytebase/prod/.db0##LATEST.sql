
--
-- Temporary view structure for `curryear_calendar`
--
CREATE VIEW `curryear_calendar` AS SELECT
  1 AS `year`,
  1 AS `month`,
  1 AS `start_of_month`,
  1 AS `end_of_month`;




--
-- Temporary view structure for `test_json_table`
--
CREATE VIEW `test_json_table` AS SELECT
  1 AS `year`,
  1 AS `month`,
  1 AS `start_of_month`,
  1 AS `end_of_month`;




--
-- Temporary view structure for `v1`
--
CREATE VIEW `v1` AS SELECT
  1 AS `id`,
  1 AS `name`;

CREATE TABLE `t` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE TABLE `t2` (
  `id` INT NOT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE TABLE `t3` (
  `a` INT DEFAULT NULL,
  CONSTRAINT `t3_ibfk_1` FOREIGN KEY (`a`) REFERENCES `t5` (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE INDEX `a` ON `t3` (`a`);

CREATE TABLE `t5` (
  `id` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE UNIQUE INDEX `id` ON `t5` (`id`);

CREATE TABLE `t_no_pk` (
  `c1` INT DEFAULT NULL,
  `c2` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI PARTITION BY RANGE (`c1`) (PARTITION `p0` VALUES LESS THAN (10) ENGINE=InnoDB,PARTITION `p1` VALUES LESS THAN (20) ENGINE=InnoDB,PARTITION `p2` VALUES LESS THAN (30) ENGINE=InnoDB,PARTITION `p3` VALUES LESS THAN (40) ENGINE=InnoDB);

CREATE TABLE `tau` (
  `a` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE TABLE `test` (
  `a` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;

CREATE TABLE `tttt` (
  `a` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_0900_AI_CI;



DROP VIEW IF EXISTS `curryear_calendar`;


--
-- View structure for `curryear_calendar`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `curryear_calendar` AS select `y_data`.`year` AS `year`,`m_data`.`month` AS `month`,date_format(concat(`y_data`.`year`,'-',lpad(`m_data`.`month`,2,'0'),'-','01'),'%Y-%m-%d') AS `start_of_month`,last_day(concat(`y_data`.`year`,lpad(`m_data`.`month`,2,'0'),'01')) AS `end_of_month` from (json_table('[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]', '$[*]' columns (`month` int path '$')) `m_data` join (select year(curdate()) AS `year`) `y_data`);



DROP VIEW IF EXISTS `test_json_table`;


--
-- View structure for `test_json_table`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test_json_table` AS select `y_data`.`year` AS `year`,`m_data`.`month` AS `month`,date_format(concat(`y_data`.`year`,'-',lpad(`m_data`.`month`,2,'0'),'-','01'),'%Y-%m-%d') AS `start_of_month`,last_day(concat(`y_data`.`year`,lpad(`m_data`.`month`,2,'0'),'01')) AS `end_of_month` from (json_table('[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]', '$[*]' columns (`month` int path '$')) `m_data` join (select year(curdate()) AS `year`) `y_data`);



DROP VIEW IF EXISTS `v1`;


--
-- View structure for `v1`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1` AS select `t`.`id` AS `id`,`t`.`name` AS `name` from `t`;

