# Material Design Lite for Sass

[![Gem Version](https://badge.fury.io/rb/material_design_lite-sass.svg)](http://badge.fury.io/rb/material_design_lite-sass)
[![Build Status](https://travis-ci.org/rubysamurai/material_design_lite-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/material_design_lite-sass)

`material_design_lite-sass` is a Sass-powered version of [Material Design Lite](http://www.getmdl.io/) for your Ruby applications. In addition to all of Material Design Lite components it includes [Material Icons](https://material.io/icons/), official icon set from Google, and [Roboto](https://fonts.google.com/specimen/Roboto) font, the recommended font for material design.

## Installation

### Ruby on Rails

Open your Rails application's `Gemfile` and add this line:

```ruby
gem 'material_design_lite-sass'
```

Save `Gemfile` and execute `bundle` command to install the gem.

Open  `/app/assets/stylesheets/application.scss` file and add this line:

```scss
@import 'material';
```

> **Note:** Default Rails installation comes with `.css` file extension for stylesheet assets files, make sure you change it to `.scss` and remove all the `*= require_tree .` and `*= require_self` statements from file. Alternatively, to keep original `application.css` file, you can create `custom.scss` file in the same folder and import `material` there.

Open  `app/assets/javascripts/application.js` file and add this line:

```
//= require material
```

Restart Rails web server if it was running and now your Rails application is powered by Sass version of Material Design Lite.

#### Turbolinks

Material Design Lite doesn't support turbolinks by default. You have to either disable turbolinks or add this JavaScript code to your project:

For turbolinks v2:

```javascript
document.addEventListener('page:change', function() {
  componentHandler.upgradeDom();
});
```

For turbolinks v5:

```javascript
document.addEventListener('turbolinks:load', function() {
  componentHandler.upgradeDom();
});
```

Put this code, for instance, in `app/assets/javascripts/application.js` file or in `app/views/layouts/application.html.erb` file after closing `</body>` tag.

## Usage

By default, using `@import 'material';` and `//= require material`, all of Material Design Lite components are imported.

To import specific JavaScript components, first you need to include support components:

```
//= require material/mdlComponentHandler
//= require material/rAF
```

Then include any Material Design Lite JavaScript component:

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
//= require material/snackbar
//= require material/spinner
//= require material/switch
//= require material/tabs
//= require material/textfield
//= require material/tooltip
```

Individual Sass components can be included like this:

```scss
// Variables and mixins
@import "material/variables";
@import "material/mixins";

// Resets and dependencies
@import "material/resets";
@import "material/typography";

// Components
@import "material/palette";
@import "material/ripple";
@import "material/animation";
@import "material/badge";
@import "material/button";
@import "material/card";
@import "material/checkbox";
@import "material/chip";
@import "material/data-table";
@import "material/dialog";
@import "material/mega_footer";
@import "material/mini_footer";
@import "material/icon-toggle";
@import "material/list";
@import "material/menu";
@import "material/progress";
@import "material/layout";
@import "material/radio";
@import "material/slider";
@import "material/snackbar";
@import "material/spinner";
@import "material/switch";
@import "material/tabs";
@import "material/textfield";
@import "material/tooltip";
@import "material/shadow";
@import "material/grid";
@import "material/material-icons";
@import "material/roboto";
```

### Material Icons

An icon can be included using ligatures, a typographic feature that is supported in most modern browsers:

```html
<i class="material-icons">info</i>
```

For browsers that do not support ligatures, fall back to specifying the icons using numeric character references:

```html
<i class="material-icons">&#xE88E;</i>
```

Complete list of Material Icon names and codepoints can be found [here](https://material.io/icons/)

### Variables

Sass version provides many variables to make customization process convenient. The full set of Material Design Lite variables can be found [here](vendor/assets/stylesheets/material/_variables.scss).

To override the variable it must be redefined before the `@import` directive, like this:

```scss
$layout-header-bg-color: rgb(128,128,128) !default;
@import 'material';
```

>**Note on Sass color variables:** All Material Design Lite color variables are defined with RGB values, overriding these variables with hexadecimal color values may result in unexpected behavior.

## Versioning

Material Design Lite for Sass follows the upstream version of Google's Material Design Lite. But last version number may be ahead, in case there is a need to release project specific changes.

## Credits

Material Design Lite for Sass is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Bootstrap team.

## License

Material Design Lite © Google. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

Material Icons © Google. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

Roboto © Google. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

`material_design_lite-sass` © Dmitriy Tarasov. Released under the [MIT](LICENSE.txt) license.
