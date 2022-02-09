require 'minitest/autorun'

require_relative 'text'

class TextTest < MiniTest::Test

  def setup
    @file = File.open('sample_text.txt')
    @file_contents = @file.read
    @text = Text.new(@file_contents)
  end

  def test_swap
    expected = @file_contents.gsub('a', 'e')
    actual = @text.swap('a', 'e')
    assert_equal expected, actual
  end

  def test_word_count
    count = @file_contents.split(' ').count
    assert_equal count, @text.word_count
  end

  def teardown
    @file.close
  end

end