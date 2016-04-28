
DROP TABLE IF EXISTS `dt_config`;
CREATE TABLE IF NOT EXISTS `dt_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_intercept_ip` text NOT NULL,
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_file_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_filter` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;