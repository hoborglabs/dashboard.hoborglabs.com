<?php

// configure dashboard
define('CONFIG_DIR', realpath(__DIR__ . '/../../conf'));
define('WIDGETS_ROOT', realpath(__DIR__ . '/../../widgets') . 
		PATH_SEPARATOR . realpath(__DIR__ . '/../../vendor/dashboard/widgets'));
define('TEMPLATE_DIR', realpath(__DIR__ . '/../../includes'));
define('DEFAULT_CONFIG', 'demo');
define('DATA_DIR', realpath(__DIR__ . '/../../widgets'));
define('APP_ENV', 'development');
$active_link = '/demo';

// and display it
include_once __DIR__ . '/../../vendor/dashboard/htdocs/dashboard.php';
