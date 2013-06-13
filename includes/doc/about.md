### How, What, Where?

**SimpleDashboard** is really SIMPLE. Each dashboard is based on JSON
config file. It contains a template name and list of widgets. That is
it! The simplest dashbaord configuration can look like this:

~~~
{
  "template": "hoborg",
  "widgets": [
    {
      "template": "Hello {{name}}!",
      "data": {"name": "World"}
    }
  ]
}
~~~

**SimpleDashboard** can be split to 3 tiers: (a) client side 
JavaScript responsible for rendering and refreshing widget data, (b)
HTML with initial widget data, CSS and JS, and finally (c) server side
PHP code for converting dashboard configuration into HTML and serving
widget data over JSONP - you can of course serve data from any url.



### What's in the Box?

Hoborglabs provides number of generic widgets for pulling data from
**graphite, opsview and jenkins**. It is simple to extend or write your
own data providers (JSONP).

Some widgets uses [d3js](http://d3js.org) for charts and graphs. Check
it out, it's small but powerful library.



### No Push, Just JSONP Requests

To keep things simple, widgets by default uses JSONP to get data. You
can configure how often each widget should refresh data using `tick`
property.  
Why JSONP? because it's simple and works cross domains. If you want to
use push technology, simply extend HoborgWidget JS object and overwrite
`startData` method.



<!-- 
Each widget JSON object can be extended by PHP 

You can of course extend widget configuration with php scripts, but not
only!

You can display external or internal static files, and you can even call CGI scripts as long as it returns json widget object.

The beauty of SimpleDashboard is in its simplicity. There are only THREE reserved keys (1) "body", (2) "head" - you will find more about "head" in next section - and (3) "reload". Widget body is stored in ... "body". But wait ... what about Phobjects? The answer is simple - you can assign a lambda function to "body" and it will be executed to get your widget body!
-->
