require 'minitest/autorun'

require_relative 'transaction'
require_relative 'cash_register'

class TransactionTest < MiniTest::Test
  
  def test_prompt_for_payment
    transaction = Transaction.new(50)
    input = StringIO.new("80\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 80, transaction.amount_paid
  end

end