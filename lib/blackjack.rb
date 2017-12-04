def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return_value = gets.chomp
  return return_value
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  return_number = deal_card + deal_card
  display_card_total(return_number)
  return return_number
end

def hit?(number)
  prompt_user
  user_answer = get_user_input
  if user_answer  == "h"
    return number + deal_card
  end
  if user_answer == "s"
    return number
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_count = initial_round
  # hit?

  while card_count < 21
    # display_card_total(card_count)
    card_count = hit?(card_count)
   display_card_total (card_count)
  end
  end_game(card_count)
end
