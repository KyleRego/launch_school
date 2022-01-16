class Game
  attr_reader :player, :dealer, :deck

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def deal_cards
    2.times { player << deck.pop }
    2.times { dealer << deck.pop }
  end

  def show_initial_cards
    player.show_cards
    dealer.show_one_card
  end

  def player_turn
    loop do
      choice = player.hit_or_stay?
      break if choice == 's'
      player.hit(deck)
      player.show_cards
      if player.bust?
        puts "You busted, dealer wins!"
        break
      end
    end
  end

  def dealer_turn
    loop do
      break unless dealer.should_hit?
      dealer.hit(deck)
      if dealer.bust?
        puts "Dealer busted, you win!"
        break
      end
    end
  end

  def display_scores_and_winner
    player_score = player.hand_value
    dealer_score = dealer.hand_value
    puts "Player score: #{player_score}; Dealer score: #{dealer_score}"
    if player_score > dealer_score
      puts "You beat the dealer!"
    elsif player_score < dealer_score
      puts "The dealer wins"
    else
      puts "It's a tie!"
    end
  end

  def show_result
    player.show_cards
    dealer.show_cards
    display_scores_and_winner
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    unless player.bust? || dealer.bust?
      dealer_turn
      show_result
    end
  end
end

class Deck
  SUITS = ['clubs', 'diamonds', 'hearts', 'spades']
  RANKS = ['Ace', '2', '3', '4', '5', '6', '7',
           '8', '9', '10', 'Jack', 'Queen', 'King']

  def initialize
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @cards.shuffle!
  end

  def pop
    @cards.pop
  end
end

class Card
  attr_reader :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{@rank} of #{@suit}"
  end
end

class Participant
  def initialize
    @hand = []
  end

  def <<(card)
    @hand << card
  end

  def show_cards
    puts @hand.join(', ')
  end

  def hit(deck)
    @hand << deck.pop
  end

  def bust?
    hand_value > 21
  end

  def hand_value
    sum = 0
    number_of_aces = 0
    @hand.each do |card|
      case card.rank
      when ('2'..'9')
        sum += card.rank.to_i
      when '10'
        sum += 10
      when 'Jack'
        sum += 10
      when 'Queen'
        sum += 10
      when 'King'
        sum += 10
      when 'Ace'
        number_of_aces += 1
      end
    end
    number_of_aces.times do
      if sum > 11
        sum += 1
      else
        sum += 11
      end
    end
    sum
  end
end

class Player < Participant
  def show_cards
    print "You have the following cards: "
    super
  end

  # return 's' or 'h' from user input
  def hit_or_stay?
    choice = nil
    loop do
      puts "Would you like to hit or stay? (enter h or s)"
      choice = gets.chomp
      break if %(h s).include?(choice)
      puts "Sorry, invalid choice"
    end
    choice
  end
end

class Dealer < Participant
  def show_cards
    print "The dealer has the following cards: "
    super
  end

  def show_one_card
    puts "The dealer shows you a #{@hand[0]}."
  end

  def should_hit?
    hand_value < 17
  end
end

Game.new.start
