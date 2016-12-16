require_relative 'deck'

class WAR

  attr_accessor :game, :players_card, :computers_card, :games, :wars, :players_deck, :computers_deck, :start, :outcome

  initialize
  self.player_card = 52.times.collect
  self.computer_card = 52.times.collect



  def play
    start
    deck
    make_deck
    game
    outcome
    another_try?
  end

  def initialize
   self.starter = true
  end
  def intro
  puts "This is WAR!"
  puts "Each person gets a full deck of cards"
  puts "Draw a card off the top of the deck"
  puts "The player with the highest card WINS!"
  end

  def make_deck
  self.players_deck = Deck.new
  self.computers_deck = Deck.new
  self.players_score = 0
  self.computers_score = 0
  self.wars = 0
  self.rounds = 0
  end

  def shuffle_decks
   players_deck.shuffle_cards
   computers_deck.shuffle_cards
  end

  def game_start
  52.times {play}
  end

  def game
  players_card = players_deck.draw
  computers_card = computers_deck.draw

  if players_card > computers_card
    self.players_score += 1
    self.rounds += 1
    self.players_deck.push(computers_card)
    self.players_deck.push(players_card)
  elsif players_card < computers_card
    self.computers_score += 1
    self.rounds += 1
    self.computers_deck.push(computers_card)
    self.computers_deck.push(players_card)
  else
    self.war += 1
    self.rounds += 1
  end
  end

  def outcome
    if players_score.to_i > computers_score.to_i
      puts "Player beat you #{rounds} rounds and lost #{wars} WARS. Want Another Try? (y/n)?"
      another_try
    elsif players_score < computers_score
      puts "Computer beat you #{rounds} rounds and lost #{wars} WARS. Want Another Try? (y/n)?"
      another_try
    else
      puts "Its was a tie #{rounds} rounds and lost #{wars} WARS. Want Another Try (y/n)?"
      another_try
    end
  end

  def another_try
    answer =  gets.chomp.downcase
    if answer == "y"
      self.starter = false
      play
    else
      puts "Thanks for going to WAR!"
      exit
    end
  end
end
