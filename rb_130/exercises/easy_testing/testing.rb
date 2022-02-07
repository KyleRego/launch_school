require 'minitest/autorun'

class NoExperienceError < StandardError
end

class Employee

  def hire(experience=nil)
    raise NoExperienceError unless experience
  end

end

class MyList
  def process
    self
  end
end

class MyTest < MiniTest::Test
  def test_odd?
    assert_equal(true, 5.odd?)
  end

  def test_downcase
    string = 'XYZ'
    assert_equal('xyz', string.downcase)
  end

  def test_not_nil
    value = nil
    assert_nil(value)
  end

  def test_array_not_empty
    array = []
    assert_equal(true, array.empty?)
  end

  def test_array_includes_xyz
    array = ['xyz']
    assert_equal(true, array.include?('xyz'))
  end

  def test_hire
    assert_raises(NoExperienceError) do 
      employee = Employee.new
      employee.hire
    end
  end

  def test_value_is_numeric_class
    value = Numeric.new
    assert_equal(Numeric, value.class)
  end

  def test_value_is_numeric_or_subclass
    value = 1
    classes = [Numeric, Integer, Float]
    assert_includes classes, value.class
  end

  def test_process
    list = MyList.new
    assert_same(list, list.process)
  end

  def test_array_does_not_include_xyz
    array = ['abc']
    assert_equal false, array.include?('xyz')
  end
end
