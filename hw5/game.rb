require_relative 'secret_number'

class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "Congratulations, you have won!",
                 lose: "The secret number was #{@secret_number}. Better luck next time. GAME OVER.",
                 too_low: "You need to guess higher next time, mate",
                 too_high: "You need to guess a little lower, remember, between 1 and 10" }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed, set_of_numbers)
    @guesses_allowed = guesses_allowed || 3
    @current_guess_count = 0
    @player = Player.new()
    @secret_number = SecretNumber.new(set_of_numbers)
    @current_guess = nil
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    first_name = "Jake"
    last_name = "Denny"
    puts "Created by " + first_name + " " + last_name
  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    puts "\nWelcome to the Secret Number Game!"
    print_created_by

    puts "\nWhat is your name?"
    @player.name = $stdin.gets.strip

    puts "Hello #{@player.name}" + name + "! " + "You have 3 guesses to guess the Secret Number between 1 and 10"

  end

  puts "\nGo ahead #{@player.name}, and make your guess:"

	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if guess_correct?(guess)
      return false
    elsif @secret_number.secret_number > guess
      puts @@messages[:too_low]
    elsif @secret_number.secret_number < guess
      puts @@messages[:too_high]
    else @secret_number.secret_number == guess
      puts @@messages[:win]
      puts "\nYou guessed in #{current_guess_count} turns"
      return true
    end
  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count(guess_correct)
    guess_correct += 1
  end
  

  # Calculates the guesses the player has left.
  def guesses_left(current_guess_count)
    if @current_guess_count == @guesses_allowed
    puts 
  end

end
end