# LungJS-rails

Lungo.js for Rails!

This gem provides:

  * Lungo.js current stable version
  * Lungo.js current development version

## Installation

Apps generated with Rails 3.1 or later include lungojs-rails in the Gemfile by default. So just make a new app:

```sh
rails new myapp
```

If upgrading from an older version of rails, or for rails 3.0 apps,
add the lungojs-rails gem to your Gemfile.

```ruby
gem "lungojs-rails"
```

And run `bundle install`. The rest of the installation depends on
whether the asset pipeline is being used.


### Rails 3.0

To invoke the generator, run:

```sh
rails generate lungojs:install
```

### Rails 3.1 or greater (with asset pipeline *enabled*)

The Lungo.js files will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these line:

```js
//= require lungo-1.2
```

If they're not already in `app/assets/javascripts/application.css` by default, add these line:

```css
*= require lungo-1.2
*= require lungo.theme.default
*= require lungo.theme.default.font
```

You're done!

## Contributing

Feel free to open an issue ticket if you find something that could be improved. A couple notes:

* If the Lungo.js scripts are outdated (i.e. maybe a new version of Lungo.js was released yesterday), feel free to open an issue and prod us to get that thing updated. However, for security reasons, we won't be accepting pull requests with updated Lungo.js scripts.

## Acknowledgements


Copyright [Lleïr Borràs Metje]<lleir@llegeix.me>, released under the MIT License.
