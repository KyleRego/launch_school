class RPSGame
  attr_accessor :human, :computer, :game_history

  SCORE_TO_WIN = 3

  def initialize
    @human = Human.new
    @computer = Computer.new
    @game_history = GameHistory.new
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      adjust_score
      adjust_game_history
      display_winner
      display_scores
      break if human.score == SCORE_TO_WIN ||
               computer.score == SCORE_TO_WIN ||
               !play_again?
    end
    display_goodbye_message
  end

  private

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
    puts "Number of wins to be declared final winner: #{SCORE_TO_WIN}"
  end

  def display_goodbye_message
    game_history.display
    display_final_winner
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie"
    end
  end

  def display_final_winner
    if human.score == SCORE_TO_WIN
      puts "#{human.name} is the winner!"
    elsif computer.score == SCORE_TO_WIN
      puts "#{computer.name} is the winner!"
    end
  end

  def adjust_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end

  def display_scores
    puts "#{human.name} has a score of #{human.score}"
    puts "#{computer.name} has a score of #{computer.score}"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end
    return true if answer == 'y'
    false
  end

  def adjust_game_history
    game_history.history << [human.move, computer.move]
  end
end

class GameHistory
  attr_accessor :history

  def initialize
    @history = []
  end

  def display
    puts "Game history:"
    history.each_with_index do |array, index|
      puts "Round #{index}:"
      puts "Player chose: #{array[0]}, computer chose: #{array[1]}"
    end
  end
end

class Player
  attr_accessor :name, :score, :move

  def initialize
    set_name
    @score = 0
  end

  def assign_move(mv)
    case mv
    when 'rock'
      self.move = Rock.new(mv)
    when 'paper'
      self.move = Paper.new(mv)
    when 'scissors'
      self.move = Scissors.new(mv)
    when 'lizard'
      self.move = Lizard.new(mv)
    when 'spock'
      self.move = Spock.new(mv)
    end
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    assign_move(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    case name
    when 'R2D2'
      mv = 'rock'
    when 'Hal'
      mv = 'spock'
    else
    mv = Move::VALUES.sample
    end
    assign_move(mv)
  end
end

class Move
  attr_reader :value

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end
end

module MoveComparable
  def >(other_move)
    wins_against.include?(other_move.value)
  end

  def <(other_move)
    loses_to.include?(other_move.value)
  end
end

class Rock < Move
  include MoveComparable

  def loses_to
    ['paper', 'spock']
  end

  def wins_against
    ['scissors', 'lizard']
  end
end

class Paper < Move
  include MoveComparable

  def loses_to
    ['scissors', 'lizard']
  end

  def wins_against
    ['rock', 'spock']
  end
end

class Scissors < Move
  include MoveComparable

  def loses_to
    ['rock', 'spock']
  end

  def wins_against
    ['paper', 'lizard']
  end
end

class Lizard < Move
  include MoveComparable

  def loses_to
    ['scissors', 'rock']
  end

  def wins_against
    ['paper', 'spock']
  end
end

class Spock < Move
  include MoveComparable

  def loses_to
    ['paper', 'lizard']
  end

  def wins_against
    ['rock', 'scissors']
  end
end

RPSGame.new.play
