# Jersey
Styleguides for internal Centresource applications.

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
- Open Sans (300)
- PT Sans Caption (400, 700)
- Raleway (100, 200, 400)

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

Include jersey your main Sass file:
````scss
@import 'jersey/jersey';
````

#### For non-Rails
Install Jersey using Bower.
````bash
bower install jersey --save
````

Include jersey in your main Sass file:
````scss
@import 'jersey/jersey';
````

## Credits
Thanks to Josh Sullivan, Derek Blank & David Calhoun.
