# input: three numbers representing degrees in angles
# output: a symbol, one of :right :acute :obtuse or :invalid

# just use if elsif statements

def triangle(deg_a, deg_b, deg_c)
  if ((deg_a + deg_b + deg_c) != 180) || !(deg_a > 0 && deg_b > 0 && deg_c > 0)
    :invalid
  elsif deg_a == 90 || deg_b == 90 || deg_c == 90
    :right
  elsif deg_a < 90 && deg_b < 90 && deg_c < 90
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
