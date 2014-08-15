# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['SSL_CERT_FILE'] = Rails.root.join('/cacert.pem').to_s
# Initialize the rails application
Blog::Application.initialize!
