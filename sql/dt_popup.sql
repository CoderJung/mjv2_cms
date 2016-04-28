
DROP TABLE IF EXISTS `dt_popup`;
CREATE TABLE `dt_popup` (
  `pu_id` int(11) NOT NULL auto_increment,
  `pu_device` varchar(10) NOT NULL default 'both',
  `pu_begin_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pu_end_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pu_disable_hours` int(11) NOT NULL default '0',
  `pu_left` int(11) NOT NULL default '0',
  `pu_top` int(11) NOT NULL default '0',
  `pu_height` int(11) NOT NULL default '0',
  `pu_width` int(11) NOT NULL default '0',
  `pu_subject` text NOT NULL,
  `pu_content` text NOT NULL,
  `pu_content_html` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`pu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;