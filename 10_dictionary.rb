# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#

class Dictionary

  def initialize
    @word_list = {}
  end

  def add_word(word, meaning)
    @word_list[word] = meaning
  end
  
  def total_words
    @word_list.size
  end

  def lookup(word)
    @word_list[word] ? @word_list[word] : (p "Sorry, that word isn't in the dictionary!")
  end
end

dictionary = Dictionary.new
dictionary.add_word('ruby', 'A precious stone')
dictionary.total_words
dictionary.lookup('ruby')