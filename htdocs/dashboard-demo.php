<?php
$rootPath = __DIR__ . '/..';
require_once "{$rootPath}/vendor/autoload.php";

$kernel = new \Hoborg\Dashboard\Kernel($rootPath, 'dev');
$kernel->addExtensionPath("{$rootPath}/demo-files");
$kernel->setDefaultParam('conf', 'demo');
$kernel->handle(array_merge($_GET, $_POST));