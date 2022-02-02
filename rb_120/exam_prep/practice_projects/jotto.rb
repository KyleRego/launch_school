class GameEngine
  def play
    display_game_information
    @word_to_guess = initialize_word
    @guess = nil
    loop do
      @guess = get_guess_from_player
      break if @guess == @word_to_guess
      display_guess_was_incorrect
    end
    display_game_ending_message
  end

  def display_game_information
    puts "Welcome to Jotto!"
    puts "You must guess a 5 letter word."
    puts "You will be told how many letters in your guess are in the word"
  end

  def display_game_ending_message
    puts "Congratulations, you correctly guessed #{@word_to_guess}!"
  end

  def initialize_word
    ['hello', 'world'].sample
  end

  def get_guess_from_player
    guess = nil
    loop do
      puts "Please enter your guess:"
      guess = gets.chomp
      break if guess.length == 5
      puts "Invalid guess. Please try again."
    end
    guess
  end

  def display_guess_was_incorrect
    num = number_of_correct_letters
    puts "Your guess had #{num} letters that are in the word"
  end

  def number_of_correct_letters
    return_value = 0
    alphabet = ('a'..'z').to_a
    alphabet.each do |char|
      pair = [@guess.count(char), @word_to_guess.count(char)]
      return_value += pair.min
    end
    return_value
  end
end

game = GameEngine.new
game.play
