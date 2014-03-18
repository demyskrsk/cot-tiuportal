/**
 * Products module DB installation
 */

-- Default categories permssions
INSERT INTO `cot_auth` (`auth_groupid`, `auth_code`, `auth_option`,
  `auth_rights`, `auth_rights_lock`, `auth_setbyuserid`) VALUES
(1, 'products', 'auto',	5,		0,		1),
(2, 'products', 'auto',	1,		254,	1),
(3, 'products', 'auto',	0,		255,	1),
(4, 'products', 'auto',	7,		0,		1),
(5, 'products', 'auto',	255,	255,	1),
(6, 'products', 'auto',	135,	0,		1),
(1, 'products', 'pc',	5,		0,		1),
(2, 'products', 'pc',	1,		254,	1),
(3, 'products', 'pc',	0,		255,	1),
(4, 'products', 'pc',	7,		0,		1),
(5, 'products', 'pc',	255,	255,	1),
(6, 'products', 'pc',	135,	0,		1),
(1, 'products', 'byt',	5,		0,		1),
(2, 'products', 'byt',	1,		254,	1),
(3, 'products', 'byt',	0,		255,	1),
(4, 'products', 'byt',	7,		0,		1),
(5, 'products', 'byt',	255,	255,	1),
(6, 'products', 'byt',	135,	0,		1),
(1, 'products', 'sport',	5,		0,		1),
(2, 'products', 'sport',	1,		254,	1),
(3, 'products', 'sport',	0,		255,	1),
(4, 'products', 'sport',	7,		0,		1),
(5, 'products', 'sport',	255,	255,	1),
(6, 'products', 'sport',	135,	0,		1),
(1, 'products', 'home',	5,		0,		1),
(2, 'products', 'home',	1,		254,	1),
(3, 'products', 'home',	0,		255,	1),
(4, 'products', 'home',	7,		0,		1),
(5, 'products', 'home',	255,	255,	1),
(6, 'products', 'home',	135,	0,		1),
(1, 'products', 'build',	5,		0,		1),
(2, 'products', 'build',	1,		254,	1),
(3, 'products', 'build',	0,		255,	1),
(4, 'products', 'build',	7,		0,		1),
(5, 'products', 'build',	255,	255,	1),
(6, 'products', 'build',	135,	0,		1),
(1, 'products', 'tools',	5,		0,		1),
(2, 'products', 'tools',	1,		254,	1),
(3, 'products', 'tools',	0,		255,	1),
(4, 'products', 'tools',	7,		0,		1),
(5, 'products', 'tools',	255,	255,	1),
(6, 'products', 'tools',	135,	0,		1),
(1, 'products', 'prom',	5,		0,		1),
(2, 'products', 'prom',	1,		254,	1),
(3, 'products', 'prom',	0,		255,	1),
(4, 'products', 'prom',	7,		0,		1),
(5, 'products', 'prom',	255,	255,	1),
(6, 'products', 'prom',	135,	0,		1);

-- Products table
CREATE TABLE IF NOT EXISTS `cot_products` (
  `prd_id` int(11) unsigned NOT NULL auto_increment,
  `prd_alias` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `prd_state` tinyint(1) unsigned NOT NULL default '0',
  `prd_cat` varchar(255) collate utf8_unicode_ci NOT NULL,
  `prd_title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `prd_desc` varchar(255) collate utf8_unicode_ci default NULL,
  `prd_keywords` varchar(255) collate utf8_unicode_ci default NULL,
  `prd_metatitle` varchar(255) collate utf8_unicode_ci default NULL,
  `prd_metadesc` varchar(255) collate utf8_unicode_ci default NULL,
  `prd_text` MEDIUMTEXT collate utf8_unicode_ci NOT NULL,
  `prd_parser` VARCHAR(64) NOT NULL DEFAULT '',
  `prd_ownerid` int(11) NOT NULL default '0',
  `prd_date` int(11) NOT NULL default '0',
  `prd_updated` int(11) NOT NULL default '0',
  `prd_count` mediumint(8) unsigned default '0',
  `prd_rating` decimal(5,2) NOT NULL default '0.00',
  `prd_cost` float(16,2) default NULL,
  PRIMARY KEY  (`prd_id`),
  KEY `prd_cat` (`prd_cat`),
  KEY `prd_alias` (`prd_alias`),
  KEY `prd_state` (`prd_state`),
  KEY `prd_date` (`prd_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Default products categories
INSERT INTO `cot_structure` (`structure_area`, `structure_code`, `structure_path`, `structure_tpl`, `structure_title`,
   `structure_desc`, `structure_icon`, `structure_locked`, `structure_count`) VALUES
('products', 'auto', '1', '', 'Автомобили', '', '', 0, 0),
('products', 'pc', '2', '', 'Компьютерная техника', '', '', 0, 0),
('products', 'byt', '3', '', 'Бытовая техника', '', '', 0, 0),
('products', 'sport', '4', '', 'Спортивные товары', '', '', 0, 0),
('products', 'home', '5', '', 'Товары для дома', '', '', 0, 0),
('products', 'build', '6', '', 'Строительные материалы', '', '', 0, 0),
('products', 'tools', '7', '', 'Инструменты', '', '', 0, 0),
('products', 'prom', '8', '', 'Промышленные товары', '', '', 0, 0);
