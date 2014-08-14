#############################################################################################################################
# Exercise 1 
# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select 
# method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"

immediate_family = family.select { |key, value| key == :sisters || key == :brothers }
new_array = immediate_family.values.flatten

p new_array

#############################################################################################################################
# Exercise 2 
# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"

puts "merge! is destructive and modifies the original object, merge is not destructive and does not modify the original object"

hash1 = { num1: 1, num2: 2}
hash2 = { num3: 3, num4: 4}

hash1.merge(hash2)
p hash1

hash1.merge!(hash2)
p hash1

#############################################################################################################################
# Exercise 3
# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"

hash = { num1: 1, num2: 2, num3: 3, num4: 4}

hash.each_key { |key| puts "key: #{key}" }
hash.each_value { |value| puts "value: #{value}" }
hash.each { |key, value| puts "key: #{key}, value: #{value}" }

#############################################################################################################################
# Exercise 4
# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"

puts person[:name]

#############################################################################################################################
# Exercise 5
# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"

hash = { num1: 1, num2: 2, num3: 3, num4: 4}
puts "Use the has_value? method"
puts "-----------------------"
puts "Enter a number"

user_num = gets.chomp.to_i

if hash.has_value?(user_num)
  puts "There's a #{user_num} in the hash!"
else
  puts "Couldn't find the number you supplied in the hash."
end

#############################################################################################################################
# Exercise 6
# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters 
# in them but in a different order. Your output should look something like this:
#
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"

final_hash = {}
words.each do |word|
  # Break words down to their separate letters, alphabetize them and join them together again
  alphabetized_word = word.split('').sort.join
  if final_hash.has_key?(alphabetized_word)
    # If we find the alphabetized word as a key in the hash, add it to the end of the key's value array
    final_hash[alphabetized_word].push(word)
  else
    # If we don't find the alphabetized word as a key, add it as a key and create a new value array, adding
    # the word as the first value in the array
    final_hash[alphabetized_word] = [word]
  end

end 

final_hash.each { |key, value| puts "#{key} => #{value}" }

#p final_hash

#############################################################################################################################
# Exercise 7
# Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

puts "-----------------------"
puts "Exercise 7"
puts "-----------------------"

puts "my_hash uses a symbol as a key and uses the newer syntax (the key is 'x')"
puts "my_hash2 uses a variable's contents as a key and uses the older syntax (the key is 'hi there')"

#############################################################################################################################
# Exercise 8
# If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

puts "-----------------------"
puts "Exercise 8"
puts "-----------------------"

puts "B. There is no method called keys for Array objects."

