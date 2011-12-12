<?php

// configure dashboard
define('CONFIG_DIR', realpath(__DIR__ . '/../conf'));
define('WIDGETS_ROOT', realpath(__DIR__ . '/../widgets'));
define('TEMPLATE_DIR', realpath(__DIR__ . '/../includes'));
define('DEFAULT_CONFIG', 'demo');
define('APP_ENV', 'development');

require_once __DIR__ . '/../vendor/dashboard/src/core.php';
//require_once __DIR__ . '/../autoload.php';

$config = get_config();

$widget = $_GET['widget'];
$widgetIndex = $widget['id'];

$widget = $config['widgets'][$widgetIndex];

bootstrap_widget($widget);
if (!empty($config['ajaxTemplate'])) {
	include TEMPLATE_DIR . '/' . $config['ajaxTemplate'] . '.phtml';
}
