# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.google.com",
  :port => "587",
  :authentication => :plain,
  :user_name => ENV["GOOGLE_USERNAME"],
  :password => ENV["GOOGLE_PASSWORD"],
  :domain => "google.com",
  :enable_starttls_auto => true,
}
