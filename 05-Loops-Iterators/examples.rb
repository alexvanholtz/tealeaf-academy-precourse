#############################################################################################################################
# Exercise 1 
# What does the each method in the following program return after it is finished executing?
#
# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"
puts "[1, 2, 3, 4, 5]"

#############################################################################################################################
# Exercise 2
# Write a while loop that takes input from the user, performs an action, and only stops 
# when the user types "STOP". Each loop can get info from the user.

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"

user_input = ""
while user_input != "STOP"
 puts "Hi there, say anything! Say STOP to stop"
 user_input = gets.chomp  
end  

#############################################################################################################################
# Exercise 3
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"

super_array = ["one","two","three","four"]
super_array.each_with_index do |item, index|
  puts "#{index}. #{item}"
end

#############################################################################################################################
# Exercise 4
# Write a method that counts down to zero using recursion.

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"

x = 10;

def countDown number
  if number >= 0
    puts number
    countDown(number - 1)
  end  
end

countDown(x)