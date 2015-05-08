$LOAD_PATH.unshift File.dirname(__FILE__)

require 'deck'

deck = Deck.new

dealer = "dealer"

puts "Welcome, I'm the dealer. What's your name?"

player = gets.chomp

puts "Okay #{player} lets begin!"

deck.shuffle

#deck.cards.each do |card| 
#  puts card.name
#end

@sdeck = []

@sdeck << deck.cards

player_hand = sdeck
