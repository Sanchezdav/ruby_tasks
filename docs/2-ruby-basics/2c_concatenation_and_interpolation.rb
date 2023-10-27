# rubocop:disable Style/FrozenStringLiteralComment
=begin
  There are two ways to combine strings, concatenation and interpolation.
  Concatenation is the process of joining two strings together and interpolation
  is the process of inserting a string into another string.
=end

# --- Concatenation ---
puts "\n\n--- Concatenation ---"

first_name = 'Peter'
last_name = 'Parker'

full_name = 'The full name is ' + first_name + ' ' + last_name
puts full_name

puts "\n## Concat method"

str = 'Spiderman is '
str.concat('Peter ')
str.concat('Parker')

puts str

puts "\n## Using += operator"

str = 'Superman is '
str += 'Clark '
str += 'Kent'

puts str

puts "\n## Using << method"

str = 'Flash is '
str << 'Barry '
str << 'Allen'

puts str

# You can also do this
str = 'Flash is '
str << 'Barry ' << 'Allen'

puts str

# You can't concatenate strings with numbers
# This will throw an error
# puts 'I am a string' + 1

# You can do this
puts 'I am a string and you a number ' + 1.to_s

# --- Interpolation ---
puts "\n\n--- Interpolation ---"

# To use interpolation we need to use double quotes

first_name = 'Peter'
last_name = 'Parker'

full_name = "The full name is #{first_name} #{last_name}"
puts full_name

# You don't need to convert numbers to string when using interpolation
number = 100
puts "I am a string and you a number #{number}"

# rubocop:enable Style/FrozenStringLiteralComment
