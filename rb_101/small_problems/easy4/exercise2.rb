def century(year)
  century_number(year) + century_prefix(year)
end

def century_number(year)
  if year % 100 == 0
    (year/100).to_s
  else
    (year/100 + 1).to_s
  end
end

def century_prefix(year)
  number = century_number(year)
  case
  when number.end_with?('11')
    'th'
  when number.end_with?('12')
    'th'
  when number.end_with?('13')
    'th'
  when number.end_with?('1')
    'st'
  when number.end_with?('2')
    'nd'
  when number.end_with?('3')
    'rd'
  else
    'th'
  end
end
  


p century_number(5) == '1'
p century_number(256) == '3'
p century_number(11201) == '113'
p century_number(1901) == '20'
p century_number(2000) == '20'

p century(1901) == '20th'
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'