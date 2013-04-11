###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
puts "\nWelcome to the Secret Number Game!"
puts "Created by Jake Denny"

puts name = "What is your name?"
name = gets.strip

puts "Hello " + name + "! " + "You have 3 guesses to guess the Secret Number between 1 and 10"

# keep array from previous
set_of_numbers = Array.new
10.times do |count|
	set_of_numbers << (count + 1)
end

# keep the random method .sample to maintain game play.
secret_number = set_of_numbers.sample

# keep hash from previous
messages = Hash.new

messages = { :win => "Congratulations, you have won!", :lose => "The secret number was #{secret_number}. Better luck next time. GAME OVER.", :too_low => "You need to guess higher next time, mate", :too_high => "You need to guess a little lower, remember, between 1 and 10" }

# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#

# set the default as 0
current_guess_count = 0

# set new method and pass in value
def increment_guess_count(current_guess_count)
	current_guess_count += 1
end

# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#

# create the new method and pass in same value, one that is incrementing. Then define the total guesses and subtract from the value being incremented.
def guesses_left(current_guess_count)
	3 - current_guess_count
end

# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#

# can remove |count| since we are now using the new methods. Add the current_guess_count variable. Completely remove guesses_left and it's value. Instead use the new methods to determine current_guess_count and pass the value of the current_guess_count to the increment_guess_count. Update what is printed to use the current_guess_count instead of incrementing the |count| parameter.
3.times do
	puts "\nYou have #{guesses_left(current_guess_count)} guesses left!"
	puts "Go ahead and make your guess:"
	players_guess = $stdin.gets.strip.to_i
	current_guess_count = increment_guess_count(current_guess_count)
	if secret_number == players_guess
		puts messages[:win]
		puts "You guessed in #{current_guess_count} turns"
		exit
	elsif secret_number > players_guess
		puts messages[:too_low]
	elsif secret_number < players_guess
		puts messages[:too_high]
	end
end

puts messages[:lose]

# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

