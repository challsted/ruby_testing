#!/usr/bin/env ruby

require 'colorize'

# This program will convert a given string to Pig Laten
puts "\n\nPlease give me a word, I will convert it to Pig Latin!\n\n".red

# Get the word from the user and ensure it has no capitals
user_input = gets.chomp.downcase

# Complain if the user didnt enter anything
if user_input.empty?
  puts "You didnt enter anything!\nExiting now.".yellow
  exit
end
# Need to make sure that it is ONLY 1 word

# Convert Word to an Array
expanded_word = user_input.split(//)

# Get the first letter of that word
first = expanded_word.shift.yellow
# Get the remaining letters of the word
rest = expanded_word.join("").yellow
# Put it all together and present it back to the user
puts "\nYour word #{user_input} in Pig Latin would be: \n\n".red
puts rest + first + "ay\n\n".yellow
