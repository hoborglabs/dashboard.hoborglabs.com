### Widget - What is it?

Widget is simply JSON object which represents it's state. Each widget
is rendered using template and data field. By default data is an empty
object and template fallsback to '{{body}}'.


This is example JSON representing widget
~~~
{
  template: "Hello {{name}}!",
  tick: 30,
  dataUrl: ""
  data: {
    name: "World"
  }
  config: {}
}
~~~

Widgets can by static or dynamic. Static widgets are usually menus,
labels or any other decorational elements. 


By default Dashboard comes with WidgetProvider which allows you 
dynamically extend widget's JSON using PHP files or any external CGI
scripts or simply static files.


#### Reserved Fields

There are few reserved json fields - we try to keep it at minimum.


##### template

This field needs to contain valid mustache template. If it's present
it will be used instead of default template.

##### tick

This field define how often (in seconds) this widget should be 
refreshed.



### Life Cycle

It all starts with config file with a list of widgets. Each widget is
loaded and bootstraped (back-end), and added to WidgetManager 
(frontend).

WidgetManager starts, renders widgets and from now on it decides when 
to refresh each widget.

Each widget is as simple JSON object. Hoborg Widgets comes with some 
default fields, but it's totally up to you how will it look. No 
constrains! We recommend to always have at least name and body.

~~~
{
  "name" : "This is My widget"
  "body" : "<span class=\"warn\">I am a widget.</span>",
}
~~~

