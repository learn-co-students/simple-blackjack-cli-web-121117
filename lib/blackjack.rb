require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_gen = Random.new
  card_gen.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total = total + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total = total + deal_card
  elsif input == "s"
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  puts "Invalid command! Try again."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
     total = hit?(total)
     display_card_total(total)
  end
  end_game(total)
end
