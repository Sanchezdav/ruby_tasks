# frozen_string_literal: true

require 'benchmark'

=begin
 'Hello, world!'          # string
 101                      # integer
 3.1416                   # float
 true                     # boolean
 :sym                     # symbol
 nil                      # nil

 { 'name' => "Bruce", 'age' => 32 }   # hash
 { name: "Bruce", age: 32 }           # hash
 [ 1, 2, 3, "hello", false ]          # array
=end

# --- String ---
puts "\n\n--- String ---"

## We can use single or double quotes

# Using double quotes
# rubocop:disable Style/StringLiterals
puts "My name is Bruce Wayne"
puts "My name is Bruce Wayne".class
# rubocop:enable Style/StringLiterals

# Using single quotes
puts 'My name is Bruce Wayne'

# Adding single quotes to our texts
puts "My name is, 'Batman!'"
puts 'My name is, \'Batman!\''

# --- Numbers ---
puts "\n\n--- Numbers ---"

# Integers
puts 1
puts 1.class
puts 1234

## We can use underscores to make numbers more readable
puts 1_234_567

# Floats
puts 1.0
puts 1.0.class
puts 3.1416

# --- Booleans ---
puts "\n\n--- Booleans ---"

puts true
puts true.class
puts false
puts false.class

# --- Symbols ---
puts "\n\n--- Symbols ---"

# Symbols are identifiers and they are immutable
# Symbols can be used in metaprogramming methods like send
# Symbols are used as keys in hashes
# Symbols are used to represent methods & instance variable names
puts :ruby_course
puts :ruby_course.class

# Symbols are immutable
puts :ruby_course.object_id
puts :ruby_course.object_id

# This report shows the user CPU time, system CPU time,
# the sum of the user and system CPU times, and the elapsed real time.
# The unit of time is seconds.
Benchmark.bm do |x|
  x.report('string') { 'hello' }
  x.report('symbol') { :hello }
end

# --- Nil ---
puts "\n\n--- Nil ---"

puts nil
puts nil.class

# Some methods can return nil like
# Array index that doesn’t exist
# Hash key that doesn’t exist

# --- Hashes ---
puts "\n\n--- Hashes ---"

# Hashes are unique key-value pairs, something like a dictionary
batman = { 'name' => 'Bruce', 'last_name' => 'Wayne' }
puts batman
puts batman.class

# Symbols as keys
batman_sym = { name: 'Bruce', last_name: 'Wayne' }
puts batman_sym

# Accessing values
puts batman['name']
puts batman['last_name']
puts batman_sym[:name]
puts batman_sym[:last_name]

# Adding/updating values to hashes
batman['age'] = 32
puts batman

# Returns nil if does not exist
puts batman_sym['last_name']

# Printing the keys and values
puts batman_sym.keys
puts batman_sym.values

# Merging hashes
puts batman_sym.merge!(batman)

# --- Arrays ---
puts "\n\n--- Arrays ---"

my_array = [1, 2, 3, 4, 5]
puts my_array
puts my_array.class

# Accessing elements
puts my_array[0]
puts my_array[4]

# Knowing the size of the array
puts my_array.size
puts my_array.length

# Adding elements to the array
my_array << 6
my_array.push(7)
print my_array
puts "\n\n"

# Removing last element from the array
my_array.pop
print my_array
puts "\n\n"

# Removing specific element from the array by index
my_array.delete_at(0)
print my_array
puts "\n\n"

# Array of strings
# rubocop:disable Style/WordArray
print ['apple', 'orange', 'banana']
# rubocop:enable Style/WordArray
