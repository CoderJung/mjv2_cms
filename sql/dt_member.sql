
DROP TABLE IF EXISTS `dt_member`;
CREATE TABLE IF NOT EXISTS `dt_member` (
  `mb_no` int(11) NOT NULL auto_increment,
  `mb_id` varchar(20) NOT NULL default '',
  `mb_password` varchar(255) NOT NULL default '',
  `mb_nick` varchar(255) NOT NULL default '',
  `mb_email` varchar(255) NOT NULL default '',
  `mb_level` tinyint(4) NOT NULL default '0',
  `mb_hp` varchar(255) NOT NULL default '',
  `mb_mailling` tinyint(4) NOT NULL default '0',
  `mb_leave_date` varchar(8) NOT NULL default '',
  `mb_today_login` datetime NOT NULL default '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL default '',
  `mb_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;