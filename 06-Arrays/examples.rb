#############################################################################################################################
# Exercise 1 
# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"

puts arr.include? number

#############################################################################################################################
# Exercise 2 
# What will the following programs return? What is value of arr after each?

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"

# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)

puts "arr => 1"
puts 'arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]'

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
puts "arr => [1, 2, 3] "
puts 'arr = [["b"], ["a", [1, 2, 3]]]'

#############################################################################################################################
# Exercise 3
# How do you print the word "example" from the following array?
 
arr = [["test", "hello", "world"],["example", "mem"]]

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"

puts "arr[1][0] || arr.last.first"

#############################################################################################################################
# Exercise 4
# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"

# 1. arr.index(5)
puts 3
 
# 2. arr.index[5]
puts "examples.rb:62:in `<main>': undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)"

# 3. arr[5]
puts 8

#############################################################################################################################
# Exercise 5
# What is the value of a, b, and c in the following program?

string = "Welcome to Tealeaf Academy!"
a = string[6]
b = string[11]
c = string[19]

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"

puts "e"
puts "T"
puts "A"

#############################################################################################################################
# Exercise 6
# You run the following code...
#
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
#
# ...and get the following error message:
# 
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"
puts "You're trying to set the value of an array element with a string index, which can't be done. Instead, access the element with its integer index names[3] = 'jody' "

#############################################################################################################################
# Exercise 7
# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original 
# array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. 
# Print both arrays to the screen using the p method instead of puts.

puts "-----------------------"
puts "Exercise 7"
puts "-----------------------"

arr = [2,4,6,8,10]
arr2 = arr.map { |e| e+2 }

p arr
p arr2
