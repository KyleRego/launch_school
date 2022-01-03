def century(year)
  number, remainder = year.divmod(100)
  return number if remainder == 0
  return number + 1
end

p century(1705)
p century(1900)
p century(1601)
p century(2000)
p century(89)