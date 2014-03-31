# Jersey
Jersey is a style guide for internal Centresource applications. Read the installation section for more information for getting up and running.

## Documentation

### Dependencies
- Normalize.css

### Fonts
The following font families are used within Centresource Jersey. You are not required to load them, but you may experience irregularities without them.

- [Open Sans (300, 400, 400 italic, 700, 800)](http://www.google.com/fonts/specimen/Open+Sans)
- [FontAwesome](http://fortawesome.github.io/Font-Awesome/) (if you plan on using icons in your navigation)


## Installation
### For Rails
Copy the following to your project:

- `dist/img`
- `dist/css` (if you'd like to load the CSS)

### For non-Rails
Install Jersey using Bower by including it in your `bower.json` dependencies.
````javascript
{
  "name": "My Project",
  "version": "1.0.0",
  "dependencies": {
    "jersey": "git@github.com:centresource/jersey.git#0.1.9",
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
