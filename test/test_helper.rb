ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # 如果用户已登录，返回true
  def is_logged_in?
    !session[:user_id].nil?
  end

  # 登入指定的用户
  def log_in_as(user)
    session[:user_id] = user.id
  end
  # Add more helper methods to be used by all tests here...
end
