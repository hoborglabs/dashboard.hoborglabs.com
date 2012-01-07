<?php

// configure dashboard
define('CONFIG_DIR', realpath(__DIR__ . '/../../conf'));
// define('WIDGETS_ROOT', realpath(__DIR__ . '/../../widgets') .
// 		PATH_SEPARATOR . realpath(__DIR__ . '/../../vendor/dashboard/widgets'));
// define('TEMPLATE_DIR', realpath(__DIR__ . '/../../includes'));
// define('DEFAULT_CONFIG', 'demo');
// define('DATA_DIR', realpath(__DIR__ . '/../../widgets'));
define('APP_ENV', 'development');

// and display it
include_once __DIR__ . '/../../vendor/dashboard/autoload.php';
$kernel = new \Hoborg\Dashboard\Kernel('dev');
$kernel->setPath('templates', array(__DIR__ . '/../../includes'));
$kernel->setPath('data', array(__DIR__ . '/../../data'));
$kernel->setPath('widgets', array(__DIR__ . '/../../vendor/hoborg-widgets', __DIR__ . '/../../widgets'));
$kernel->setDefaultParam('conf', 'demo');
$kernel->handle($_GET);
