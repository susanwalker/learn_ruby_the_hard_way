name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
height_centimeters = height * 2.54
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually, that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# This line is tricky, try to get it exactly right.
puts "If I add %d, %d and %d I get %d." % [
  age, height, weight, age + height + weight]

puts "His hair is %s now, but could turn %s, unless he dyes it %s." % [
  hair, teeth, eyes]

puts "He is %d inches tall, which is %d centimeters." % [
height, height_centimeters]



