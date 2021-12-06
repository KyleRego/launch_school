# takes as input: loan amount, APR, and loan duration
# outputs the monthly interest rate, loan duration, and monthly payment

def prompt(message)
  puts("==> #{message}")
end

def monthly_interest_rate(annual_percentage_rate)
  annual_percentage_rate.to_f / 12
end

def monthly_payment(loan_amount, apr, loan_duration)
  j = monthly_interest_rate(apr)
  loan_amount = loan_amount.to_i
  loan_duration = loan_duration.to_i * 12

  loan_amount * (j / (1 - (1 + j)**(-loan_duration)))
end

def valid_number?(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

def get_a_number(message)
  return_number = ''
  loop do
    prompt(message)
    return_number = gets.chomp
    if valid_number?(return_number)
      break
    end
  end
  return_number
end

loan_amount = get_a_number("Please enter the loan amount:")
apr = get_a_number("Please enter the APR as a decimal starting with 0.:")
loan_duration = get_a_number("Please enter the loan duration in years:")

prompt("The monthly payment you will have to make is #{monthly_payment(loan_amount, apr, loan_duration)}")
