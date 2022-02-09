class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    raise ArgumentError unless valid?
  end

  def kind
    if !valid?
      'invalid'
    elsif equilateral?
      'equilateral'
    elsif isosceles?
      'isosceles'
    else
      'scalene'
    end
  end

  def valid?
    all_sides_positive && two_sides_greater_than_third
  end

  private

  def all_sides_positive
    @a > 0 && @b > 0 && @c > 0
  end

  def two_sides_greater_than_third
    @a + @b > @c &&
    @a + @c > @b &&
    @b + @c > @a 
  end

  def equilateral?
    @a == @b && @b == @c && @a == @c
  end

  def isosceles?
    @a == @b || @b == @c || @a == @c
  end
end
