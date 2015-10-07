## System information widget to Dashing

[Dashing](http://shopify.github.com/dashing) widget to display
the system CPU and memory information.

Note: It is experimental. Only works in current machine.

## Dependencies

[usagewatch](https://github.com/nethacker/usagewatch)

Add it to dashing's gemfile:

```
gem 'usagewatch'
```

and run `bundle install`.

## Usage

1. copy `usagewatch.coffee`, `usagewatch.html`, and `usagewatch.scss` into the `/widgets/usagewatch` directory of your Dashing app.

2. Copy the `usagewatch.rb` file into your `/jobs` folder.


To include the widget in a dashboard, add the following snippet to the dashboard layout file:

```html
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
   <div data-id="usagewatch" data-view="Usagewatch" data-title="System Information"></div>
</li>
```
