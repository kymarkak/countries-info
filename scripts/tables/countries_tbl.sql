CREATE TABLE IF NOT EXISTS `countries` (
  `code` CHAR(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2).',
  `alpha3` CHAR(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3).',
  `numeric` CHAR(3) NOT NULL COMMENT 'Three-digit numeric code (ISO 3166-1 numeric-3).',
  `continent` CHAR(2) NOT NULL COMMENT 'The continent in which the country is located.',
  `name` VARCHAR(45) NOT NULL COMMENT 'Country name.',
  `full_name` VARCHAR(60) NOT NULL COMMENT 'Full country name.',
  `capital` VARCHAR(20) NOT NULL COMMENT 'The capital of the country.',
  PRIMARY KEY (`code`),
  UNIQUE INDEX `UQ_ALPHA3` (`alpha3` ASC),
  UNIQUE INDEX `UQ_NUMERIC` (`numeric` ASC),
  UNIQUE INDEX `UQ_NAME` (`name` ASC)
) ENGINE = InnoDB DEFAULT CHARSET=UTF8;