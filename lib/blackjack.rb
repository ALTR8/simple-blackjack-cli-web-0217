def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  print display_card_total(card_total)
  return card_total
  # code #initial_round here
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h'
    number = number + deal_card
  else invalid_command

  end
  number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
