/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : mojavi2

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-04-21 21:31:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dt_board
-- ----------------------------
DROP TABLE IF EXISTS `dt_board`;
CREATE TABLE `dt_board` (
  `bo_id` varchar(20) NOT NULL default '',
  `bo_type` varchar(20) NOT NULL default '',
  `bo_use_secret` tinyint(4) NOT NULL default '0',
  `bo_subject` varchar(255) NOT NULL default '',
  `bo_use_category` tinyint(4) NOT NULL default '0',
  `bo_category_list` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL default '0',
  `bo_upload_size` int(11) NOT NULL default '0',
  `bo_subject_len` int(11) NOT NULL default '0',
  `bo_page_rows` int(11) NOT NULL default '0',
  `bo_new` int(11) NOT NULL default '0',
  `bo_gallery_cols` int(11) NOT NULL default '0',
  `bo_gallery_width` int(11) NOT NULL default '0',
  `bo_gallery_height` int(11) NOT NULL default '0',
  `bo_1` varchar(255) NOT NULL default '',
  `bo_2` varchar(255) NOT NULL default '',
  `bo_3` varchar(255) NOT NULL default '',
  `bo_4` varchar(255) NOT NULL default '',
  `bo_5` varchar(255) NOT NULL default '',
  `bo_6` varchar(255) NOT NULL default '',
  `bo_7` varchar(255) NOT NULL default '',
  `bo_8` varchar(255) NOT NULL default '',
  `bo_9` varchar(255) NOT NULL default '',
  `bo_10` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`bo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시판관리';

-- ----------------------------
-- Records of dt_board
-- ----------------------------

-- ----------------------------
-- Table structure for dt_board_file
-- ----------------------------
DROP TABLE IF EXISTS `dt_board_file`;
CREATE TABLE `dt_board_file` (
  `bo_id` varchar(20) NOT NULL default '',
  `wr_id` int(11) NOT NULL default '0',
  `bf_no` int(11) NOT NULL default '0',
  `bf_source` varchar(255) NOT NULL default '',
  `bf_file` varchar(255) NOT NULL default '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL default '0',
  `bf_width` int(11) NOT NULL default '0',
  `bf_height` smallint(6) NOT NULL default '0',
  `bf_type` tinyint(4) NOT NULL default '0',
  `bf_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`bo_id`,`wr_id`,`bf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시판 파일관리';

-- ----------------------------
-- Records of dt_board_file
-- ----------------------------

-- ----------------------------
-- Table structure for dt_config
-- ----------------------------
DROP TABLE IF EXISTS `dt_config`;
CREATE TABLE `dt_config` (
  `cf_title` varchar(255) NOT NULL default '' COMMENT '// 홈페이지 제목',
  `cf_admin_email` varchar(255) NOT NULL default '' COMMENT '// 관리자 메일주소',
  `cf_admin_email_name` varchar(255) NOT NULL default '' COMMENT '// 관리자 메일 발송이름',
  `cf_new_del` int(11) NOT NULL default '0' COMMENT '// 최근게시물 삭제',
  `cf_intercept_ip` text NOT NULL COMMENT '// 접근 차단 IP',
  `cf_image_extension` varchar(255) NOT NULL default '' COMMENT '// 이미지 업로드 확장자',
  `cf_flash_extension` varchar(255) NOT NULL default '' COMMENT '// 플래쉬 업로드 확장자',
  `cf_movie_extension` varchar(255) NOT NULL default '' COMMENT '// 동영상 업로드 확장자',
  `cf_file_extension` varchar(255) NOT NULL default '' COMMENT '// 기타 파일 업로드 확장자',
  `cf_filter` text NOT NULL COMMENT '// 단어 필터링'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='기본설정';

-- ----------------------------
-- Records of dt_config
-- ----------------------------
INSERT INTO `dt_config` VALUES ('나의 홈페이지', 'admin@admin', '최고관리자111', '30', '192.168.1.1', 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 'csv', '18아,18놈,18새끼,18년,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ');

-- ----------------------------
-- Table structure for dt_member
-- ----------------------------
DROP TABLE IF EXISTS `dt_member`;
CREATE TABLE `dt_member` (
  `mb_no` int(11) NOT NULL auto_increment COMMENT '// 번호',
  `mb_id` varchar(20) NOT NULL default '' COMMENT '// 회원아이디',
  `mb_password` varchar(255) NOT NULL default '' COMMENT '// 회원 비밀번호',
  `mb_nick` varchar(255) NOT NULL default '' COMMENT '// 회원 닉넴',
  `mb_email` varchar(255) NOT NULL default '' COMMENT '// 회원 이메일',
  `mb_level` tinyint(4) NOT NULL default '0' COMMENT '// 회원 레벨',
  `mb_hp` varchar(255) NOT NULL default '' COMMENT '// 회원 휴대폰',
  `mb_mailling` tinyint(4) NOT NULL default '0',
  `mb_leave_date` varchar(8) NOT NULL default '' COMMENT '// 회원 탈퇴 날짜',
  `mb_today_login` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '// 회원 로그인 날짜',
  `mb_login_ip` varchar(255) NOT NULL default '' COMMENT '// 회원 로그인 아이피',
  `mb_datetime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '// 회원 가입일',
  `mb_ip` varchar(255) NOT NULL default '' COMMENT '// 회원 아이피',
  PRIMARY KEY  (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='회원관리';

-- ----------------------------
-- Records of dt_member
-- ----------------------------

-- ----------------------------
-- Table structure for dt_popup
-- ----------------------------
DROP TABLE IF EXISTS `dt_popup`;
CREATE TABLE `dt_popup` (
  `pu_id` int(11) NOT NULL auto_increment COMMENT '// 번호',
  `pu_device` varchar(10) NOT NULL default 'both' COMMENT '// 디바이스 종류',
  `pu_begin_time` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '// 시작일',
  `pu_end_time` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '// 마감일',
  `pu_disable_hours` int(11) NOT NULL default '0' COMMENT '// 시간',
  `pu_left` int(11) NOT NULL default '0' COMMENT '// 좌측 위치',
  `pu_top` int(11) NOT NULL default '0' COMMENT '// 상단 위치',
  `pu_height` int(11) NOT NULL default '0' COMMENT '// 높이',
  `pu_width` int(11) NOT NULL default '0' COMMENT '// 넓이',
  `pu_subject` text NOT NULL COMMENT '// 제목',
  `pu_content` text NOT NULL COMMENT '// 내용',
  `pu_content_html` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`pu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='팝업관리';

-- ----------------------------
-- Records of dt_popup
-- ----------------------------

-- ----------------------------
-- Table structure for dt_sessions
-- ----------------------------
DROP TABLE IF EXISTS `dt_sessions`;
CREATE TABLE `dt_sessions` (
  `session_id` varchar(255) NOT NULL COMMENT '// 세션아이디',
  `data` varchar(255) NOT NULL COMMENT '// 세션데이터',
  `access_date` varchar(255) NOT NULL default '0000-00-00 00:00:00' COMMENT '// 세션시간',
  PRIMARY KEY  (`session_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='세션관리';

-- ----------------------------
-- Records of dt_sessions
-- ----------------------------
INSERT INTO `dt_sessions` VALUES ('b60a88f07ded61fd6371d27290c41596', 'authenticated|b:0;attributes|a:0:{}secure|a:0:{}', '1459091661');
INSERT INTO `dt_sessions` VALUES ('9f9398a0940eaab8ef129de260b5ad0a', 'authenticated|b:0;attributes|a:0:{}secure|a:0:{}', '1459167998');

-- ----------------------------
-- Table structure for dt_template
-- ----------------------------
DROP TABLE IF EXISTS `dt_template`;
CREATE TABLE `dt_template` (
  `tpl_no` int(11) NOT NULL auto_increment,
  `tpl_id` char(20) NOT NULL default '',
  `tpl_act` char(20) default '',
  `tpl_layout` varchar(255) NOT NULL default '',
  `tpl_title` varchar(255) NOT NULL default '',
  `tpl_content` longtext NOT NULL,
  `tpl_datatitme` datetime NOT NULL,
  PRIMARY KEY  (`tpl_no`,`tpl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='템플릿관리';

-- ----------------------------
-- Records of dt_template
-- ----------------------------
