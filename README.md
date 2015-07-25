# Material Design Lite for Sass

`material_design_lite-sass` is a Sass-powered version of [Material Design Lite](http://www.getmdl.io/) by Google for your Ruby applications. It works with Ruby on Rails, Sprockets.

This project is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Twitter Bootstrap team.

## Installation

Material Design Lite website uses Material Icons and Roboto font for some code examples, these icons and font are not included with this gem.

### Ruby on Rails

Add this line to your Rails application's Gemfile:

```ruby
gem 'material_design_lite-sass'
```

And then execute `bundle` command to install.

Import `material` in `app/assets/stylesheets/application.scss`:

```scss
@import 'material';
```

Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `//= require` and `//= require_tree` statements from file.

Alternatively, to keep original `application.css` file, you can create `custom.scss` file in same folder and import `material` there.

Require `material` javascript in `app/assets/javascripts/application.js`:

````
//= require material
````


## Usage

By default, using `@import 'material';` and `//= require material`, all of Material Design Lite components are imported.

You can import individual javascript components.

First you need to include support components:

```
//= require material/mdlComponentHandler
//= require material/rAF
```

Then include Material Design Lite component:

```
//= require material/button
//= require material/checkbox
//= require material/data-table
//= require material/icon-toggle
//= require material/layout
//= require material/menu
//= require material/progress
//= require material/radio
//= require material/ripple
//= require material/slider
//= require material/spinner
//= require material/switch
//= require material/tabs
//= require material/textfield
//= require material/tooltip
```

Individual `scss` components can be included like this:

```scss
@import 'material/animation';
@import 'material/badge';
@import 'material/button';
@import 'material/card';
@import 'material/checkbox';
@import 'material/color-definitions';
@import 'material/data-tables';
@import 'material/functions';
@import 'material/grid';
@import 'material/icon-toggle';
@import 'material/layout';
@import 'material/mega_footer';
@import 'material/mini_footer';
@import 'material/menu';
@import 'material/palette';
@import 'material/progress';
@import 'material/radio';
@import 'material/resets';
@import 'material/ripple';
@import 'material/shadow';
@import 'material/slider';
@import 'material/spinner';
@import 'material/switch';
@import 'material/tabs';
@import 'material/textfield';
@import 'material/tooltip';
@import 'material/typography';

```

The full set of Material Design Lite variables can be found [here](https://github.com/rubysamurai/material_design_lite-sass/blob/master/vendor/assets/stylesheets/material/_variables.scss)

## Contributing

Fork the project and submit a pull request.