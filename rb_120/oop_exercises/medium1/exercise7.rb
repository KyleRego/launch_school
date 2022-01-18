class GuessingGame

  def initialize(low_bound, high_bound)
    @low_bound = low_bound
    @high_bound = high_bound
    @remaining_number_of_guesses = Math.log2(high_bound-low_bound).to_i + 1
    @guess_range = (low_bound..high_bound)
  end
  
  def play
    initialize_number_to_guess
    loop do
      display_number_guesses_remaining
      get_a_guess
      display_guess_high_low_or_winner
      break if @guess == @number_to_guess || @remaining_number_of_guesses == 0
    end
    display_end_result
  end
  
  private

  def initialize_number_to_guess
    @number_to_guess = rand(@guess_range)
  end

  def display_number_guesses_remaining
    puts "The have #{@remaining_number_of_guesses} guesses remaining."
  end

  def get_a_guess
    loop do
      print "Enter a number between #{@low_bound} and #{@high_bound}: "
      @guess = gets.chomp.to_i
      break if @guess_range === @guess
      print "Invalid guess. "
    end
    @remaining_number_of_guesses -= 1
  end

  def display_guess_high_low_or_winner
    if @number_to_guess > @guess
      puts 'Your guess is too low'
    elsif @number_to_guess < @guess
      puts 'Your guess is too high'
    elsif @number_to_guess == @guess
      puts 'That\'s the number!'
    end
  end

  def display_end_result
    if @guess == @number_to_guess
      puts 'You won!'
    elsif @remaining_number_of_guesses == 0
      puts 'Sorry, you ran out of guesses!'
    end
  end
end

game = GuessingGame.new(501, 1500)
game.play
