<?php

// +---------------------------------------------------------------------------+
// | This file is part of the Mojavi package.                                  |
// | Copyright (c) 2003 Sean Kerr.                                             |
// |                                                                           |
// | For the full copyright and license information, please view the COPYRIGHT |
// | file that was distributed with this source code. If the COPYRIGHT file is |
// | missing, please visit the Mojavi homepage: http://www.mojavi.org          |
// +---------------------------------------------------------------------------+


// ----- FILE-SYSTEM DIRECTORIES -----


/**
 * An absolute file-system path to the webapp directory.
 */

define('BASE_DIR', str_replace('modules','',dirname(__FILE__)));

define('BASE_URL', 'http://localhost/mjv2_cms');
/**
 * An absolute file-system path to the log directory.
 *
 * Note: This directory must be writable by any user.
 */
define('LOG_DIR', BASE_DIR . 'logs/');

/**
 * An absolute file-system path to the all-in-one class file Mojavi
 * uses.
 */
define('MOJAVI_FILE', BASE_DIR.'/core/mojavi.php');

/**
 * An absolute file-system path to the optional classes directory.
 */
define('OPT_DIR', BASE_DIR.'/core/');


// ----- WEB DIRECTORIES AND PATHS -----


/**
 * An absolute web path where modules can store public information such as
 * images and CSS documents.
 */

define('STATIC_DIR', BASE_URL.'/static/');

/**
 * An absolute web path to the index.php script.
 */
define('SCRIPT_PATH', '');


// ----- ACCESSOR NAMES -----

/**
 * The parameter name used to specify a module.
 */
define('MODULE_ACCESSOR', 'mod');

/**
 * The parameter name used to specify an action.
 */
define('ACTION_ACCESSOR', 'act');


// ----- MODULES AND ACTIONS -----


/**
 * The action to be executed when an unauthenticated user makes a request for
 * a secure action.
 */
define('AUTH_MODULE', 'Site');
define('AUTH_ACTION', 'Login');

/**
 * The action to be executed when a request is made that does not specify a
 * module and action.
 */
define('DEFAULT_MODULE', 'Site');
define('DEFAULT_ACTION', 'Login');

/**
 * The action to be executed when a request is made for a non-existent module
 * or action.
 */
define('ERROR_404_MODULE', 'Site');
define('ERROR_404_ACTION', 'PageNotFound');

/**
 * The action to be executed when an authenticated user makes a request for
 * an action for which they do not possess the privilege.
 */
define('SECURE_MODULE', 'Site');
define('SECURE_ACTION', 'GlobalSecure');

/**
 * The action to be executed when the available status of the application
 * is unavailable.
 */
define('UNAVAILABLE_MODULE', 'Site');
define('UNAVAILABLE_ACTION', 'Unavailable');


// ----- MISC. SETTINGS -----


/**
 * Whether or not the web application is available or if it's out-of-service
 * for any reason.
 */
define('AVAILABLE', TRUE);

/**
 * Should typical PHP errors be displayed? This should be used only for
 * development purposes.
 *
 * 1 = on, 0 = off
 */
define('DISPLAY_ERRORS', 1);

/**
 * The associative array that may contain a key that holds path information
 * for a request, and the key name.
 *
 * 1 = $_SERVER array
 * 2 = $_ENV array
 *
 * Note: This only needs set if URL_FORMAT = 2.
 */
define('PATH_INFO_ARRAY', 1);
define('PATH_INFO_KEY',   'PATH_INFO');

/**
 * The format in which URLs are generated.
 *
 * 1 = GET format
 * 2 = PATH format
 *
 * GET  format is ?key=value&key=value
 * PATH format is /key/value/key/value
 *
 * Note: PATH format may required modifications to your webserver configuration.
 */
define('URL_FORMAT', 1);

/**
 * Should we use sessions?
 */
define('USE_SESSIONS', TRUE);

/*
 * DB info
 */
define(DBHOST, 'localhost');
define(DBUSER, 'root');
define(DBPASS, '');
define(DB, 'test');
define(DB_PREFIX, 'dt_');

/*
 * 퍼미션
 */
define('DIR_PERMISSION',  0755); // 디렉토리 생성시 퍼미션
define('FILE_PERMISSION', 0644); // 파일 생성시 퍼미션

/*
 * 기타 폴더 경로
 */
define('DATA_DIR', BASE_DIR . 'data/');



?>