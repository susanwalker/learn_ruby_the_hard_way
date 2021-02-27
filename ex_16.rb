# Define that we are using ARGV and sets first variable in the command line
filename = ARGV.first
script = $0
# Uses our inout into the first string interpolation
puts "We're going to erase #{filename}."
puts "If you don't want to do that, hit CTRL-C (^C)."
puts "If you do want to do that, hit RETURN."
print "? "
# uses input from user at terminal before continuing
STDIN.gets

puts "Opening the file..."
# takes filename which was defined as our input ARGV, redefines as target
# calls File.open on the filename, 'w' gives overwrite privilages to current process
# 'r' allows to read or view but not write, 'a' would make new file and append it
# 'w' will delete as will truncate, but trunacate we can specify how much to remove vs. all
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
# calls truncate on the defined target
# target.size determines the amount to truncate, in the case the entire size
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

# gets lines of input from the user
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# calls on target.write, we defined the file as target
# this will write the lines and line breaks into our target file
# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And finally, we close it."
target.close
