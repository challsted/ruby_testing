#!/usr/bin/env ruby

# This program takes a string from the user and reverses it

class Reverse_String

  def initialize(*words)
    @user_input = gets.chomp.reverse
    @words = words
  end

  attr_writer :user_input

  def reverse_input()
      puts words.reverse
  end

  def reverse
    @user_input
  end

end

# Create a new Reverse object, take the user input from stdin or asking,
#   and either exit if no input or reverse it
start = Reverse_String.new()

#TODO: Need to allow for this to work with input directly into reverse
puts "\nPlease give me a string, I will then reverse it for you\n"
start.reverse()
abort("You didnt enter anything!\nExiting now.") if start.reverse.empty?
puts "\nYour reversed string is:\n " + start.reverse
