ENV["RACK_ENV"] = 'test'

require 'rack/test'
require 'minitest/autorun'

require_relative '../app'
require_relative '../database'

class AppTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def teardown
    @db = PG.connect(dbname: 'practice4_test')
    @db.exec_params 'DELETE FROM users;'
  end

  def test_root_index
    get '/'
    assert_equal 200, last_response.status
    assert_includes last_response.body, 'Log in'
    assert_includes last_response.body, 'Sign up'
  end

  def test_registering_a_user
    get '/signup'
    assert_equal 200, last_response.status
    post '/users/new', username: 'user1@user1.com',
                        password: 'password',
                        confirmation: 'password'
    assert_equal 302, last_response.status
    get last_response["Location"]
    assert_includes last_response.body, 'Successfully registered an account.'
    assert_equal 200, last_response.status
  end
end
