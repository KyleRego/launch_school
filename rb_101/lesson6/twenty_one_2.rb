def initialize_deck
  arr = ['2', '3', '4', '5', '6', '7', '8', '9',
         '10', 'Jack', 'Queen', 'King', 'Ace']
  arr *= 4
  arr.shuffle!
  arr
end

def deal_card!(deck, hand)
  hand << deck.pop
end

def prompt(msg)
  puts "=> #{msg}"
end

def display_hands(player, dealer, hide_dealers = true)
  if hide_dealers
    prompt "The dealer's hand is: #{dealer[0]} and ?"
  else
    prompt "The dealer's hand is: #{dealer.join(', ')}"
  end
  prompt "Your hand is: #{player.join(', ')}"
end

def display_player_busted(player_hand)
  prompt "You busted!"
  prompt "You had a total value of #{value_of_hand(player_hand)}"
end

def bust?(hand)
  value_of_hand(hand) > 21
end

def value_of_hand(hand)
  sum = number_of_aces = 0
  hand.each do |card|
    if card == 'Ace'
      number_of_aces += 1
      sum += 11
    elsif card == 'Jack' || card == 'Queen' || card == 'King'
      sum += 10
    else
      sum += card.to_i
    end
  end

  number_of_aces.times do
    sum -= 10 if sum > 21
  end
  sum
end

def dealer_should_hit?(hand)
  value_of_hand(hand) < 17
end

def detect_winner(player, dealer)
  if value_of_hand(player) > value_of_hand(dealer)
    :player
  elsif value_of_hand(dealer) > value_of_hand(player)
    :dealer
  else
    :tie
  end
end

def display_winner(winner)
  if winner == :player
    prompt "The player won!"
  elsif winner == :dealer
    prompt "The dealer won!"
  else
    prompt "It's a tie!"
  end
end

# tests
# p value_of_hand(['Ace', 'Ace', '7']) # => 19
# p value_of_hand(['Jack', 'King', '2']) # => 22

deck_of_cards = initialize_deck

player_hand = []
dealer_hand = []

2.times do
  deal_card!(deck_of_cards, player_hand)
  deal_card!(deck_of_cards, dealer_hand)
end

loop do
  choice = ''
  loop do
    display_hands(player_hand, dealer_hand, true)
    prompt "Would you like to (h)it or (s)tay?"
    choice = gets.chomp

    break if ['h', 's'].include?(choice)
    prompt "Sorry, please enter 'h' or 's'."
  end

  deal_card!(deck_of_cards, player_hand) if choice == 'h'

  break if choice == 's' || bust?(player_hand)
end

if bust?(player_hand)
  display_hands(player_hand, dealer_hand, false)
  display_player_busted(player_hand)
else
  loop do
    display_hands(player_hand, dealer_hand)
    if dealer_should_hit?(dealer_hand)
      deal_card!(deck_of_cards, dealer_hand)
    else
      prompt "Dealer chooses to stay."
      break
    end
  end

  display_hands(player_hand, dealer_hand, false)
  winner = detect_winner(player_hand, dealer_hand)
  display_winner(winner)
end
