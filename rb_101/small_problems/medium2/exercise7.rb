# input: a number representing a year (positive integer)
# output: the number of Friday the 13ths in that year

require 'date'

def friday_13th(year)
  friday_count = 0
  month = 1
  while month < 13 do
    date = Date.new(year, month, 13)
    friday_count += 1 if date.friday?
    month += 1
  end
  friday_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2