<?php

// main include
$vendorsRoot = __DIR__ . '/../../vendors';
require_once $vendorsRoot. '/HoborgDisplayService/application/DisplayService/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Hoborg\DisplayService\Kernel;

$kernel = new Kernel(H_DS_ENV, true);

// setup DS
$kernel->setHostDir(__DIR__ . '/../');
$kernel->loadClassCache();
$kernel->handle(Request::createFromGlobals())->send();
