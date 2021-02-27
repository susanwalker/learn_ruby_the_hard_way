
# This first line "unpacks" ARGV
first, second, third = ARGV

# The name of the script itself is stored in special variable $0, this does not need to be unpacked
puts "The script is called #{$0}."
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"


