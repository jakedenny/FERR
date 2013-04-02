###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 

puts "Welcome to the Secret Number Game!"
puts "Created by Jake Denny"
#
# 2. Ask the user for their name and store it in a variable.
puts name = "What is your name?"
name = gets.strip

#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
puts "Hello " + name + "! " + "You have 3 guesses to guess the Secret Number between 1 and 10"

# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
guesses_left = 3

# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
puts guesses_left_string = "You have #{guesses_left} guesses left"

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
secret_number = 7

# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
puts prompt = "Go ahead and make your first guess"
first_guess = gets.to_i

# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
if first_guess == 7
	puts "Congratulations, you have won!"
else guesses_left = guesses_left-1
	puts "You have #{guesses_left} guesses left"
end
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
if first_guess < secret_number
	puts "You need to guess higher next time, mate"
elsif first_guess > secret_number
	puts "You need to guess a little lower, remember, between 1 and 10"
end
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#	

# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
puts prompt = "Go ahead and make your second guess"
second_guess = gets.to_i

if second_guess == 7
	puts "Nice work. You won!"
else guesses_left = guesses_left-1
	puts "You have #{guesses_left} guesses left"
end

if second_guess < secret_number
	puts "Higher. You only have 1 more shot."
elsif second_guess > secret_number
	puts "Keep it down. You really need this."
end
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
puts prompt = "Go ahead and make your third and final guess"
third_guess = gets.to_i

if third_guess == 7
	puts "Finally. You have the skills. Great stuff!"
else guesses_left = guesses_left-1
	puts "The secret number was #{secret_number}. Better luck next time. GAME OVER."
end
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################

