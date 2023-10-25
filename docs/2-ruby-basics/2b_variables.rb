# frozen_string_literal: true

=begin
  Variables are used to store data in memory and they are mutable,
  we can also labeling data with descriptive names to make our programs
  more readable and easier to maintain.
=end

# Assigning variables
first_name = 'Bruce'
last_name = 'Wayne'

# Printing variables
puts first_name
puts last_name
puts first_name.class

# Assigning variables with different data types
age = 32
temperature = 30.5
fruits = ['apple', 'banana', 'orange', :watermelon, 15, false]
batman = {
  first_name: 'Bruce',
  last_name: 'Wayne',
  age: 32,
  super_powers: false,
  suits: ['black', 'gray']
}
is_superhero = true

# Printing variables
puts age
puts temperature
print fruits
puts "\n"
puts batman
puts is_superhero

# --- Getting user input ---
puts "\n\n--- Getting user input ---"

puts 'What is your favorite superhero?'
favorite_superhero = gets
puts 'Your favorite superhero is: ' + favorite_superhero

# --- Scope ---
puts "\n\n--- Scope ---"

=begin
  A variable scope is the context in which a variable is visible to the
  program. It may be local, instance or global.
=end

message = 'Hello world! from outside'

def say_hello
  # Local variable, only visible inside this method,
  message = 'Hello world!'
  puts message
end

puts 'Executing say_hello method then printing message variable'
say_hello
puts message

puts 'Executing a block'

=begin
  For blocks, the local variables defined in the block are not visible
  but we can access the variables defined outside the block.
=end
sum = 0

[1, 2, 3, 4].each do |number|
  # this will throw an error if it's printed outside the block
  # inside_var = 200
  sum += number
end

puts sum

# --- Types of variables ---
puts "\n\n--- Types of variables ---"

=begin
  Types of variables:
  1. Constants
  2. Global variables
  3. Class variables
  4. Instance variables
  5. Local variables
=end

puts '## Constants'

=begin
  Constants are declared by a capitalized word, in other languages
  constants are immutable but in Ruby they are mutable, you will see a
  warning message, it's not recommended to change the value of a constant.
  Note: Constants are declared in the global/class scope and can't be declared
  in methods.
=end

SUPERHERO = 'Batman'
puts SUPERHERO

# This will throw a warning message
SUPERHERO = 'Superman'
puts SUPERHERO

puts '## Global variables'

# Global variables are declared by a $ sign, they are visible everywhere

$global_var = 'I am a global variable'
puts $global_var

puts '## Class variables'

=begin
  Class variables are declared by a @@ sign, they are declared at the class
  level when you need to share the same variable between all instances and
  the class itself, you can modify it's value.
=end

# This will throw a warning message "class variable access from toplevel"
# due to we don't have a class yet
# @@class_var = 'I am a class variable'

puts '## Instance variables'

=begin
  Instance variables are declared by a @ sign, they are available for the
  instances of a class, they are not available outside the class.
=end

@instance_var = 'I am an instance variable'
puts @instance_var

puts '## Local variables'

=begin
  Local variables are declared by a lowercase letter, this is the most common
  variable definition, they are only available inside the method or block or inside
  the scope definition.
=end

local_var = 'I am a local variable'
puts local_var
