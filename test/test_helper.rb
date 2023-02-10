ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require 'capybara/rails'

class ActiveSupport::TestCase

  ActiveRecord::Migration.check_pending!

  include Capybara::DSL ## add this line
  include Rails.application.routes.url_helpers ## add this line


  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
