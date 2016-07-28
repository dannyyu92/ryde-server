ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
require 'minitest/spec'
require 'mocha/mini_test'
# Require all support helpers
Dir[Rails.root.join('test/support/**/*.rb')].each { |f| require f }

Minitest::Reporters.use!(
  Minitest::Reporters::DefaultReporter.new,
  ENV,
  Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Minitest does not provide a way to include or extend a module into every test class
# without re-opening the test case class
module Minitest
  class Test
    include FactoryGirl::Syntax::Methods
  end
end
