require 'minitest/autorun'

require_relative 'server'

class ServerTest < MiniTest::Test
  def setup
    @test_string1 = 'GET / HTTP/1.1'
    @test_string2 = 'GET /index.html HTTP/1.1'
    @test_string3 = 'GET /index.html?name=kyle&color=blue HTTP/1.1'
  end

  def test_extract_http_method
    assert_equal 'GET', extract_http_method(@test_string1)
    assert_equal 'GET', extract_http_method(@test_string2)
    assert_equal 'GET', extract_http_method(@test_string3)
  end

  def test_extract_path
    assert_equal '/', extract_path(@test_string1)
    assert_equal '/index.html', extract_path(@test_string2)
    assert_equal '/index.html', extract_path(@test_string3)
  end

  def test_extract_query_params
    assert_equal Hash.new, extract_query_params(@test_string1)
    assert_equal Hash.new, extract_query_params(@test_string2)
    test_string3_query_params = {'name'=>'kyle', 'color'=>'blue'}
    assert_equal test_string3_query_params, extract_query_params(@test_string3)
  end
end