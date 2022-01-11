class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    assign_name full_name
  end

  def name
    (@first_name + ' ' + @last_name).strip
  end

  def name=(full_name)
    assign_name full_name
  end

  def to_s
    name
  end

  private

  def assign_name(full_name)
    name_array = full_name.split
    @first_name = name_array[0]
    @last_name = name_array[1] ? name_array[1] : ''
  end

end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
