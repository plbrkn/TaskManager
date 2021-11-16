ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  include AuthHelper
  parallelize(workers: :number_of_processors)

  fixtures :all

  include FactoryBot::Syntax::Methods
end
