$user_wants_to_play = true
$my_number = 4

def welcome_to_the_game
  puts "Hello, lets play a guessing game. Do you want to play (Y/N)"
  user_input = gets.chomp.downcase
  if user_input == 'y'
    puts "Ok, let's play!"
    start_game
  else
    puts "Ok, fine.🥲"
  end
end

def play_again
  puts "Wanna play again? (Y/N)"
  response = gets.chomp.downcase
  if response == 'y'
    start_game
  else
    puts "Thanks for playing 😄"
    $user_wants_to_play = false
  end
end

def input_validation(x)
  if x >= 1 && x <= 10
    true
  else
    puts "Oops... Looks like you entered an invalid value."
    false
  end
end

def get_results(user_input)
  winner = user_input == $my_number
  if winner
    puts "Yay! #{$my_number} is my number. You win! 🎉"
  else
    puts "Nope, you lose 🤣"
  end
  play_again
end

def start_game
  while $user_wants_to_play

    puts "Enter a number between 1 and 10"
    users_number = gets.chomp.to_i

    # Validate user input
    validation_passes = input_validation(users_number)

    if validation_passes
      get_results(users_number)
    else
      play_again
    end

  end
end

start_game