# Jersey
Jersey is a style guide for internal Centresource applications. Read the installation section for more information for getting up and running.

## Documentation
### Dependencies
- Load normalize.css.
- Load [FontAwesome](http://fortawesome.github.io/Font-Awesome/).
- Embed the Jersey Typekit found in the Centresource account.



## Installation
### For Rails
Copy the following to your project:
- `dist/assets/css/`
- `dist/assets/img/`
- `dist/assets/js/`

Include Jersey assets in your HTML `<head>`:
````html
<link href="stylehseet" src="path/to/jersey.css"/>
<script src="path/to/jersey.flyover.js"></script>
<script src="path/to/jersey.headroom.js"></script>
````


### For non-Rails
Install Jersey using Bower by including it in your `bower.json` dependencies.
````javascript
{
  "name": "My Project",
  "version": "0.0.0",
  "dependencies": {
    "jersey": "git@github.com:centresource/jersey.git#0.1.9",
  }
}
````

````bash
bower install
````

Include Jersey assets in your HTML `<head>`:
````html
<link href="stylehseet" src="path/to/jersey.css"/>
<script src="path/to/jersey.flyover.js"></script>
<script src="path/to/jersey.headroom.js"></script>
````



## Contributing
Please read the [contributing guidelines](https://github.com/centresource/jersey/blob/master/CONTRIBUTING.md). This project utilizes Playbook, reference Playbook's [setup guide](https://github.com/centresource/generator-playbook#get-started).

1. Clone this repository
2. `npm install`
3. `bower install`
4. `bundle install`


### Grunt Tasks
##### grunt serve
Serve your source locally into your browser. LiveReload will automatically load any changes to HTML, CSS and JavaScript that you make.

##### grunt check
Check the quality of your source with tools like [JSLint](http://www.jslint.com/), [CSSLint](http://csslint.net/) and [csscss](http://zmoazeni.github.io/csscss/).

##### grunt test
Run any test that you have defined for your source.

##### grunt build
Build the concatenated, minified production version of the source into the `dist` directory.
