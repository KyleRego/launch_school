class RPSGameEngine
  attr_accessor :player, :computer

  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def display_game_welcome_message
    puts "Hello, welcome to rock paper scissors"
  end

  def display_moves(player_move, computer_move)
    puts "You chose #{player_move} and the computer chose #{computer_move}!"
  end

  def determine_winner(player_move, computer_move)
    return :player if player_move == 'rock' && computer_move == 'scissors' ||
                      player_move == 'scissors' && computer_move == 'paper' ||
                      player_move == 'paper' && computer_move == 'rock'
    return :computer if computer_move == 'rock' && player_move == 'scissors' ||
                        computer_move == 'scissors' && player_move == 'paper' ||
                        computer_move == 'paper' && player_move == 'rock'
    :tie
  end

  def display_winner(winner)
    case winner
    when :player
      puts "You won!"
    when :computer
      puts "The computer won!"
    when :tie
      puts "It was a tie!"
    end
  end

  def play
    display_game_welcome_message
    player_move = player.choose_move
    computer_move = computer.choose_move
    display_moves(player_move, computer_move)
    winner = determine_winner(player_move, computer_move)
    display_winner(winner)
  end
end

class Player
  def choose_move
    choice = nil
    loop do
      puts "Please enter rock, paper, or scissors"
      choice = gets.chomp
      break if %w(rock paper scissors).include?(choice)
      puts "Sorry, that input was invalid."
    end
    choice
  end
end

class Computer
  def choose_move
    choice = %w(rock paper scissors).sample
    choice
  end
end

game = RPSGameEngine.new
game.play