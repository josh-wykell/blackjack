$LOAD_PATH.unshift File.dirname(__FILE__)

require 'deck'

deck = Deck.new


puts "Welcome, I'm the dealer. What's your name?"

player_name = gets.chomp

puts "Lets play blackjack #{player_name}. Just a heads up in this game Ace's are worth 11. Lets play!"

deck.shuffle

#deck.cards.each do |card| 
#  puts card.name
#end

player_hand = []
dealer_hand = []

player_hand << deck.draw
dealer_hand << deck.draw
player_hand << deck.draw
dealer_hand << deck.draw

puts "your first card is #{player_hand[0].name}"
puts "dealer's first card is hidden"
puts "your second is #{player_hand[1].name}"
puts "dealer is showing #{dealer_hand[1].name}"

player_total = 0
dealer_total = 0

player_hand.each { |card| 
  player_total += card.points
}

dealer_hand.each {  |card|
  dealer_total += card.points
}

if dealer_total == 21
  puts "Blackjack! I win! You Loose! Looser!!!"
elsif dealer_total > 21
  puts "Dealer busts, You win! Wait,... I'm the dealer. I feel so pathetic :("
elsif player_total == 21 && dealer_total < 21
  puts "Blackjack! You win, I loose. I'll get you next time Gadget!"
elsif player_total < 21 && dealer_total < 21
  puts "Your total is #{player_total}. Type 'h' to hit or 's' to stay"
  player_answer = gets.chomp
    while plxayer_answer != "s"
      
      if player_answer == "h"
        puts "ok"
        player_hand << deck.draw
        player_total += player_hand.last.points
        puts "You drew #{player_hand[2].name}. Your new total is #{player_total}. Type 'h' to hit or 's' to stay."
        player_answer = gets.chomp  
        # valid_answer = true
      else 
        puts "I don't know what you mean. The programmer didn't make me that dynamic. Type 'h' to hit or 's' to stay." 
        player_answer = gets.chomp
      # if dealer_total < 16
      #    loop {dealer_hand << deck.draw
      #          dealer_total += dealer_hand[2]
      #          break if  dealer_total >= 16
      #         }
      #valid_answer = true
      #else 
        #puts "I don't know what you mean. The programmer didn't make me that dynamic."
      end
    end
  
end

puts "Okay your hand is "
player_hand.each { |card| puts card.name, " "}
puts "Your total is #{player_total}. "

if dealer_total < 16
  loop {dealer_hand << deck.draw
       dealer_total += dealer_hand.last.points
       break if  dealer_total >= 16
       }
else
  puts "dealer stays"
end

puts "my total is #{dealer_total}, #{player_name}'s total is #{player_total}."

if player_total > dealer_total && player_total <= 21
   puts "#{player_name} Wins! I'm a sad panda :("
elsif dealer_total > player_total && dealer_total <= 21
   puts "I win and you loose. I'm ready for Vegas!"
elsif dealer_total > 21 && player_total > 21
   puts "We both bust, but ironically I win. Wait.. that's not what ironic means at all!"
elsif dealer_total == player_total && dealer_total <= 21 && player_total <= 21
   puts "Sorry dealer wins all ties. Better luck next time."
else
   puts "I win you bust!"
end
# player_decision = gets.chomp

# if player_decision == "h"
#     puts "Hit"
# elsif player_decision == "s"
#     puts "Okay"
# else 
#     puts "Your total is "
# end
# #puts "You're total is #{player_total}"

# if 
# puts "So, your current hand is '#{player_hand[0].name}', and '#{player_hand[1].name}'. Would you like to hit or stay?"


# if "hit me" = gets.chomp then
#   player_hand<<deck.draw
#   puts "you drew a(n) #{player_hand[2]}"
