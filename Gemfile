source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.15'
gem 'rails-i18n', '~> 3.0.0' # For 3.x
gem 'pg'
gem 'simple_form'
gem 'devise'
gem 'figaro'
gem "paperclip", "~> 3.0"

group :development do
  gem 'powder'
  gem 'pry-rails'
  gem 'pry-theme'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'xray-rails'
  gem 'letter_opener'
  gem 'guard'   # Use `guard init` to setup
  gem 'rb-fsevent', require: false
  gem 'guard-pow' 
  gem 'guard-minitest'
  gem 'guard-livereload' 
  gem "rack-livereload" # Need to put `config.middleware.use Rack::LiveReload` in your config/environments/development.rb file
  gem 'ruby_gntp'
end

group :development, :test do
  gem "minitest-rails", github: 'blowmage/minitest-rails'
  gem "factory_girl_rails", ">= 4.2.0"
  gem 'ffaker'
  # gem "email_spec"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "bootstrap-sass", github: "thomas-mcdonald/bootstrap-sass", branch: '3'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
