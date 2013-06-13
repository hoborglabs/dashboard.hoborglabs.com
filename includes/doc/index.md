
### Browser (client side)

WidgetManager - `$.widgetManager()` - is a jQuery plugin. It main
function is add/remove widgets and start/stop dashbard.

Widget - `window.HoborgWidget` - is the main widget class. You can
extend it if needed.

~~~
{
  template: "Hello {{name}}!",
  data: {
    name: "World"
  }
}
~~~



### HTML

Dashboard HTML contains base CSS and JS with list of all widget JSON
objects. It also contains all additional/widget specific JS and CSS.



### PHP

Kernel - Kernel is responsible for routing requests

Widget Provider - This class transforms dashboard configuration file
into list of widgets.

Widget - It has two main functions, generate JSON configuration
deliver widget data.

Dashboard Cache - it's optional component, it can be placed in front of
Dashboard Kernel. It's possible to use it as proxy with cache for
external jsonp calls as well.
