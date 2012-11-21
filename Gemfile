source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'will_paginate'
gem 'less-rails'
gem 'twitter-bootstrap-rails'
gem 'bootstrap-will_paginate'
gem 's3'
gem 'thin'
gem 'rmagick'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :test, :development do
  gem 'sqlite3'
end

group :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "factory_girl_rails", ">= 3.5.0"
#  gem "cucumber-rails", ">= 1.3.0"
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.8.0"
  gem "email_spec", ">= 1.2.1"
  gem "launchy", ">= 2.1.0"
end
