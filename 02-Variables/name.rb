#############################################################################################################################
# Exercise 1 
# Write a program called name.rb that asks the user to type in their name and then prints out 
# a greeting message with their name included.

#############################################################################################################################
# Exercise 4 
# Modify name.rb again so that it first asks the user for their first name, saves it into a variable, 
# and then does the same for the last name. Then outputs their full name all at once.

puts "-----------------------"
puts "Exercise 1 & 4"
puts "-----------------------"
puts "Please type in your first name"
first_name = gets.chomp
puts "Please type in your last name"
last_name = gets.chomp
# Saving full name to old name variable so exercise 3 doesn't break
name = "#{first_name} #{last_name}"
puts "Hiya #{name}!"

#############################################################################################################################
# Exercise 3 
# Add another section onto name.rb that prints the name of the user 10 times. You must do 
# this without explicitly writing the puts method 10 times in a row. Hint: you can use the 
# times method to do something repeatedly.

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"
10.times { puts name }

#############################################################################################################################
# Exercise 5 
# Look at the following programs...
# 
# x = 0
# 3.times do
#   x += 1
# end
# puts x
# and...
# 
# y = 0
# 3.times do
#   y+= 1
#   x = y
# end
# puts x
# 
# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"
puts "If the programs are run one after another, they do not break and they both print 3 to the screen. However, if the second program runs without the first one being run first, x never gets instantiated and will not exist within its scope."


#############################################################################################################################
# Exercise 6
# What does the following error message tell you?
# NameError: undefined local variable or method `shoes' for main:Object
#  from (irb):3
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"
puts "The error message says that 'shoes' has not been defined within the scope of the program" 