# Jersey
Jersey is a style guide for internal Centresource applications. Read the installation section for more inforation for getting up and running.

It is recommended that you include [Normalize](http://necolas.github.io/normalize.css/) in your project before loading the Jersey styles. You should also include [FontAwesome](http://fortawesome.github.io/Font-Awesome/) if you plan on using icons in your navigation.


## Documentation

### Dependencies
- Normalize 2.1.3+
- FontAwesome 4.0.1+
- Bourbon 3.1.8+
- Neat 1.4.0+

### Fonts
The following font families are used within Centresource Jersey. You are not required to load them, but you may experience irregularities without them. They are all available via [Google Webfonts](http://www.google.com/fonts).

- Paytone One (400)
- PT Sans Caption (300, 400, 400 italic, 700, 800)


## Installation
### For Rails
Copy the following to your project:

- `dist/img`
- `dist/css` (if you'd like to load the CSS)
- `dist/_scss` (if you'd like to `@import` the Sass)

When loading Sass, first update the Bourbon and Neat `@import` paths for the asset pipeline:
````scss
// Change...
@import "bourbon/app/assets/stylesheets/bourbon";
@import "neat/app/assets/stylesheets/neat";

// To...
@import "bourbon/bourbon";
@import "neat/neat";
````

Then load Jersey:
````scss
@import "jersey/dist/_scss/jersey";
````

### For non-Rails
Install Jersey using Bower by including it in your `bower.json` dependencies.
````javascript
{
  "name": "My Project",
  "version": "1.0.0",
  "dependencies": {
    "jersey": "git@github.com:centresource/jersey.git#0.1.1",
  }
}
````

````bash
bower install
````

Include Jersey in your HTML `<head>`:
````html
<link href="stylehseet" src="path/to/jersey.css"/>
````

Or include Jersey in your Sass file:
````scss
@import "jersey/_scss/jersey";
````



## Contributing
Please read the [contributing guidlines](https://github.com/centresource/jersey/blob/master/CONTRIBUTING.md). This project utilizes Playbook, reference Playbook's [setup guide](https://github.com/centresource/generator-playbook#get-started).

1. Clone this repository
2. `npm install`
3. `bower install`
4. `bundle install`

### Grunt Tasks
- Check, test & build for production: `grunt`
- Serve the site locally: `grunt serve`
- Deploy to production: `grunt deploy`
- Check source: `grunt check`
- Run tests: `grunt test`
- Build for production: `grunt build`

### Bootstrap Components
### CSS
- None

### JavaScripts
- None
