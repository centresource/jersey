# Jersey
Jersey is a styleguide for internal Centresource applications. It's recommended that you include the compiled CSS file in your application. You can optionally include the `_jersey_variables.scss` file in your applications Sass file. This will allow you access to the Jersey color and breakpoint variables. Use Jersey as a base and expand upon it's styles from within your application's Sass files.

## Documentation

### Dependencies
- Sass 3.2+
- Normalize 2.1.3+
- Bourbon 3.1.8+
- Neat 1.4.0+
- FontAwesome 4.0.1+

### Fonts
The following font families are used within Centresource Jersey. You are not required to load them, but you may experience irregularities without them. They are all available via [Google Webfonts](http://www.google.com/fonts).

- Paytone One (400)
- PT Sans Caption (300, 400, 400 italic, 700, 800)

### Installation
#### For Rails
**The gem has not yet been created. Rails installation is not fully ready.**

Install Jersey using bundler. In your Gemfile:
````ruby
gem 'jersey', '~>0.1.0'
````

Then run:
````bash
bundle
````

Include Jersey in your main CSS file:
````css
//= require jersey
````

#### For non-Rails
Install Jersey using Bower.
````bash
bower install jersey --save
````

Include Jersey in your HTML `<head>`:
````html
<link href="stylehseet" src="path/to/jersey.css"/>;
````

## Usage
It's recommend that you do not include `normalize.css` if you are including `jersey.css`. Jersey includes `normalize.css` itself. Loading `normalize.css` more than once will have unwanted results.
