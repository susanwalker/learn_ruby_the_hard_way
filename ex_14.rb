user = ARGV.first
prompt = '> '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
# Using ARGV, the first one is treated as a file in gets, so we need STDIN.gets
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Altight, so you have said "#{likes}" about liking me.
You live in "#{lives}." Not sure where that is.
And you have a "#{computer}" computer. Nice.
MESSAGE