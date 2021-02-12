def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts # a blank line
end

# Here we add a line first, then pass values into our function
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# Here we write variables from our script and pass them into the function
# The two arguments match the expected 2 arguments for the function, even with diff names
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This shows how the variables can be math
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# This shows a combination of variables and math
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
