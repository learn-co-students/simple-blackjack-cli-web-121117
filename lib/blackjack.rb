def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_response = gets.chomp
  user_response
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_round_sum= deal_card + deal_card
  display_card_total(initial_round_sum)
  return initial_round_sum
end

def hit?(card_total)
  prompt_user
  user_response = get_user_input
    if user_response == 'h'
      card_total = deal_card + card_total
    elsif user_response == 's'
    else invalid_command
    end
    card_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def runner
  welcome
  card_total = initial_round

  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)
end
