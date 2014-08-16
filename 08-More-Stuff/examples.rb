#############################################################################################################################
# Exercise 1 
# Write a program that checks if the sequence of characters "lab" exists in the following strings. 
# If it does exist, print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

def check_for_lab(string)
  if /lab/.match(string)
    puts string    
  end
end

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"

words = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]
words.each {|word| check_for_lab(word)}

#############################################################################################################################
# Exercise 2
# What will the following program print to the screen? What will it return?
#
# def execute(&block)
#   block
# end
# 
# execute { puts "Hello from inside the execute method!" }

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

puts "The program prints nothing to the screen because the block was never called and returns a proc object."

#############################################################################################################################
# Exercise 3
# What is exception handling and what problem does it solve?

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"

puts "Exception handling is the handling of errors due to unpredictable data. It stops the program from exiting completely if errors occur. "

#############################################################################################################################
# Exercise 4
# Modify the code in exercise 2 to make the block execute properly.

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#############################################################################################################################
# Exercise 5
# Why does the following code...
# 
# def execute(block)
#   block.call
# end
# 
# execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?
# 
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"

puts "Because the & was left off of the block argument"
