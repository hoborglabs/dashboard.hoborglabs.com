### This is how to add dashboard to your website

This blog describes how I added dashboard to hoborglabs.com website.

First I need a folder for 3rd party vendors - easy!!
~~~~
cd hoborglabs.com
mkdir -p vendors/dashboard
cd vendors/dashboard
~~~~

Now I can download dashboard
~~~~
wget http://dashboard.hoborglabs.com/downloads/dashboard.phar
wget http://dashboard.hoborglabs.com/downloads/dashboard-assets.tgz
~~~~

Now ... dashboard.phar does not serves assets. But the default assets set comes
in nice tgz. I will unzip it in vendors folder and symlink it from my public 
folder.
~~~~
mkdir assets
tar -xzf dashboard-assets.tgz -C assets/
cd ../../htdocs/
ln -s ../vendors/dashboard/assets/ dashboard-assets
~~~~

Now let's make our dashboard page. (We are still in htdocs/ folder)
~~~~
mkdir dashboard
vim dashboard/index.php
~~~~

And this is what you put inside
~~~~
<?php
define('HD_PUBLIC', '/dashboard-assets');
define('CONFIG_DIR', __DIR__ . '/../../conf/');
include_once __DIR__ . '/../../vendors/dashboard/dashboard.phar';

$kernel = new \Hoborg\Dashboard\Kernel('prod');
$kernel->setPath('data', array(__DIR__ . '/../../data'));
$kernel->setDefaultParam('conf', 'hoborglabs-dashboard');

// and go, go, go...
$kernel->handle($_GET);
~~~~


Now Configuration


And Crontab ...