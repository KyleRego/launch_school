# TicTacToe is a game where players take turns marking a spot on
# a 3 x 3 board either an X or an O. The first player to get three
# of their marks in a row is the winner.

# Nouns: TicTacToeGame , Board, Turn, Player
# Verbs: Mark a spot, Win

module StringHelper
  def joiner(array)
    case array.length
    when 1 then "#{array[0]}"
    when 2 then "#{array[0]} or #{array[1]}"
    else
      array[0..-2].join(', ') + " or #{array[-1]}"
    end
  end
end

class TicTacToeGameEngine
  attr_accessor :human, :computer, :board

  def initialize
    @human = Human.new
    @computer = Computer.new
    @board = Board.new
  end

  def display_welcome_message
    puts "Hello! Welcome to Tic Tac Toe"
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye"
  end

  def display_winner(winner_symbol)
    winner = winner_symbol.to_s
    if winner == "tie"
      puts "It's a tie!"
    else
      puts "The #{winner} is the winner!"
    end
  end
  
  def play
    display_welcome_message
    board.display
    winner = nil
    loop do
      human.mark_spot(board)
      break if winner = human.won?(board)
      computer.mark_spot(board)
      break if winner = computer.won?(board)
      break if winner = board.tie?
      board.display
    end
    board.display
    display_winner(winner)
    display_goodbye_message
  end
end

class Board
  attr_accessor :grid

  def initialize
    @grid = [' '] * 9
  end

  def display
    puts " #{grid[0]} | #{grid[1]} | #{grid[2]}"
    puts "---+---+---"
    puts " #{grid[3]} | #{grid[4]} | #{grid[5]}"
    puts "---+---+---"
    puts " #{grid[6]} | #{grid[7]} | #{grid[8]}"
  end

  def empty_locations
    empty_spots = []
    grid.each_with_index do |value, index|
      empty_spots << index + 1 if value == ' '
    end
    empty_spots
  end

  def tie?
    empty_locations.size == 0
  end

end

class Player
    WINNING_ROWS = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                    [1, 4, 7], [2, 5, 8], [3, 6, 9],
                    [1, 5, 9], [3, 5, 7]]

end

class Human < Player
  include StringHelper

  def mark_spot(brd)
    choice = nil
    loop do
      puts "Please enter #{joiner(brd.empty_locations)} to mark a location."
      choice = gets.chomp.to_i
      break if brd.empty_locations.include?(choice)
      puts "Sorry, that was an invalid choice"
    end
    brd.grid[choice - 1] = 'X'
  end

  def won?(brd)
    WINNING_ROWS.each do |row|
      if brd.grid[row[0]-1] == 'X' && brd.grid[row[1]-1] == 'X' && brd.grid[row[2]-1] == 'X'
        return :player
      end
    end
    false
  end
end

class Computer < Player

  def mark_spot(brd)
    choice = brd.empty_locations.sample
    brd.grid[choice - 1] = 'O'
  end

  def won?(brd)
    WINNING_ROWS.each do |row|
      if brd.grid[row[0]-1] == 'O' && brd.grid[row[1]-1] == 'O' && brd.grid[row[2]-1] == 'O'
        return :computer
      end
    end
    false
  end
end

TicTacToeGameEngine.new.play