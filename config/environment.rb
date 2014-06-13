# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TallyMyGear::Application.initialize!


ActionMailer::Base.delivery_method = :sendmail

ActionMailer::Base.smtp_settings = {
   :address => "localhost",
   :port => 25,
   :domain => "TallyMyGear.com",
}
