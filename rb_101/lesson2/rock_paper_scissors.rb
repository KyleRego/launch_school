require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && ['scissors', 'lizard'].include?(second)) ||
    (first == 'paper' && ['rock', 'spock'].include?(second)) ||
    (first == 'scissors' && ['paper', 'lizard'].include?(second)) ||
    (first == 'spock' && ['scissors', 'rock'].include?(second)) ||
    (first == 'lizard' && ['spock', 'paper'].include?(second))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    case true
    when choice.start_with?('r')
      choice = 'rock'
    when choice.start_with?('p')
      choice = 'paper'
    when choice.start_with?('sc')
      choice = 'scissors'
    when choice.start_with?('l')
      choice = 'lizard'
    when choice.start_with?('sp')
      choice = 'spock'
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}, computer chose: #{computer_choice}"

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  display_results(choice, computer_choice)
  prompt("Player score: #{player_score}; Computer score: #{computer_score}")

  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
