# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['SSL_CERT_FILE'] = Rails.root + "/cacert.pem"
# Initialize the rails application
Blog::Application.initialize!
