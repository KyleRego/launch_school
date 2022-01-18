class GuessingGame

  GUESS_RANGE = (1..100)

  def initialize
    @remaining_number_of_guesses = 7
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
    @number_to_guess = rand(GUESS_RANGE)
  end

  def display_number_guesses_remaining
    puts "The have #{@remaining_number_of_guesses} guesses remaining."
  end

  def get_a_guess
    loop do
      print "Enter a number between 1 and 100: "
      @guess = gets.chomp.to_i
      break if GUESS_RANGE === @guess
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
      puts 'Sorry, you run out of guesses!'
    end
  end
end

game = GuessingGame.new
game.play
