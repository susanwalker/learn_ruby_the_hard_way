# This sets that we are running a program using argv, input file is set
input_file = ARGV[0]

# Here we define 3 functions that we can call on given inputs
def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek( 0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

# Here we pass the input file to redefine as current_file
current_file = File.open(input_file)

# Next is to use current_file as an arg passed into the first method
puts "First let's print the whole file:"
puts # a blank line
print_all(current_file)

# This passes current_file as an arg into the second method
puts "Now let's rewind, kind of like a tape."
rewind(current_file)

# This passes current_file and current_line, which we set here, as 2 args into the third method
puts "Let's print three lines:"

# Current_line begins as 1..
current_line = 1
print_a_line(current_line, current_file)

# and is added to each time we run the method
current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

