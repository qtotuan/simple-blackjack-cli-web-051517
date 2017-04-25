def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(1..11)
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

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  answer = get_user_input
    until answer == "h" || answer == "s"
      invalid_command
      prompt_user
      answer = get_user_input
    end
    
    if answer == "h"
      sum += deal_card
    else 
      sum
    end
    sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
