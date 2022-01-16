# In this version of Bulls and Cows, the computer generates an n-digit number
# the player has to guess the secret number
# after each guess, the player is told how many bulls and how many cows
# a bull is when a digit is guessed that is in the number and it is guessed in the right spot
# a cow is when a digit is guessed that is in the number but it is not in the right spot

class Game
  NUMBER_SIZE = 3

  attr_reader :player, :number

  def initialize
    @player = Player.new
    @number = Number.new(NUMBER_SIZE)
  end

  def display_welcome_message
    puts "Hi! Welcome to Bulls and Cows"
    puts "The goal of this game is to guess a random number"
    puts "For each guess, you will be told how many Bulls and how many Cows were in your guess."
    puts "A Bull is a digit present in the number, in the correct position."
    puts "A Cow is a digit present in the number but not in the correct position."
  end

  def display_goodbye_message
    puts "Congratulations you won! Goodbye"
  end

  def play
    display_welcome_message
    loop do
      guess = player.make_a_guess
      number.show_bulls_and_cows(guess)
      break if number.is_correct?(guess)      
    end
    display_goodbye_message
  end
end

class Player

  def make_a_guess
    guess = nil
    loop do
      puts "Please enter a #{Game::NUMBER_SIZE}-digit number, where all digits are different:"
      guess = gets.chomp
      break if guess.to_i.to_s == guess && guess.chars.uniq.length == Game::NUMBER_SIZE
      puts "Sorry, that was an invalid input"
    end
    guess
  end
end

class Number
  attr_accessor :number

  def initialize(number_of_digits)
    digits = %w(1 2 3 4 5 6 7 8 9 0)
    @number = ''
    number_of_digits.times { @number << digits.sample }
  end

  def to_s
    number
  end

  def show_bulls_and_cows(guess)
    number_bulls = 0
    number_cows = 0
    number.each_char do |char|
      guess.each_char do |guess_char|
        number_bulls += 1 if char == guess_char && number.index(char) == guess.index(guess_char)
        number_cows += 1 if char == guess_char && ! (number.index(char) == guess.index(guess_char))
      end
    end
    puts "#{number_bulls} Bulls #{number_cows} Cows"
  end

  def is_correct?(guess)
    number == guess
  end
end

Game.new.play

# tests
# num = Number.new(4)
# num.number = '1234'
# p num
# num.show_bulls_and_cows('1234') # => 4 Bulls 0 Cows
# num.show_bulls_and_cows('5678') # => 0 Bulls 0 Cows
# num.show_bulls_and_cows('3456') # => 0 Bulls 2 Cows
# num.show_bulls_and_cows('1357') # => 1 Bulls 1 Cows
# num.show_bulls_and_cows('4321') # => 0 Bulls 4 Cows
