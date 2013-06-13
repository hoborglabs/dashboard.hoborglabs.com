<?php

defined('H_DS_ENV') ||
	define('H_DS_ENV', 'prod');

// main include
$vendorsRoot = __DIR__ . '/../../vendors';
require_once $vendorsRoot. '/autoload.php';
require_once __DIR__ . '/../src/ComponentProvider.php';
// require_once __DIR__ . '/../application/Kernel.php';

use Symfony\Component\HttpFoundation\Request;
use Hoborg\Application\Kernel;

$kernel = new Kernel(H_DS_ENV, true);

// setup DS
$kernel->setHostDir(__DIR__ . '/../');
$kernel->loadClassCache();
$kernel->handle(Request::createFromGlobals())->send();
