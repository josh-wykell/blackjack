class Card
  SUITS = ["Diamonds", "Hearts", "Clubs", "Spades"]
  VALUES = {
    "A" => 11,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10, 
    "J" => 10,
    "Q" => 10,
    "K" => 10 
  }
  
  attr :suit
  attr :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def name
    "#{value} of #{suit}"  # => "2 of diamonds"
  end

  def points
    VALUES[@value]
  end
end

