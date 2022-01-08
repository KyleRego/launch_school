class Student
  attr_accessor :name, :grade

  def initialize(n, g)
    self.name = n
    self.grade = g
  end

  def better_grade_than?(other)
    self.grade > other.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('joe', 90)
bob = Student.new('bob', 95)

puts "Well done!" if joe.better_grade_than?(bob)
puts "Not well done" if !joe.better_grade_than?(bob)