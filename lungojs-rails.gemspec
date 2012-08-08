# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lungojs/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "lungojs-rails"
  gem.authors       = ["Lleïr Borràs Metje"]
  gem.email         = ["lleir@llgeix.me"]
  gem.description   = %q{This gem provides Lungo.js for your Rails 3 application.}
  gem.summary       = %q{Use Lungo.js with Rails 3"}
  gem.homepage      = "http://rubygems.org/gems/lungojs-rails"

  gem.required_rubygems_version = ">= 1.3.6"
  gem.rubyforge_project         = "lungojs-rails"

  gem.add_dependency  "railties", ">= 3.2.0", "< 5.0"
  gem.add_dependency  "thor",     "~> 0.14"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_path  = "lib"

  gem.version       = Lungojs::Rails::VERSION
  gem.platform      = Gem::Platform::RUBY
end
