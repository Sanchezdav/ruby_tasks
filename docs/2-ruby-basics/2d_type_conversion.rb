# frozen_string_literal: true

=begin
  Type conversion is the process of converting one data type to another
  and it's also known as type casting. It's helpful when we need to perform
  some operations on a variable but it's in the wrong data type.
=end

# --- Type Conversion ---
puts "\n\n--- Type Conversion ---"

puts "\n## Converting to integer"

# This will throw a no implicit conversion of String into Integer error
# puts '100' + 20

puts '100'.to_i + 20

# If you have a number in the middle of a string it will only convert the
# first number

# This will print 0 because it will convert the first number it finds, so
# a letter is always 0
puts "I'm the number 350 inside of a string".to_i

# This will print 350 because it will convert the first number it finds
puts '350 is the number in a string'.to_i

puts "\n## Converting to float"

puts '100'.to_f + 20
puts "I'm the number 350 inside of a string".to_f
puts '350 is the number in a string'.to_f

# You can check the methods you can use to convert a variable to another
# using this 12345.methods.grep(/to/)
