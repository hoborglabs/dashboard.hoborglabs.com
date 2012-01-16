### body

It can be a string (or anything that can be cast to string) or a function, in which case its return value will become new widget body.

Because it's loaded first, you can use it as a error/default body of your widget, and it can look like this:

~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>"
}
~~~


### static

You can include static files. Path to static files MUST be relative to /widgets folder. Content of that static file will become new widget body.

In some cases you might want to have a static html file with error/default content, and it will look like this:

~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>",
  "static" : "error.html"
}
~~~


### url

When specifying url, SimpleDashboard will call that URL and by default widget's json object will be send as a GET parameter widget. You can override httpd method using _method parameter (GET, POST).

Content retrieved from given url will become new body.

~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>",
  "static" : "error.html",
  "url" : "http://localhost/my-widget.php"
}
~~~


### cgi

CGI field is very similar to url. Main difference is that cgi script MUST return json widget object. Again you can specify _method or use default GET.

~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>",
  "static" : "error.html",
  "cgi" : "http://localhost/my-widget.cgi"
}
~~~

If CGI address does not begin with https?, SimpleDashboard will assume that you want to execute a local file. In that case your script will get one parameter - the widget's json object.

~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>",
  "static" : "error.html",
  "cgi" : "/var/www/dashboard/widgets-cgi/my-scrip"
}
~~~

### php

PHP field is used to include given PHP file. Path to PHP files MUST be relative to /widgets folder. Your PHP file needs to return $widget array.

~~~~
{
  "body" : "<span class=\"warn\">We had some technical issues - sorry.</span>",
  "static" : "error.html",
  "php" : "my-widget.php"
}
~~~~

And your PHP script can look like this:

~~~~
&lt;?php
$widget['body'] = 'my body';
return $widget;
~~~~