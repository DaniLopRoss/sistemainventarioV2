# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
         html_tag.html_safe
       end

      #  ApplicationMailer::Base.delivery_method = :smtp
      #  ApplicationMailer::Base.perform_deliveries = true
      #  ApplicationMailer::Base.smtp_settings = {
      #    address:              'smtp.gmail.com',
      #    domain:               'gmail.com',
      #    port:                 587,
      #    user_name: ENV['GMAIL_USERNAME'],
      #    password: ENV['GMAIL_PASSWORD'],
      #    authentication:       'plain',
      #    :ssl => true,
      #    :tsl => true,
      #    enable_starttls_auto: true