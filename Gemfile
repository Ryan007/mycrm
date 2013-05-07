#source 'http://ruby.taobao.org'
source "https://rubygems.org"
gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'
gem 'mysql2'

gem 'json'

gem 'dynamic_form'

gem 'execjs'

gem 'libv8', '~> 3.11.8.12'
gem "therubyracer", "~> 0.11.4"
gem 'devise'
gem 'devise-encryptable'
gem "cancan"

gem "will_paginate"

gem 'acts-as-taggable-on', '~> 2.2.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test, :development do
  gem "rspec-rails", "~> 2.8.1"
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'turn', :require => false
  gem "factory_girl_rails"
  gem "minitest"
  gem 'launchy'
  gem 'email_spec'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
group :development do
  gem 'capistrano'
  gem 'rvm-capistrano'
end

gem "passenger", "~> 3.0.19"


# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
