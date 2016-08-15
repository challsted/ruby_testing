#!/usr/bin/env ruby

require 'colorize' # Allows the use of colorized text to be printed to the screen
# Program output           = Red
# Output from User's Input = Yellow
# User Input               = Terminal Default

# This program will convert a given string to Pig Laten
# TODO: Need to make sure that it is ONLY 1 word

puts "\n\nPlease give me a word, I will convert it to Pig Latin!\n\n".red
user_input = gets.chomp.downcase

# Complain if the user didnt enter anything
abort("You didnt enter anything!\nExiting now.".red) if user_input.empty?

# Convert Word to an Array
expanded_word = user_input.split(//)
first = expanded_word.shift.yellow
rest = expanded_word.join("").yellow

# Put it all together and present it back to the user
puts "\nYour word #{user_input} in Pig Latin would be: \n\n".red
puts rest + first + "ay\n\n".yellow
