#!/usr/bin/env ruby

# This program takes a string from the user and reverses it

class Reverse_String

  def initialize()
    @user_input = gets.chomp.reverse
  end

  attr_writer :user_input

  def reverse()
    return @user_input
  end

end

puts "\nPlease give me a string, I will then reverse it for you\n"
# Create a new Reverse object, take the user input,
#   and either exit if no input or reverse it
start = Reverse_String.new()
start.reverse()
abort("You didnt enter anything!\nExiting now.") if start.reverse.empty?
puts "\nYour reversed string is:\n " + start.reverse
