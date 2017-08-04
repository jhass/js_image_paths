# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'js_image_paths/version'

Gem::Specification.new do |spec|
  spec.name          = "js_image_paths"
  spec.version       = JsImagePaths::VERSION
  spec.authors       = ["Jonne Haß"]
  spec.email         = ["me@jhass.eu"]
  spec.summary       = %q{Rails image paths in your JS}
  spec.description   = %q{Easily access your image assets in your JavaScript code}
  spec.homepage      = "https://github.com/jhass/js_image_paths"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb", "app/**/*", "LICENSE.txt"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("rails", "~> 4.0")
  spec.add_dependency "sprockets", ">= 3.0.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
