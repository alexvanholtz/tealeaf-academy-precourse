#############################################################################################################################
# Exercise 1 
# Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
# 1. (32 * 4) >= 129
# 2. false != !true
# 3. true == 4
# 4. false == (847 == '874')
# 5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"
puts "(32 * 4) >= 129 => false"
puts "false != !true => false"
puts "true == 4 => false"
puts "false == (847 == '874') => true"
puts "(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false => true"

#############################################################################################################################
# Exercise 2 
# Write a method that takes a string as argument. The method should return the capitalized version of the string, only 
# if the string is longer than 10 characters. (Hint: Ruby's String class has a few methods that would be helpful.

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"
def str_method str
  if str.length > 10 
    str.capitalize 
  else
    string  
  end
end 
puts str_method("blah blah blah blah")

#############################################################################################################################
# Exercise 3 
# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is 
# between 0 and 50, 50 and 100, or above 100.

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"
puts "Please enter a number between 0 and 100"

user_num = gets.chomp.to_i
if user_num < 0
  puts "Your number (#{user_num}) is negative"  
elsif user_num <= 50 
  puts "Your number (#{user_num}) is between 0 and 50"
elsif user_num <= 100 
  puts "Your number (#{user_num}) is between 50 and 100"
else
  puts "Your number (#{user_num}) is greater than 100"
end

#############################################################################################################################
# Exercise 4 
# What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor 
# and then run each block of code to see if you were correct.
#
# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")
# 
# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end
# 
# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"
puts "FALSE"
puts "Did you get it right?"
puts "Alright now!"

#############################################################################################################################
# Exercise 5
# Rewrite your program from exercise 3 using a case statement. Wrap each statement 
# in a method and make sure they both still work.
puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"

def if_statement_method num
  if num < 0
    puts "Your number (#{num}) is negative"  
  elsif num <= 50 
    puts "Your number (#{num}) is between 0 and 50"
  elsif user_num <= 100 
    puts "Your number (#{num}) is between 50 and 100"
  else
    puts "Your number (#{num}) is greater than 100"
  end
end 

def case_statement_method num
  case 
  when num < 0 
    puts "Your number (#{num}) is negative"
  when num <= 50 
    puts "Your number (#{num}) is between 0 and 50"
  when num <= 100 
    puts "Your number (#{num}) is between 50 and 100"
  when num > 100
    puts "Your number (#{num}) is greater than 100"
  else
    puts "You didn't give me me what I asked for!"  
  end
end  

puts "Please enter a number between 0 and 100"
user_num = gets.chomp.to_i
if_statement_method(user_num)
case_statement_method(user_num)

#############################################################################################################################
# Exercise 6
# When you run the following code...
#  
# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end
# 
# equal_to_four(5)
#
# You get the following error message..
# 
# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end# 

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"
puts "The if/else statement is missing the end keyword"