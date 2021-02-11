# The following defines our variables
# x and y use string interpolation, which will be nested when we use them for string interpolation
x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# Here we use x and y using string interpolation.
puts "I said #{x}."
puts "I also said '#{y}'."

# String interpolation, using a boolean instead of string
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

# Here we use concatenation to combine strings.
w = "This is the left side of..."
e = "a sting with a right side."

puts w + e
