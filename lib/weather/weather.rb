#!/usr/bin/env ruby

require 'rest-client'
require 'json'

# This program takes up to 1 of 2 options as input
#  or requests the needed info if none given.
# These 2 options are:
#   1) ZIP Code
#   2) City ID

# TODO: Make this section work, its a skeleton right now
if ARGV.empty?
  puts "I need some info from you"
  puts "I need either a CITY ID"
  puts "or"
  puts "I need a US ZIP Code ZIP Code"
  api_send = gets.chomp("Please Enter one of the above here")
end

# Please use your own key if you plan to actually use this
#   Sign up for a key here: http://openweathermap.org/api its free
api_key = "3c7ea8f3df0a0c1fdb3cf45bf939c41f"
api_send = ARGV[0].to_s + "=" + ARGV[1].to_s
api_call = "http://api.openweathermap.org/data/2.5/weather?" + api_send + "&appid=" + api_key + "&type=accurate&mode=json&units=imperial&lang=en"

# Take the stitched together api call and actually hit it, then parse it into a hash
response = RestClient.get api_call
output = JSON.parse(response)

# Here is where all of the output comes from
puts "The ZIP you provided points to: #{output['name']}"
puts "The Tempature right now is: #{output['main']['temp']}"
