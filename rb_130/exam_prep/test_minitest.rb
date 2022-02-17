require 'minitest/autorun'

class MyTest < MiniTest::Test
  def test_minitest_works
    value = 2
    assert_equal 3, value
  end
end