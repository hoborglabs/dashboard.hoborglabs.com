### Composer

A good way to install and maintain your dashboard is to use Composer.
First, start with creating `composer.json` file with your dependencies.

~~~
{
    "require": {
        "php": ">=5.3.0",
        "hoborglabs/dashboard": "*",
        "hoborglabs/widgets": "*"
    }
}
~~~

If you don't have composer installed, simply install it by runnig

~~~
curl -sS https://getcomposer.org/installer | php
~~~

Now, install dashboard and default widgets by running 

~~~
php composer.phar install
~~~

That was easy! Now final bit - index.php

~~~
&lt;?php
$rootPath = __DIR__ . '/..';
require_once "{$rootPath}/vendor/autoload.php";

$kernel = new \Hoborg\Dashboard\Kernel($rootPath, 'dev');
$kernel->setDefaultParam('conf', 'demo');
$kernel->handle(array_merge($_GET, $_POST));
~~~

We are almost done. The only thing missing is CSS and JS asstes.

~~~
ln -s vendor/hoborglabs/dashboard/build/dist/htdocs/static/styles/hoborglabs htdocs/static/styles/hoborglabs
ln -s vendor/hoborglabs/dashboard/build/dist/htdocs/static/scripts/hoborglabs htdocs/static/scripts/hoborglabs
~~~


**Job done!**  
Now you can customise your dashboard however you want. 