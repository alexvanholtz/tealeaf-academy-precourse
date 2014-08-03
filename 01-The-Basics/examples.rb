#############################################################################################################################
# Exercise 1 
# Add two strings together that, when concatenated, return your first and last name as your full name in one string.

first_name = "Alex"
last_name = "Van Holtz"

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"
puts "#{first_name} #{last_name}"


#############################################################################################################################
# Exercise 2 
# Use the modulo operator, division, or a combination of both to take a 4 digit number and find 
# 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.

num = 2678

# Integer division rounds down so 2678/1000 is 2
thousands = num / 1000

# The remainder of 2678 % 1000 is 678
# Since integer division rounds down, 678/100 is 6
hundreds = num % 1000 / 100

# The remainder of 2678 % 1000 is 678
# The remainder of 678 % 100 is 78 
# Since integer division rounds down, 78/10 is 7
tens = num % 1000 % 100 / 10

# The remainder of 2678 % 1000 is 678
# The remainder of 678 % 100 is 78 
# The remainder of 78 % 10 is 8
ones = num % 1000 % 100 % 10 

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"
puts thousands 
puts hundreds
puts tens
puts ones


#############################################################################################################################
# Exercise 3
# Write a program that uses a hash to store a list of movie titles with the year they came out. 
# Then use the puts command to make your program print out the year of each movie to the screen. 

movie_hash = { 	:random_movie1 => 2000, 
				:random_movie2 => 2001, 
				:random_movie3 => 2002,
				:random_movie4 => 2003,
				:random_movie5 => 2004 }		

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"
puts movie_hash[:random_movie1]
puts movie_hash[:random_movie2]
puts movie_hash[:random_movie3]
puts movie_hash[:random_movie4]
puts movie_hash[:random_movie5]


#############################################################################################################################
# Exercise 4
# Use the dates from the previous example and store them in an array. 
# Then make your program output the same thing as exercise 3.

movie_array = [2000, 2001, 2002, 2003, 2004]

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"
puts movie_array[0]
puts movie_array[1]
puts movie_array[2]
puts movie_array[3]
puts movie_array[4]


#############################################################################################################################
# Exercise 5
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

factorial5 = 5 * 4 * 3 * 2 * 1

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"
puts factorial5
puts 6 * factorial5
puts 7 * 6 * factorial5
puts 8 * 7 * 6 * factorial5


#############################################################################################################################
# Exercise 6
# Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

num1 = 3.333
num2 = 4.444
num3 = 5.555

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"
puts num1 * num1
puts num2 * num2
puts num3 * num3


#############################################################################################################################
# Exercise 7
# What does the following error message tell you?
#  SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

puts "-----------------------"
puts "Exercise 7"
puts "-----------------------"
puts "There's a missing curly brace somewhere."

