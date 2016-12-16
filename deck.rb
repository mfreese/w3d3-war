require_relative 'card.rb'
Class Deck
attr_accessor :card_box

def make_deck
  face = %w(2 3 4 5 6 7 8 9 10 K Q J A)
  suit = %w( Hearts Diamonds Spades Clubs )
  self.card_box = []

  face.each do |face|
  suit.each do |suit|
  card_box << Card.new( face, suit )
end
end
end
def shuffle
  card_box.shuffle!

  def draw
    card_box.shift
  end

  def restock?
    card_box.restock?
  end

  def length
    card_box.length
  end

  def push(push)
    card_box.push(push)
  end
end
