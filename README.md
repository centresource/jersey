# Jersey
Jersey is a set of styles for Centresource internal and project documentation. It is primarily utilized for [Almanac](https://github.com/centresource/generator-almanac), but may be used in other sites. Read the installation section for more information for getting up and running.

## Documentation
### Dependencies
- Load normalize.css.
- Load [FontAwesome](http://fortawesome.github.io/Font-Awesome/).
- Load jQuery 2.0+.
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
<script src="path/to/jersey.anchors.js"></script>
````


### For non-Rails
Add Jersey to your `bower.json` dependencies.
````javascript
{
  "name": "My Project",
  "version": "0.0.1",
  "dependencies": {
    "jersey": "git@github.com:centresource/jersey.git#1.0.0", // Replace with desired version
  }
}
````

Install via Bower.
````bash
bower install
````

Include Jersey assets in your HTML `<head>`:
````html
<link href="stylehseet" src="path/to/jersey.css"/>
<script src="path/to/jersey.flyover.js"></script>
<script src="path/to/jersey.headroom.js"></script>
<script src="path/to/jersey.anchors.js"></script>
````



## Contributing
Please read the [contributing guidelines](https://github.com/centresource/jersey/blob/master/CONTRIBUTING.md). This project utilizes Playbook, reference Playbook's [setup guide](https://github.com/centresource/generator-playbook#get-started).

1. Clone this repository
2. `npm install`
3. `bower install`
4. `bundle install`

### Releases
1. Bump the version number in `bower.json`
2. `grunt build`
3. Commit and tag the release
4. Push master and tags to origin


### Grunt Tasks
##### grunt serve
Serve your source locally into your browser. LiveReload will automatically load any changes to HTML, CSS and JavaScript that you make.

##### grunt check
Check the quality of your source with tools like [JSLint](http://www.jslint.com/), [CSSLint](http://csslint.net/) and [csscss](http://zmoazeni.github.io/csscss/).

##### grunt test
Run any test that you have defined for your source.

##### grunt build
Build the concatenated, minified production version of the source into the `dist` directory.
