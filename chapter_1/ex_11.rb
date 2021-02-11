# prints allows for same line, puts would add a line break.
# gets gets input from someone, chomp removes the trailing \n (or any other end character)
print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

