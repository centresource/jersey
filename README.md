# Jersey
Jersey is a styleguide for internal Centresource applications. Read the installation section for more inforation for getting up and running.

## Documentation

### Dependencies
- Normalize.css 2.1.3+
- FontAwesome 4.0.1+
- Bourbon 3.1.8+
- Neat 1.4.0+

### Fonts
The following font families are used within Centresource Jersey. You are not required to load them, but you may experience irregularities without them. They are all available via [Google Webfonts](http://www.google.com/fonts).

- Paytone One (400)
- PT Sans Caption (300, 400, 400 italic, 700, 800)

### Installation
#### For Rails
**For CSS***
Copy the `dist/css` directory to your project. Copy the `dist/img` directory to your project.

** For Sass**
Copy the `dist/_scss` directory to your project. Copy the `dist/img` directory to your project.

Update the Bourbon and Neat `@import` paths for the asset pipeline:
````scss
// Change...
@import "bourbon/app/assets/stylesheets/bourbon";
@import "neat/app/assets/stylesheets/neat";

// To...
@import "bourbon/bourbon";
@import "neat/neat";
````


#### For non-Rails
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
<link href="stylehseet" src="path/to/jersey.css"/>;
````

Or include Jersey in your Sass file:
````scss
@import "jersey/_scss/jersey";
````

## Usage
It is recommend that you include `normalize.css` in your project before loading the Jersey styles.
