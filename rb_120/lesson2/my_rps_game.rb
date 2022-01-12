class RPSGame
  attr_reader :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to rock paper scissors."
  end

  def display_winner
    puts "You chose: #{human.move}"
    puts "Computer chose: #{computer.move}"
    case human.move
    when 'rock'
      puts "Human wins!" if computer.move == 'scissors'
      puts "Computer wins!" if computer.move == 'paper'
      puts "It's a tie!" if computer.move == 'rock'
    when 'paper'
      puts "Human wins!" if computer.move == 'rock'
      puts "Computer wins!" if computer.move == 'scissors'
      puts "It's a tie!" if computer.move == 'paper'
    when 'scissors'
      puts "Human wins!" if computer.move == 'paper'
      puts "Computer wins!" if computer.move == 'rock'
      puts "It's a tie!" if computer.move == 'scissors'
    end
  end

  def display_goodbye_message
    puts "Thanks for playing! Bye"
  end

  def play_again?
    choice = ''
    loop do
      puts "Would you like to play again? (y/n)"
      choice = gets.chomp
      break if ['y', 'n'].include?(choice)
      puts "Sorry, invalid choice"
    end
    choice == 'y'
  end

  def play
    display_welcome_message
    loop do
      human.choose_move
      computer.choose_move
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end

end

class Player
  attr_accessor :move
  def initialize
    @move = nil
  end
end

class Human < Player
  def choose_move
    choice = nil
    loop do
      puts "Please enter rock, paper, or scissors"
      choice = gets.chomp
      break if ['rock', 'paper', 'scissors'].include?(choice)
      puts "Sorry, that was an invalid choice"
    end
    self.move = choice
  end
end

class Computer < Player
  def choose_move
    self.move = ['rock', 'paper', 'scissors'].sample
  end

end

rps_game = RPSGame.new
rps_game.play