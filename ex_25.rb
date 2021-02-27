module EX25
  def self.break_words(stuff)
    # This function will break up the words for us
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sorts the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the other down by one
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    # Prints the last word after popping it off the end.
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    # Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def print_first_and_last(sentence)
    # Prints the first and last words of a sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words, then prints the first and last one
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end

# to run in irb, require './ex_25' note that .rb was not needed
# ie. EX25.break_words(sentence), EX25 is the name of the module so we use that
# if you include './ex_25' then you don't need to write EX25. every time.