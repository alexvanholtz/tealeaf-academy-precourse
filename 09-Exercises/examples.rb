#############################################################################################################################
# Exercise 1 
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

example_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "-----------------------"
puts "Exercise 1"
puts "-----------------------"

example_array.each { |number| puts number }

#############################################################################################################################
# Exercise 2
# Same as above, but only print out values greater than 5.

puts "-----------------------"
puts "Exercise 2"
puts "-----------------------"

example_array.each do |number|
  if(number > 5)
    puts number
  end
end

#############################################################################################################################
# Exercise 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

new_array = example_array.select do |number|
  number % 2 != 0
end

puts "-----------------------"
puts "Exercise 3"
puts "-----------------------"

p new_array

#############################################################################################################################
# Exercise 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.

example_array.push(11)
example_array.unshift(0)

puts "-----------------------"
puts "Exercise 4"
puts "-----------------------"

p example_array

#############################################################################################################################
# Exercise 5
# Get rid of "11". And append a "3".

puts "-----------------------"
puts "Exercise 5"
puts "-----------------------"

example_array.delete(11) # or example_array.pop()
example_array.push(3)

p example_array

#############################################################################################################################
# Exercise 6
# Get rid of duplicates without specifically removing any one value.

puts "-----------------------"
puts "Exercise 6"
puts "-----------------------"

example_array.uniq!

p example_array

#############################################################################################################################
# Exercise 7
# What's the major difference between an Array and a Hash?

puts "-----------------------"
puts "Exercise 7"
puts "-----------------------"

puts "An array is an ordered integer-indexed collection of objects."
puts "A hash is a collection of key value pairs, the key serving as the index."

#############################################################################################################################
# Exercise 8
# Create a Hash using both Ruby syntax styles.

puts "-----------------------"
puts "Exercise 8"
puts "-----------------------"

hash_old = { :key1 => "blah", :key2 => "blah2"}
hash_new = { key1: "blah", key2: "blah2"}

p hash_old
p hash_new

#############################################################################################################################
# Exercise 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#
# 1. Get the value of key `:b`.
# 
# 2. Add to this hash the key:value pair `{e:5}`
# 
# 3. Remove all key:value pairs whose value is less than 3.5

puts "-----------------------"
puts "Exercise 9"
puts "-----------------------"

h = {a:1, b:2, c:3, d:4}

puts h[:b]

h[:e] = 5
p h

h.delete_if do |key, value|
  value < 3.5
end

p h

#############################################################################################################################
# Exercise 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)

puts "-----------------------"
puts "Exercise 10"
puts "-----------------------"

puts "Hash values can be arrays. You can have an array of hashes."

hash_value_array = {key1: [1,2,3,4,5]}
array_of_hashes = [{key1: 1}, {key2: 2}, {key3: 3}]

p hash_value_array
p array_of_hashes

#############################################################################################################################
# Exercise 11
# Look at several Rails/Ruby online API sources and say which one you like best and why.

puts "-----------------------"
puts "Exercise 11"
puts "-----------------------"

puts "I like www.ruby-doc.org the most because it seems like it has the least amount of clicking. Everything about an object is on one page and their search actually returns what I'm expecting."

#############################################################################################################################
# Exercise 12
# Given the following data structures. Write a program that moves the information from the array into the empty hash that 
# applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

puts "-----------------------"
puts "Exercise 12"
puts "-----------------------"

counter = 0;
contacts.each do |key, value|
  contacts[key] = {email: contact_data[counter][0], address: contact_data[counter][1], phone: contact_data[counter][2]}
  counter+=1
end

p contacts

#############################################################################################################################
# Exercise 13
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number? 

puts "-----------------------"
puts "Exercise 13"
puts "-----------------------"

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#############################################################################################################################
# Exercise 14
# Create the data structure that you created in the previous example for Joe Smith using loops instead of assignment. 
# Some helpful methods might be the Array shift and first method.

puts "-----------------------"
puts "Exercise 14"
puts "-----------------------"

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts

#############################################################################################################################
# Exercise 15
# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

puts "-----------------------"
puts "Exercise 15"
puts "-----------------------"

arr.delete_if do |word|
  word.start_with?("s","w") 
end

puts arr

#############################################################################################################################
# Exercise 16
# Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
# Look into using Array's map and flatten methods, as well as String's split method.

puts "-----------------------"
puts "Exercise 16"
puts "-----------------------"

a.map! do |words|
  words.split
end

p a.flatten

#############################################################################################################################
# Exercise 17
# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end

puts "-----------------------"
puts "Exercise 17"
puts "-----------------------"

puts "These hashes are the same!"
