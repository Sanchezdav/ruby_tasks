# frozen_string_literal: true

=begin
  Arithmetic operators are used to perform mathematical operations on variables.
  The arithmetic operators in Ruby are:

  | Operator | Description |
  |----------|-------------|
  | +        | Addition    |
  | -        | Subtraction |
  | *        | Multiplication |
  | /        | Division    |
  | %        | Modulus     |
  | **       | Exponentiation |
  | +=       | Addition assignment |
  | -=       | Subtraction assignment |
  | *=       | Multiplication assignment |
  | /=       | Division assignment |
  | %=       | Modulus assignment |
  | **=      | Exponentiation assignment |
=end

# --- Addition ---
puts "\n\n--- Addition ---\n\n"

puts "10 + 20 = #{10 + 20}"
puts "2.3 + 8.8 = #{2.3 + 8.8}"

# This will throw a TypeError: String can't be coerced into Integer
# puts 1 + '1'

# --- Subtraction ---
puts "\n\n--- Subtraction ---\n\n"

puts "10 - 20 = #{10 - 20}"
puts "2.3 - 8.8 = #{2.3 - 8.8}"

# This will throw a NoMethodError: undefined method `-' for "2.3":String
# puts "2.3 - 8.8 = #{'2.3' - 8.8}"

# --- Multiplication ---
puts "\n\n--- Multiplication ---\n\n"

puts "10 * 20 = #{10 * 20}"
puts "2.3 * 8.8 = #{2.3 * 8.8}"

# This will print the string 2 eight times
puts "2 * 8 = #{'2' * 8}"

# This will throw a TypeError: String can't be coerced into Integer
# puts "2 * 8 = #{2 * '8'}"

# --- Division ---
puts "\n\n--- Division ---\n\n"

puts "10 / 20 = #{10 / 20}"
puts "10 / 20 = #{10.0 / 20.0}"

# This will throw a ZeroDivisionError: divided by 0
# puts "10 / 0 = #{10 / 0}"

# This will throw a NoMethodError: undefined method `/' for "10.0":String
# puts "10 / 20 = #{'10.0' / 20.0}"

# This will throw a TypeError: String can't be coerced into Float
# puts "10 / 20 = #{10.0 / '20.0'}"

# --- Modulus ---
puts "\n\n--- Modulus ---\n\n"

puts "10 % 20 = #{10 % 20}"
puts "10 % 20.5 = #{10.5 % 20.5}"

# This will throw a ZeroDivisionError: divided by 0
# puts "10 % 0 = #{10 % 0}"

# This will throw a TypeError: String can't be coerced into Integer
# puts "10 % 0 = #{10 % '20'}"

# --- Exponentiation ---
puts "\n\n--- Exponentiation ---\n\n"

puts "10 ** 2 = #{10**2}"
puts "10.5 ** 2 = #{10.5**2}"

# This will throw a TypeError: String can't be coerced into Integer
# puts "10 ** 2 = #{10**'2'}"

# --- Addition assignment ---
puts "\n\n--- Addition assignment ---\n\n"

puts 'Not addition assignment statement'
puts 'a = 10'
a = 10
puts 'a = a + 20'
a = a + 20 # rubocop:disable Style/SelfAssignment
puts "a = #{a}"

puts "\nUsing addition assignment statement"
puts 'a = 10'
a = 10
puts 'a += 20'
a += 20
puts "a = #{a}"

# --- Subtraction assignment ---
puts "\n\n--- Subtraction assignment ---\n\n"

puts 'Not subtraction assignment statement'
puts 'a = 10'
a = 10
puts 'a = a - 5'
a = a - 5 # rubocop:disable Style/SelfAssignment
puts "a = #{a}"

puts "\nUsing subtraction assignment statement"
puts 'a = 10'
a = 10
puts 'a -= 5'
a -= 5
puts "a = #{a}"

# --- Multiplication assignment ---
puts "\n\n--- Multiplication assignment ---\n\n"

puts 'Not multiplication assignment statement'
puts 'a = 10'
a = 10
puts 'a = a * 5'
a = a * 5 # rubocop:disable Style/SelfAssignment
puts "a = #{a}"

puts "\nUsing multiplication assignment statement"
puts 'a = 10'
a = 10
puts 'a *= 5'
a *= 5
puts "a = #{a}"

# --- Division assignment ---
puts "\n\n--- Division assignment ---\n\n"

puts 'Not division assignment statement'
puts 'a = 10'
a = 10
puts 'a = a / 5'
a = a / 5 # rubocop:disable Style/SelfAssignment
puts "a = #{a}"

puts "\nUsing division assignment statement"
puts 'a = 10'
a = 10
puts 'a /= 5'
a /= 5
puts "a = #{a}"

# --- Modulus assignment ---
puts "\n\n--- Modulus assignment ---\n\n"

puts 'Not modulus assignment statement'
puts 'a = 10'
a = 10
puts 'a = a % 20'
a = a % 20
puts "a = #{a}"

puts "\nUsing modulus assignment statement"
puts 'a = 10'
a = 10
puts 'a %= 20'
a %= 20
puts "a = #{a}"

# --- Exponentiation assignment ---
puts "\n\n--- Exponentiation assignment ---\n\n"

puts 'Not exponentiation assignment statement'
puts 'a = 10'
a = 10
puts 'a = a ** 2'
a = a**2 # rubocop:disable Style/SelfAssignment
puts "a = #{a}"

puts "\nUsing exponentiation assignment statement"
puts 'a = 10'
a = 10
puts 'a **= 2'
a **= 2
puts "a = #{a}"
