# input: a year
# output: a string representing the century like '20th' or '21st'

# to get the century number
# divide by 100 and save the number and remainder
# if the remainder is 0 then the number is the century number
# if the remainder is not 0 then the number + 1 is the century number

# to get the century suffix
# if century_number ends with 11, 12, or 13 then its 'th'
# if century_number ends with 1 its 'st' 2 its 'nd', 3 its 'rd'
# else its 'th'

def century(year)
  century_number(year).to_s + century_suffix(year)
end

def century_number(year)
  number, remainder = year.divmod(100)
  return number if remainder == 0
  number + 1
end

def century_suffix(year)
  number = century_number(year).to_s
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

p century_number(2000) == 20
p century_number(2001) == 21
p century_number(1965) == 20
p century_number(5) == 1

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'