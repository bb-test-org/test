CREATE TABLE `lastCommitID` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;

CREATE TABLE `t` (
  `a` INT NOT NULL,
  `b` INT DEFAULT NULL,
  `c` INT DEFAULT NULL,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;

CREATE TABLE `tdefault` (
  `a` INT DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;

CREATE TABLE `tx` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;

CREATE TABLE `write_back` (
  `a` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8MB4 DEFAULT COLLATE=UTF8MB4_GENERAL_CI;

