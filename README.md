# JsImagePaths

Easy access to your images in the Rails asset pipeline from your client side Javascript.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'js_image_paths'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install js_image_paths

## Usage

Edit your `app/assets/application.js` and add

```js
//= require js_image_paths
```

Now in your Javascript you can get the path or URL to your image with

```js
ImagePaths.get('foo.png')
```

This works similar to the `image_path` helper in Rails.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/js_image_paths/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgments

Inspired by [js-asset_paths](https://github.com/sonnym/js-asset_paths).
