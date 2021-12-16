require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(number_array, delimiter=', ', final='or')
  if number_array.size == 1
    number_array[0].to_s
  elsif number_array.size == 2
    "#{number_array[0]} #{final} #{number_array[1]}"
  elsif number_array.size > 2
    first_part = number_array[0..-2].join(delimiter)
    second_part = "#{delimiter}#{final} #{number_array[-1]}"
    first_part + second_part
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def immediate_threat?(brd)
  WINNING_LINES.each do |line|
    counter = 0
    empty_counter = 0
    line.each do |position|
      counter += 1 if brd[position] == PLAYER_MARKER
      empty_counter += 1 if brd[position] == INITIAL_MARKER
    end
    return true if counter == 2 && empty_counter == 1
  end
  false
end

def winning_move?(brd)
  WINNING_LINES.each do |line|
    counter = 0
    empty_counter = 0
    line.each do |position|
      counter += 1 if brd[position] == COMPUTER_MARKER
      empty_counter += 1 if brd[position] == INITIAL_MARKER
    end
    return true if counter == 2 && empty_counter == 1
  end
  false
end

def computer_counters_threat!(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == INITIAL_MARKER
      brd[line[2]] = COMPUTER_MARKER
      break
    elsif brd[line[0]] == INITIAL_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      brd[line[0]] = COMPUTER_MARKER
      break
    elsif brd[line[0]] == PLAYER_MARKER && brd[line[1]] == INITIAL_MARKER && brd[line[2]] == PLAYER_MARKER
      brd[line[1]] = COMPUTER_MARKER
      break
    end
  end
end

def computer_winning_move!(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == INITIAL_MARKER
      brd[line[2]] = COMPUTER_MARKER
    elsif brd[line[0]] == INITIAL_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER
      brd[line[0]] = COMPUTER_MARKER
    elsif brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == INITIAL_MARKER && brd[line[2]] == COMPUTER_MARKER
      brd[line[1]] = COMPUTER_MARKER
    end
  end
end

def computer_places_piece!(brd)
  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  elsif winning_move?(brd)
    computer_winning_move!(brd)
  elsif immediate_threat?(brd)
    computer_counters_threat!(brd)
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def alternate_player(current_player)
  if current_player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

player_score = 0
computer_score = 0

loop do
  current_player = ''
  loop do
    prompt 'Who goes first? Player or computer? (p or c)'
    first_move = gets.chomp

    if first_move == 'p'
      current_player = 'Player'
      break
    elsif first_move == 'c'
      current_player = 'Computer'
      break
    end

    prompt "Invalid choice. Please enter 'p' or 'c'"
  end

  board = initialize_board

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    winner = detect_winner(board)
    if winner == 'Player'
      player_score += 1
    else
      computer_score += 1
    end
    prompt "#{winner} won this round!"
    prompt "Player score: #{player_score}; Computer score: #{computer_score}"
  else
    prompt "It's a tie!"
  end

  if player_score == 5
    prompt "The overall winner is the player!"
    break
  elsif computer_score == 5
    prompt "The overall winner is the computer!"
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
