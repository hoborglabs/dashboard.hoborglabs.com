### How, What, Where?

SimpleDashboard is really SIMPLE. Each dashboard is based on JSON config file. It contain only a template name and list of widgets. The simplest configuration can look like this:

~~~
{
  "template": "hoborg",
  "widgets": [
    {
      "body": "this is my first widget"
    }
  ]
}
~~~

You can of course extend widget with php scripts, but not only! You can display external or internal static files, and you can even call CGI scripts as long as it returns json widget object.

The beauty of SimpleDashboard is in its simplicity. There are only THREE reserved keys (1) "body", (2) "head" - you will find more about "head" in next section - and (3) "reload". Widget body is stored in ... "body". But wait ... what about Phobjects? The answer is simple - you can assign a lambda function to "body" and it will be executed to get your widget body!


### What about auto-refresh

Because each widget is well defined, it's easy to refresh selected widgets based on "reload" value. So if you don't want to write JavaScript to reload your widget you can use build in functionality.
