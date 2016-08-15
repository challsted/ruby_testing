#!/usr/bin/env ruby

# This program takes a string from the user and reverses it

require 'colorize' # Allows the use of colorized text to be printed to the screen
# Program output           = Red
# Output from User's Input = Yellow
# User Input               = Terminal Default

# Request and read the user input
puts "\nPlease give me a string, I will then reverse it for you\n".red
user_input = gets.chomp

# Complain if the user didnt give any input
abort("You didnt enter anything!\nExiting now.".red) if user_input.empty?

# Return the reversed string
puts "\nYour reversed string is ".yellow + user_input.reverse.yellow
