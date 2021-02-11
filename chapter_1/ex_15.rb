# First we setup using ARGV and define variable filename
filename = ARGV.first
# Define prompt and command txt defined with File.open given a filename
prompt = "> "
txt = File.open(filename)

# Starts what is printed when this file is run, given first ARGV from command line
puts "Here's your file, #{filename}."
# The ARGV entered before running goes into the variable here for filename
# and is run with our set command File.open
# Txt has been set, now we print txt.read
puts txt.read()
# Closes the file after it was opened since we are done.
txt.close()

# We then put the next line
puts "I'll also ask you to type it again:"
# and print the prompt
print prompt
# we are now defining the answer provided is file_again
file_again = STDIN.gets.chomp

# and pass file_again into File.open and call it txt_again
txt_again = File.open(file_again)

# and print txt_again.read
puts txt_again.read()
# and closes the file once we are done.
txt.close()


