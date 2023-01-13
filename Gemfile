source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.5"

gem 'rails-ujs'
gem 'pg'
gem 'ros-apartment', '> 2.4.0', require: 'apartment'
gem 'scenic'
gem 'i18n'
gem 'responders'
gem 'rack-cors'
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'net-smtp', require: false

gem 'devise'
gem 'omniauth-google-oauth2'
gem 'ruby-saml'
gem 'pundit'
gem 'rack-attack'

gem 'paper_trail'
gem 'lograge'

gem 'money-rails'
gem 'snail', '~> 2.2', '>= 2.2.1'

gem 'haml'
gem 'sass-rails'
gem 'bootstrap-sass'
gem 'autoprefixer-rails', '< 9.8.6'
gem 'liquid', '~> 5.0'
gem 'redcarpet'
gem 'importmap-rails', '~> 1.1'
gem 'mini_racer'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'terser'
gem 'trix', '0.10.1'
gem 'tribute'

gem 'cells-rails'
gem 'cells-haml'
gem 'kaminari', '~> 1.0'
gem 'kaminari-cells'
gem 'jquery-rails'
gem 'jquery-ui-rails', '6.0.1'
gem 'draper'
gem 'simple_form'
gem 'breadcrumbs_on_rails'

gem 'clearbit'

gem 'jwt'

gem 'geocoder'
gem 'maxminddb', '~> 0.1.7'
gem 'faker', require: false

gem 'newrelic_rpm'
gem 'rollbar'
gem 'kt-paperclip'
gem 'wicked_pdf'
gem 'combine_pdf'
gem 'pdf-reader', require: false
gem 'whenever', require: false
gem 'puma'
gem 'sinatra'
gem 'docx_replace'
gem 'elasticsearch-rails', '> 6.0', require: false
gem 'elasticsearch-persistence', '> 6.0', require: false
gem 'elasticsearch-dsl', require: false
gem 'parallel', require: false

gem 'jsonapi-serializer'
gem 'rouge'

# From Demo
gem "date", "~> 3.1.3"

gem "rails", "6.1.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

gem "msgpack", "~> 1.6.0"
gem "irb", "~> 1.6.1"
gem "reline", "~> 0.3.2"
gem "bindex", "~> 0.8.1"
gem "addressable", "~> 2.8.1"
gem "matrix", "~> 0.4.2"
gem "regexp_parser", "~> 2.6.1"
gem "xpath", "~> 3.2.0"
gem "rexml", "~> 3.2.5"
gem "rubyzip", "~> 2.3.2"
gem "websocket", "~> 1.2.9"
gem "io-console", "~> 0.6.0"
gem "public_suffix", "~> 4.0"
gem "bundler", "~> 2.4.1"
gem "mail", "2.8.0"
gem "zip-zip"
gem "activerecord", "~> 6.1"
gem "listen"
gem "webpacker"

group :development do
  gem 'net-scp', '~> 4.0.0.rc1', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-maintenance', require: false
  gem 'parallel_tests'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-performance', require: false
  gem "web-console"
end

group :production, :staging do
  gem 'aws-sdk-core', '~> 3.0'
  gem 'aws-sdk-s3', '~> 1.0'
  gem 'aws-sdk-textract', '~> 1.0'
  gem 'aws-sdk-comprehend', '~> 1.0'

  gem 'sidekiq' # updated from sidekiq-pro and sidekiq-ent due to lack of access
end

group :development, :test do
  gem 'sidekiq'
  gem 'awesome_print'
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'rspec-collection_matchers'
  gem 'rspec-rails', '< 5.0' #TODO: 'rspec-cells' will be downgraded otherwise and application won't start.
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'capybara-email'
  gem 'database_cleaner-active_record'
  gem 'webdrivers', '~> 5.0', require: false
  gem 'selenium-webdriver'
  gem 'site_prism'
  gem 'mocha'
  gem 'rspec-cells'
  gem 'rails-controller-testing'
  gem 'vcr'
end
