source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'sqlite3'
gem 'mysql2'
gem 'devise'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml-rails'
gem 'web-app-theme', :git => "git://github.com/tscolari/web-app-theme.git", :branch => "v3.1.0"
gem 'simple_form'
# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test, :development do
  gem 'cucumber-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
end

group :development do
  gem 'capistrano'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'
end

group :mac_development do
  gem 'growl_notify'
  gem 'rb-fsevent'
end

group :linux_development do
  gem 'rb-inotify'
end

group :production do
  # required for compile assets an production server
  gem 'therubyracer'
end
