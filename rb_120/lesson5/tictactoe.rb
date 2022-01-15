require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                   [1, 4, 7], [2, 5, 8], [3, 6, 9],
                   [1, 5, 9], [3, 5, 7]]

  def initialize
    @squares = {}
    reset
  end

  def []=(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  private

  # returns true if all three squares have been marked and have the same marker
  def three_of_same_marker(three_squares)
    values = three_squares.map(&:marker)
    count = 0
    first_marker = values[0]
    values.each do |val|
      count += 1 if val == first_marker && val != Square::INITIAL_MARKER
    end
    count == 3
  end

  public

  # returns winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line|
      three_squares = @squares.values_at(*line)
      if three_of_same_marker(three_squares)
        return three_squares.first.marker
      end
    end
    nil
  end

  # return an index where current_marker would win, or nil
  def square_index_to_play_to_win(current_marker)
    WINNING_LINES.each do |line|
      three_squares = @squares.values_at(*line)
      three_markers = three_squares.map(&:marker)
      if three_markers.count(current_marker) == 2
        return line[0] if @squares[line[0]].marker == Square::INITIAL_MARKER
        return line[1] if @squares[line[1]].marker == Square::INITIAL_MARKER
        return line[2] if @squares[line[2]].marker == Square::INITIAL_MARKER
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
end

class Square
  INITIAL_MARKER = ' '

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end
end

class Player
  attr_accessor :score, :marker, :name

  def initialize(marker = nil)
    @marker = marker
    @score = 0
    @name = nil
  end
end

class TTTGame
  COMPUTER_MARKER = 'O'
  ROUNDS_TO_WIN = 3

  private

  attr_accessor :current_player
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new
    @computer = Player.new(COMPUTER_MARKER)
    @current_player = nil
    @first_player = nil
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe"
    puts "Number of rounds to win: #{ROUNDS_TO_WIN}"
    puts ""
  end

  def display_goodbye_message
    winner_marker = overall_winner_marker
    case winner_marker
    when human.marker
      puts "You are the winner!"
    when computer.marker
      puts "The computer is the winner!"
    end
    puts "Thanks for playing Tic Tac Toe! Goodbye"
  end

  def display_board
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def current_player_moves
    if current_player == human
      human_moves
    else
      computer_moves
    end
    switch_current_player
  end

  def switch_current_player
    self.current_player = if current_player == human
                            computer
                          else
                            human
                          end
  end

  def human_moves
    puts "Choose a square (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    if board.square_index_to_play_to_win(computer.marker)
      board[board.square_index_to_play_to_win(computer.marker)] = computer.marker
    elsif board.square_index_to_play_to_win(human.marker)
      board[board.square_index_to_play_to_win(human.marker)] = computer.marker
    elsif board.unmarked_keys.include?(5)
      board[5] = computer.marker
    else
      board[board.unmarked_keys.sample] = computer.marker
    end
  end

  def display_result
    clear_screen_and_display_board
    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system 'clear'
  end

  def reset
    board.reset
    clear
    self.current_player = @first_player
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ''
  end

  def alternate_moves_until_someone_won_or_board_full
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board
    end
  end

  def overall_winner?
    !!overall_winner_marker
  end

  # return marker of overall winner or nil
  def overall_winner_marker
    if human.score == ROUNDS_TO_WIN
      human.marker
    elsif computer.score == ROUNDS_TO_WIN
      computer.marker
    end
  end

  def adjust_scores
    case board.winning_marker
    when human.marker
      human.score += 1
    when computer.marker
      computer.score += 1
    end
  end

  def display_scores
    puts "#{human.name}'s score is #{human.score} and #{computer.name}'s score is #{computer.score}"
  end

  def ask_who_goes_first
    first = nil
    loop do
      puts "Would you like to go first? (y/n)"
      first = gets.chomp.downcase
      break if %w(y n).include?(first)
    end
    @first_player = human if first == 'y'
    @first_player = computer if first == 'n'
    self.current_player = @first_player
  end

  def ask_user_for_a_marker
    marker = nil
    loop do
      puts "What would you like your marker to be? "
      marker = gets.chomp
      break if marker.length == 1 && marker != COMPUTER_MARKER
      puts "Sorry, invalid choice"
    end
    human.marker = marker
  end

  def ask_for_name
    puts "What is your name?"
    name = gets.chomp
    human.name = name
  end

  def assign_computer_name
    computer.name = ['Computer A', 'Computer B', 'Computer C'].sample
  end
    
  def main_game
    loop do
      display_board
      alternate_moves_until_someone_won_or_board_full
      
      display_result
      adjust_scores
      display_scores
      break if overall_winner? || !play_again?
      reset
      display_play_again_message
    end
  end

  public

  def play
    clear
    display_welcome_message
    ask_for_name
    assign_computer_name
    ask_who_goes_first
    ask_user_for_a_marker
    main_game
    display_goodbye_message
  end
end

def joinor(array, separator=', ', last='or')
  case array.length
  when 0
    ''
  when 1
    "#{array[0]}"
  when 2
    "#{array[0]} #{last} #{array[1]}"
  else
    "#{array[0..-2].join(separator)}#{separator}#{last} #{array[-1]}"
  end
end

game = TTTGame.new
game.play
