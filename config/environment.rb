# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
<<<<<<< HEAD
  :address => 'smtp.sendgrid.net', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SENDGRID_USERNAME'], 
  :password => ENV['SENDGRID_PASSWORD'], 
  :domain => 'heroku.com', 
  :enable_starttls_auto => true 
=======
  :user_name => ENV['SENDGRID_USERNAME'],
  :user_password => ENV['SENDGRID_PASSWORD'],
  :domain => 'huroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
}
