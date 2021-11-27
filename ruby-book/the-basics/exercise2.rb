number = 1234

thousands = number / 1000
puts thousands

hundreds = number / 100 % 10
puts hundreds

tens = number / 10 % 100 % 10
puts tens

ones = number % 10
puts ones