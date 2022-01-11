class Person
  def name=(full_name)
    parts = full_name.split
    @first_name = parts[0]
    @last_name = parts[1] ? parts[1] : ''
  end

  def name
    (@first_name + ' ' + @last_name).strip
  end
  
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name