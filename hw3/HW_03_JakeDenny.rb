###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
#puts "Welcome to the Secret Number Game!"
#puts "Created by Jake Denny"

#puts name = "What is your name?"
#name = gets.strip

#puts "Hello " + name + "! " + "You have 3 guesses to guess the Secret Number between 1 and 10"

#guesses_left = 3

#puts guesses_left_string = "You have #{guesses_left} guesses left"

#secret_number = 4
 
#puts prompt = "Go ahead and make your first guess"
#first_guess = gets.to_i

#if first_guess == secret_number
#	puts "Congratulations, you have won!"
#else guesses_left = guesses_left-1
#	puts "You have #{guesses_left} guesses left. Go ahead and make your second guess"
#end

#if first_guess < secret_number
#	puts "You need to guess higher next time, mate"
#elsif first_guess > secret_number
#	puts "You need to guess a little lower, remember, between 1 and 10"
#end

#second_guess = gets.to_i

#if second_guess == secret_number
#	puts "Nice work. You won!"
#else guesses_left = guesses_left-1
#	puts "You have #{guesses_left} guesses left. Go ahead and make your third and final guess"
#end

#if second_guess < secret_number
#	puts "Higher. You only have 1 more shot."
#elsif second_guess > secret_number
#	puts "Keep it down. You really need this."
#end

#third_guess = gets.to_i

#if third_guess == secret_number
#	puts "Finally. You have the skills. Great stuff!"
#else guesses_left = guesses_left-1
#	puts "The secret number was #{secret_number}. Better luck next time. GAME OVER."
#end

# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

puts "Welcome to the Secret Number Game!"
puts "Created by Jake Denny"

puts name = "What is your name?"
name = gets.strip

puts "Hello " + name + "! " + "You have 3 guesses to guess the Secret Number between 1 and 10"

guesses_left = 3

# create a new Array. Use the .times method to run through a count 10 times and increment by 1 each time.
set_of_numbers = Array.new
10.times do |count|
	set_of_numbers << (count + 1)
end

# use the .sample method http://www.ruby-doc.org/core-2.0/Array.html#method-i-sample to randomly choose a number from the Array.
secret_number = set_of_numbers.sample

# create a new hash and include the key and value pairs within.
messages = Hash.new

messages = { :win => "Congratulations, you have won!", :lose => "The secret number was #{secret_number}. Better luck next time. GAME OVER.", :too_low => "You need to guess higher next time, mate", :too_high => "You need to guess a little lower, remember, between 1 and 10" }

# again, using the .times method run the loop 3 times. Using the count parameter.
3.times do |count|
	puts "\nYou have #{guesses_left} guesses left!"
	puts "Go ahead and make your guess:"
	players_guess = $stdin.gets.strip.to_i
	guesses_left = guesses_left-1
	if secret_number == players_guess
		puts messages[:win]
		puts "You guessed in #{count + 1} turns"
		exit
	elsif secret_number > players_guess
		puts messages[:too_low]
	elsif secret_number < players_guess
		puts messages[:too_high]
	end
end

# since game is finished need to print conclusion for user.
puts messages[:lose]