module ModuleNumberOne
  def module_one_method
    puts 'This method is from ModuleNumberOne'
  end
end

module ModuleNumberTwo
  def module_two_method
    puts 'This method is from ModuleNumberTwo'
  end
end

module ModuleNumberThree
  def module_three_method
    puts 'This method is from ModuleNumberThree'
  end
end

class SuperClass
  include ModuleNumberOne
end

class SubClass < SuperClass
  include ModuleNumberTwo
  include ModuleNumberThree
end

puts SubClass.ancestors
