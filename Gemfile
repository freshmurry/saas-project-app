source 'https://rubygems.org'

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.2'
# Use postgresql as the database for Active Record
gem 'devise'
gem 'milia'
gem 'aws-sdk'
gem 'stripe'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'json', github: 'flori/json', branch: 'v1.8'
# gem 'json'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
gem "bootstrap-sass", ">= 3.4.1"
gem 'bootstrap-datepicker-rails'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'sqlite3', '~> 1.3.13'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :production do
  gem 'rails_12factor'
  gem 'pg', '~> 0.20.0'
end


gem 'recaptcha', require: 'recaptcha/rails'
gem 'activerecord-session_store'