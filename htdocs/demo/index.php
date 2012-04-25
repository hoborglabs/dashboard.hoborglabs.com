<?php

// configure dashboard
define('CONFIG_DIR', realpath(__DIR__ . '/../../conf'));
define('APP_ENV', 'development');

// and display it
include_once __DIR__ . '/../../vendor/dashboard/autoload.php';
$kernel = new \Hoborg\Dashboard\Kernel('dev');
$kernel->setPath('templates', array(__DIR__ . '/../../includes'));
$kernel->setPath('data', array(__DIR__ . '/../../data'));
$kernel->setPath('widgets', array(__DIR__ . '/../../vendor/hoborg-widgets', __DIR__ . '/../../widgets'));
$kernel->setPath('config', array(__DIR__ . '/../../conf'));
$kernel->setDefaultParam('conf', 'demo');

$kernel->handle(array_merge($_GET, $_POST));
