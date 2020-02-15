source 'https://rubygems.org'
ruby '2.4.6'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', github: 'rails/rails', branch: '4-2-stable'

gem 'devise'
gem 'milia', github: 'dsaronin/milia'
gem 'aws-sdk'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
gem 'bootstrap-datepicker-rails'
gem 'omniauth', '~> 1.6'
gem 'omniauth-facebook', '~> 4.0'

# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


gem 'recaptcha', require: 'recaptcha/rails'
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'