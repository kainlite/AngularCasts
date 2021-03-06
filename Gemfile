source 'https://rubygems.org'

ruby '2.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
# gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'feedjira'

gem 'jasmine'

gem 'paper_trail', github: 'airblade/paper_trail'

gem 'capistrano'

gem 'rails_12factor'

group :development do
  gem 'pry'
  gem 'pry-rails'
end

group :test do
  gem 'shoulda'
  gem 'mocha', require: false
  gem 'timecop'
  gem 'minitest'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'database_cleaner', github: 'bmabey/database_cleaner' 
  gem 'fabrication'
  gem 'faker'
  gem 'rspec-rails'
end

source 'https://rails-assets.org'

gem "rails-assets-angular"
group :development, :test do
  gem 'rails-assets-angular-mocks'
end
