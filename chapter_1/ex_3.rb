# + plus
# - minus
# / slash
# * asterisk
# % percent
# < less_than
# > greater_than
# <= less_than_equal
# >= greater_than_equal

# prints sentence
puts "I will now count my chickens:"
# prints the sentence, and calculation with string interpolation
puts "Hens #{25.0 + 30 / 6}"
puts "Roosters #{100.0 - 25 * 3 % 4}"

puts "Now I will count the eggs:"
puts 3 + 2 + 1.0 - 5 + 4 % 2 - 1 / 4 + 6

# prints with a boolean answer
puts "Is it true that 3 + 2 < 5 + 7?"
# only one float needed to return answer as a float
puts 3 + 2 < 5.0 - 7

# Either keep inside "" with string interpolation or outside string without
# String interpolation keeps on the same line, without on the next line
puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7?", 5 - 7

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts  "Is it less than or equal?", 5 <= -2
