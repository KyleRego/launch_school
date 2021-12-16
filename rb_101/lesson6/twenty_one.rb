require 'pry'

def prompt(msg)
  puts "=> #{msg}"
end

def deal_card!(deck, hand)
  hand << deck.pop
end

def deal_two_cards!(deck, hand)
  2.times { deal_card!(deck, hand) }
end

def bust?(hand)
  value_of_hand(hand) > 21
end

def dealer_should_hit?(hand)
  value_of_hand(hand) < 17
end

def value_of_hand(hand)
  sum = 0
  number_of_aces = 0
  hand.each do |value|
    if ('2'..'10').to_a.include?(value)
      sum += value.to_i
    elsif value == 'Jack' || value == 'Queen' || value == 'King'
      sum += 10
    elsif value == 'Ace'
      number_of_aces += 1
    end
  end
  number_of_aces.times { sum += value_of_ace(sum) }
  sum
end

def value_of_ace(sum)
  if sum + 11 <= 21
    11
  else
    1
  end
end

def initialize_deck
  arr = (['2', '3', '4', '5', '6',
          '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'] * 4)
  arr.shuffle!
  arr
end

def dealers_turn(deck_of_cards, dealer_hand)
  loop do
    if dealer_should_hit?(dealer_hand)
      deal_card!(deck_of_cards, dealer_hand)
      prompt "Dealer chooses to hit."
      prompt "Dealer hand: #{dealer_hand.join(', ')}"
      if bust?(dealer_hand)
        prompt "Dealer busted; player wins."
      else
        prompt "Dealer chooses to stay."
      end
      break
    end
  end
end

deck_of_cards = initialize_deck

player_hand = []
dealer_hand = []

deal_two_cards!(deck_of_cards, player_hand)
deal_two_cards!(deck_of_cards, dealer_hand)

loop do
  prompt "Dealer has: #{dealer_hand.first} and unknown card"
  prompt "You have: #{player_hand.join(', ')}"
  prompt "Would you like to hit or stay? (h or s)"
  response = gets.chomp
  if response == 'h'
    deal_card!(deck_of_cards, player_hand)
    prompt "You have: #{player_hand.join(', ')}"
    if bust?(player_hand)
      prompt "You busted; dealer wins."
      break
    end
  elsif response == 's'
    dealers_turn(deck_of_cards, dealer_hand)
    break
  else
    prompt "Invalid choice; please type 'h' or 's'."
  end
end

player_score = value_of_hand(player_hand)
dealer_score = value_of_hand(dealer_hand)

if player_score <= 21 && dealer_score <= 21
  prompt "Player hand: #{player_hand.join(', ')}"
  prompt "Dealer hand: #{dealer_hand.join(', ')}"
  if player_score > dealer_score
    prompt "Player wins with a score of #{player_score}, dealer had #{dealer_score}."
  else
    prompt "Dealer wins with a score of #{dealer_score}, player had #{player_score}."
  end
end
