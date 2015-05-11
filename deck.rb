require 'card'

class Deck

  attr :cards

  def initialize
    @cards = []
  
    Card::SUITS.each do |suit|
      Card::VALUES.keys.each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!   
  end

  def draw
    @cards.shift
  end

end

