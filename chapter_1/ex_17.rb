from_file, to_file  = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}."

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()
# input_data = File.open(from_file).read

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist?" " #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, Ctrl-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, done."

output.close
input.close

# refactoring the code:
# input_data = File.open(from_file).read
# output = File.open(to_file, 'w').write(input_data)

# output = File.open(to_file, 'w').write(File.open(from_file).read)

# cat filename is a shortcut to print the contents of the file in CLI


